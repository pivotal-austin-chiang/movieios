//
//  RTCommunicatorDelegate.h
//  Movie
//
//  Created by DX165-XL on 2014-01-16.
//  Copyright (c) 2014 DX165-XL. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RTCommunicatorDelegate
-(void)receivedMoviesJSON:(NSData *)objectNotation;
-(void)fetchingMoviesFailedWithError:(NSError *)error;
@end
