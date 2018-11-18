//
//  AYTimecontroller.h
//  demotask
//
//  Created by Neeraj Agnihotri on 17/11/18.
//  Copyright © 2018 Neeraj Agnihotri. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@class AYTimecontroller;

@protocol SomeViewControllerDelegate <NSObject>
@optional
-(void)getdataresp: (NSDictionary *) arr;

@end


@interface AYTimecontroller : NSObject
{
    
    
}

-(void)getdatacontroller;

@property (nonatomic, weak) id<SomeViewControllerDelegate> delegate;

@end
