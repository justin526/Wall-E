package com.senior.design;

import javafx.animation.KeyFrame;
import javafx.animation.Timeline;
import javafx.application.Application;
import javafx.embed.swing.SwingFXUtils;
import javafx.event.EventHandler;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.CheckBox;
import javafx.scene.control.Label;
import javafx.scene.control.ProgressBar;
import javafx.scene.control.Slider;
import javafx.scene.image.ImageView;
import javafx.scene.image.Image;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.paint.Paint;
import javafx.scene.shape.Circle;
import javafx.scene.text.Font;
import javafx.stage.Stage;
import javafx.util.Duration;
import javafx.scene.control.TextField;
import okhttp3.*;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.*;
import java.net.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static com.senior.design.FileManager.readOrCreateFile;
import static com.senior.design.Variables.*;
//import static jdk.internal.net.http.common.Utils.close;

public class RobotController extends Application {
    private Pane pane;
    private Label androidLabel;
    private Timeline timeline, timelineSend;
    private boolean forward = false;
    private boolean backward = false;
    private boolean right = false;
    private boolean left = false;
    private boolean space = false;
    private Slider slider;
    private int speed = 230;
    private Label labelSpeed;
    private Label labelDirection;
    private Label labelSTM32Status;
    private OkHttpClient httpClient = new OkHttpClient.Builder().build();
    private String messageOut = "--,0\n";
    private STM32Status stm32Status;
    private STM32Status stm32Status2;
    private Circle c1 = new Circle(30,30,10);
    private CheckBox checkBoxDrivingAssistance;
    @Override
    public void start(Stage stage){
        final int width = 1600;
        final int height = 1000;

        stringSTM32IP = readOrCreateFile("IP_STM32.txt");

        pane = new Pane();

        stm32Status = new STM32Status(stm32StatusUpdatePeriod, stringSTM32IP);
//        stm32Status.start();
//        stm32Status2 = new STM32Status(stm32StatusUpdatePeriod, stringSTM32IP);
//        stm32Status2.start();
        stm32Status.sendPost = true;
        stm32Status.start();
        c1.setLayoutX(350);
        c1.setLayoutY(80);
        c1.setFill(Paint.valueOf("#ff0000"));
        pane.getChildren().add(c1);

        androidLabel = new Label("");
        androidLabel.setFont(Font.font("Arial", 24));
        androidLabel.setStyle("-fx-background-color: #FFFFFF");
        androidLabel.setLayoutX(1300);
        androidLabel.setLayoutY(50);
        pane.getChildren().add(androidLabel);

        Scene scene = new Scene(pane, width, height);

        stage.setTitle("Robot Controller");
        stage.setScene(scene);
        stage.show();
        stage.setMinWidth(stage.getWidth());
        stage.setMinHeight(stage.getHeight());
        //stage.setMaxWidth(stage.getWidth());
        //stage.setMaxHeight(stage.getHeight());
        stage.setResizable(true);
        Label instructionText = new Label("");
        instructionText.setLayoutY(700);
        instructionText.setLayoutX(300);
        instructionText.setFont(Font.font("Arial", 20));
//        instructionText.setStyle("-fx-background-color: #FFFFFF");
        instructionText.setText("Press WASD to move and SPACE BAR to operate the claw\n");
        pane.getChildren().add(instructionText);

        slider = new Slider();
        slider.setValue(speed);
        slider.valueProperty().addListener(observable -> {
            speed = (int)Math.round(slider.getValue());
            labelSpeed.setText("Speed: " + (int)((double)speed) + "%");
            System.out.println("Slider Value: " + slider.getValue());
        });
        slider.setLayoutX(1400);
        slider.setLayoutY(300);
        slider.setValue((double)speed/2.55);
        slider.setPrefWidth(250);
        slider.setRotate(270);
        pane.getChildren().add(slider);

        labelSpeed = new Label("Speed: " + (int)((double)speed) + "%");
        labelSpeed.setLayoutX(1400);
        labelSpeed.setLayoutY(330);
        pane.getChildren().add(labelSpeed);

        labelDirection = new Label("Forward: " + forward +
                                        "\nBackward: " + backward +
                                        "\nRight: " + right +
                                        "\nLeft: " + left);
        labelDirection.setLayoutX(1400);
        labelDirection.setLayoutY(500);
        pane.getChildren().add(labelDirection);
        Label label1 = new Label("IP:");
        label1.setLayoutX(100);
        label1.setLayoutY(100);
        pane.getChildren().add(label1);
        TextField b = new TextField(stringSTM32IP);
        b.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent ke) {
                if (ke.getCode().equals(KeyCode.ENTER)) {
                    FileOutputStream fos = null;
                    try {
                        String text = b.getText();
                        stringSTM32IP = text;
                        fos = new FileOutputStream("IP_STM32.txt");
                        fos.write(text.getBytes("UTF-8"));
                        fos.close();
                    } catch (Exception e) {
                        try {
                            fos.close();
                        } catch (IOException ex) {
                            ex.printStackTrace();
                        }
                    }
                }
            }
        });
//        GridPane root = new GridPane();
        b.setLayoutX(140);
        b.setLayoutY(95);
//        root.addRow(0, label1, (Node) b);
        pane.getChildren().add(b);

        labelSTM32Status = new Label("");
        labelSTM32Status.setLayoutX(1300);
        labelSTM32Status.setLayoutY(100);
        labelSTM32Status.setFont(Font.font("Arial", 20));
        pane.getChildren().add(labelSTM32Status);

        checkBoxDrivingAssistance = new CheckBox("Stop Communication");
        checkBoxDrivingAssistance.setLayoutX(1300);
        checkBoxDrivingAssistance.setLayoutY(200);
        pane.getChildren().add(checkBoxDrivingAssistance);

        //changePaneColor("000000");
        scene.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent event) {
                KeyCode keyCode = event.getCode();
                if(keyCode == KeyCode.W)
                {
                    forward = true;
                    backward = false;
                }

                if(keyCode == KeyCode.S)
                {
                    backward = true;
                    forward = false;
                }

                if(keyCode == KeyCode.A)
                {
                    left = true;
                    right = false;
                }

                if(keyCode == KeyCode.D)
                {
                    right = true;
                    left = false;
                }

                if(keyCode == KeyCode.SPACE)
                {
                    space = true;
                }

                if(keyCode == KeyCode.DIGIT1)
                    slider.setValue(10.0);

                if(keyCode == KeyCode.DIGIT2)
                    slider.setValue(20.0);

                if(keyCode == KeyCode.DIGIT3)
                    slider.setValue(30.0);

                if(keyCode == KeyCode.DIGIT4)
                    slider.setValue(40.0);

                if(keyCode == KeyCode.DIGIT5)
                    slider.setValue(50.5);

                if(keyCode == KeyCode.DIGIT6)
                    slider.setValue(60.0);

                if(keyCode == KeyCode.DIGIT7)
                    slider.setValue(70.0);

                if(keyCode == KeyCode.DIGIT8)
                    slider.setValue(80.0);

                if(keyCode == KeyCode.DIGIT9)
                    slider.setValue(90.5);

                if(keyCode == KeyCode.DIGIT0)
                    slider.setValue(100.0);
//                sendMessage();
            }
        });

        scene.setOnKeyReleased(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent event) {
                KeyCode keyCode = event.getCode();
                if(keyCode == KeyCode.W)
                {
                    forward = false;
                    backward = false;
                }

                if(keyCode == KeyCode.S)
                {
                    backward = false;
                    forward = false;
                }

                if(keyCode == KeyCode.A)
                {
                    left = false;
                    right = false;
                }

                if(keyCode == KeyCode.D)
                {
                    right = false;
                    left = false;
                }
                if(keyCode == KeyCode.SPACE)
                {
                    space = false;
                }
            }
        });

        timeline = new Timeline(new KeyFrame(Duration.millis(10), event ->{

            labelDirection.setText("Forward: " + forward +
                    "\nBackward: " + backward +
                    "\nRight: " + right +
                    "\nLeft: " + left);
        }));
        timeline.setCycleCount(Timeline.INDEFINITE);
        timeline.play();

        timelineSend = new Timeline(new KeyFrame(Duration.millis(300), event ->{
            if(stm32Status.isMessageAvailable())
            {
                String message = stm32Status.getStm32Message();
                System.out.println("MESSAGE IS AVAILABLE: " + message);
                Matcher matcher = Pattern.compile("\\d+").matcher(message);
                matcher.find();
                int i = Integer.valueOf(matcher.group());
                i /= 10;
                i *= 10;
                labelSTM32Status.setText("Battery: " + i + "%");
                c1.setFill(Paint.valueOf("#00FF00"));
            }
            else
                c1.setFill(Paint.valueOf("#FF0000"));
            if (!checkBoxDrivingAssistance.isSelected()) {
                sendMessage();
                stm32Status.updateBattery = false;
            }
            else
                stm32Status.updateBattery = false;

        }));
        timelineSend.setCycleCount(Timeline.INDEFINITE);
        timelineSend.play();
    }

    private void sendMessage() {
        messageOut = "";

        if(forward)
            messageOut += "F";
        else if(backward)
            messageOut += "B";
        else
            messageOut += "-";

        if(right)
            messageOut += "R";
        else if(left)
            messageOut += "L";
        else
            messageOut += "-";

        if (space)
            messageOut = "SP";

        messageOut += speed + "\r\n\r\n";
        stm32Status.postMessage = messageOut;
//        sendPostf(messageOut, stringSTM32IP);
    }

    @Override
    public void stop() throws Exception {
        super.stop();
        stm32Status.stopSTM32Status();
        System.out.println("Closing the application.");
    }

    public static void main(String[] args){
        launch(args);
    }
    public void sendPostf(String msg, String ip)
    {

        String url = "http://" + ip + ":80/" + msg;
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
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
