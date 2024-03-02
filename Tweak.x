#import <Foundation/Foundation.h>

%hook YTInnerTubeResponseWrapper

- (id)initWithResponse:(id)response cacheContext:(id)arg2 requestStatistics:(id)arg3 mutableSharedData:(id)arg4 {
    if ([response isKindOfClass:%c(YTILikeResponse)]
        || [response isKindOfClass:%c(YTIDislikeResponse)]
        || [response isKindOfClass:%c(YTIRemoveLikeResponse)]) return nil;
    return %orig;
}

%end
