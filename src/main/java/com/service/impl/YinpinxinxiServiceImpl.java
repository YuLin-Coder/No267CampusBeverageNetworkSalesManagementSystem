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


import com.dao.YinpinxinxiDao;
import com.entity.YinpinxinxiEntity;
import com.service.YinpinxinxiService;
import com.entity.vo.YinpinxinxiVO;
import com.entity.view.YinpinxinxiView;

@Service("yinpinxinxiService")
public class YinpinxinxiServiceImpl extends ServiceImpl<YinpinxinxiDao, YinpinxinxiEntity> implements YinpinxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YinpinxinxiEntity> page = this.selectPage(
                new Query<YinpinxinxiEntity>(params).getPage(),
                new EntityWrapper<YinpinxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YinpinxinxiEntity> wrapper) {
		  Page<YinpinxinxiView> page =new Query<YinpinxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YinpinxinxiVO> selectListVO(Wrapper<YinpinxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YinpinxinxiVO selectVO(Wrapper<YinpinxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YinpinxinxiView> selectListView(Wrapper<YinpinxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YinpinxinxiView selectView(Wrapper<YinpinxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
