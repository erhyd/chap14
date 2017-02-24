package com.example.employee;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class EmpTests {
	
	@Autowired
	DataSource dataSource;
	
	@Test
	public void test01_select() throws SQLException{
		System.out.println("######");
		System.out.println("select");
		System.out.println("######");
		
		Connection con = dataSource.getConnection();
		
		PreparedStatement pstmt = con.prepareStatement("select*from emp" );
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
			int COMM = rs.getInt("COMM");
			int DEPTNO = rs.getInt("DEPTNO");
			int EMPNO = rs.getInt("EMPNO");
			String ENAME = rs.getString("ENAME");
			String JOB = rs.getString("JOB");
			Date HIREDATE = rs.getDate("HIREDATE");
			int MGR = rs.getInt("MGR");
			int SAL = rs.getInt("SAL");
			System.out.println(COMM + "," + DEPTNO + ","+ EMPNO + "," + ENAME + "," + JOB +"," + HIREDATE +"," + MGR + "," + SAL);
		}
	}
}
