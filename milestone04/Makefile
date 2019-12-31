PRODUCT_NAME       = finalProject
SOURCES            = main.c myLib.c game.c continue.c splashScreen.c pauseState.c lose.c win.c spritesheet.c instruction1.c instruction2.c arrowLeft1.c arrowLeft2.c arrowLeft3.c arrowLeft4.c arrowLeft5.c arrowRight1.c arrowRight2.c arrowRight3.c arrowRight4.c arrowRight5.c bg1.c bg2.c bg3.c bg4.c bg5.c turnLeft1.c turnLeft2.c turnLeft3.c turnLeft4.c turnLeft5.c turnRight1.c turnRight2.c turnRight3.c turnRight4.c turnRight5.c sound.c soundtrack.c turn.c crash.c ending1.c ending2.c ending3.c ending4.c ending5.c 
CCPATH             = /usr/bin
DKPATH             = /Users/dodo/cs2261/devkitARM/bin
VBASIM             = open /Users/dodo/cs2261/visualboyadvance-m.app
FIND               = find
COPY               = cp -r

# --- File Names
ELF_NAME           = $(PRODUCT_NAME).elf
ROM_NAME           = $(PRODUCT_NAME).gba
BIN_NAME           = $(PRODUCT_NAME)

#MODEL              = -mthumb-interwork -mthumb
MODEL              = -mthumb-interwork -marm -mlong-calls #This makes interrupts work
SPECS              = -specs=gba.specs

# --- Archiver
AS                 = $(DKPATH)/arm-none-eabi-as
ASFLAGS            = -mthumb-interwork

# --- Compiler
CC                 = $(DKPATH)/arm-none-eabi-gcc
CFLAGS             = $(MODEL) -O2 -Wall -pedantic -Wextra -std=c99 -save-temps -D_ROM=$(ROM_NAME) -D_VBA=$(VBASIM)


# --- Linker
LD                 = $(DKPATH)/arm-none-eabi-gcc
LDFLAGS            = $(SPECS) $(MODEL) -lm

# --- Object/Executable Packager
OBJCOPY            = $(DKPATH)/arm-none-eabi-objcopy
OBJCOPYFLAGS       = -O binary

# --- ROM Fixer
GBAFIX             = $(DKPATH)/gbafix

# --- Delete
RM                 = rm -f

OBJECTS = $(SOURCES:.c=.o)


# --- Main build target

all : clean run

run : $(ROM_NAME)
	$(VBASIM) $(ROM_NAME)


build : $(ROM_NAME)

# --- Build .elf file into .gba ROM file
$(ROM_NAME) : $(ELF_NAME)
	$(OBJCOPY) $(OBJCOPYFLAGS) $(ELF_NAME) $(ROM_NAME)
	$(GBAFIX) $(ROM_NAME)

# --- Build .o files into .elf file
$(ELF_NAME) : $(OBJECTS)
	$(LD) $(OBJECTS) $(LDFLAGS) -o $@

# -- Build .c files into .o files
$(OBJECTS) : %.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@



clean:
	$(RM) $(ROM_NAME)
	$(RM) $(ELF_NAME)
	$(RM) $(BIN_NAME)
	$(RM) *.o
