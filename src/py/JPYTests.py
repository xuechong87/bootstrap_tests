""""
jpy tests

"""

import java.lang.Object

class JPYTests(java.lang.Object):
    
    def __init__(self):  
        """
        init
        """
    def say(self):
        out = java.lang.System.out
        out.println("this is py speaking")
        return
    
if __name__ == "__main__":
    test = JPYTests()
    test.say()
    
