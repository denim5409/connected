from PyQt5 import QtWidgets, uic, QtGui
import sys
import cv2
import numpy as np

class Ui(QtWidgets.QDialog):
    def __init__(self):
        super(Ui, self).__init__()
        uic.loadUi('test4.ui', self)

        self.loadBtn = self.findChild(QtWidgets.QPushButton, 'loadBtn')
        self.loadBtn.clicked.connect(self.loadBtnClicked) 

        self.procRun = self.findChild(QtWidgets.QPushButton, 'procRun')
        self.procRun.clicked.connect(self.procRunClicked) 
        self.photo = self.findChild(QtWidgets.QLabel, 'photo')     
        self.photo.setPixmap(QtGui.QPixmap("images/pawns.jpg"))
        self.photo.setScaledContents(True)
        self.result = self.findChild(QtWidgets.QLabel, 'result')     
        self.fnameEdit = self.findChild(QtWidgets.QLineEdit,'fnameEdit')
        self.fnameEdit.clear()
        self.show()

    def processingImage(self, grayImage, rgbImage):      
        return grayImage

    def displayOutputImage(self, outImage, mode):
        img_info = outImage.shape
        if outImage.ndim == 2 :
            qImg = QtGui.QImage(outImage, img_info[1], img_info[0], img_info[1]*1, QtGui.QImage.Format_Grayscale8)
        else :
            qImg = QtGui.QImage(outImage, img_info[1], img_info[0], img_info[1]*img_info[2], QtGui.QImage.Format_RGB888)
        pixmap = QtGui.QPixmap.fromImage(qImg)
        if mode == 0 :
            self.photo.setPixmap(pixmap)
            self.photo.setScaledContents(True)
        else :
            self.result.setPixmap(pixmap)
            self.result.setScaledContents(True)

    def imread(self, filename, flags=cv2.IMREAD_COLOR, dtype=np.uint8): 
        try: 
            n = np.fromfile(filename, dtype) 
            img = cv2.imdecode(n, flags) 
            return img 
        except Exception as e: 
            print(e) 
            return None


    def procRunClicked(self):
        imgRGB = cv2.cvtColor(self.src, cv2.COLOR_BGR2RGB)
        imgGRAY = cv2.cvtColor(self.src, cv2.COLOR_BGR2GRAY)
        outImg = self.processingImage(imgGRAY,imgRGB)        
        self.displayOutputImage(outImg,1)
        

    def loadBtnClicked(self):
        path = 'images'
        filter = "All Images(*.jpg; *.png; *.bmp);;JPG (*.jpg);;PNG(*.png);;BMP(*.bmp)"
        fname = QtWidgets.QFileDialog.getOpenFileName(self, "파일로드", path, filter)
        filename = str(fname[0])
        self.fnameEdit.setText(filename)
        self.src = self.imread(filename) 
        img_rgb = cv2.cvtColor(self.src,cv2.COLOR_BGR2RGB)
        self.displayOutputImage(img_rgb,0)

app = QtWidgets.QApplication(sys.argv)
window = Ui()
app.exec_()