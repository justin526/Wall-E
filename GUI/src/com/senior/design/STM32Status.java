package com.senior.design;

import okhttp3.*;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

public class STM32Status extends Thread
{
    private boolean active = true;
    private int updatePeriod;
    private OkHttpClient httpClient;
    private String stm32Message = "";
    private boolean messageFlag = false;
    private String stm32IP;
    public boolean updateBattery = false;
    public boolean sendPost = false;
    public String postMessage = "";
    public int postPeriod = 100;

    public STM32Status(int updatePeriodMilliSeconds, String stm32IP){
        this.updatePeriod = updatePeriodMilliSeconds;
        this.stm32IP = stm32IP;
        httpClient = new OkHttpClient.Builder().build();
    }

    public void stopSTM32Status()
    {
        this.active = false;
    }

    public boolean isMessageAvailable()
    {
        return this.messageFlag;
    }

    public String getStm32Message()
    {
        return this.stm32Message;
    }

    @Override
    public void run()
    {
        super.run();
        while (active) {

//            updateBattery = false;
            try {

                if (updateBattery) {
                    System.out.println("STM32 GET call...");
                    Thread.sleep(updatePeriod);
                    sendGet();
                }
                else if (sendPost)
                {
                    sendPostf(postMessage);
                    Thread.sleep(postPeriod);
                }
//                    sendPost("Test");
            } catch (Exception e)
            {
                e.printStackTrace();
            }
        }
    }

    public void sendGet()
    {
//        updateBattery = true;
        messageFlag = false;
        String url = "http://" + this.stm32IP + ":80/";
        Request request = new Request.Builder()
                .url(url)
                .build();



        try {
//            updateBattery = true;
//            System.out.println(request.toString());
            Response response = httpClient.newCall(request).execute();
            stm32Message = response.body().string();
            System.out.println("STM32 OUTPUT: " + stm32Message);
            messageFlag = true;
        }catch (Exception e) {
            messageFlag = false;
            e.printStackTrace();
        }
    }
    public void sendPostf(String msg)
    {
        String url = "http://" + this.stm32IP + ":80/" + msg;
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
//            String stm32Message = response.body().string();
            System.out.println("STM32 OUTPUT POST: " + stm32Message);
            // Do something with the response.
            messageFlag = true;
            stm32Message = response.body().string();
        } catch (Exception e) {
            e.printStackTrace();
            messageFlag = false;
        }
    }

}
