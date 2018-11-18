//
//  AYTimecontroller.m
//  demotask
//
//  Created by Neeraj Agnihotri on 17/11/18.
//  Copyright © 2018 Neeraj Agnihotri. All rights reserved.
//

#import "AYTimecontroller.h"
#import "Reachability.h"
@implementation AYTimecontroller

-(void)getdatacontroller
{
    
    
    
    Reachability* reach = [Reachability reachabilityWithHostname:@"www.google.com"];
    
    // Set the blocks
    reach.reachableBlock = ^(Reachability*reach)
    {
        // keep in mind this is called on a background thread
        // and if you are updating the UI it needs to happen
        // on the main thread, like this:
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            NSURL *url = [NSURL URLWithString:@"http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/7.json?api-key=f8082d3b257d436cbfaa1a03c003ce4e"];
            NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url];
            
            NSURLSession *session = [NSURLSession sharedSession];
            
            NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
                
                NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
                
                [self.delegate getdataresp:dic];
            }];
            
            [task resume];
            
            
            NSLog(@"REACHABLE!");
        });
    };
    
    reach.unreachableBlock = ^(Reachability*reach)
    {
        NSDictionary *dic = [[NSDictionary alloc]init];
       // [self.delegate delegateMethodName:dic];
        
        NSLog(@"UNREACHABLE!");
    };
    
    // Start the notifier, which will cause the reachability object to retain itself!
    [reach startNotifier];
    
    
    
    
    
    
}

@end
