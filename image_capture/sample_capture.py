# Install 'python-picamera' from apt-get before using this
import picamera
from time import sleep

camera = picamera.PiCamera()
camera.start_preview()
sleep(2)
is_recording = False

def record(duration, enable_stabilization, filename):
    '''Records video from the camera module. Duration defines
    how long video will be recorded for, enable_stabilization is a
    boolean that will enable native video stabilization. If
    duration = -1, then it will record indefinitely until told to
    stop.'''
    camera.video_stabilization = enable_stabilization

    camera.start_preview()
    # camera warm-up pi
    sleep(2)
    camera.start_recording(filename)
    print("Started recording")

    if duration != -1:
        sleep(duration)
        camera.stop_recording()
        print("Stopped recoridng")


def capture_image(is_repeating, interval_length, iterations, filename, file_extension):
    '''Captures an image or multiple images in succession.
    If is_repeating is false, then a single image will be captured.
    If not, the camera will take pictures in sucession every x seconds
    defined by interval_length, as long as specified by iterations.
    If iterations = -1, then image capture will be continuous until
    told to stop'''
    counter = 1
    
    if iterations == -1:
        while is_repeating:
            camera.capture(filename + str(counter) + file_extension)
            print("Captured image (continuous)")
            # Making sure we don't overwrite files
            counter = counter + 1
            sleep(interval_length)
    else:
        for i in range(iterations):
            print("Captured image (iterations)")
            camera.capture(filename + str(i + 1) + file_extension)
            sleep(interval_length)


def stop_recording():
    '''Stops the camera from recording video'''
    camera.stop_recording()
    print("Stopped recording")


def stop_img_capture():
    '''Stops the camera from continuously taking pictures at a 
    set interval'''
    is_recording = False
    print("Stopped image capture")


# Recording a video for 30 seconds
record(5, False, "test_video.h264")

# Capturing image every 1 second 2 times as a .jpg
capture_image(True, 1, 2, "test_image", ".jpg")

camera.close()
