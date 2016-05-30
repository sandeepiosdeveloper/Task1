//
//  SecondViewController.m
//  TaskNew
//
//  Created by fis on 5/30/16.
//  Copyright © 2016 fis. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"
@interface SecondViewController ()
{
    NSString *Value;
    AppDelegate *App;
}
@property (strong, nonatomic) IBOutlet UITextField *aText;
- (IBAction)Go:(id)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    App=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    self.navigationItem.hidesBackButton = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)Go:(id)sender {
    
    Value=_aText.text;
    [App.arr addObject:Value];
    NSLog(@">>>>>%@<<<<",App.arr);
   // [self performSegueWithIdentifier:@"show" sender:nil];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController *vc=[segue destinationViewController];
    vc.arr2=App.arr;
}
@end
