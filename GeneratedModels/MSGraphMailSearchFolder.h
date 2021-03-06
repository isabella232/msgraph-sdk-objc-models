// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphMailFolder.h"

@interface MSGraphMailSearchFolder : MSGraphMailFolder

  @property (nullable, nonatomic, setter=setFilterQuery:, getter=filterQuery) NSString* filterQuery;
    @property (nonatomic, setter=setIncludeNestedFolders:, getter=includeNestedFolders) BOOL includeNestedFolders;
    @property (nonatomic, setter=setIsSupported:, getter=isSupported) BOOL isSupported;
    @property (nullable, nonatomic, setter=setSourceFolderIds:, getter=sourceFolderIds) NSArray* sourceFolderIds;
  
@end
