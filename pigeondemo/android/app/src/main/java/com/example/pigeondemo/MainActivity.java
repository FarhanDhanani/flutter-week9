package com.example.pigeondemo;

import android.app.Activity;
import android.os.Bundle;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.android.FlutterActivity;
import com.example.pigeondemo.Pigeon;

public class MainActivity extends FlutterActivity  {

    private static class MyApi implements Pigeon.Api {
        public Pigeon.SearchReply search(Pigeon.SearchRequest request) {
            Pigeon.SearchReply reply = new Pigeon.SearchReply();
            reply.result = String.format("Hi %s!", request.query);
            return reply;
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Pigeon.Api.setup(getBinaryMessenger(), new MyApi());
    }

    public BinaryMessenger getBinaryMessenger(){
        return getFlutterEngine().getDartExecutor().getBinaryMessenger();
    }
}
