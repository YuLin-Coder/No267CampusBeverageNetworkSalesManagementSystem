package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YinpinzhongleiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YinpinzhongleiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YinpinzhongleiView;


/**
 * 饮品种类
 *
 * @author 
 * @email 
 * @date 2022-03-31 18:00:31
 */
public interface YinpinzhongleiService extends IService<YinpinzhongleiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YinpinzhongleiVO> selectListVO(Wrapper<YinpinzhongleiEntity> wrapper);
   	
   	YinpinzhongleiVO selectVO(@Param("ew") Wrapper<YinpinzhongleiEntity> wrapper);
   	
   	List<YinpinzhongleiView> selectListView(Wrapper<YinpinzhongleiEntity> wrapper);
   	
   	YinpinzhongleiView selectView(@Param("ew") Wrapper<YinpinzhongleiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YinpinzhongleiEntity> wrapper);
   	

}

