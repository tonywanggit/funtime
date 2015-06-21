all:
	rebar compile
	cd demos; make

live:
	rebar compile
	cd demos; make live


echo dev
