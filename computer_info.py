#!/usr/bin/env python
#coding:utf8

import uuid
import socket
import fcntl
import struct


class PCClient(object):

    def get_mac_address(self):
        mac = uuid.UUID(int=uuid.getnode()).hex[-12:]
        return ":".join([mac[e:e+2] for e in range(0, 11, 2)])

    def get_ip(self):
        hostname = socket.getfqdn(socket.gethostname())
        return socket.gethostbyname(hostname)

#linux 
def get_ip_address(ifname):
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    return socket.inet_ntoa(fcntl.ioctl(s.fileno(),
        0x8915,  # SIOCGIFADDR
        struct.pack('256s', ifname[:15])
    )[20:24])


if __name__ == "__main__":
    pc = PCClient()
    print pc.get_ip(), "->IP"
    print pc.get_mac_address(), "->MAC"
    print "LINUX\n"
    print get_ip_address("lo"), get_ip_address("eth0")
