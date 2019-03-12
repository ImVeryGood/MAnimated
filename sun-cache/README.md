
# react-native-sun-cache

## Getting started

`$ npm install react-native-sun-cache --save`

### Mostly automatic installation

`$ react-native link react-native-sun-cache`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-sun-cache` and add `RNSunCache.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNSunCache.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNSunCachePackage;` to the imports at the top of the file
  - Add `new RNSunCachePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-sun-cache'
  	project(':react-native-sun-cache').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-sun-cache/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-sun-cache')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNSunCache.sln` in `node_modules/react-native-sun-cache/windows/RNSunCache.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Sun.Cache.RNSunCache;` to the usings at the top of the file
  - Add `new RNSunCachePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNSunCache from 'react-native-sun-cache';

// TODO: What to do with the module?
RNSunCache;
```
  