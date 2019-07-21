CONVERT=rsvg-convert -w 150 -h 150
OPTIPNG=optipng

PNG=grimoire.png

all: $(PNG)

%.png: %.svg
	$(CONVERT) $< -o $@
	$(OPTIPNG) $@
