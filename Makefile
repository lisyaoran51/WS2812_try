
obj-m	+= hello.o

all:
	make -C ../../linux-source M=$(PWD) modules

clean:
	make -C ../../linux-source M=$(PWD) clean
