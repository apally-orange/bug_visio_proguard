package com.example.build_visio_test

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding

/** FlutterBugOpenglNativePlugin */
public class FlutterBugOpenglNativePlugin() : FlutterPlugin, ActivityAware {

  private lateinit var flutterPluginBinding: FlutterPluginBinding

  override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    this.flutterPluginBinding = binding
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {}

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    flutterPluginBinding.platformViewRegistry.registerViewFactory(
        "test/channel",
        FlutterBugOpenglNativeFactory(binding.getActivity())
    )
  }

  override fun onDetachedFromActivity() {}

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    onAttachedToActivity(binding)
  }

  override fun onDetachedFromActivityForConfigChanges() {
    onDetachedFromActivity()
  }
}
