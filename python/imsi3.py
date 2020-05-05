#실시간 영상 받아오는것
from tkinter import*
import tkinter
import tkinter.ttk

import tkinter as tk
import tkinter.ttk as ttk
import os
# import manag
# from manag import *
import cv2
import PIL
from PIL import Image,ImageTk
import datetime

window = Tk()
window.title("관리자용"); #캡션
window.geometry("400x400"); #윈도우 창의 크기
window.resizable(width=TRUE, height = TRUE); 

notebook=tkinter.ttk.Notebook(window, width=390, height=390)
notebook.pack()

frame1=tkinter.Frame(window)
notebook.add(frame1, text="실시간")


bstart = ttk.Button(frame1, text="실시")
bstart.pack()


label1=tkinter.Label(frame1,text='cam')
label1.place(relwidth = 1, relheight=1)
cap = cv2.VideoCapture(0)
cap.set(cv2.CAP_PROP_FRAME_WIDTH, 450)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 450)
def show_frame():
    _, frame = cap.read()
    frame = cv2.flip(frame, 1)
    cv2image = cv2.cvtColor(frame, cv2.COLOR_BGR2RGBA)
    img = PIL.Image.fromarray(cv2image)
    imgtk = ImageTk.PhotoImage(image=img)
    label1.imgtk = imgtk
    label1.configure(image=imgtk)
    label1.after(10, show_frame)


show_frame()

frame2=tkinter.Frame(window)
notebook.add(frame2, text="학생")

label2=tkinter.Label(frame2, text="페이지2의 내용")
label2.pack()

 
window.mainloop();