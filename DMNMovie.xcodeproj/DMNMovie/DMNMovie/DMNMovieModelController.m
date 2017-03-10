//
//  DMNMovieModelController.m
//  DMNMovie
//
//  Created by Michael Castillo on 3/10/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

#import "DMNMovieModelController.h"
#import "DMNMovieModel.h"
#import "DMNMovie-Swift.h"


@implementation DMNMovieModelController

+ (void)fetchMovieWithSearchTerm:(NSString *)searchTerm completion:(void (^)(DMNMovieModel * _Nullable))completion
{
    NSString *baseURLString = @"https://api.themoviedb.org/3/search/movie";
    
    NSURL *baseURL = [[NSURL new] initWithString:baseURLString];
    
    NSURLComponents *urlComponents = [NSURLComponents componentsWithURL:baseURL resolvingAgainstBaseURL:YES];
    
    NSURLQueryItem *apiKey = [NSURLQueryItem queryItemWithName:@"api_key" value:[self fetchAPIKeyFromLocalURL]];
    
    NSURL *movieSearchURL = [baseURL URLByAppendingPathComponent:[searchTerm lowercaseString]];
    
    urlComponents.queryItems = @[movieSearchURL, apiKey];
    
    
    
}

+ (NSString *) fetchAPIKeyFromLocalURL
{
    NSURL *apiKeyPlistURL = [[NSBundle mainBundle] URLForResource:@"API" withExtension:@"plist"];
    
    NSDictionary *apiKeyDict = [[NSDictionary alloc] initWithContentsOfURL:apiKeyPlistURL];
    
    NSString *apiKey = apiKeyDict[@"APIKey"];
    
    return apiKey;
}


@end

