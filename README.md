
# react-native-ntl-documentscanner

## Getting started

`$ npm install react-native-ntl-document-camera --save`

### Mostly automatic installation

`$ react-native link react-native-ntl-document-camera`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-ntl-document-camera` and add `RCTNtlDocumentCamera.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRCTNtlDocumentCamera.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<
 

## Usage
```javascript 

import NtlDocumentCamera from 'react-native-ntl-document-camera';

// TODO: What to do with the module? 
this.subscription;

const DocumentCameraEmitter = new NativeEventEmitter(NtlDocumentCamera);
subscription = DocumentCameraEmitter.addListener(
			'EventReminder',
			(reminder) => console.log(reminder.images)
		);
NtlDocumentCamera.openCamera();

	componentWillUnmount() {
		subscription.remove();
	}
```
## Image
![Optional Text](/images/IMG_0112.PNG)
![Optional Text](/images/IMG_0113.PNG)
