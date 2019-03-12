
package com.reactlibrary;

import android.widget.Toast;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNCustomToastModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNCustomToastModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNCustomToast";
  }
  @ReactMethod
  public void showToast(){
    Toast.makeText(reactContext, "custom", Toast.LENGTH_SHORT).show();
  }
}