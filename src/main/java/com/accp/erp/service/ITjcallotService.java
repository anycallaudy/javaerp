package com.accp.erp.service;

import com.accp.erp.entity.Tjcallot;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zq
 * @since 2019-08-30
 */
public interface ITjcallotService extends IService<Tjcallot> {
	//新增调拨单
	public boolean addtjcallot(Tjcallot tjcallot);
}
