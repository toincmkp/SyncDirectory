# import argparse
import sys

from scapy.all import *
from datetime import *

# -s, -d, -a

'''
def traffic_src_ip(ip):
    packets = rdpcap('t.pcap')

    for p in packets:
        if 'IP' in p:
'''
def check_ip(p, ip):
    check = False

    if 'IP' in p:
        if p['IP'].src == ip:
            check = True

    return check

def main():
    argv = sys.argv
    ip = argv[1]

    packets = rdpcap('t.pcap')

    traffic_list = {}
    for p in packets:
        if check_ip(p, ip):
            t = str(datetime.fromtimestamp(int(p.time))).split(" ")[1]

            if t not in traffic_list:
                traffic_list[t] = 0

            else:
                traffic_list[t] += (p['IP'].len) * 8

    for t in sorted(traffic_list.keys()):
        data = t + "," + str(traffic_list[t])
        print data






    '''
    psr = argparse.ArgumentParser()
    psr.add_argument("-s", "--src", default = False)
    psr.add_argument("-d", "--dst", default = False)
    psr.add_argument("-a", "--all", default = False)
    args = psr.parse_args()
    '''
#    if args.src: traffic_out(args.src)
#    if args.dst: traffic_out(args.dst)
#    if args.all: traffic_out(args.all)

#    if args.src: traffic_src_ip(args.src)

    '''
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

    print packets[237].show

    i = 0
    for p in packets:
        if 'IP' in p:
            i += 1
        else:
            p.show
            i += 1

    dlist = {}
    i = 0
    for p in packets:
        if p['IP'].src not in dlist:
            dlist[p['IP'].src] = 0

        else:
            dlist[p['IP'].src] += (p['IP'].len) * 8

        print str(i) + " : " + p['IP'].src
        i += 1

    print dlist

    '''

if __name__ == '__main__':
    main()
