package com.icss.service.impl;

import com.icss.dao.StoreDao;
import com.icss.entity.Store;
import com.icss.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StoreServieImpl implements StoreService {
	@Autowired
	private StoreDao storeDao;
	@Override
	public List<Store> findAllStore() {
		return storeDao.findAllStore();
	}
}
