//
//  RTCommunicator.h
//  Movie
//
//  Created by DX165-XL on 2014-01-16.
//  Copyright (c) 2014 DX165-XL. All rights reserved.
//
#import <CoreLocation/CoreLocation.h>
#import <Foundation/Foundation.h>
@protocol RTCommunicatorDelegate;
@interface RTCommunicator : NSObject
@property (weak, nonatomic) id<RTCommunicatorDelegate> delegate;

-(void)searchMovies:(int)page;

@end
