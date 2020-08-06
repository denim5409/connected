from tkinter import *

root = Tk()
root.title("GUI 프로그램")
root.geometry("640x480")
 
listbox = Listbox(root, selectmode="extended", height=0) 
#extended : 여러개 선택가능, single : 한개만 선택가능, height : 항목을 보여주는 갯수, 0은 전부

listbox.insert(0, "사과")
listbox.insert(1, "딸기")
listbox.insert(2, "바나나")
listbox.insert(END, "수박")
listbox.insert(END, "포도")
listbox.pack()


def btncmd():
    # listbox.delete(0) #0 : 맨앞, END : 맨 뒤
    # print("리스트에는 ", listbox.size(), "개가 있어요")
    # print("1번째부터 3번째까지의 항목 : ", listbox.get(0,2)) 
    print("선택된 항목 : ", listbox.curselection()) #선택된 값의 인덱스 값을 반환


btn  = Button(root, text="클릭", command=btncmd)
btn.pack()


root.mainloop()

