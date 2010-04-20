all: approx_pi hello beer_song

%: %.chpl
	chpl -o $* --fast $<

clean: 
	rm -f approx_pi hello beer_song
