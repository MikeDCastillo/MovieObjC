//
//  DMNMovieModelController.h
//  DMNMovie
//
//  Created by Michael Castillo on 3/10/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DMNMovieModel;

NS_ASSUME_NONNULL_BEGIN

@interface DMNMovieModelController : NSObject

+ (void)fetchMovieWithSearchTerm:(NSString *)searchTerm completion: (void (^) (DMNMovieModel * _Nullable))completion;

+ (NSString *)fetchAPIKeyFromLocalURL;

@end

NS_ASSUME_NONNULL_END
