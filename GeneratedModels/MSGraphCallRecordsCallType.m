// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordsCallType.h"

@interface MSGraphCallRecordsCallType () {
    MSGraphCallRecordsCallTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallRecordsCallTypeValue enumValue;
@end

@implementation MSGraphCallRecordsCallType

+ (MSGraphCallRecordsCallType*) unknown {
    static MSGraphCallRecordsCallType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphCallRecordsCallType alloc] init];
        _unknown.enumValue = MSGraphCallRecordsCallTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphCallRecordsCallType*) groupCall {
    static MSGraphCallRecordsCallType *_groupCall;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _groupCall = [[MSGraphCallRecordsCallType alloc] init];
        _groupCall.enumValue = MSGraphCallRecordsCallTypeGroupCall;
    });
    return _groupCall;
}
+ (MSGraphCallRecordsCallType*) peerToPeer {
    static MSGraphCallRecordsCallType *_peerToPeer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _peerToPeer = [[MSGraphCallRecordsCallType alloc] init];
        _peerToPeer.enumValue = MSGraphCallRecordsCallTypePeerToPeer;
    });
    return _peerToPeer;
}
+ (MSGraphCallRecordsCallType*) unknownFutureValue {
    static MSGraphCallRecordsCallType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCallRecordsCallType alloc] init];
        _unknownFutureValue.enumValue = MSGraphCallRecordsCallTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCallRecordsCallType*) UnknownEnumValue {
    static MSGraphCallRecordsCallType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallRecordsCallType alloc] init];
        _unknownValue.enumValue = MSGraphCallRecordsCallTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallRecordsCallType*) callTypeWithEnumValue:(MSGraphCallRecordsCallTypeValue)val {

    switch(val)
    {
        case MSGraphCallRecordsCallTypeUnknown:
            return [MSGraphCallRecordsCallType unknown];
        case MSGraphCallRecordsCallTypeGroupCall:
            return [MSGraphCallRecordsCallType groupCall];
        case MSGraphCallRecordsCallTypePeerToPeer:
            return [MSGraphCallRecordsCallType peerToPeer];
        case MSGraphCallRecordsCallTypeUnknownFutureValue:
            return [MSGraphCallRecordsCallType unknownFutureValue];
        case MSGraphCallRecordsCallTypeEndOfEnum:
        default:
            return [MSGraphCallRecordsCallType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallRecordsCallTypeUnknown:
            return @"unknown";
        case MSGraphCallRecordsCallTypeGroupCall:
            return @"groupCall";
        case MSGraphCallRecordsCallTypePeerToPeer:
            return @"peerToPeer";
        case MSGraphCallRecordsCallTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCallRecordsCallTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallRecordsCallTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallRecordsCallType)

- (MSGraphCallRecordsCallType*) toMSGraphCallRecordsCallType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphCallRecordsCallType unknown];
    }
    else if([self isEqualToString:@"groupCall"])
    {
          return [MSGraphCallRecordsCallType groupCall];
    }
    else if([self isEqualToString:@"peerToPeer"])
    {
          return [MSGraphCallRecordsCallType peerToPeer];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCallRecordsCallType unknownFutureValue];
    }
    else {
        return [MSGraphCallRecordsCallType UnknownEnumValue];
    }
}

@end
