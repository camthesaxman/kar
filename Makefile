ifneq ($(findstring MINGW,$(shell uname)),)
  WINDOWS := 1
endif
ifneq ($(findstring MSYS,$(shell uname)),)
  WINDOWS := 1
endif

#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------

TARGET_COL := wii

NAME := kar
#VERSION := us
VERSION := kor
#VERSION := us.demo
#VERSION := jp.demo
#VERSION := eu.demo
#VERSION := kor.demo

BUILD_DIR := build/$(NAME).$(VERSION)

SRC_DIRS := src src/sysdolphin src/init
ASM_DIRS := asm asm/runtime asm/runtime/ asm/Runtime.PPCEABI.H asm/sysdolphin		\
			asm/dolphin asm/MetroTRK asm/init asm/a2d asm/os asm/TRK_MINNOW_DOLPHIN	\
			asm/pad src/dolphin/os

# Inputs
S_FILES := $(wildcard asm/*.s)
C_FILES := $(wildcard src/*.c)
CPP_FILES := $(wildcard src/*.cpp)
LDSCRIPT := $(BUILD_DIR)/ldscript.lcf

# Outputs
DOL     := $(BUILD_DIR)/main.dol
ELF     := $(DOL:.dol=.elf)
MAP     := $(BUILD_DIR)/kar.map

include obj_files.mk

O_FILES := $(INIT_O_FILES) $(EXTAB_O_FILES) $(EXTABINDEX_O_FILES) $(TEXT_O_FILES) \
           $(CTORS_O_FILES) $(DTORS_O_FILES) $(RODATA_O_FILES) $(DATA_O_FILES)    \
           $(BSS_O_FILES) $(SDATA_O_FILES) $(SBSS_O_FILES) $(SDATA2_O_FILES)      \
		   $(SBSS2_O_FILES)														  \

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

MWCC_VERSION := 1.0
MWLD_VERSION := 2.7

# Programs
ifeq ($(WINDOWS),1)
  WINE :=
else
  WINE := wine
endif
AS      := $(DEVKITPPC)/bin/powerpc-eabi-as
OBJCOPY := $(DEVKITPPC)/bin/powerpc-eabi-objcopy
CPP     := $(DEVKITPPC)/bin/powerpc-eabi-cpp.exe -P
CC      := $(WINE) tools/mwcc_compiler/$(MWCC_VERSION)/mwcceppc.exe
LD      := $(WINE) tools/mwcc_compiler/$(MWLD_VERSION)/mwLinkPatch.exe
ELF2DOL := tools/elf2dol
SHA1SUM := sha1sum
PYTHON  := python

POSTPROC := tools/postprocess.py

# Options
INCLUDES := -i include/ -i include/dolphin/ -i src/sysdolphin/ -i include/dolphin/mtx/

ASFLAGS := -mgekko -I include/ 
LDFLAGS := -map $(MAP) -fp hard -nodefaults
CFLAGS  := -Cpp_exceptions off -proc gekko -fp hard -O4,p -nodefaults -msgstyle gcc $(INCLUDES)

# for postprocess.py
PROCFLAGS := -fprologue-fixup=old_stack

# elf2dol needs to know these in order to calculate sbss correctly.
SDATA_PDHR := 9
SBSS_PDHR := 10

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

### Default target ###

default: all

all: $(DOL)

ALL_DIRS := build $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(ASM_DIRS))

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

.PHONY: tools

$(LDSCRIPT): ldscript.lcf
	$(CPP) -MMD -MP -MT $@ -MF $@.d -I include/ -I . -DBUILD_DIR=$(BUILD_DIR) -o $@ $<

$(DOL): $(ELF) | tools
	$(ELF2DOL) $< $@ $(SDATA_PDHR) $(SBSS_PDHR) $(TARGET_COL)
	$(SHA1SUM) -c sha1/$(NAME).$(VERSION).sha1

clean:
	rm -f -d -r build
	$(MAKE) -C tools clean

tools:
	$(MAKE) -C tools

$(ELF): $(O_FILES) $(LDSCRIPT)
	$(LD) $(LDFLAGS) -lcf $(LDSCRIPT) $(O_FILES) -o $@
# The Metrowerks linker doesn't generate physical addresses in the ELF program headers. This fixes it somehow.
	$(OBJCOPY) $@ $@

$(BUILD_DIR)/%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<
	$(PYTHON) $(POSTPROC) $(PROCFLAGS) $@

### Debug Print ###

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
