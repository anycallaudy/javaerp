package com.accp.erp.service;

import com.accp.erp.entity.Yxrequisitions;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zq
 * @since 2019-08-25
 */
public interface IYxrequisitionsService extends IService<Yxrequisitions> {
	public Yxrequisitions selectLikeBillNO(String billNO);
	public int insertRDs(Yxrequisitions yxrequisitions);
	public Yxrequisitions selectRdNO (String billNO);
}
