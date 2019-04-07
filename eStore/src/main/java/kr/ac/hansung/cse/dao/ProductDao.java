package kr.ac.hansung.cse.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.cse.model.Product;

@Repository
public class ProductDao {
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
			jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	
	public List<Product> getProducts(){
		String sqlStatement = "select * from product";
		//데이터베이스에서 읽어오는 쿼리문 레코드 형태로 넘어온다 
		
		//퀴리문으로 읽어오고 
		return jdbcTemplate.query(sqlStatement, new RowMapper<Product>() {

			//레코드를 객체로 진행해주는 메서드 
			@Override
			public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
				Product product = new Product();
				
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setCategory(rs.getString("category"));
				product.setName(rs.getString("manufacturer"));
				product.setUnitInStock(rs.getInt("unitInStock"));
				product.setDescription(rs.getString("description"));
				
				return product;
			}
			
		});
		
	}
	
}
