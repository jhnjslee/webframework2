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
		//�����ͺ��̽����� �о���� ������ ���ڵ� ���·� �Ѿ�´� 
		
		//���������� �о���� 
		return jdbcTemplate.query(sqlStatement, new RowMapper<Product>() {

			//���ڵ带 ��ü�� �������ִ� �޼��� 
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