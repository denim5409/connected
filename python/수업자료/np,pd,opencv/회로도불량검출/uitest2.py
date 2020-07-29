from PyQt5 import QtWidgets, uic, QtGui
import sys
import cv2
import numpy as np

class Ui(QtWidgets.QDialog):
    def __init__(self):
        super(Ui, self).__init__()
        uic.loadUi('uitest2.ui', self)
        self.thr_value = 80

        self.run = self.findChild(QtWidgets.QPushButton, 'run')
        self.run.clicked.connect(self.run_show) 
        
        self.find = self.findChild(QtWidgets.QPushButton, 'find') 
        self.find.clicked.connect(self.find_show) 
        
        self.photo = self.findChild(QtWidgets.QLabel, 'photo')
        self.photo.setScaledContents(True)
        
        self.photo2 = self.findChild(QtWidgets.QLabel, 'photo2')
        self.photo2.setScaledContents(True)
        
        self.text = self.findChild(QtWidgets.QTextEdit,'text')
        self.show()

    def th1_changed(self):
        src = self.imread(self.filename, cv2.IMREAD_COLOR)
        img_gray = cv2.cvtColor(src, cv2.COLOR_RGB2GRAY)
        ret ,binary = cv2.threshold(img_gray,self.thr_value, 255, cv2.THRESH_BINARY)
        self.displayOutputImage(binary)
        
        return binary

    def th_changed(self,img_color):
        img_gray = cv2.cvtColor(img_color, cv2.COLOR_RGB2GRAY)
        ret ,binary = cv2.threshold(img_gray,self.thr_value, 255, cv2.THRESH_BINARY)
        
        return binary
    
    def displayOutputImage(self, outImage):
        img_info = outImage.shape
        if outImage.ndim == 2 :
            qImg = QtGui.QImage(outImage, img_info[1], img_info[0], img_info[1]*1, QtGui.QImage.Format_Grayscale8)
        else :
            qImg = QtGui.QImage(outImage, img_info[1], img_info[0], img_info[1]*img_info[2], QtGui.QImage.Format_RGB888)
        pixmap = QtGui.QPixmap.fromImage(qImg)
        self.photo.setPixmap(pixmap)
        self.photo.setScaledContents(True)



    def imread(self,filename, flags=cv2.IMREAD_COLOR, dtype=np.uint8): 
        try: 
            n = np.fromfile(filename, dtype) 
            img = cv2.imdecode(n, flags) 
            return img 
        except Exception as e: 
            print(e) 
            return None

    def find_show(self):
        
        fname = QtWidgets.QFileDialog.getOpenFileName(None,'',"50","*.bmp *.jpg *.png")
        self.filename = str(fname[0])
        
        self.text.setPlainText(self.filename)
        t = self.text.toPlainText()
        self.photo.setPixmap(QtGui.QPixmap(t))
        self.photo.setScaledContents(True)
        
        
    def run_show(self):
        src = self.imread(self.filename, cv2.IMREAD_COLOR)
        dst = self.contour_show()
        
        no_w1,no_w2 = self.s_detect_error(src)
        no_w3 = self.c_detect_error(src)
        c_min = 109000
        c_max = 122000
        s_min = 39000
        s_max = 47000

        if self.find_circle(src) < 6 or self.ng_count > 0 :
            cv2.putText(dst, 'NG',(1050,1300),cv2.FONT_HERSHEY_SIMPLEX,10,(0,0,255),7)
            print("NG")
        else :
            if no_w3 < c_min or no_w3 > c_max or no_w1 < s_min or no_w1 > s_max or no_w2 < s_min or no_w2 > s_max :
                cv2.putText(dst, 'NG',(1050,1300),cv2.FONT_HERSHEY_SIMPLEX,10,(0,0,255),7)
                print("NG")
            else :
                print("OK")
                cv2.putText(dst, 'OK',(1050,1300),cv2.FONT_HERSHEY_SIMPLEX,10,(0,255,0),7)
                

        cv2.imwrite("images/dst.jpg",dst)
        self.photo2.setPixmap(QtGui.QPixmap("images/dst.jpg"))
        self.photo2.setScaledContents(True)
        dst = cv2.resize(dst,dsize=(1295,971),interpolation=cv2.INTER_AREA)

        cv2.imshow("asdf", dst)
    
    def contour_show(self) :
        src = self.imread(self.filename, cv2.IMREAD_COLOR)
        dst = src.copy()

        binary = self.th1_changed()

        contours, hierarchy = cv2.findContours(binary, cv2.RETR_LIST,cv2.CHAIN_APPROX_NONE)
        self.ng_count = 0
        self.c_ng = 0
        
        s1_x = [40,313]
        s1_y = [300,1257]
        s2_x = [2261,2533]
        s2_y = [300,1257]
        s3_x = [360,2200]
        s3_y = [760,1060]

        i = 0
        j = 0
        q = 0
        k = 0

        cv2.rectangle(src,(s1_x[0],s1_y[0]) ,(s1_x[1],s1_y[1]) ,(0,255,0),2)
        cv2.rectangle(src,(s2_x[0],s2_y[0]) ,(s2_x[1],s2_y[1]) ,(0,255,0),2)
        cv2.rectangle(src,(s3_x[0],s3_y[0]) ,(s3_x[1],s3_y[1]) ,(0,255,0),2) 

        list1_ob = [[0 for i in range(2)] for j in range(7)]
        list2_ob = [[0 for i in range(2)] for j in range(3)]
        list3_ob = [[0 for i in range(2)] for j in range(3)]
        for cnt in contours:  
            cv2.drawContours(src,[cnt],0,(0,0,0),3)
            M = cv2.moments(cnt)
            if int(M['m00']) is not 0 :
                if int(M['m00']) > 5000 :
                    cx = int(M['m10']/(M['m00']+1e-5))
                    cy = int(M['m01']/(M['m00']+1e-5))
                    if cx < 1450 and cx > 1150 and cy > 470 and cy < 770 :
                        print("dis")
                    else :
                           
                        #print(cx,cy)
                        if cx < s3_x[1] and cx > s3_x[0] and cy < s3_y[1] and cy > s3_y[0] :
                            list1_ob[j][0] = cx
                            list1_ob[j][1] = cy
                            j += 1
                            cv2.putText(src, str(int(M['m00'])), (cx+4,cy+30), cv2.FONT_HERSHEY_SIMPLEX,1, (0,255,0), 2)
                        elif cx < s2_x[1] and cx > s2_x[0] and cy < s2_y[1] and cy > s2_y[0] :
                            list2_ob[q][0] = cx
                            list2_ob[q][1] = cy
                            q += 1
                            cv2.putText(src, str(int(M['m00'])), (cx+4,cy+30), cv2.FONT_HERSHEY_SIMPLEX,1, (0,255,0), 2)
                        elif cx < s1_x[1] and cx > s1_x[0] and cy < s1_y[1] and cy > s1_y[0] :
                            list3_ob[k][0] = cx
                            list3_ob[k][1] = cy
                            k += 1
                            cv2.putText(src, str(int(M['m00'])), (cx+4,cy+30), cv2.FONT_HERSHEY_SIMPLEX,1, (0,255,0), 2)
                        
                        if int(M['m00']) > 14500 and int(M['m00']) < 19000 :
                            cv2.circle(src, (cx, cy), 10, (255,0,0), -1)
                            cv2.drawContours(src,[cnt],0,(255,0,0),3)
                        else :
                            cv2.circle(src, (cx, cy), 10, (0,0,255), -1)
                            cv2.drawContours(src,[cnt],0,(0,0,255),3)
                            if i < 7:
                                self.c_ng += 1
                            self.ng_count += 1
                       
        list1 = sorted(list1_ob)
        list2 = sorted(list2_ob,key = lambda x : x[1])
        list3 = sorted(list3_ob,key = lambda x : x[1])
        
        #print(list3)

        
        for i in range(len(list1)):
            cv2.putText(src, str(i+1), (list1[i][0]+3,list1[i][1]), cv2.FONT_HERSHEY_SIMPLEX, 2, (0,255,0), 3)
        for i in range(len(list2)):
            cv2.putText(src, str(i+1), (list2[i][0]+3,list2[i][1]), cv2.FONT_HERSHEY_SIMPLEX, 2, (0,255,0), 3)
        for i in range(len(list3)):
            cv2.putText(src, str(i+1), (list3[i][0]+3,list3[i][1]), cv2.FONT_HERSHEY_SIMPLEX, 2, (0,255,0), 3)
        return src

    def error_contour_show(self,src) :
        binary = self.th_changed(src)

        contours, hierarchy = cv2.findContours(binary, cv2.RETR_LIST,cv2.CHAIN_APPROX_NONE)
        
        for cnt in contours:  
            cv2.drawContours(src,[cnt],0,(0,0,255),3)
        
        # cv2.imshow("show error",src)
        return src
    

    def find_circle(self,src) :
        dst = src.copy()
        
        aa = dst[300:1257,40:313]
        bb = dst[300:1257,2261:2533]

        ret1 ,binary1 = cv2.threshold(aa,60, 255, cv2.THRESH_BINARY)
        gray1 = cv2.cvtColor(binary1, cv2.COLOR_RGB2GRAY)
        
        circles1 = cv2.HoughCircles(gray1, cv2.HOUGH_GRADIENT,1,100,param1 = 50, param2 = 17, minRadius = 10, maxRadius = 80)

        ret2 ,binary2 = cv2.threshold(bb,40, 255, cv2.THRESH_BINARY)
        gray2 = cv2.cvtColor(binary2, cv2.COLOR_RGB2GRAY)
        
        circles2 = cv2.HoughCircles(gray2, cv2.HOUGH_GRADIENT,1,100,param1 = 50, param2 = 17, minRadius = 10, maxRadius = 80)
        
        num_circles = 0

        a = 0
        l = [[0 for i in range(2)] for j in range(95)]
        
        if circles1 is not None :
            for i in circles1[0]:
                l[a][0] = i[0]
                l[a][1] = i[1]
                cv2.circle(aa, (int(i[0]), int(i[1])), int(i[2]), (255,0,0),3)
                a += 1
            num_circles += len(circles1[0])    
            print(len(circles1[0]))

        if circles2 is not None :
            
            a = 0
            l2 = [[0 for i in range(2)] for j in range(95)]
        
            for i in circles2[0]:
                l2[a][0] = i[0]
                l2[a][1] = i[1]
                cv2.circle(bb, (int(i[0]), int(i[1])), int(i[2]), (255,0,0),3)
                a += 1
            num_circles += len(circles2[0])    
            print(len(circles2[0]))

       
        return num_circles

    def c_detect_error(self,src) :
        dd = src.copy()
        ret ,dd = cv2.threshold(dd,60, 255, cv2.THRESH_BINARY)
        cc = dd[760:1060,360:2200]
       
        W_Min = np.array([240,240,240],np.uint8) 
        W_Max = np.array([255,255,255],np.uint8)

        qq3 = cv2.inRange(cc,W_Min,W_Max)

        no_w3 = cv2.countNonZero(qq3)

        print(str(no_w3))

        c_min = 109000
        c_max = 122000
        
        if no_w3 < c_min or no_w3 > c_max or self. c_ng> 0 :
            cc = cv2.resize(cc,dsize=(1000,300),interpolation=cv2.INTER_AREA)
            self.error_contour_show(cc)

        return no_w3
    
    def s_detect_error(self,src) :
        dd = src.copy()
        ret ,dd = cv2.threshold(dd,60, 255, cv2.THRESH_BINARY)

        aa = dd[300:1257,40:313]
        bb = dd[300:1257,2261:2533]
        W_Min = np.array([240,240,240],np.uint8) 
        W_Max = np.array([255,255,255],np.uint8)

        qq1 = cv2.inRange(aa,W_Min,W_Max)
        qq2 = cv2.inRange(bb,W_Min,W_Max)
        
        no_w1 = cv2.countNonZero(qq1)
        no_w2 = cv2.countNonZero(qq2)

        print(str(no_w1))
        print(str(no_w2))

        s_min = 39000
        s_max = 47000
        
        if no_w1 < s_min or no_w1 > s_max:
            self.error_contour_show(aa)
        elif no_w2 < s_min or no_w2 > s_max: 
            self.error_contour_show(bb)
        
        return no_w1,no_w2


app = QtWidgets.QApplication(sys.argv)
window = Ui()
app.exec_()