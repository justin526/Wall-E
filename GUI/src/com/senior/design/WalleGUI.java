package com.senior.design;

import javafx.animation.KeyFrame;
import javafx.animation.Timeline;
import javafx.application.Application;

import javafx.event.EventHandler;

import javafx.scene.Scene;
import javafx.scene.control.CheckBox;
import javafx.scene.control.Label;
import javafx.scene.control.Slider;

import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;

import javafx.scene.layout.Pane;
import javafx.scene.paint.Paint;
import javafx.scene.shape.Circle;
import javafx.scene.text.Font;
import javafx.stage.Stage;
import javafx.util.Duration;
import javafx.scene.control.TextField;

import java.io.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class WalleGUI extends Application {
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
    private String messageOut = "--,0\n";
    private SendPosts sendPosts;
    private Circle c1 = new Circle(30,30,10);
    private CheckBox checkComm;
    private String stringSTM32IP;

    @Override
    public void start(Stage stage){
        final int width = 1600;
        final int height = 1000;
        stringSTM32IP = "121.0.0.0";
        try {
            BufferedReader reader = new BufferedReader(new FileReader("IP_STM32.txt"));
            String data;
            data = reader.readLine();
            reader.close();
            if (data != null)
                stringSTM32IP = data;
        } catch (Exception e)
        {
            e.printStackTrace();
        }



        pane = new Pane();

        sendPosts = new SendPosts(stringSTM32IP);
        sendPosts.sendPost = true;
        sendPosts.start();
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
        stage.setResizable(true);
        Label instructionText = new Label("");
        instructionText.setLayoutY(700);
        instructionText.setLayoutX(300);
        instructionText.setFont(Font.font("Arial", 20));
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
        b.setLayoutX(140);
        b.setLayoutY(95);
        pane.getChildren().add(b);

        labelSTM32Status = new Label("");
        labelSTM32Status.setLayoutX(1300);
        labelSTM32Status.setLayoutY(100);
        labelSTM32Status.setFont(Font.font("Arial", 20));
        pane.getChildren().add(labelSTM32Status);

        checkComm = new CheckBox("Stop Communication");
        checkComm.setLayoutX(1300);
        checkComm.setLayoutY(200);
        pane.getChildren().add(checkComm);

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
            if(sendPosts.isMessageAvailable())
            {
                String message = sendPosts.getStm32Message();
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
            if (!checkComm.isSelected()) {
                sendMessage();
            }
            sendPosts.updateBattery = false;

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
        sendPosts.postMessage = messageOut;
    }

    @Override
    public void stop() throws Exception {
        super.stop();
        sendPosts.stopSTM32Status();
    }

    public static void main(String[] args){
        launch(args);
    }

}
