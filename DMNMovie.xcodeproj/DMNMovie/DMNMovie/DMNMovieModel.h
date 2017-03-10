//
//  DMNMovieModel.h
//  DMNMovie
//
//  Created by Michael Castillo on 3/10/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMNMovieModel : NSObject

- (instancetype)initWithName:(NSString *)name voteCount:(NSInteger)voteCount overview:(NSString *)overview NS_DESIGNATED_INITIALIZER;

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, readonly) NSInteger voteCount;
@property (nonatomic, copy, readonly) NSString *overview;


@end

//obj- c style extension - failable init

@interface DMNMovieModel (JSONConvertible)

- (instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;

@end
