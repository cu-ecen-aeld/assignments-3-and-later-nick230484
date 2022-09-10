

#ifndef ($(CROSS_COMPILE))
cc=gcc
#endif

#cc=$(CROSS_COMPILE)

ifeq ($(CROSS_COMPILE),aarch64-none-linux-gnu-)
	cc=/usr/local/install-lnx/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc
endif
#cc=/fica/asta

#CC = gcc

writer: writer.o
		$(cc) writer.o -o writer # Runs third

writer.o: writer.c
		$(cc) -c writer.c -o writer.o # Runs second


#writer: writer.c
#	   $(CC) -o 

#writer: writer.o
	
#writer.o: writer.c
	
clean:
	rm -f *.o writer *.elf *.map
