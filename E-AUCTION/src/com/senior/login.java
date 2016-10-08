package com.senior;
import java.awt.*;
import java.awt.event.*;
import java.applet.*;
import javax.swing.*;
import java.net.*;
import java.security.*;
import java.io.*;

public class login extends JApplet implements ActionListener{
    JLabel label_1;
    JLabel label_2;
    JTextField user;
    JTextField pass;
    private String inStr;
    private MessageDigest md5;

    public void init() {
        loginLayout customLayout = new loginLayout();

        getContentPane().setFont(new Font("Helvetica", Font.PLAIN, 12));
        getContentPane().setLayout(customLayout);

        label_1 = new JLabel("User Name :");
        label_1.setForeground(Color.white);
        getContentPane().add(label_1);

        label_2 = new JLabel("Password :");
        label_2.setForeground(Color.white);
        getContentPane().add(label_2);

        user = new JTextField("");
        user.addActionListener(this);
        getContentPane().add(user);

        pass = new JTextField("");
        pass.addActionListener(this);
        getContentPane().add(pass);
		getContentPane().setBackground(Color.decode("#30A1DB"));


		
		
        setSize(getPreferredSize());

    }
  public void actionPerformed(ActionEvent ae) {
  	try{
  	
  	URL f=new URL("/index.jsp");
  	
  	AppletContext br=getAppletContext();

	    this.md5 = MessageDigest.getInstance("MD5");
        inStr=pass.getText();  	
  	
  	if(ae.getSource()==pass)
  	{
  		JOptionPane.showMessageDialog(null,""+compute(),"",JOptionPane.ERROR_MESSAGE);
		br.showDocument(f);
  	}
  	if(ae.getSource()==user)
  	{
  		br.showDocument(f);
  	}
  	}
  	catch(Exception fe){
  		JOptionPane.showMessageDialog(null,""+fe,"",JOptionPane.ERROR_MESSAGE);
  	}

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
        login applet = new login();
        JFrame window = new JFrame("login");

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

class loginLayout implements LayoutManager {

    public loginLayout() {
    }

    public void addLayoutComponent(String name, Component comp) {
    }

    public void removeLayoutComponent(Component comp) {
    }

    public Dimension preferredLayoutSize(Container parent) {
        Dimension dim = new Dimension(0, 0);

        Insets insets = parent.getInsets();
        dim.width = 211 + insets.left + insets.right;
        dim.height = 50 + insets.top + insets.bottom;

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
        if (c.isVisible()) {c.setBounds(insets.left+8,insets.top+0,88,24);}
        c = parent.getComponent(1);
        if (c.isVisible()) {c.setBounds(insets.left+8,insets.top+26,88,24);}
        c = parent.getComponent(2);
        if (c.isVisible()) {c.setBounds(insets.left+80,insets.top+2,100,24);}
        c = parent.getComponent(3);
        if (c.isVisible()) {c.setBounds(insets.left+80,insets.top+26,100,24);}
    }
}
