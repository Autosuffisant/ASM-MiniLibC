##
## EPITECH PROJECT, 2021
## myMalloc
## File description:
## Makefile
##

CC = nasm

NASMFLAGS = -f elf64

LDFLAGS = -shared

RM = rm -f

TARGET_LIB = libasm.so

SRCS =	strchr.asm \
		strlen.asm \
		strcmp.asm \
		strncmp.asm \
		memset.asm \
		memcpy.asm \
		memmove.asm

OBJS = $(SRCS:.asm=.o)

all: ${TARGET_LIB}

$(TARGET_LIB): $(OBJS)
	ld -shared -o $(TARGET_LIB) $(OBJS)
	gcc ${LDFLAGS} -o $@ $^

$(SRCS:.asm=.o):%.o:%.asm
	nasm $(NASMFLAGS) -o $@ $<

clean:
	$(RM)	*.o

fclean: clean
	$(RM)	$(NAME)
	-${RM} ${TARGET_LIB} ${OBJS}

re: fclean all