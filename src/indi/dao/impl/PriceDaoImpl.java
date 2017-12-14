package indi.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import indi.bean.Price;
import indi.dao.PriceDao;
import indi.utils.DataSourceUtils;

public class PriceDaoImpl implements PriceDao{

	@Override
	public List<Price> getAllPrices() throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from price";
		List<Price> list = qr.query(sql, new BeanListHandler<Price>(Price.class));
		return list;
		

	}
}
