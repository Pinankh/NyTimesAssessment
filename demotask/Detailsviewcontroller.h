//
//  Detailsviewcontroller.h
//  demotask
//
//  Created by Neeraj Agnihotri on 17/11/18.
//  Copyright © 2018 Neeraj Agnihotri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Detailsviewcontroller : UIViewController
@property(strong,nonatomic) NSString *strpass;
@property (weak, nonatomic) IBOutlet UIWebView *web;

@end
