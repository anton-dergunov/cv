LATEX=latexmk
NAME=Anton_Dergunov

SRC=src/cv.tex
LOGO_SRC=src/logo.tex

BUILD=build
OUT=output
ASSETS=assets

CV_PDF=$(OUT)/$(NAME).pdf
LOGO_PDF=$(BUILD)/logo.pdf
LOGO_CROP=$(ASSETS)/logo-crop.pdf

all: $(CV_PDF)

$(CV_PDF): $(SRC)
	mkdir -p $(BUILD) $(OUT)
	$(LATEX) -pdf -output-directory=$(BUILD) $(SRC)
	cp $(BUILD)/cv.pdf $(CV_PDF)

logo: $(LOGO_CROP)

$(LOGO_CROP): $(LOGO_SRC)
	mkdir -p $(BUILD)
	xelatex -output-directory=$(BUILD) $(LOGO_SRC)
	pdfcrop $(LOGO_PDF) $(LOGO_CROP)

clean:
	rm -rf $(BUILD)/*
