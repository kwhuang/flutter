#import "HqWebviewPlugin.h"

@implementation HqWebviewPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar
{
    FlutterMethodChannel* channel = [FlutterMethodChannel methodChannelWithName:@"hq_webview_plugin" binaryMessenger:[registrar messenger]];
    HqWebviewPlugin* instance = [[HqWebviewPlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];

}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result
{
    if ([@"getPlatformVersion" isEqualToString:call.method])
    {
      result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
    } else {
      result(FlutterMethodNotImplemented);
    }
}

@end
