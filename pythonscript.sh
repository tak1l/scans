#!/usr/bin/python

import socket

print "##################################################################"
print "PORT SCAN PYTHON"
print "\n"
print "EXAMPLE: IP: 127.0.0.1"
print "PORT: 80"
print "\n"
print "##################################################################"
print "\n"





ip = raw_input("Enter the ip: ")
port = input("Enter the port: ")
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

if s.connect_ex((ip,port)):
	print "Port", port, "is closed"
else:
	print "Port", port, "is open"



