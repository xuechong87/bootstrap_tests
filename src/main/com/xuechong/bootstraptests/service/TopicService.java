package com.xuechong.bootstraptests.service;

import java.util.List;

import com.xuechong.bootstraptests.model.Topic;


public interface TopicService {
	public void add(Topic t);
	public List<Topic> list(Integer page);
	public int totalPage();
	public void remove(String id);
	public Topic findById(String id);
}
