#import "QrDetectionPlugin.h"
#if __has_include(<qr_detection/qr_detection-Swift.h>)
#import <qr_detection/qr_detection-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "qr_detection-Swift.h"
#endif

@implementation QrDetectionPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftQrDetectionPlugin registerWithRegistrar:registrar];
}
@end
