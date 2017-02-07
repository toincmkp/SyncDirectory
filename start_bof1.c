#include <stdio.h>
#include <sys/personality.h>

int main(){
	personality(ADDR_NO_RANDOMIZE);
	system("sudo socat -d -d -lf log_bof1.log TCP-LISTEN:1337,reuseaddr,fork EXEC:\"/BoF1\",chroot=/home/bof1,su-d=bof1,pty &");

	return 0;
}
