CONVERT=rsvg-convert -w 150 -h 150
OPTIPNG=optipng

PNG=grimoire.png \
	blue_ok.png \
	blue_ng.png

all: $(PNG)

%.png: %.svg
	$(CONVERT) $< -o $@
	$(OPTIPNG) $@
