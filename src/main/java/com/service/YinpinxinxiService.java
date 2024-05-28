package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YinpinxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YinpinxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YinpinxinxiView;


/**
 * 饮品信息
 *
 * @author 
 * @email 
 * @date 2022-03-31 18:00:31
 */
public interface YinpinxinxiService extends IService<YinpinxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YinpinxinxiVO> selectListVO(Wrapper<YinpinxinxiEntity> wrapper);
   	
   	YinpinxinxiVO selectVO(@Param("ew") Wrapper<YinpinxinxiEntity> wrapper);
   	
   	List<YinpinxinxiView> selectListView(Wrapper<YinpinxinxiEntity> wrapper);
   	
   	YinpinxinxiView selectView(@Param("ew") Wrapper<YinpinxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YinpinxinxiEntity> wrapper);
   	

}

