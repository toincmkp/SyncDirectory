import sys, argparse

from scapy.all import *
from datetime import *

def args_check(s, d, b):
    arg_s = 1 if s else 0
    arg_d = 2 if d else 0
    arg_b = 4 if b else 0
    sum = arg_s + arg_d + arg_b

#    check = True if (b and (s or d)) or (not b and (s and d)) else False
    check = True if (sum > 4) or (sum == 3) else False

    if sum == 1: ip = s
    elif sum == 2: ip = d
    elif sum == 4: ip = b

    return check, sum, ip

def check_ip(p, ip, sum):
    check = False

    if 'IP' in p:
        if sum == 1 and p['IP'].src == ip: check = True
        elif sum == 2 and p['IP'].dst == ip: check = True
        elif sum == 4 and ((p['IP'].src == ip) or (p['IP'].dst == ip)): check = True

    return check

def main():
    psr = argparse.ArgumentParser()
    psr.add_argument("-s", "--src", default = False)
    psr.add_argument("-d", "--dst", default = False)
    psr.add_argument("-b", "--both", default = False)
    args = psr.parse_args()

    check, sum, ip = args_check(args.src, args.dst, args.both)

    if check:
        print "[!] Using only -b option is better."
        exit(0)

    if sum == 0:
        print "[!] usage: need -s, -d or -b. [-> -h]"
        exit(0)
        
    packets = rdpcap('t.pcap')

    traffic_list = {}
    for p in packets:
        if check_ip(p, ip, sum):
            t = str(datetime.fromtimestamp(int(p.time))).split(" ")[1]

            if t not in traffic_list:
                traffic_list[t] = 0

            else:
                traffic_list[t] += (p['IP'].len) * 8

    if sum == 1: filename = "src_" + args.src + ".csv"
    elif sum == 2: filename = "dst_" + args.dst + ".csv"
    else: filename = "both_" + args.both + ".csv"

    f = open(filename, 'w')
    f.write('t,bps\n')

    for t in sorted(traffic_list.keys()):
        data = t + "," + str(traffic_list[t]) + "\n"
        f.write(data)

    f.close()

if __name__ == '__main__':
    main()
