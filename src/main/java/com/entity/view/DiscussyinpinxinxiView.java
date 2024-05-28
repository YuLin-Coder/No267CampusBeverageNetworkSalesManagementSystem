package com.entity.view;

import com.entity.DiscussyinpinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 饮品信息评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-31 18:00:31
 */
@TableName("discussyinpinxinxi")
public class DiscussyinpinxinxiView  extends DiscussyinpinxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussyinpinxinxiView(){
	}
 
 	public DiscussyinpinxinxiView(DiscussyinpinxinxiEntity discussyinpinxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, discussyinpinxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
