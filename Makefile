build:
        @gcc -S main.c -o etc/main.S
        @gcc etc/main.S -o bin/main
run:
        @./bin/main
clean:
        @rm -r etc/main.S
        @rm -r bin/main
help:
        @cat README.txt
