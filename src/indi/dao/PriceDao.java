package indi.dao;

import java.util.List;

import indi.bean.Price;

public interface PriceDao {
	List<Price> getAllPrices() throws Exception;

}
