package com.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.demo.dao.SelectindentDaoInf;
import com.demo.entity.Indent;
import com.demo.entity.Page;

@Service("SelectindentServiceImpl")
public class SelectindentServiceImpl implements SelectindentServiceInf {

	@Resource(name="SelectindentDaoImpl")
	private SelectindentDaoInf dao;
	
	@Override
	public List<Indent> find(Page page, Indent indent) {
		return dao.find(page, indent);
	}

	@Override
	public long count(Indent indent) {
		return dao.count(indent);
	}

	@Override
	public List<Indent> finds(Page page, Indent indent, int info) {
		return dao.finds(page, indent, info);
	}

	@Override
	public long counts(Indent indent,int info) {
		return dao.counts(indent,info);
	}

	@Override
	public List<Indent> findss(Page page, Indent indent, int info,
			String totalprices) {
		return dao.findss(page, indent, info, totalprices);
	}

	@Override
	public long countss(Indent indent,int info, String totalprices) {
		return dao.countss(indent, info,totalprices);
	}

	@Override
	public List<Indent> findall(Page page, Indent indent, String totalprices) {
		return dao.findall(page, indent, totalprices);
	}

	@Override
	public long countall(Indent indent, String totalprices) {
		return dao.countall(indent, totalprices);
	}

}
