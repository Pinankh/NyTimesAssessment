//
//  ViewController.m
//  demotask
//
//  Created by Neeraj Agnihotri on 17/11/18.
//  Copyright © 2018 Neeraj Agnihotri. All rights reserved.
//

#import "ViewController.h"
#import "custcell.h"
#import "Detailsviewcontroller.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self getdata];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)getdata
{
    AYTimecontroller *amt = [[AYTimecontroller alloc]init];
    amt.delegate = self;
    [amt getdatacontroller];
    
}

-(void)getdataresp:(NSDictionary *)arr
{
    finalarr = [[NSMutableArray alloc]init];
    finalarr = [arr valueForKey:@"results"];
     dispatch_async(dispatch_get_main_queue(), ^{
    
         [tbl reloadData];
         
    
     });
    
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [finalarr count];
    
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    custcell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    NSDictionary *dic = [finalarr objectAtIndex:indexPath.row];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    cell.lbltitle.text = [dic valueForKey:@"title"];
    cell.lblbyline.text = [dic valueForKey:@"byline"];
    cell.lblpubdate.text = [dic valueForKey:@"published_date"];
    
    return cell;
    
    
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    Detailsviewcontroller *det = [self.storyboard instantiateViewControllerWithIdentifier:@"det"];
    NSDictionary *dic = [finalarr objectAtIndex:indexPath.row];
    det.strpass = [dic valueForKey:@"url"];
    [self.navigationController pushViewController:det animated:true];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    return 171;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 2;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
