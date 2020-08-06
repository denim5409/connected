from tkinter import *

root = Tk()
root.title("GUI 프로그램")
root.geometry("640x480")
 
chkvar = IntVar() #chkvar에 int형으로 값을 저장한다.
chkbox = Checkbutton(root, text="오늘하루 보지않기", variable=chkvar)
chkbox.select #자동 선택
chkbox.deselect() #선택해제 처리
chkbox.pack()

def btncmd():
    print(chkvar.get()) #체크안되었으면 0, 되었으면 1을 반환


btn  = Button(root, text="클릭", command=btncmd)
btn.pack()


root.mainloop()

