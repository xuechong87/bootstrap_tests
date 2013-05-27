package com.xuechong.bootstraptests.dao.impl;

import org.springframework.stereotype.Repository;

import com.xuechong.bootstraptests.dao.CommentDao;
import com.xuechong.bootstraptests.model.Comment;

@Repository
public class CommentDaoImpl extends BaseDaoImpl<Comment> implements CommentDao{

}
