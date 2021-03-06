package com.ags.modules.sys.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 维修周期超时记录
 * 
 * @author AGS
 * @email AGS@gmail.com
 * @date 2019-11-05 15:58:55
 */
@Data
@TableName("TH_MAINTENANCE_CYCLE")
public class ThMaintenanceCycleEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 数据ID
	 */
	@TableId
	private String id;
	/**
	 * 班别
	 */
	private String shiftType;
	/**
	 * 订单号
	 */
	private String orderNumber;
	/**
	 * 工单号
	 */
	private String workNumber;
	/**
	 * 产品SN
	 */
	private String unitSn;
	/**
	 * 工号
	 */
	private String employeeSn;
	/**
	 * 姓名
	 */
	private String employeeName;
	/**
	 * 维修位号
	 */
	private String stepSn;
	/**
	 * 维修类型
	 */
	private String maintainType;
	/**
	 * CheckIN时间
	 */
	private Date startTime;
	/**
	 * CheckOUT时间
	 */
	private Date endTime;
	/**
	 * alllink时间
	 */
	private Date alllinkTime;
	/**
	 * 插入时间
	 */
	private Date createTime;
	/**
	 * 维修工段
	 */
	private String maintainStep;
	/**
	 * 产品失败开始时间
	 */
	private Date failTime;

	/**
	 * 不良代码
	 */
	private Date badTypeId;

}
