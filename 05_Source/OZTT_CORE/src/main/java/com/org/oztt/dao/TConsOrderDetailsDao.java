package com.org.oztt.dao;

import java.util.List;

import com.org.oztt.entity.TConsOrderDetails;
import com.org.oztt.formDto.ContCartItemDto;

public interface TConsOrderDetailsDao {
    /**
     * 根据主键删除记录
     */
    int deleteByPrimaryKey(Long no);

    /**
     * 保存记录,不管记录里面的属性是否为空
     */
    int insert(TConsOrderDetails record);

    /**
     * 保存属性不为空的记录
     */
    int insertSelective(TConsOrderDetails record);

    /**
     * 根据主键查询记录
     */
    TConsOrderDetails selectByPrimaryKey(Long no);

    /**
     * 根据主键更新属性不为空的记录
     */
    int updateByPrimaryKeySelective(TConsOrderDetails record);

    /**
     * 根据主键更新记录
     */
    int updateByPrimaryKey(TConsOrderDetails record);
    
    /**
     * 根据订单号删除记录
     */
    int deleteByOrderNo(String orderNo);
    
    /**
     * 根据订单号检索订单详情
     * @param orderId
     * @return
     */
    List<ContCartItemDto> selectByOrderId(String orderId);
}