import socket
import time
import picamera

with picamera.PiCamera() as camera:
    print("Camera initialized")
    camera.resolution = (640, 480)
    camera.framerate = 24

    server_socket = socket.socket()
    server_socket.bind(('0.0.0.0', 12345))
    server_socket.listen(0)
    print("Listening for connection...")

    # Accept a single connection and make a file-like object out of it
    connection = server_socket.accept()[0].makefile('wb')
    try:
        camera.start_recording(connection, format='h264')
        print("Recording has started")
        camera.wait_recording(60)
        camera.stop_recording()
    finally:
        connection.close()
        server_socket.close()