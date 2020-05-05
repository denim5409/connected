from tkinter import*
import tkinter
import tkinter.ttk
import math
from tkinter import messagebox
from tkinter import ttk
import tkinter as tk
import tkinter.ttk as ttk
import os
import PIL
from PIL import Image,ImageTk
import datetime
import subprocess
# import pront2
# from pront2 import *
import numpy as np
import cv2

window = Tk()
window.title("로그인화면")
window.geometry('600x900')
window.resizable(width=TRUE, height = TRUE);

mainframe=Frame(window)
mainframe.pack(fill = "both", expand=YES)

def clickMe():
    if str1.get() == 'a' and str2.get() == 'a' :
        messagebox.showinfo("로그인성공", str1.get()+ "님 환영합니다!")
        mainframe.destroy()
        second()
    elif str1.get() == 'b' and str2.get() == 'b' :
        messagebox.showinfo("로그인성공", "관리자님 환영합니다!")
        mainframe.destroy()
        third()
    elif str1.get() == 'c' and str2.get() == 'c' :
        messagebox.showinfo("로그인성공", "관리자님 환영합니다!")
        mainframe.destroy()
        forth()
    else:
        messagebox.showinfo("로그인실패", "ID, 비밀번호가 잘못되었습니다.")
str1 = StringVar()
str2 = StringVar()
L1 = Label(mainframe, text="ID : ")
L2 = Label(mainframe, text="비밀번호 : ")
textbox1 = tkinter.Entry(mainframe, width=20, textvariable=str1)
textbox2 = tkinter.Entry(mainframe, width=20, textvariable=str2)
L1.pack(side=LEFT)
textbox1.pack(side=LEFT)
L2.pack(side=LEFT)
textbox2.pack(side=LEFT)
action=ttk.Button(mainframe, text="Click Me", command=clickMe)
action.pack(side=LEFT)

def second():
      #-top_frame
    top_frame=Frame(window)
    top_frame.pack(fill = "both", expand=YES)

    bottom_frame=Frame(window)
    bottom_frame.pack(side=TOP, fill=BOTH, expand=YES)

    frame_1 = Frame(top_frame, background="white", relief="groove", bd=1)
    frame_1.pack(side=LEFT, fill=BOTH, expand=YES)#사진프레임

    frame_2=Frame(top_frame, relief="groove", bd=2)
    frame_2.pack( side=LEFT, fill=BOTH, expand=YES)
    frame_3=Frame(top_frame, relief="groove", bd=2)
    frame_3.pack(side=LEFT, fill=BOTH, expand=YES)

    # 라벨 Lable(부모 윈도우, 옵션)
    # pack()을 해야 윈도우에 표시

    photo = PhotoImage(file = "C:\python\mario10.png") 
    label7 = Label(frame_1,image = photo ,width=100, height=100)
    label1 = Label(frame_2, text = "이름");
    name = StringVar()
    print(name)
    label2 = Label(frame_2, text = "반이름");
    group = StringVar()
    print(group)
    label3 = Label(frame_2, text="부모명");
    parents = StringVar
    print(parents)
    label4 = Label(frame_3, text = "나이");
    age = StringVar()
    print(age)
    label5 = Label(frame_3, text = "선생님");
    teacher = StringVar
    print(teacher)
    label6 = Label(frame_3, text="연락처");
    phone = StringVar
    print(phone)

    #출력창
    label7.pack(side = TOP);

    label1.pack(side = TOP );
    label2.pack(side = TOP);
    label3.pack(side = TOP);
    label4.pack(side = TOP);
    label5.pack(side = TOP);
    label6.pack(side = TOP);

    # font(글꼴,크기) , fg = 글씨 색깔 , bg = 뒷배경 색깔
    
    #메뉴탭 체온,기분상태


    notebook=tkinter.ttk.Notebook(bottom_frame)
    notebook.pack(fill = "both")

    frame1=tkinter.Frame(window)
    notebook.add(frame1, text="체온")

    label8=tkinter.Label(frame1, text="측정시간별 체온")
    label8.pack()

    width = 360
    height = 300

    def cc(self) :
        treeview.tag_configure("tag2", background="red")

    treeview=tkinter.ttk.Treeview(frame1, columns=["one", "two"], 
    displaycolumns=["two", "one"])
    treeview.pack()

    treeview.column("#0", width=70)
    treeview.heading("#0", text="num")

    treeview.column("one", width=100, anchor="center")
    treeview.heading("one", text="체온", anchor="center")

    treeview.column("#2", width=100, anchor="w")
    treeview.heading("two", text="측정시간", anchor="center")

    treelist=[(37.2, "2020-05-04 10:30:10"), (37.1, "2020-05-04 11:05:10"), 
    (36.9, "2020-05-04 11:45:17"), (36.8, "2020-05-04 12:15:38"), (36.5, "2020-05-04 12:57:12")]

    for i in range(len(treelist)):
        treeview.insert('', 'end', text=i, values=treelist[i], iid=str(i)+"번")

    treeview.tag_bind("tag1", sequence="<<TreeviewSelect>>", callback=cc)

    print()
    label9=tkinter.Label(frame1, text="그래프로 보기")
    label9.pack()

    vcenter = height/2
    hcenter = width/2
    
    y_amplitude = 100 #sin함수의 최대값은 1이기 때문에 그림으로 나타내기 위해 증폭
    
    
    #Canvas 생성
    canvas = Canvas(frame1, width=width, height=height, bg='white')
    canvas.pack()
    
    cycle = 180
    # sin()감쇠
    px=0
    py=vcenter
    for x in range(1000):
        y = math.sin((x*math.pi)/cycle)*y_amplitude + vcenter
        sinLine = canvas.create_line(px, py, x, y, fill='red')
        px=x
        py=y
        if(cycle>1):
            cycle-=0.5
        if(y_amplitude>1):
            y_amplitude-=0.3
    
    
    #좌표축 생성
    canvas.create_line(hcenter, 0, hcenter, height)
    canvas.create_line(0, vcenter, width, vcenter)
    
    #Text 출력
    canvas.create_text(100, 10, text=u"감쇠하는 모양", fill='red')
    


    frame2=tkinter.Frame(window)
    notebook.add(frame2, text="기분상태")

    label10=tkinter.Label(frame2, text="표정별 기분상태")
    label10.pack()

def third() : 
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

def forth():
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


window.mainloop();
