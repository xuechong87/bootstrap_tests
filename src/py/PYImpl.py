import com.xuechong.bootstraptests.py.interfaces.PyInterface

class PYImpl(com.xuechong.bootstraptests.py.interfaces.PyInterface):
    def __init__(self):
        """public PYImpl()"""
        
    def getDouble(self,inStr):
        return inStr * 2
