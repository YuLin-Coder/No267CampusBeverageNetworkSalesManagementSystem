package com.dao;

import com.entity.YinpinzhongleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YinpinzhongleiVO;
import com.entity.view.YinpinzhongleiView;


/**
 * 饮品种类
 * 
 * @author 
 * @email 
 * @date 2022-03-31 18:00:31
 */
public interface YinpinzhongleiDao extends BaseMapper<YinpinzhongleiEntity> {
	
	List<YinpinzhongleiVO> selectListVO(@Param("ew") Wrapper<YinpinzhongleiEntity> wrapper);
	
	YinpinzhongleiVO selectVO(@Param("ew") Wrapper<YinpinzhongleiEntity> wrapper);
	
	List<YinpinzhongleiView> selectListView(@Param("ew") Wrapper<YinpinzhongleiEntity> wrapper);

	List<YinpinzhongleiView> selectListView(Pagination page,@Param("ew") Wrapper<YinpinzhongleiEntity> wrapper);
	
	YinpinzhongleiView selectView(@Param("ew") Wrapper<YinpinzhongleiEntity> wrapper);
	

}
