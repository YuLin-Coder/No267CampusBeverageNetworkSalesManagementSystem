package com.dao;

import com.entity.ShangjiaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShangjiaVO;
import com.entity.view.ShangjiaView;


/**
 * 商家
 * 
 * @author 
 * @email 
 * @date 2022-03-31 18:00:31
 */
public interface ShangjiaDao extends BaseMapper<ShangjiaEntity> {
	
	List<ShangjiaVO> selectListVO(@Param("ew") Wrapper<ShangjiaEntity> wrapper);
	
	ShangjiaVO selectVO(@Param("ew") Wrapper<ShangjiaEntity> wrapper);
	
	List<ShangjiaView> selectListView(@Param("ew") Wrapper<ShangjiaEntity> wrapper);

	List<ShangjiaView> selectListView(Pagination page,@Param("ew") Wrapper<ShangjiaEntity> wrapper);
	
	ShangjiaView selectView(@Param("ew") Wrapper<ShangjiaEntity> wrapper);
	

}
