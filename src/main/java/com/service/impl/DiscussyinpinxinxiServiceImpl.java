package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiscussyinpinxinxiDao;
import com.entity.DiscussyinpinxinxiEntity;
import com.service.DiscussyinpinxinxiService;
import com.entity.vo.DiscussyinpinxinxiVO;
import com.entity.view.DiscussyinpinxinxiView;

@Service("discussyinpinxinxiService")
public class DiscussyinpinxinxiServiceImpl extends ServiceImpl<DiscussyinpinxinxiDao, DiscussyinpinxinxiEntity> implements DiscussyinpinxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussyinpinxinxiEntity> page = this.selectPage(
                new Query<DiscussyinpinxinxiEntity>(params).getPage(),
                new EntityWrapper<DiscussyinpinxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussyinpinxinxiEntity> wrapper) {
		  Page<DiscussyinpinxinxiView> page =new Query<DiscussyinpinxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussyinpinxinxiVO> selectListVO(Wrapper<DiscussyinpinxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussyinpinxinxiVO selectVO(Wrapper<DiscussyinpinxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussyinpinxinxiView> selectListView(Wrapper<DiscussyinpinxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussyinpinxinxiView selectView(Wrapper<DiscussyinpinxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
