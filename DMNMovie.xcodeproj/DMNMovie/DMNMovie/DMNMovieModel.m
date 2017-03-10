//
//  DMNMovieModel.m
//  DMNMovie
//
//  Created by Michael Castillo on 3/10/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

#import "DMNMovieModel.h"

@implementation DMNMovieModel

- (instancetype)initWithName:(NSString *)name voteCount:(NSInteger)voteCount overview:(NSString *)overview
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _voteCount = voteCount;
        _overview = overview;
    }
    return self;
}

//- (instancetype)init
//{
//    return [self initWithName:@"" voteCount:0 overview:@""];
//}

@end


// obj-c style extension

@implementation DMNMovieModel (JSONConvertible)

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSString *name = dictionary[@"title"];
    NSInteger voteCount = [dictionary[@"vote_count"] integerValue];
    NSString *overview = dictionary[@"overview"];
    
    return [self initWithName:name voteCount:voteCount overview:overview];
    
}


@end











