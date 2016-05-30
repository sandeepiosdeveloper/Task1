//
//  ViewController.m
//  TaskNew
//
//  Created by fis on 5/30/16.
//  Copyright © 2016 fis. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
{
    AppDelegate *del;
    IBOutlet UITableView *aTable;
}

- (IBAction)addAction:(id)sender;
@end

@implementation ViewController
@synthesize arr2;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.hidesBackButton = YES;
    [aTable reloadData];
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

{
    return [arr2 count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithFrame:CGRectZero];
    }
    cell.textLabel.text=[arr2 objectAtIndex:indexPath.row];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addAction:(id)sender {
    
    [self performSegueWithIdentifier:@"show" sender:nil];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    del=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    NSLog(@"123>>>>>%@<<<<",del.arr);
    arr2=del.arr;
}
@end
