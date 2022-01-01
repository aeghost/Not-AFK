# Author: Matthieu GOSSET
# DEPS : Ahk2Exe and Make for Windows
# Optionnal : InkScape
SVG2PNGCOMPILER=inkscape
FROM_SVG=assets/SleepZZZ
TO_FORMAT=png
TO_ARG=--export-type=png
SVGCOMPILE=$(SVG2PNGCOMPILER) $(TO_ARG) $(FROM_SVG).svg

AHKPATH=C:/Program Files/AutoHotkey/Compiler
AHKCOMPILER=Ahk2Exe.exe
AHKNAME=Not-AFK
AHKSRC=$(AHKNAME).ahk
AHKIN=/in $(AHKSRC)
AHKOUT=/out $(AHKNAME).exe
AHKICON=/icon $(FROM_SVG).png
AHKCOMPILE="$(AHKPATH)/$(AHKCOMPILER)" $(AHKIN) $(AHKOUT) $(AHKICON)

.PHONY: all build clean Not-AFK.exe

all: build

assets/SleepZZZ.png:
	@echo "Compiling SVG into PNG"
	$(SVGCOMPILE)

Not-AFK.exe: assets/SleepZZZ.png
	@echo "Compiling AHK into BIN"
	$(AHKCOMPILE)

build: Not-AFK.exe

clean:
	rm -f Not-AFK.exe