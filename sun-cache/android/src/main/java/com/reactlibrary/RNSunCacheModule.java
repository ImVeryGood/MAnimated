
package com.reactlibrary;

import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;


public class RNSunCacheModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Callback cacheSize;
    private ReactApplicationContext mReactContext;

    public RNSunCacheModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.mReactContext = reactContext;
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNSunCache";
    }

    /**
     * 获取总缓存大小
     *
     * @return
     * @throws Exception
     */
    @ReactMethod
    public void getCacheSize(Callback cacheSize) throws Exception {
        this.cacheSize = cacheSize;
        cacheSize.invoke(DataCleanUtils.getTotalCacheSize(mReactContext));
    }

    /**
     * 清除所有缓存
     */
    @ReactMethod
    public void cleanAllCache() {
        DataCleanUtils.cleanAllCache(getReactApplicationContext());
    }
}
