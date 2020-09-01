// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAssignedLabel()
{
    NSString* _displayName;
    NSString* _labelId;
}
@end

@implementation MSGraphAssignedLabel

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) labelId
{
    if([[NSNull null] isEqual:self.dictionary[@"labelId"]])
    {
        return nil;
    }   
    return self.dictionary[@"labelId"];
}

- (void) setLabelId: (NSString*) val
{
    self.dictionary[@"labelId"] = val;
}

@end
