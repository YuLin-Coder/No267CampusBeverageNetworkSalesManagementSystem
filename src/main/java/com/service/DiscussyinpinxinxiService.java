package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussyinpinxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussyinpinxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussyinpinxinxiView;


/**
 * 饮品信息评论表
 *
 * @author 
 * @email 
 * @date 2022-03-31 18:00:31
 */
public interface DiscussyinpinxinxiService extends IService<DiscussyinpinxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussyinpinxinxiVO> selectListVO(Wrapper<DiscussyinpinxinxiEntity> wrapper);
   	
   	DiscussyinpinxinxiVO selectVO(@Param("ew") Wrapper<DiscussyinpinxinxiEntity> wrapper);
   	
   	List<DiscussyinpinxinxiView> selectListView(Wrapper<DiscussyinpinxinxiEntity> wrapper);
   	
   	DiscussyinpinxinxiView selectView(@Param("ew") Wrapper<DiscussyinpinxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussyinpinxinxiEntity> wrapper);
   	

}

