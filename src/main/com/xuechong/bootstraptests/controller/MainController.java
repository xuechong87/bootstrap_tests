package com.xuechong.bootstraptests.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xuechong.bootstraptests.model.Comment;
import com.xuechong.bootstraptests.model.Topic;
import com.xuechong.bootstraptests.service.CommentService;
import com.xuechong.bootstraptests.service.TopicService;

@Controller
@RequestMapping(value="/main")
public class MainController {
	
	@Autowired(required=true)
	private CommentService commentService;
	@Autowired(required=true)
	private TopicService topicService;
	
	

	@RequestMapping("/topic/list/{page}")
	public String list(@PathVariable("page") String page,ModelMap modelMap){
		List<Topic> topicList = this.topicService.list(Integer.parseInt(page));
		modelMap.put("topicList", topicList);
		modelMap.put("totalPage", this.topicService.totalPage());
		return "pages/list.jsp";
	}
	
	@RequestMapping("/topic/add")
	public String add(Topic topic,ModelMap modelMap){
		topic.setCreateDate(new Date());
		this.topicService.add(topic);
		return this.list("1",modelMap);
	}
	
	@RequestMapping("/topic/{id}/{page}")
	public String viewTopic(@PathVariable("id") String id,
			@PathVariable("page") String page,ModelMap modelMap){
		modelMap.put("commentList", 
				this.commentService.listByTopic(id, Integer.parseInt(page)));
		modelMap.put("topic", this.topicService.findById(id));
		modelMap.put("curPage", page);
		modelMap.put("totalPage", this.commentService.totalPageByTopic(id));
		return "pages/viewTopic.jsp";
	}
	
	@RequestMapping("/topic/comment/add")
	public String addComment(Comment comment,ModelMap modelMap){
		comment.setCreateDate(new Date());
		this.commentService.addComment(comment);
		return this.viewTopic(comment.getTopicId(), "1",modelMap);
	}
	
}
