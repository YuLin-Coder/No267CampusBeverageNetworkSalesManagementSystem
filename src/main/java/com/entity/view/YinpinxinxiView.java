package com.entity.view;

import com.entity.YinpinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 饮品信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-31 18:00:31
 */
@TableName("yinpinxinxi")
public class YinpinxinxiView  extends YinpinxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YinpinxinxiView(){
	}
 
 	public YinpinxinxiView(YinpinxinxiEntity yinpinxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, yinpinxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
