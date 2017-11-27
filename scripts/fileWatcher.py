#!/usr/bin/python
import os
import time
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

class MyHandler(FileSystemEventHandler):
   def on_modified(self, event):
     print "Got it!"
     os.system("sh /home/iPackage.sh")


if __name__ == "__main__":
    event_handler = MyHandler()
    observer = Observer()
    observer.schedule(event_handler, path='/home/test/', recursive=False)
    observer.start()

    try:
        while 1:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
        observer.join()

