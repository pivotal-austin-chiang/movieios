//
//  RTManager.m
//  Movie
//
//  Created by DX165-XL on 2014-01-16.
//  Copyright (c) 2014 DX165-XL. All rights reserved.
//

#import "RTManager.h"
#import "MovieBuilder.h"
#import "RTCommunicator.h"
@implementation RTManager
-(void)fetchMovies{
    [self.communicator searchMovies];
}

#pragma mark - MeetupCommunicatorDelegate

- (void)receivedMoviesJSON:(NSData *)objectNotation
{
    NSError *error = nil;
    NSArray *movies = [MovieBuilder moviesFromJSON:objectNotation error:&error];
    
    if (error != nil) {
        [self.delegate fetchingMoviesFailedWithError:error];
        
    } else {
        [self.delegate didReceiveMovies:movies];
    }
}

- (void)fetchingMoviesFailedWithError:(NSError *)error
{
    [self.delegate fetchingMoviesFailedWithError:error];
}
@end
