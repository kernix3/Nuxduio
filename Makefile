build:
        @gcc -S nuxduio.c -o etc/nuxduio.S
        @gcc etc/nuxduio.S -o bin/nuxduio
run:
        @./bin/nuxduio
clean:
        @rm -r etc/nuxduio.S
        @rm -r bin/nuxduio
help:
        @cat README.txt
