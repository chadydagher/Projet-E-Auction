package com.senior;
import java.sql.*;
import javax.swing.*;
import javax.swing.event.*;
import java.awt.*;
import java.awt.event.*;
import java.applet.Applet;
import java.security.*;
import java.io.*;
import java.net.*;
import java.applet.AppletContext;
import java.util.*;


public class ss extends JApplet {
	JButton button_1;
    JTextArea button_2;
    private String inStr;
    private MessageDigest md5;

    public void init() {
    	AllPermission eqw=new java.security.AllPermission();

        ssLayout customLayout = new ssLayout();


        getContentPane().setFont(new Font("Helvetica", Font.PLAIN, 12));
        getContentPane().setLayout(customLayout);
		
		button_1=new JButton("ffff");
		getContentPane().add(button_1);
		
		getContentPane().setBackground(Color.decode("#30A1DB"));
		
        button_2 = new JTextArea("button_1");
        getContentPane().add(button_2);
        
        
			   try
				{
	    			this.md5 = MessageDigest.getInstance("MD5");
       			 }
					catch (Exception e)
				{
	    			System.out.println(e.toString());
	    			e.printStackTrace();
        					}

        setSize(getPreferredSize());

    }
        public String compute()
    {
	// convert input String to a char[]
	// convert that char[] to byte[]
	// get the md5 digest as byte[]
	// bit-wise AND that byte[] with 0xff
	// prepend "0" to the output StringBuffer to make sure that we don't end up with
	// something like "e21ff" instead of "e201ff"

	char[] charArray = this.inStr.toCharArray();
	
	byte[] byteArray = new byte[charArray.length];
	
	for (int i=0; i<charArray.length; i++)
	    byteArray[i] = (byte) charArray[i];
	
	byte[] md5Bytes = this.md5.digest(byteArray);

        StringBuffer hexValue = new StringBuffer();

	for (int i=0; i<md5Bytes.length; i++)
	{
	    int val = ((int) md5Bytes[i] ) & 0xff; 
	    if (val < 16) hexValue.append("0");
	    hexValue.append(Integer.toHexString(val));
	}

	return hexValue.toString();
    }

    public static void main(String args[]) {
        ss applet = new ss();
        JFrame window = new JFrame("ss");

        window.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                System.exit(0);
            }
        });

        applet.init();
        window.getContentPane().add("Center", applet);
        window.pack();
        window.setVisible(true);
    }
}

class ssLayout implements LayoutManager {

    public ssLayout() {
    }

    public void addLayoutComponent(String name, Component comp) {
    }

    public void removeLayoutComponent(Component comp) {
    }

    public Dimension preferredLayoutSize(Container parent) {
        Dimension dim = new Dimension(0, 0);

        Insets insets = parent.getInsets();
        dim.width = 320 + insets.left + insets.right;
        dim.height = 240 + insets.top + insets.bottom;

        return dim;
    }

    public Dimension minimumLayoutSize(Container parent) {
        Dimension dim = new Dimension(0, 0);
        return dim;
    }

    public void layoutContainer(Container parent) {
        Insets insets = parent.getInsets();

        Component c;
        c = parent.getComponent(0);
        if (c.isVisible()) {c.setBounds(insets.left+112,insets.top+80,72,24);}
        
        c = parent.getComponent(1);
        if (c.isVisible()) {c.setBounds(insets.left+11,insets.top+40,40,12);}
    }
}
