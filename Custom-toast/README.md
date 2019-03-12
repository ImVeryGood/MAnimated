
# react-native-custom-toast

## Getting started

`$ npm install react-native-custom-toast --save`

### Mostly automatic installation

`$ react-native link react-native-custom-toast`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-custom-toast` and add `RNCustomToast.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNCustomToast.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNCustomToastPackage;` to the imports at the top of the file
  - Add `new RNCustomToastPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-custom-toast'
  	project(':react-native-custom-toast').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-custom-toast/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-custom-toast')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNCustomToast.sln` in `node_modules/react-native-custom-toast/windows/RNCustomToast.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Custom.Toast.RNCustomToast;` to the usings at the top of the file
  - Add `new RNCustomToastPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNCustomToast from 'react-native-custom-toast';

// TODO: What to do with the module?
RNCustomToast;
```
  