
//
//  MainQueryController.m
//  Bright
//
//  Created by Josh Trommel on 2015-05-09.
//  Copyright (c) 2015 Intui, Inc. All rights reserved.
//

#import "MainQueryController.h"

@implementation MainQueryController

- (void)awakeFromNib {
    _input.placeholderString = @"What is the volume of the Atlantic Ocean?"; // 3.104×10^8 km^3  (cubic kilometers)
}

- (IBAction)queryPress:(id)sender {
    NSString *plainURL = [NSString stringWithFormat:@"https://bright-backend.herokuapp.com/input?i=%@", _input.stringValue];
    NSString* escapedUrlString = [plainURL stringByAddingPercentEscapesUsingEncoding: NSASCIIStringEncoding];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:escapedUrlString]];
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSError *jsonParsingError = nil;
    NSDictionary *jsonResponse = [NSJSONSerialization JSONObjectWithData:response
                                                                 options:0 error:&jsonParsingError];
    
    NSDictionary *result  = [jsonResponse valueForKeyPath:@"result"];
    
    NSLog(@"%@", result);
}

@end
