//
//  RTManagerDelegate.h
//  Movie
//
//  Created by DX165-XL on 2014-01-16.
//  Copyright (c) 2014 DX165-XL. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RTManagerDelegate <NSObject>
- (void)didReceiveMovies:(NSArray *)movies;
- (void)fetchingMoviesFailedWithError:(NSError *)error;
@end
