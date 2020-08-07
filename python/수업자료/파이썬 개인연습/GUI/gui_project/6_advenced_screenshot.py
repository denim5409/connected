import time
import keyboard
from PIL import ImageGrab

def screenshot():
    curr_time = time.strftime("_%Y%m%d_%H%M%S")
    img = ImageGrab.grap()
    img.save("image{}.png".format(curr_time))

keyboard.add_hotkey("F9", screenshot)
# keyboard.add_hotkey("a", screenshot) #a 눌렀을때
# keyboard.add_hotkey("ctrl+shift+s", screenshot) #ctrl+shift+s눌렀을때

keyboard.wait("esc")