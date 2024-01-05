package com.example.build_visio_test

import android.app.Activity
import android.content.Context
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class FlutterBugOpenglNativeFactory(private val activity: Activity) :
        PlatformViewFactory(StandardMessageCodec.INSTANCE) {

    override fun create(context: Context?, id: Int, args: Any?): PlatformView {
        return FlutterBugOpenglNativeView(context!!, activity)
    }
}