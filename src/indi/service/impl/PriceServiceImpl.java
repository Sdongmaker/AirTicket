package indi.service.impl;

import java.util.List;

import indi.bean.Price;
import indi.dao.impl.PriceDaoImpl;
import indi.service.PriceService;

public class PriceServiceImpl implements PriceService{

	@Override
	public List<Price> getAllPrices() throws Exception {
		// TODO Auto-generated method stub
		return new PriceDaoImpl().getAllPrices();
	}

}
