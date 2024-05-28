package com.entity.view;

import com.entity.YinpinzhongleiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 饮品种类
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-31 18:00:31
 */
@TableName("yinpinzhonglei")
public class YinpinzhongleiView  extends YinpinzhongleiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YinpinzhongleiView(){
	}
 
 	public YinpinzhongleiView(YinpinzhongleiEntity yinpinzhongleiEntity){
 	try {
			BeanUtils.copyProperties(this, yinpinzhongleiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
