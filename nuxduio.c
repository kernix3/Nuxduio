#include <stdio.h>
#include <string.h>

int main()
{
    printf("-- Nuxduio --\n\n");
    char* mapping = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    char input[100];
    printf("> ");
    fgets(input, sizeof(input), stdin);
    int mem=0;
    int counter=0;
    for (int i=0; i<strlen(input); i++) {
        char c = input[i];
        for (int j=0; j<8; j++) {
            char this_bit;
            this_bit = (c & 128) >> 7;
            mem = mem << 1;
            mem = mem | this_bit;
            counter ++;
            c = c << 1;
            if (counter == 6) {
                printf("%c",mapping[mem]);
                mem = 0;
                counter = 0;
            }
        }
    }
    mem = mem << (6 - counter);
    if (strlen(input) % 3 == 1) {
        printf("%c==", mapping[mem]);
    }
    if (strlen(input) % 3 == 2) {
        printf("%c=", mapping[mem]);
    }
    printf("\n");
    return 0;
}
