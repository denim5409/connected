from tkinter import *

root = Tk()
root.title("GUI 프로그램")
# root.geometry("640x480")
# # root.geometry("640x480+300+100") #가로, 세로, x, y
# root.resizable(False, False) #x, y 값 변경 불가 

btn1 = Button(root, text="버튼1")
btn1.pack()

btn2 = Button(root, padx=5, pady=10, text="버튼2")
btn2.pack()

btn3 = Button(root, padx=10, pady=5, text="버튼3") #버튼 크기가 글자 길이에 따라 변함
btn3.pack()

btn4 = Button(root, width=10, height=3, text="버튼4") #버튼 크기 고정됨(글자 길이 상관없음)
btn4.pack()

btn5 = Button(root, fg="red", bg="yellow", text="버튼5") 
btn5.pack()

photo = PhotoImage(file="img.png")
btn6 = Button(root, image=photo) 
btn6.pack()

def btncmd():
    print("버튼이 클릭되었어요")

btn7 = Button(root, text="동작하는 버튼", command=btncmd)
btn7.pack()





root.mainloop()

