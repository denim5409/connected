from tkinter import *
import os

root = Tk()
root.title("메모장 프로그램")
root.geometry("640x480")

filename = "mynote.txt"

def open_file():
    if os.path.isfile(filename):
        with open(filename, "r", encoding="utf8") as file:
            txt.delete("1.0", END)
            txt.insert(END, file.read())

def save_file():
    with open(filename, "w", encoding="utf8") as file:
        file.write(txt.get("1.0", END))

menu = Menu(root)

menu_file = Menu(menu, tearoff=0)
menu_file.add_command(label="열기", command=open_file)
menu_file.add_command(label="저장", command=save_file)
menu_file.add_separator()
menu_file.add_command(label="끝내기", command = root.quit)
menu.add_cascade(label="파일", menu=menu_file)

#편집,서식,보기,도움말
menu.add_cascade(label="편집")
menu.add_cascade(label="서식")
menu.add_cascade(label="보기")
menu.add_cascade(label="도움말")

#스크롤바
scrollbart = Scrollbar(root)
scrollbart.pack(side="right", fill="y")

#본문영역
txt = Text(root, yscrollcommand=scrollbart.set)
txt.pack(side="left", fill="both", expand=True)
scrollbart.config(command=txt.yview)

root.config(menu=menu)
root.mainloop()

