import pygame
import sys
import time
import socket
 
 
TCP_IP = '192.168.1.200'
TCP_PORT = 2222
BUFFER_SIZE = 1024

disconnected = 1
print "----------NASA LARC Robo-Ops----------"
print "Attempting to connect to rover..."
while disconnected == 1:
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.connect((TCP_IP, TCP_PORT))
        disconnected = 0;
        print "Connected!"
    except socket.error:
        print "SOCKET ERROR: Retrying..."
    except:
        print "UNEXPECTED ERROR(0):", sys.exc_info()[0]
        raise
 
#s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#s.connect((TCP_IP, TCP_PORT))

pygame.init()
pygame.joystick.init()
x = 0
y = 0
x_expo_low = 1000
y_expo_low = 1000
x_expo_med = 800
y_expo_med = 500
x_expo_high = 300
y_expo_high = 10


my_joystick = pygame.joystick.Joystick(0)
my_joystick.init()
while True:
    try:
        pygame.event.pump()
        if my_joystick.get_button(3) == 1:
            x_expo = x_expo_low
            y_expo = y_expo_low
        elif my_joystick.get_button(4) == 1:
            x_expo = x_expo_high
            y_expo = y_expo_high
        else:
            x_expo = x_expo_med
            y_expo = y_expo_med
        y = -int(my_joystick.get_axis(1)*1000)
        y = (500*y^(y_expo*2+1))/(500^(y_expo*2+1))
        if y > 500:
            y = 500
        elif y < 5 and y > -5:
            y = 0
        elif y < -500:
            y = -500
        y = 1500 + y
        s.send('y')
        s.send(str(y))
        s.send(';')
        x = -int(my_joystick.get_axis(3)*1000)
        x = (500*x^(x_expo*2+1))/(500^(x_expo*2+1))
        if x > 500:
            x = 500
        elif x < 10 and x > -10:
            x = 0
        elif x <-500:
            x = -500
        x = 1500 + x
        s.send('x')
        s.send(str(x))
        s.send(';')
        time.sleep(.1)
    except socket.error:
        disconnected = 1
        print "SOCKET ERROR: Retrying..."
        while disconnected == 1:
            try:
                s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                s.connect((TCP_IP, TCP_PORT))
                disconnected = 0;
                print "Connected!"
            except socket.error:
                print "SOCKET ERROR: Retrying..."
            except:
                print "UNEXPECTED ERROR(0):", sys.exc_info()[0]
                raise
    except:
        print "UNEXPECTED ERROR:", sys.exc_info()[0]
        raise
