#環境  
```
ctf@ubuntu-pwn:~$ uname -a
Linux ubuntu-pwn 4.4.0-59-generic #80~14.04.1-Ubuntu SMP Fri Jan 6 18:02:02 UTC 2017 x86_64 x86_64 x86_64 GNU/Linux

ctf@ubuntu-pwn:~$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 14.04.5 LTS
Release:        14.04
Codename:       trusty

ctf@ubuntu-pwn:~$ gcc --version                                                                       
gcc (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4
```
#問題のソース
```
#include <stdio.h>

int main(){
    int num = 0;
    char buf[16]= {};

    puts("What's your name?");
    scanf("%s",buf);

    if (num != 0){
        puts("That's right!");
        system("cat flag");

        return 0;
    }

    printf("Bye! %s!\n", buf);

    return 0;
}
```

#コンパイル
```
gcc pwnb1.c -o pwnb1 -m32 -fno-stack-protector
```
#セキュリティ機構  
```
ASLR      : 2
CANARY    : disabled
FORTIFY   : disabled
NX        : ENABLED
PIE       : disabled
RELRO     : Partial
```

#実行方法
```
ctf@ubuntu-pwn:~$ cd ~
ctf@ubuntu-pwn:~$ sudo socat -d -d -lf log_pwnb1 TCP-LISTEN:997,reuseaddr,fork EXEC:"/pwnb1",chroot=/home/pwnb1,su-d=pwnb1,pty &
```
