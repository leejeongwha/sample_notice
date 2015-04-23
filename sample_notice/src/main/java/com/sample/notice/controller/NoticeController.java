package com.sample.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sample.notice.annotation.AuthCheck;
import com.sample.notice.dao.NoticeDAO;
import com.sample.notice.model.Notice;
import com.sample.notice.model.Paging;

@Controller
public class NoticeController {
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@Autowired
	private NoticeDAO noticeDAO;

	@RequestMapping(value = "form")
	public String form() {
		return "notice/detail";
	}

	@RequestMapping({"/", "list"})
	public String list(Model model, Paging paging) {

		List<Notice> noticeList = noticeDAO.getNoticeList(paging);

		logger.info("noticeList size : " + noticeList.size());

		model.addAttribute("noticeList", noticeList);

		return "notice/list";
	}

	@RequestMapping(value = "/{seq}")
	public String search(Model model, @PathVariable("seq") int seq) {
		Notice notice = noticeDAO.getNotice(seq);

		model.addAttribute("notice", notice);

		return "notice/detail";
	}

	@RequestMapping(value = "save")
	@AuthCheck
	public String save(HttpServletRequest request, Notice notice) {
		String userId = (String)request.getSession().getAttribute("admin");
		notice.setUserId(userId);
		noticeDAO.addNotice(notice);
		return "redirect:/list";
	}
}
