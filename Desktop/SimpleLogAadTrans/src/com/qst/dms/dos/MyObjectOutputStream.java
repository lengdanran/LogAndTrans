package com.qst.dms.dos;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.OutputStream;

public class MyObjectOutputStream extends ObjectOutputStream {
	public MyObjectOutputStream(OutputStream out) throws IOException {
        super(out);
        // TODO Auto-generated constructor stub
    }
	@Override
    protected void writeStreamHeader() throws IOException {
        // TODO Auto-generated method stub
//		让写头字节的程序不写头字节
        return;
    }
}
