//
//  RCTNtlDocumentCamera.m
//  RCTNtlDocumentCamera
//
//  Created by Breeshy Sama on 22/10/2563 BE.
//

#import "RCTNtlDocumentCamera.h"



@implementation RCTNtlDocumentCamera

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE();

- (NSArray<NSString *> *)supportedEvents
{
    return @[@"EventReminder"];
}

RCT_EXPORT_METHOD(openCamera)
{
    [self configueDocumentView];
};


-(void)configueDocumentView
{
    VNDocumentCameraViewController* documentCameraViewController = [[VNDocumentCameraViewController alloc] init];
    
    documentCameraViewController.delegate = self;
    
    [[UIApplication sharedApplication].delegate.window.rootViewController presentViewController:documentCameraViewController animated:YES completion:nil];
}

- (void)documentCameraViewController:(VNDocumentCameraViewController *)controller didFinishWithScan:(VNDocumentCameraScan *)scan{
    NSMutableArray *imageArray = [NSMutableArray array];
    int i;
    for (i = 0; i < [scan pageCount]; i++) {
        // do something with object
        UIImage *image =  [scan imageOfPageAtIndex:i];
        NSData *imageData = UIImagePNGRepresentation(image);
        NSString * base64String = [imageData base64EncodedStringWithOptions:0];
        [imageArray addObject:base64String];
        //        NSLog (@"image = %@", image);
    }
    NSLog (@"images = %@", imageArray);
    [self sendEventWithName:@"EventReminder" body:@{@"images":imageArray}];
    [controller dismissViewControllerAnimated:true completion:nil];
}

@end

