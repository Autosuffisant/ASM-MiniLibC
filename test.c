#include <stdio.h>

size_t strlen(char *);
char *strchr(char *, int);
int strcmp(char *, char *);
void *memset(void *, int, size_t);
void *memcpy(void *, void *, size_t);
void *memmove(void *, void *, size_t);
int strncmp(char *, char *, size_t);

void main()
{
    int len = strlen("Hello");
    printf("strlen:\n");
    printf("Strlen of 'Hello' is : %d\n", len);
    char c = 'a';
    char cTwo = 'y';
    char *strchrString = "This is a test";
    char *strchrOccurence = strchr(strchrString, c);
    char *strchrStringTwo = "This is another one";
    char *strchrOccurenceTwo = strchr(strchrString, c);
    printf("strchr:\n");
    printf("First occurence of 'a' in 'This is a test' is %d\n", (int)(strchrOccurence - strchrString));
    printf("First occurence of 'y' in 'This is another one' is %d\n", (int)(strchrOccurenceTwo - strchrStringTwo));
    printf("strcmp:\n");
    printf("strcmp of 'para' and 'paradigm' is %d\n", strcmp("para", "paradigm"));
    printf("strcmp of 'paradigm' and 'para' is %d\n", strcmp("paradigm", "para"));
    printf("strcmp of 'para' and 'para' is %d\n", strcmp("para", "para"));
    printf("memset:\n");
    char strmemset[50] = "Prism is the worst guy ever";
    printf("Before memset(): %s\n", strmemset);
    memset(strmemset + 13, '.', 9 * sizeof(char));
    printf("After memset():  %s\n", strmemset);
    printf("memcpy:\n");
    char strmemcpy[50] = "Prism is so cool";
    char strmemcpydest[50] = "Prism is a douchebag";
    printf("Before memcpy(): %s\n", strmemcpydest);
    memcpy(strmemcpydest, strmemcpy, 20 * sizeof(char));
    printf("After memcpy():  %s\n", strmemcpydest);
    printf("memmove:\n");
    char strmove[50] = "abcdefghi";
    printf("Before memmove : %s\n", strmove);
    memmove(strmove + 3, strmove, 4);
    printf("After memmove : %s\n", strmove);
    char strncmpone[50] = "Prism<3";
    char strncmptwo[50] = "Prism";
    printf("strncmp:\n");
    printf("strncmp of %d of %s and %s is : %d\n", 7, strncmpone, strncmptwo,
    strncmp(strncmpone, strncmptwo, 7));
    printf("strncmp of %d of %s and %s is : %d\n", 7, strncmptwo, strncmpone,
    strncmp(strncmptwo, strncmpone, 7));
    printf("strncmp of %d of %s and %s is : %d\n", 5, strncmptwo, strncmpone,
    strncmp(strncmptwo, strncmpone, 5));
    return;
}