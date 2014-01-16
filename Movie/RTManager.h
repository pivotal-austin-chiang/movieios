//
//  RTManager.h
//  Movie
//
//  Created by DX165-XL on 2014-01-16.
//  Copyright (c) 2014 DX165-XL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "RTManagerDelegate.h"
#import "RTCommunicatorDelegate.h"

@class RTCommunicator;

@interface RTManager : NSObject<RTCommunicatorDelegate>
@property (strong, nonatomic) RTCommunicator *communicator;
@property (weak, nonatomic) id<RTManagerDelegate> delegate;
-(void)fetchMovies;
@end
