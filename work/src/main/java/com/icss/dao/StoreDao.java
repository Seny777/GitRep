package com.icss.dao;

import com.icss.entity.Store;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface StoreDao {
	List<Store> findAllStore();
}
