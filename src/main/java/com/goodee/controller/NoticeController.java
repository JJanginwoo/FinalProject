package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {
	
	@GetMapping("notice")
	public String notice() {
		return "notice/notice";
	}
	@GetMapping("noticedetail")
	public String noticedetail() {
		return "notice/notice_detail";
	}
}
