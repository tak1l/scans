import socket

ports = [21,23,80,443,8080]

for port in ports:
    client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client.settimeout(0.1)
    codigo = client.connect_ex(('127.0.0.1', port)) #IP ou DNS
    if codigo == 0:
        print "PORT:\n",port,"OPEN"
    else:
        print "PORT:\n",port, "CLOSED"
