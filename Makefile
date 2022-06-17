obj-m := chr_drv.o
HOST_KERN = /lib/modules/$(shell uname -r)/build/

all: 
	make -C $(HOST_KERN) M=$(PWD) modules
clean:
	make -C $(HOST_KERN) M=$(PWD) clean
