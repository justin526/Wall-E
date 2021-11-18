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
            System.out.println("STM32 GET call...");
//            updateBattery = false;
            try {
                Thread.sleep(updatePeriod);
//                if (updateBattery)
                    sendGet();
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

}
