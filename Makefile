# Macros
BINPATH = d:\MiKTeX\miktex\bin\x64
LUALATEX = $(BINPATH)\lualatex
MAKEINDEX = $(BINPATH)\makeindex
BIBER = $(BINPATH)\biber.exe
NAME = first
SOURCE = $(NAME).ltx
OUTPUT = $(NAME).pdf

all: $(OUTPUT)

$(OUTPUT): $(SOURCE)
	$(LUALATEX) $(SOURCE)
	$(BIBER) $(NAME)
	$(MAKEINDEX) $(SOURCE)
	$(LUALATEX) $(SOURCE)

clean:
	-del $(OUTPUT)
	-del *.aux
	-del *.bbl
	-del *.bcf
	-del *.blg
	-del *.idx
	-del *.ilg
	-del *.ind
	-del *.log
	-del *.out
	-del *.run.xml
	-del *.toc

