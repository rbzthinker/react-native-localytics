#import "RNLocalytics.h"
#import <Localytics/Localytics.h>

@implementation react_native_localytics

RCT_EXPORT_MODULE(RNLocalytics);

RCT_EXPORT_METHOD(tagEvent:(NSString*)eventName attributes:(NSDictionary*)props)
{
    [Localytics tagEvent:eventName attributes:props];
}

RCT_EXPORT_METHOD(tagScreen:(NSString*)screenName)
{
    [Localytics tagScreen:screenName];
}

RCT_EXPORT_METHOD(setCustomerId:(NSString*)customerId)
{
    [Localytics setCustomerId:customerId];
}

RCT_EXPORT_METHOD(dismissCurrentInAppMessage)
{
    [Localytics dismissCurrentInAppMessage];
}

@end
