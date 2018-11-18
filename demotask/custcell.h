//
//  custcell.h
//  demotask
//
//  Created by Neeraj Agnihotri on 17/11/18.
//  Copyright © 2018 Neeraj Agnihotri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface custcell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lbltitle;
@property (weak, nonatomic) IBOutlet UILabel *lblbyline;
@property (weak, nonatomic) IBOutlet UILabel *lblpubdate;

@end
