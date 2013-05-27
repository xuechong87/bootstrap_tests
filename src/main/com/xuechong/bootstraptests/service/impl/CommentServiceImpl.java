package com.xuechong.bootstraptests.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.xuechong.bootstraptests.dao.CommentDao;
import com.xuechong.bootstraptests.model.Comment;
import com.xuechong.bootstraptests.service.CommentService;

public class CommentServiceImpl implements CommentService{

	@Resource
	private CommentDao commentDao;
	
	@Override
	public void addComment(Comment comment) {
		this.commentDao.add(comment);
	}

	@Override
	public List<Comment> list(int page) {
		return this.commentDao.list(page);
	}

	@Override
	public int totalPage() {
		return this.commentDao.totalPage();
	}

	@Override
	public List<Comment> listByTopic(String topicId,Integer page) {
		return this.commentDao.listByProp("topicId", topicId, page);
	}

	@Override
	public int totalPageByTopic(String topicId) {
		return this.commentDao.totalPageByProp("topicId", topicId);
	}

}
