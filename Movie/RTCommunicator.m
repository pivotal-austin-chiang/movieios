//
//  RTCommunicator.m
//  Movie
//
//  Created by DX165-XL on 2014-01-16.
//  Copyright (c) 2014 DX165-XL. All rights reserved.
//

#import "RTCommunicator.h"
#import "RTCommunicatorDelegate.h"

@implementation RTCommunicator
-(void)searchMovies{
    NSString *urlAsString = [NSString stringWithFormat:@"https://http://api.rottentomatoes.com/api/public/v1.0/lists/movies/in_theaters.json?page_limit=16&page=1&country=us&apikey=vxwjzfe4gaczt2qpurr33cyj"];
    NSURL *url = [[NSURL alloc] initWithString:urlAsString];
    NSLog(@"%@", urlAsString);
    
    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:url] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        if (error) {
            [self.delegate fetchingMoviesFailedWithError:error];
        } else {
            [self.delegate receivedMoviesJSON:data];
        }
    }];
}

@end
