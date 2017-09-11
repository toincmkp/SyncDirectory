from scapy.all import *
from datetime import *

# -s, -d, -a

def main():
    selected_ip = "192.168.1.4"

    packets = rdpcap('t.pcap')

    print packets[2].show
    print packets[2].time
    a = str(datetime.fromtimestamp(int(packets[2].time)))
    print a.split(" ")[1]

    print "===============================-"
    print packets[2]['IP'].src
    print packets[2]['Ether'].src
    print packets[2]['TCP'].dport
    print packets[2]['IP'].len + 14

    dlist = {}
    for p in packets:
        if p['IP'].src not in dlist:
            dlist[p['IP'].src] = 0

        else:
            dlist[p['IP'].src] += (packets[2]['IP'].len + 14) * 8

    print dlist

if __name__ == '__main__':
    main()

