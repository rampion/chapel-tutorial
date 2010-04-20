SOURCES=$(wildcard *.chpl)

%: %.chpl
	chpl -o $* --fast $<

clean: 
	rm -f approx_pi
