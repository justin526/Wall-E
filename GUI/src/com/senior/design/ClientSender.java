package com.senior.design;

import okhttp3.*;

import java.io.*;
import java.net.InetSocketAddress;
import java.net.Socket;

public class ClientSender extends Thread{
    private boolean active = true;
    private String ip;
    private int port;
    private OkHttpClient httpClient;
    private String message;
    private boolean sendFlag;
    private int timeout;

    public ClientSender(String ip, int port, int timeout){
        this.port = port;
        this.ip = ip;
        message = "";
        sendFlag = false;
        this.timeout = timeout;
        httpClient = new OkHttpClient.Builder().build();
    }

    public void stopClient()
    {
        this.active = false;
    }

    public void sendDataToServer(String message)
    {
        this.message = message;
        sendFlag = true;
    }

    private void sendData()
    {
        try
        {
            // need host and port, we want to connect to the ESP8266 ServerSocket at port 80
            Socket socket = new Socket();
            socket.setSoTimeout(this.timeout);
            socket.connect(new InetSocketAddress(this.ip, this.port), this.timeout);
            System.out.println("Connected!");

            // get the output stream from the socket.
            OutputStream outputStream = socket.getOutputStream();
            // create a data output stream from the output stream so we can send data through it
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream);

            System.out.println("Sending string to the ServerSocket: " + this.message);

            // write the message we want to send
            dataOutputStream.writeUTF(this.message);
            dataOutputStream.flush(); // send the message
            dataOutputStream.close(); // close the output stream when we're done.

            System.out.println("Closing socket.");
            socket.close();
        }catch (Exception e)
        {
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        super.run();

        while (active)
        {
            try{
                this.sleep(1);
            }catch (Exception e)
            {
                System.out.println("Client couldn't sleep.");
            }
            if(sendFlag){
                sendFlag = false;
                sendData();
            }
        }
        System.out.println("Client stopped successfully.");
    }
    public void sendPost(String msg)
    {
        String url = "http://" + this.ip + ":80/" + msg;
        RequestBody formBody = new FormBody.Builder()
                .add("message", msg)
                .build();
        Request post = new Request.Builder()
                .url(url)
                .post(formBody)
                .build();
        System.out.println("Sending Post");
        try {
            Response response = httpClient.newCall(post).execute();
            String stm32Message = response.body().string();
            System.out.println("STM32 OUTPUT POST: " + stm32Message);
            // Do something with the response.
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
