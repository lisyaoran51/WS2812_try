
obj-m	+= hello.o

all drivers:
	make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C  /lib/modules/$(shell uname -r)/build M=$(PWD) clean
