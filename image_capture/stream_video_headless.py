import socket
import time
import picamera
       
def start_streaming(port):
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
            
'''def set_resolution(x_res, y_res):
    pi_camera = picamera.PiCamera()
    pi_camera.resolution(x_res, y_res)

def set_framerate(fps):
    pi_camera.framerate = fps'''
#TODO make a class out of this