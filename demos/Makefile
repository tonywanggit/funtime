## set the paths for a default setup

all: beam
	erl -pa ../ebin\
	    -pa ./ebin\
        -detached\
		-s ezwebframe_demos start

beam: 
	erlc -o ebin *.erl */*.erl

clean:
	rm -rf *~ *.beam *.tmp
