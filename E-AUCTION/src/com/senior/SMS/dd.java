package com.senior.SMS;
import java.awt.*;
import javax.swing.JApplet;
import javax.swing.*;
//import javax.swing.*;


public class dd extends JApplet {
    JTextArea textarea_1;
    JScrollPane sp_textarea_1;
    JLabel l1;
    JPanel panel_3;
    JTextField textfield_1;
    JLabel label_1;
    JLabel label_2;
    JTextField textfield_2;
    JLabel label_3;
    JTextField textfield_3;
    JButton button_1;
    JPanel panel_4;

    @Override
    public void init() {
        ddLayout customLayout = new ddLayout();

        getContentPane().setFont(new Font("Helvetica", Font.PLAIN, 12));
        getContentPane().setLayout(customLayout);
        Color a=new Color(24,90,150);
        getContentPane().setBackground(a);

        textarea_1 = new JTextArea("");
        sp_textarea_1 = new JScrollPane(textarea_1);
        getContentPane().add(sp_textarea_1);

        l1 = new JLabel("SMS Sender");
        getContentPane().add(l1);

        panel_3 = new JPanel();
        panel_3.setBackground(Color.orange);
        getContentPane().add(panel_3);

        textfield_1 = new JTextField("");
        getContentPane().add(textfield_1);

        label_1 = new JLabel("Server Name");
        getContentPane().add(label_1);

        label_2 = new JLabel("Your Name");
        getContentPane().add(label_2);

        textfield_2 = new JTextField("");
        getContentPane().add(textfield_2);

        label_3 = new JLabel("Phone Number");
        getContentPane().add(label_3);

        textfield_3 = new JTextField("");
        getContentPane().add(textfield_3);

        button_1 = new JButton("Send Message");
        getContentPane().add(button_1);

        panel_4 = new JPanel();
        panel_4.setBackground(Color.orange);
        getContentPane().add(panel_4);

        setSize(getPreferredSize());

    }

    
}

class ddLayout implements LayoutManager {

    public ddLayout() {
    }

    public void addLayoutComponent(String name, Component comp) {
    }

    public void removeLayoutComponent(Component comp) {
    }

    public Dimension preferredLayoutSize(Container parent) {
        Dimension dim = new Dimension(0, 0);

        Insets insets = parent.getInsets();
        dim.width = 392 + insets.left + insets.right;
        dim.height = 246 + insets.top + insets.bottom;

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
        if (c.isVisible()) {c.setBounds(insets.left+8,insets.top+48,216,192);}
        c = parent.getComponent(1);
        if (c.isVisible()) {c.setBounds(insets.left+16,insets.top+16,192,24);}
        c = parent.getComponent(2);
        if (c.isVisible()) {c.setBounds(insets.left+8,insets.top+8,216,40);}
        c = parent.getComponent(3);
        if (c.isVisible()) {c.setBounds(insets.left+248,insets.top+40,120,24);}
        c = parent.getComponent(4);
        if (c.isVisible()) {c.setBounds(insets.left+248,insets.top+16,120,24);}
        c = parent.getComponent(5);
        if (c.isVisible()) {c.setBounds(insets.left+248,insets.top+80,120,24);}
        c = parent.getComponent(6);
        if (c.isVisible()) {c.setBounds(insets.left+248,insets.top+104,120,24);}
        c = parent.getComponent(7);
        if (c.isVisible()) {c.setBounds(insets.left+248,insets.top+144,120,24);}
        c = parent.getComponent(8);
        if (c.isVisible()) {c.setBounds(insets.left+248,insets.top+168,120,24);}
        c = parent.getComponent(9);
        if (c.isVisible()) {c.setBounds(insets.left+248,insets.top+208,120,24);}
        c = parent.getComponent(10);
        if (c.isVisible()) {c.setBounds(insets.left+232,insets.top+8,152,232);}
    }
}
