import tkinter
import tkinter.font
import tkinter.ttk


# #OpenCV 적용_1
# import cv2
# from PIL import Image
# from PIL import ImageTk

# def convert_to_tkimage():
#     global src

#     gray = cv2.cvtColor(src, cv2.COLOR_BGR2GRAY)
#     _, binary = cv2.threshold(gray, 100, 255, cv2.THRESH_BINARY)

#     img = Image.fromarray(binary)
#     imgtk = ImageTk.PhotoImage(image=img)

#     label.config(image=imgtk)
#     label.image = imgtk


window=tkinter.Tk()
window.title("covid-19")
window.geometry("640x400+100+100")
window.resizable(False, False)




# 라벨
# label=tkinter.Label(window, text="파이썬", width=10, height=5, relief="groove")
# label.pack()


# 버튼 사용방법
# count=0
# def countUP():
#     global count
#     count +=1
#     label.config(text=str(count))

# label = tkinter.Label(window, text="0")
# label.pack()

# button = tkinter.Button(window, text = "실행", overrelief="solid", width=15, command=countUP, repeatdelay=1000, repeatinterval=100)
# button.pack()

# 입력창 사용방법
# def calc(event):
#     label.config(text="결과="+str(eval(entry.get())))

# entry=tkinter.Entry(window)
# entry.bind("<Return>", calc)
# entry.pack()

# label=tkinter.Label(window)
# label.pack()

# 리스트박스 사용방법
# listbox = tkinter.Listbox(window, selectmode='extended', height=0)
# listbox.insert(0, "1번")
# listbox.insert(1, "2번")
# listbox.insert(2, "3번")
# listbox.insert(3, "4번")
# listbox.insert(4, "5번")
# listbox.pack()

# 체크박스
# def flash():
#     checkbutton1.flash()#깜빡임

# CheckVariety_1=tkinter.IntVar()
# CheckVariety_2=tkinter.IntVar()
# CheckVariety_3=tkinter.IntVar()

# checkbutton1=tkinter.Checkbutton(window, text="O", variable=CheckVariety_1) #variable = 체크버튼의 상태를 저장할 제어 변수(tkinter.IntVar())
# checkbutton2=tkinter.Checkbutton(window, text="△", variable=CheckVariety_2)
# checkbutton3=tkinter.Checkbutton(window, text="X", variable=CheckVariety_3, command=flash)

# checkbutton1.pack()
# checkbutton2.pack()
# checkbutton3.pack()

# 라디오버튼
# def check():
#     label.config(text= "RadioVariety_1 = " + str(RadioVariety_1.get()) + "\n" +
#                        "RadioVariety_2 = " + str(RadioVariety_2.get()) + "\n\n" +
#                        "Total = "          + str(RadioVariety_1.get() + RadioVariety_2.get()))

# RadioVariety_1=tkinter.IntVar()
# RadioVariety_2=tkinter.IntVar()

# radio1=tkinter.Radiobutton(window, text="1번", value=3, variable=RadioVariety_1, command=check)
# radio1.pack()

# radio2=tkinter.Radiobutton(window, text="2번(1번)", value=3, variable=RadioVariety_1, command=check)
# radio2.pack()

# radio3=tkinter.Radiobutton(window, text="3번", value=9, variable=RadioVariety_1, command=check)
# radio3.pack()

# label=tkinter.Label(window, text="None", height=5)
# label.pack()

# radio4=tkinter.Radiobutton(window, text="4번", value=12, variable=RadioVariety_2, command=check)
# radio4.pack()

# radio5=tkinter.Radiobutton(window, text="5번", value=15, variable=RadioVariety_2, command=check)
# radio5.pack()

# 상단메뉴
# def close():
#     window.quit()
#     window.destroy()

# menubar=tkinter.Menu(window)

# menu_1=tkinter.Menu(menubar, tearoff=0)
# menu_1.add_command(label="하위 메뉴 1-1")
# menu_1.add_command(label="하위 메뉴 1-2")
# menu_1.add_separator()
# menu_1.add_command(label="하위 메뉴 1-3", command=close)
# menubar.add_cascade(label="상위 메뉴 1", menu=menu_1)

# menu_2=tkinter.Menu(menubar, tearoff=0, selectcolor="red")
# menu_2.add_radiobutton(label="하위 메뉴 2-1", state="disable")
# menu_2.add_radiobutton(label="하위 메뉴 2-2")
# menu_2.add_radiobutton(label="하위 메뉴 2-3")
# menubar.add_cascade(label="상위 메뉴 2", menu=menu_2)

# menu_3=tkinter.Menu(menubar, tearoff=0)
# menu_3.add_checkbutton(label="하위 메뉴 3-1")
# menu_3.add_checkbutton(label="하위 메뉴 3-2")
# menubar.add_cascade(label="상위 메뉴 3", menu=menu_3)

# window.config(menu=menubar)


#메뉴버튼
# menubutton=tkinter.Menubutton(window,text="메뉴 메뉴버튼", relief="raised", direction="right")
# menubutton.pack()

# menu=tkinter.Menu(menubutton, tearoff=0)
# menu.add_command(label="하위메뉴-1")
# menu.add_separator()
# menu.add_command(label="하위메뉴-2")
# menu.add_command(label="하위메뉴-3")

# menubutton["menu"]=menu

# PACK - 공간배치
# b1=tkinter.Button(window, text="top")
# b1_1=tkinter.Button(window, text="top-1")

# b2=tkinter.Button(window, text="bottom")
# b2_1=tkinter.Button(window, text="bottom-1")

# b3=tkinter.Button(window, text="left")
# b3_1=tkinter.Button(window, text="left-1")

# b4=tkinter.Button(window, text="right")
# b4_1=tkinter.Button(window, text="right-1")
# b4_2=tkinter.Button(window, text="right-2")
# b4_3=tkinter.Button(window, text="right-3")
# b4_4=tkinter.Button(window, text="right-4")
# b4_5=tkinter.Button(window, text="right-5")
# b4_6=tkinter.Button(window, text="right-6")
# b4_7=tkinter.Button(window, text="right-7")
# b4_8=tkinter.Button(window, text="right-8")

# b5=tkinter.Button(window, text="center", bg="red")

# b1.pack(side="top")
# b1_1.pack(side="top", fill="x")

# b2.pack(side="bottom")
# b2_1.pack(side="bottom", anchor="e")

# b3.pack(side="left")
# b3_1.pack(side="left", fill="y")

# b4.pack(side="right")
# b4_1.pack(side="right", anchor="n")
# b4_2.pack(side="right", anchor="e")
# b4_3.pack(side="right", anchor="s")
# b4_4.pack(side="right", anchor="w")
# b4_5.pack(side="right", anchor="ne")
# b4_6.pack(side="right", anchor="nw")
# b4_7.pack(side="right", anchor="se")
# b4_8.pack(side="right", anchor="sw")

# b5.pack(expand=True, fill="both")


# grid
# b1=tkinter.Button(window, text="(0, 0)")
# b2=tkinter.Button(window, text="(0, 1)", width=20)
# b3=tkinter.Button(window, text="(0, 2)")

# b4=tkinter.Button(window, text="(1, 0)")
# b5=tkinter.Button(window, text="(1, 1)")
# b6=tkinter.Button(window, text="(1, 3)")

# b7=tkinter.Button(window, text="(2, 1)")
# b8=tkinter.Button(window, text="(2, 2)")
# b9=tkinter.Button(window, text="(2, 4)")

# b1.grid(row=0, column=0)
# b2.grid(row=0, column=1)
# b3.grid(row=0, column=2)

# b4.grid(row=1, column=0, rowspan=2)
# b5.grid(row=1, column=1, columnspan=3)
# b6.grid(row=1, column=3)

# b7.grid(row=2, column=1, sticky="w")
# b8.grid(row=2, column=2)
# b9.grid(row=2, column=99)


#place
# b1=tkinter.Button(window, text="(50, 50)")
# b2=tkinter.Button(window, text="(50, 100)")
# b3=tkinter.Button(window, text="(100, 150)")
# b4=tkinter.Button(window, text="(0, 200)")
# b5=tkinter.Button(window, text="(0, 300)")
# b6=tkinter.Button(window, text="(0, 300)")

# b1.place(x=50, y=50)
# b2.place(x=50, y=100, width=50, height=50)
# b3.place(x=100, y=150, bordermode="inside")
# b4.place(x=0, y=200, relwidth=0.5)
# b5.place(x=0, y=300, relx=0.5)
# b6.place(x=0, y=300, relx=0.5, anchor="s")

# 프레임
# frame1=tkinter.Frame(window, relief="groove", bd=1)
# frame1.pack(side="left", fill="both", expand=True)

# frame2=tkinter.Frame(window, relief="groove", bd=2)
# frame2.pack(side="right", fill="both", expand=True)

# button1=tkinter.Button(frame1, text="프레임1")
# button1.pack(side="right")

# button2=tkinter.Button(frame2, text="프레임2")
# button2.pack(side="left")


# 메세지
# message=tkinter.Message(window, text="메세지입니다.", width=100, relief="solid")
# message.pack()


# 캔버스
# canvas=tkinter.Canvas(window, relief="solid", bd=2)

# line=canvas.create_line(10, 10, 20, 20, 20, 130, 30, 140, fill="red")
# polygon=canvas.create_polygon(50, 50, 170, 170, 100, 170, outline="yellow")
# oval=canvas.create_oval(100, 200, 150, 250, fill="blue", width=3)
# arc=canvas.create_arc(100, 100, 300, 300, start=0, extent=150, fill='red')

# canvas.pack()


#스크롤바
# frame=tkinter.Frame(window)

# scrollbar=tkinter.Scrollbar(frame)
# scrollbar.pack(side="right", fill="y")

# listbox=tkinter.Listbox(frame, yscrollcommand = scrollbar.set)
# for line in range(1,1001):
#    listbox.insert(line, str(line) + "/1000")
# listbox.pack(side="left")

# scrollbar["command"]=listbox.yview

# frame.pack()


#스케일 넣기
# def select(self):
#     value="값 : "+str(scale.get())
#     label.config(text=value)

# var=tkinter.IntVar()

# scale=tkinter.Scale(window, variable=var, command=select, orient="horizontal", showvalue=False, tickinterval=50, to=500, length=300)
# scale.pack()

# label=tkinter.Label(window, text="값 : 0")
# label.pack()


# 텍스트박스
# text=tkinter.Text(window)

# text.insert(tkinter.CURRENT, "안녕하세요.\n")
# text.insert("current", "반습니다.")
# text.insert(2.1, "갑")

# text.pack()

# text.tag_add("강조", "1.0", "1.6")
# text.tag_config("강조", background="yellow") 
# text.tag_remove("강조", "1.1", "1.2")


#라벨 프레임
# def check():
#     label.config(text=RadioVariety_1.get())
    
# labelframe=tkinter.LabelFrame(window, text="플랫폼 선택")
# labelframe.pack()

# RadioVariety_1=tkinter.StringVar()
# RadioVariety_1.set("미선택")

# radio1=tkinter.Radiobutton(labelframe, text="Python", value="가능", variable=RadioVariety_1, command=check)
# radio1.pack()
# radio2=tkinter.Radiobutton(labelframe, text="C/C++", value="부분 가능", variable=RadioVariety_1, command=check)
# radio2.pack()
# radio3=tkinter.Radiobutton(labelframe, text="JSON", value="불가능", variable=RadioVariety_1, command=check)
# radio3.pack()
# label=tkinter.Label(labelframe, text="None")
# label.pack()


#내부 윈도우
# panedwindow1=tkinter.PanedWindow(relief="raised", bd=2)
# panedwindow1.pack(expand=True)
 
# left=tkinter.Label(panedwindow1, text="내부윈도우-1 (좌측)")
# panedwindow1.add(left)

# panedwindow2=tkinter.PanedWindow(panedwindow1, orient="vertical", relief="groove", bd=3)
# panedwindow1.add(panedwindow2)

# right=tkinter.Label(panedwindow1, text="내부윈도우-2 (우측)")
# panedwindow1.add(right)

# top=tkinter.Label(panedwindow2, text="내부윈도우-3 (상단)")
# panedwindow2.add(top)

# bottom=tkinter.Label(panedwindow2, text="내부윈도우-4 (하단)")
# panedwindow2.add(bottom)


#폰트
# font=tkinter.font.Font(family="맑은 고딕", size=20, slant="italic")

# label=tkinter.Label(window, text="파이썬 3.6", font=font)
# label.pack()


#이미지 불러오기
# image=tkinter.PhotoImage(file="C:\python\mario10.png")

# label=tkinter.Label(window, image=image)
# label.pack()


#Bind - 마우스로 그리기
# width=1

# def drawing(event):
#     if width>0:
#         x1=event.x-1
#         y1=event.y-1
#         x2=event.x+1
#         y2=event.y+1
#         canvas.create_oval(x1, y1, x2, y2, fill="blue", width=width)

# def scroll(event):
#     global width
#     if event.delta==120:
#         width+=1
#     if event.delta==-120:
#         width-=1
#     label.config(text=str(width))

# canvas=tkinter.Canvas(window, relief="solid", bd=2)
# canvas.pack(expand=True, fill="both")
# canvas.bind("<B1-Motion>", drawing)
# canvas.bind("<MouseWheel>", scroll)

# label=tkinter.Label(window, text=str(width))
# label.pack()


#상위메뉴(Toplevel)
# menubar=tkinter.Menu(window)

# menu_1=tkinter.Menu(menubar, tearoff=0)
# menu_1.add_command(label="하위 메뉴 1-1")
# menu_1.add_command(label="하위 메뉴 1-2")
# menu_1.add_separator()
# menu_1.add_command(label="하위 메뉴 1-3")
# menubar.add_cascade(label="상위 메뉴 1", menu=menu_1)

# toplevel=tkinter.Toplevel(window, menu=menubar)
# toplevel.geometry("320x200+820+100")

# label=tkinter.Label(toplevel, text="YUN DAE HEE")
# label.pack()


#Spinbox
# label=tkinter.Label(window, text="숫자를 입력하세요.", height=3)
# label.pack()

# def value_check(self):
#     label.config(text="숫자를 입력하세요.")
#     valid = False
#     if self.isdigit():
#         if (int(self) <= 50 and int(self) >= 0):
#             valid = True
#     elif self == '':
#         valid = True
#     return valid

# def value_error(self):
#     label.config(text=str(self) + "를 입력하셨습니다.\n올바른 값을 입력하세요.")

# validate_command=(window.register(value_check), '%P')
# invalid_command=(window.register(value_error), '%P')

# spinbox=tkinter.Spinbox(window, from_ = 0, to = 50, validate = 'all', validatecommand = validate_command, invalidcommand=invalid_command)
# spinbox.pack()




#목록선택, ComboBox
# values=[str(i)+"번" for i in range(1, 101)] 

# combobox=tkinter.ttk.Combobox(window, height=15, values=values)
# combobox.pack()

# combobox.set("목록 선택")


#Progressbar
# progressbar=tkinter.ttk.Progressbar(window, maximum=100, mode="indeterminate")
# progressbar.pack()

# progressbar.start(50)


#★★★노트북
# notebook=tkinter.ttk.Notebook(window, width=300, height=300)
# notebook.pack()

# frame1=tkinter.Frame(window)
# notebook.add(frame1, text="페이지1")

# label1=tkinter.Label(frame1, text="페이지1의 내용")
# label1.pack()

# frame2=tkinter.Frame(window)
# notebook.add(frame2, text="페이지2")

# label2=tkinter.Label(frame2, text="페이지2의 내용")
# label2.pack()

# frame3=tkinter.Frame(window)
# notebook.add(frame3, text="페이지4")

# label3=tkinter.Label(frame3, text="페이지4의 내용")
# label3.pack()

# frame4=tkinter.Frame(window)
# notebook.insert(2, frame4, text="페이지3")

# label4=tkinter.Label(frame4, text="페이지3의 내용")
# label4.pack()


#Sizegrip - 텍스트창의 크기를 임의 조절 가능하게끔
# def Drag(event):
    
#     x=sizegrip.winfo_x()+event.x
#     y=sizegrip.winfo_y()+event.y
#     sz_width=sizegrip.winfo_reqwidth()
#     sz_height=sizegrip.winfo_reqheight()

#     text["width"]=x-sz_width
#     text["height"]=y-sz_height

#     if x >= sz_width and y >= sz_height and x < window.winfo_width() and y < window.winfo_height():
#         text.place(x=0, y=0, width=x, height=y)
#         sizegrip.place(x=x-sz_width, y=y-sz_height)

# text=tkinter.Text(window)
# text.place(x=0, y=0)

# sizegrip=tkinter.ttk.Sizegrip(window)
# sizegrip.place(x=text.winfo_reqwidth()-sizegrip.winfo_reqwidth() , y=text.winfo_reqheight()-sizegrip.winfo_reqheight() )
# sizegrip.bind("<B1-Motion>", Drag)




#Treeview - +표시 누르면 하위 내용 나오는거 ★treeview.column은 써먹을수 있음
def cc(self):
    treeview.tag_configure("tag2", background="red")

treeview=tkinter.ttk.Treeview(window, columns=["one", "two"], displaycolumns=["two", "one"])
treeview.pack()

treeview.column("#0", width=70)
treeview.heading("#0", text="num")

treeview.column("one", width=100, anchor="center")
treeview.heading("one", text="문자", anchor="e")

treeview.column("#2", width=100, anchor="w")
treeview.heading("two", text="ASCII", anchor="center")

treelist=[("A", 65), ("B", 66), ("C", 67), ("D", 68), ("E", 69)]

for i in range(len(treelist)):
    
    treeview.insert('', 'end', text=i, values=treelist[i], iid=str(i)+"번")

top=treeview.insert('', 'end', text=str(len(treelist)), iid="5번", tags="tag1")
top_mid1=treeview.insert(top, 'end', text="5-2", values=["SOH", 1], iid="5번-1")
top_mid2=treeview.insert(top, 0, text="5-1", values=["NUL", 0], iid="5번-0", tags="tag2")
top_mid3=treeview.insert(top, 'end', text="5-3", values=["STX", 2], iid="5번-2", tags="tag2")

treeview.tag_bind("tag1", sequence="<<TreeviewSelect>>", callback=cc)


#Separator
# button1=tkinter.Button(window, width=10, height=5, text="1번")
# button1.grid(row=0, column=0)

# button2=tkinter.Button(window, width=10, height=5, text="2번")
# button2.grid(row=0, column=2)

# button3=tkinter.Button(window, width=10, height=5, text="3번")	
# button3.grid(row=1, column=1)
		
# button4=tkinter.Button(window, width=10, height=5, text="4번")
# button4.grid(row=2, column=0)
		
# button5=tkinter.Button(window, width=10, height=5, text="5번")
# button5.grid(row=2, column=2)

# s=tkinter.ttk.Separator(window, orient="vertical")	
# s.grid(row=0,column=1, sticky='ns')

# s2=tkinter.ttk.Separator(window, orient="horizontal")	
# s2.grid(row=1,column=2, sticky='ew')

# s3=tkinter.ttk.Separator(window, orient="vertical")
# s3.grid(row=1,column=0, sticky='ns')


#OpenCV 적용_2
# src = cv2.imread("C:\python\mario10.png")
# src = cv2.resize(src, (640, 400))

# img = cv2.cvtColor(src, cv2.COLOR_BGR2RGB)

# img = Image.fromarray(img)
# imgtk = ImageTk.PhotoImage(image=img)

# label = tkinter.Label(window, image=imgtk)
# label.pack(side="top")

# button = tkinter.Button(window, text="이진화 처리", command=convert_to_tkimage)
# button.pack(side="bottom", expand=True, fill='both')



#매개변수 전달
# def command_args(argument1, argument2, argument3):
#     global arg1
#     arg1 = argument1 * 2
#     print(argument1, argument2, argument3)

# arg1 = 1
# arg2 = "alpha"
# arg3 = "beta"

# button = tkinter.Button(window, width=25, height=10, text="버튼", command=lambda: command_args(arg1, arg2, arg3))
# button.pack(expand=True, anchor="center")






window.mainloop()
