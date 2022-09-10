package com.mania.practice_channels.practice_channels

import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "DEFAULT_CHANNEL";


    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val methodChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger,CHANNEL);
        methodChannel.setMethodCallHandler {
            call, result ->
            if (call.method == "showToast") {
                Toast.makeText(this, "THis is a toast from Android!", Toast.LENGTH_SHORT).show();
            }
        }
    }
}
