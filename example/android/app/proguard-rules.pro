-keepclassmembers enum com.orange.obs.plugins.myplace_svc_mapview.models.PoiStatus { *; }
-keep enum com.orange.obs.plugins.myplace_svc_mapview.models.PoiStatus { *; }
-keepclassmembers enum * {
    private <fields>;    
}
-keepclassmembers class * {
    private <fields>;    
}

# Prevent proguard from stripping interface information from TypeAdapterFactory,
# JsonSerializer, JsonDeserializer instances (so they can be used in @JsonAdapter)
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer

-keep class com.visioglobe.** { *; }

-keep class org.xmlpull.** { *; }