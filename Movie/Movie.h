//
//  Movie.h
//  Movie
//
//  Created by DX165-XL on 2014-01-16.
//  Copyright (c) 2014 DX165-XL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *critics_consensus;
@property (strong, nonatomic) NSString *critics_rating;
@property (strong, nonatomic) NSString *critics_score;
@property (strong, nonatomic) NSString *audience_rating;
@property (strong, nonatomic) NSString *audience_score;
@property (strong, nonatomic) NSString *mpaa_rating;

@property (strong, nonatomic) NSString *thumbnail;
@end
