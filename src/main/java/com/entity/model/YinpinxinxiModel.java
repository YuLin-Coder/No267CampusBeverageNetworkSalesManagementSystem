package com.entity.model;

import com.entity.YinpinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 饮品信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-03-31 18:00:31
 */
public class YinpinxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 饮品名称
	 */
	
	private String yinpinmingcheng;
		
	/**
	 * 饮品种类
	 */
	
	private String yinpinzhonglei;
		
	/**
	 * 饮品图片
	 */
	
	private String yinpintupian;
		
	/**
	 * 饮品规格
	 */
	
	private String yinpinguige;
		
	/**
	 * 饮品口味
	 */
	
	private String yinpinkouwei;
		
	/**
	 * 饮品特色
	 */
	
	private String yinpintese;
		
	/**
	 * 饮品介绍
	 */
	
	private String yinpinjieshao;
		
	/**
	 * 商家账号
	 */
	
	private String shangjiazhanghao;
		
	/**
	 * 商家姓名
	 */
	
	private String shangjiaxingming;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
		
	/**
	 * 价格
	 */
	
	private Float price;
		
	/**
	 * 单限
	 */
	
	private Integer onelimittimes;
		
	/**
	 * 库存
	 */
	
	private Integer alllimittimes;
				
	
	/**
	 * 设置：饮品名称
	 */
	 
	public void setYinpinmingcheng(String yinpinmingcheng) {
		this.yinpinmingcheng = yinpinmingcheng;
	}
	
	/**
	 * 获取：饮品名称
	 */
	public String getYinpinmingcheng() {
		return yinpinmingcheng;
	}
				
	
	/**
	 * 设置：饮品种类
	 */
	 
	public void setYinpinzhonglei(String yinpinzhonglei) {
		this.yinpinzhonglei = yinpinzhonglei;
	}
	
	/**
	 * 获取：饮品种类
	 */
	public String getYinpinzhonglei() {
		return yinpinzhonglei;
	}
				
	
	/**
	 * 设置：饮品图片
	 */
	 
	public void setYinpintupian(String yinpintupian) {
		this.yinpintupian = yinpintupian;
	}
	
	/**
	 * 获取：饮品图片
	 */
	public String getYinpintupian() {
		return yinpintupian;
	}
				
	
	/**
	 * 设置：饮品规格
	 */
	 
	public void setYinpinguige(String yinpinguige) {
		this.yinpinguige = yinpinguige;
	}
	
	/**
	 * 获取：饮品规格
	 */
	public String getYinpinguige() {
		return yinpinguige;
	}
				
	
	/**
	 * 设置：饮品口味
	 */
	 
	public void setYinpinkouwei(String yinpinkouwei) {
		this.yinpinkouwei = yinpinkouwei;
	}
	
	/**
	 * 获取：饮品口味
	 */
	public String getYinpinkouwei() {
		return yinpinkouwei;
	}
				
	
	/**
	 * 设置：饮品特色
	 */
	 
	public void setYinpintese(String yinpintese) {
		this.yinpintese = yinpintese;
	}
	
	/**
	 * 获取：饮品特色
	 */
	public String getYinpintese() {
		return yinpintese;
	}
				
	
	/**
	 * 设置：饮品介绍
	 */
	 
	public void setYinpinjieshao(String yinpinjieshao) {
		this.yinpinjieshao = yinpinjieshao;
	}
	
	/**
	 * 获取：饮品介绍
	 */
	public String getYinpinjieshao() {
		return yinpinjieshao;
	}
				
	
	/**
	 * 设置：商家账号
	 */
	 
	public void setShangjiazhanghao(String shangjiazhanghao) {
		this.shangjiazhanghao = shangjiazhanghao;
	}
	
	/**
	 * 获取：商家账号
	 */
	public String getShangjiazhanghao() {
		return shangjiazhanghao;
	}
				
	
	/**
	 * 设置：商家姓名
	 */
	 
	public void setShangjiaxingming(String shangjiaxingming) {
		this.shangjiaxingming = shangjiaxingming;
	}
	
	/**
	 * 获取：商家姓名
	 */
	public String getShangjiaxingming() {
		return shangjiaxingming;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
				
	
	/**
	 * 设置：价格
	 */
	 
	public void setPrice(Float price) {
		this.price = price;
	}
	
	/**
	 * 获取：价格
	 */
	public Float getPrice() {
		return price;
	}
				
	
	/**
	 * 设置：单限
	 */
	 
	public void setOnelimittimes(Integer onelimittimes) {
		this.onelimittimes = onelimittimes;
	}
	
	/**
	 * 获取：单限
	 */
	public Integer getOnelimittimes() {
		return onelimittimes;
	}
				
	
	/**
	 * 设置：库存
	 */
	 
	public void setAlllimittimes(Integer alllimittimes) {
		this.alllimittimes = alllimittimes;
	}
	
	/**
	 * 获取：库存
	 */
	public Integer getAlllimittimes() {
		return alllimittimes;
	}
			
}
