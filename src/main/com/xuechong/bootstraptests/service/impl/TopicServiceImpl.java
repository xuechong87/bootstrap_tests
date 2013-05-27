package com.xuechong.bootstraptests.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xuechong.bootstraptests.dao.TopicDao;
import com.xuechong.bootstraptests.model.Topic;
import com.xuechong.bootstraptests.service.TopicService;

@Service
public class TopicServiceImpl implements TopicService{

	@Resource
	private TopicDao topicDao;
	@Override
	public void add(Topic t) {
		this.topicDao.add(t);
	}

	@Override
	public List<Topic> list(Integer page) {
		return this.topicDao.list(page);
	}

	@Override
	public void remove(String id) {
		this.topicDao.remove(id);
	}

	@Override
	public int totalPage() {
		return this.topicDao.totalPage();
	}

	@Override
	public Topic findById(String id) {
		return this.topicDao.;
	}

}
