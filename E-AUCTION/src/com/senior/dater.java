package com.senior;
import java.sql.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import java.util.*;

public class dater{		

public dater()
{
		

	
				}
				public String getdate()
				{
					java.util.Date ad=new java.util.Date();
		String month=""+(ad.getMonth()+1);
		
		String day=""+ad.getDate();
		String year=""+(ad.getYear()%100+2000);
		String minute=""+ad.getMinutes();
		String hour=""+ad.getHours();
		String second=""+ad.getSeconds();
		String date=month+"/"+day+"/"+year+" "+hour+":"+minute+":"+second;
		return date;
				}
			
				}
				
		
