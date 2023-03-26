


objects = foo.o bar.o all.o

all: $(objects)

$(objects): %.o: %.c 

all.c:
	echo "int main() {return 0;}" > all.c 

%.c:
	touch $@

clean:
	rm -f *.c *.o all


# CC = gcc
# CFLAGS = -g

# blah: blah.o

# blah.c:
# 	echo "int main() {return 0;}" > blah.c

# clean:
# 	rm -f blah*


# # Automatic variables.
# hey: one two
# 	echo $@

# 	echo $?

# 	echo $^

# 	touch hey

# one:
# 	touch one
# two:
# 	touch two

# clean:
# 	rm -f hey one two




# print: $(wildcard *.c)
# 	ls -la $?


# # Multiple targets and $@ variable.
# all: f1.o f2.o
# f1.o f2.o:
# 	@echo $@


# blah: blah.o
# 	cc blah.o -o blah

# blah.o: blah.c
# 	cc -c blah.c -o blah.o

# blah.c:
# 	cc blah.c -o blah

