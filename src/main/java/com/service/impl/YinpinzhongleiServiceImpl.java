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


import com.dao.YinpinzhongleiDao;
import com.entity.YinpinzhongleiEntity;
import com.service.YinpinzhongleiService;
import com.entity.vo.YinpinzhongleiVO;
import com.entity.view.YinpinzhongleiView;

@Service("yinpinzhongleiService")
public class YinpinzhongleiServiceImpl extends ServiceImpl<YinpinzhongleiDao, YinpinzhongleiEntity> implements YinpinzhongleiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YinpinzhongleiEntity> page = this.selectPage(
                new Query<YinpinzhongleiEntity>(params).getPage(),
                new EntityWrapper<YinpinzhongleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YinpinzhongleiEntity> wrapper) {
		  Page<YinpinzhongleiView> page =new Query<YinpinzhongleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YinpinzhongleiVO> selectListVO(Wrapper<YinpinzhongleiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YinpinzhongleiVO selectVO(Wrapper<YinpinzhongleiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YinpinzhongleiView> selectListView(Wrapper<YinpinzhongleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YinpinzhongleiView selectView(Wrapper<YinpinzhongleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
