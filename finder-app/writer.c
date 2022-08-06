#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <errno.h>
#include <syslog.h>
#include <string.h>
#include <unistd.h>

 int main (int argc, char *argv[]) {
	 
	openlog(NULL,0,LOG_USER);
	syslog (LOG_DEBUG, "Writing %s to %s", argv[2],argv[1]);
	

	if ( argc < 3) {

		printf ("Invalid number of arguments\n");
		syslog(LOG_ERR, "Invalid number of arguments: %d", argc);
		exit(1);

	} else {

		int fd;
		fd = open(argv[1], O_CREAT|O_RDWR, 0666);
		const char *buf = argv[2];
                
                if (fd == -1) {

			printf("can't open file");
			syslog(LOG_ERR, "can't open file");
			exit(1);
		
		}

/*ssize_t nr;*/
		/*nr = */write(fd, buf, strlen (buf)); 
	 }
         
         closelog();	
	 return 0;
}
