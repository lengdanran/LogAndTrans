package com.qst.dms.dos;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.StreamCorruptedException;

public class MyObjectInputStream extends ObjectInputStream{
	 public MyObjectInputStream(InputStream in) throws IOException {
	        super(in);
	        // TODO Auto-generated constructor stub
	  }
	 @Override
	    protected void readStreamHeader() throws IOException,
	            StreamCorruptedException {
	        // TODO Auto-generated method stub
//		 不读输入流的头字节文件。
	        return;
	    }
}
