package com.senior.design;

import okhttp3.*;


public class SendPosts extends Thread
{
    private boolean active = true;
    private OkHttpClient httpClient;
    private String stm32Message = "";
    private boolean messageFlag = false;
    private String stm32IP;
    public boolean updateBattery = false;
    public boolean sendPost = false;
    public String postMessage = "";
    public int postPeriod = 100;

    public SendPosts(String stm32IP){
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

            try {
                sendPostf(postMessage);
                Thread.sleep(postPeriod);
            } catch (Exception e)
            {
                e.printStackTrace();
            }
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
            stm32Message = response.body().string();
            System.out.println("STM32 OUTPUT POST: " + stm32Message);
            messageFlag = true;
        } catch (Exception e) {
            e.printStackTrace();
            messageFlag = false;
        }
    }

}
