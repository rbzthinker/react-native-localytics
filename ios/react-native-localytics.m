#import "react-native-localytics.h"
#import <Localytics/Localytics.h>

@implementation react_native_localytics

RCT_EXPORT_MODULE(RNLocalytics);

RCT_EXPORT_METHOD(tagEvent:(NSDictionary*)params)
{
    NSString* eventName = params[@"eventName"];
    NSDictionary* attributes = params[@"attributes"];
    
    [Localytics tagEvent:eventName attributes:attributes];
}

RCT_EXPORT_METHOD(tagScreen:(NSString*)screenName)
{
    [Localytics tagScreen:screenName];
}

@end
