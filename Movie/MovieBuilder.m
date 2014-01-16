//
//  MovieBuilder.m
//  Movie
//
//  Created by DX165-XL on 2014-01-16.
//  Copyright (c) 2014 DX165-XL. All rights reserved.
//

#import "MovieBuilder.h"
#import "Movie.h"

@implementation MovieBuilder
+ (NSArray *)moviesFromJSON:(NSData *)objectNotation error:(NSError **)error
{
    NSError *localError = nil;
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:objectNotation options:0 error:&localError];
    
    if (localError != nil) {
        *error = localError;
        return nil;
    }
    
    NSMutableArray *movies = [[NSMutableArray alloc] init];
    
    NSArray *results = [parsedObject valueForKey:@"movies"];
    NSLog(@"Count %d", results.count);
    
    for (NSDictionary *movieDic in results) {
        Movie *movie = [[Movie alloc] init];
        
        for (NSString *key in movieDic) {
            if ([movie respondsToSelector:NSSelectorFromString(key)]) {
                [movie setValue:[movieDic valueForKey:key] forKey:key];
            }
        }
        
        [movies addObject:movie];
    }
    
    return movies;
}
@end
