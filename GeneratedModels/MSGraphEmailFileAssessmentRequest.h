// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphMailDestinationRoutingReason.h"


#import "MSGraphThreatAssessmentRequest.h"

@interface MSGraphEmailFileAssessmentRequest : MSGraphThreatAssessmentRequest

  @property (nonnull, nonatomic, setter=setContentData:, getter=contentData) NSString* contentData;
    @property (nullable, nonatomic, setter=setDestinationRoutingReason:, getter=destinationRoutingReason) MSGraphMailDestinationRoutingReason* destinationRoutingReason;
    @property (nonnull, nonatomic, setter=setRecipientEmail:, getter=recipientEmail) NSString* recipientEmail;
  
@end
