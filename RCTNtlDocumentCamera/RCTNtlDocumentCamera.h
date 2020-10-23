//
//  RCTNtlDocumentCamera.h
//  RCTNtlDocumentCamera
//
//  Created by Breeshy Sama on 22/10/2563 BE.
//

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>
#import "VisionKit/VisionKit.h"
#import "VisionKit/VNDocumentCameraViewController.h"

@interface RCTNtlDocumentCamera : RCTEventEmitter <RCTBridgeModule,VNDocumentCameraViewControllerDelegate>
+ (NSString *)moduleName;
@end
