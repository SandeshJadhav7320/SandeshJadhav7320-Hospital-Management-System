package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;

//import com.entity.SpecialistEntity;

public class SpecialistDao 
{
	private Connection conn;
	
	public SpecialistDao(Connection conn)
	{
		super();
		this.conn=conn;
	}
	
	public boolean addSpecialist(String specname)
	{
		boolean f=false;
		
		try
		{
			String sql="insert into sepecialist(specname) values(?) ";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,specname);
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				f=true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return f;
	}
	
//	public List<SpecialistEntity> getAllSpecialist()
//	{
//		List<SpecialistEntity> list=new ArrayList<SpecialistEntity>();
//		SpecialistEntity s=null;
//		
//		try
//		{
//			String sql="select * from sepecialist";
//			PreparedStatement ps=conn.prepareStatement(sql);
//			ResultSet rs=ps.executeQuery();
//			
//			while(rs.next())
//			{
//				s=new SpecialistEntity();
//				s.setId(rs.getInt(1));
//				s.setSpecname(rs.getString(2));
//				list.add(s);
//			}
//		}
//		catch(Exception e)
//		{
//			e.printStackTrace();
//		}
//		
//		return list;
//	}
	
}
 