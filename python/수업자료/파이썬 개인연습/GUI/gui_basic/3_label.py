from tkinter import *

root = Tk()
root.title("GUI 프로그램")
root.geometry("640x480")
# # root.geometry("640x480+300+100") #가로, 세로, x, y
# root.resizable(False, False) #x, y 값 변경 불가 

label1 = Label(root, text="안녕하세요")
label1.pack()

photo = PhotoImage(file="img.png")
label2 = Label(root, image=photo)
label2.pack()

def change():
    label1.config(text="또만나요")

    global photo2
    photo2 = PhotoImage(file="img2.png")
    label2.config(image=photo2)

btn = Button(root, text="클릭", command=change)
btn.pack()

root.mainloop()

