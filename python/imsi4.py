#실시간 영상 받아오는 코드
from tkinter import*
import tkinter
import tkinter.ttk

import tkinter as tk
import tkinter.ttk as ttk
import os
import subprocess
# import pront2
# from pront2 import *
import numpy as np
import cv2

window = Tk()
window.title("관리자용"); #캡션
window.geometry("400x400"); #윈도우 창의 크기
window.resizable(width=TRUE, height = TRUE); 

def silsigan():
    cap = cv2.VideoCapture(0)

    while(True):
        # Capture frame-by-frame
        ret, frame1 = cap.read()

        # Our operations on the frame come here
        gray = cv2.cvtColor(frame1, cv2.COLOR_BGR2GRAY)

        # Display the resulting frame
        cv2.imshow('frame1',gray) #imshow = 이미지출력
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
    # When everything done, release the capture
    # cap.release()
    cv2.destroyAllWindows()

notebook=tkinter.ttk.Notebook(window, width=390, height=390)
notebook.pack()

frame1 = Frame(window)
notebook.add(frame1, text="실시간")
notebook.pack()

frame2 = Frame(window)
notebook.add(frame2, text="두번째탭")
notebook.pack()

button1 = Button(frame1,text="실시간 영상",command=silsigan)
button1.pack()

# def silsigan():
#     app = pront2.App()
#     app.capture_aaa(frame1, '실시간')
#     pront2.App(tkinter.Tk(), "Tkinter and OpenCV")

# label=tkinter.Button(frame1, text="실시간 영상",COMMAND = silsigan())
# label.pack()
# 


# label1=pront2.Label(frame1, text="영상")
# label1.pack()


# def ffplay(event):
#     if lb.curselection():
#      file = lb.curselection()[0]
#      os.system("ffplay " + lb.get(file))

# for file in os.listdir():
#     if file.endswith(".mp4"):
#         lb.insert(0, file)
# bstart = ttk.Button(frame1, text="Start movie")
# bstart.pack()
 
# bstart.bind("<ButtonPress-1>", ffplay)





window.mainloop();