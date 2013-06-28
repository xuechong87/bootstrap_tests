
import com.xuechong.bootstraptests.service.TopicService
from org.apache.log4j import Logger
from DaoSupport import DaoSupport

class TopicService(com.xuechong.bootstraptests.service.TopicService,DaoSupport):
    
    logger = Logger.getLogger("TopicService py Impl")
    startIndex = lambda x : x > 0 and (x-1)*6 or 0
    
    def __init__(self):
        """public TopicServie()"""
        if self.logger.isInfoEnabled():
            self.logger.info(str(type(self)) + "init ")
        print str(type(self)) + "init "
        
    def add(self,topic):
        self.getSession().save(topic)
        print "py add"
        
    def list(self,page):
        hql = "FROM Topic ORDER BY createDate DESC"
        query = self.getSession().createQuery(hql)
        query.setFirstResult(self.getIndex(page))
        query.setMaxResults(6);
        return query.list()
    
    def totalPage(self):
        print "py totalPage"
        return 100
    
    def remove(self,id):
        print "py remove " + id
        
    def findById(id):
        print "py find by id"
        return None
    
    def findTop(top):
        print "py find top" + str(top)
        return []
    
