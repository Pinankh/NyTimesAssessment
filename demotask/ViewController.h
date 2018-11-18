//
//  ViewController.h
//  demotask
//
//  Created by Neeraj Agnihotri on 17/11/18.
//  Copyright © 2018 Neeraj Agnihotri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AYTimecontroller.h"

@interface ViewController : UIViewController<SomeViewControllerDelegate,UITableViewDataSource,UITableViewDelegate>
{
    
    NSMutableArray *finalarr;
    
    
    
    __weak IBOutlet UITableView *tbl;
}


@end

