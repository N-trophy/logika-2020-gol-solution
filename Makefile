TARGETS=gol-solution.pdf

all: $(TARGETS) clean

%.pdf: %.tex
	texfot pdflatex $^

clean:
	rm -rf $(TARGETS:.pdf=.aux) $(TARGETS:.pdf=.log) $(TARGETS:.pdf=.out)

pdfclean: clean
	rm -rf $(TARGETS)

.PHONY: clean pdfclean all
