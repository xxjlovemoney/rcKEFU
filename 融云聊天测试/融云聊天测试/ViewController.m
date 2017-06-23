//
//  ViewController.m
//  融云聊天测试
//
//  Created by gagakj on 2017/5/23.
//  Copyright © 2017年 gagakj. All rights reserved.
//

#import "ViewController.h"
#import "SSDTestChatViewController.h"
#import "RCDCustomerServiceViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)enterChatListVc:(UIButton *)sender {
    
    SSDTestChatViewController * chatList = [[SSDTestChatViewController alloc]init];
    [self.navigationController pushViewController:chatList animated:YES];
}

- (IBAction)enterCustomVc:(UIButton *)sender {
    RCDCustomerServiceViewController *chatService = [[RCDCustomerServiceViewController alloc] init];
#define SERVICE_ID @"KEFU149552510122584"
    chatService.conversationType = ConversationType_CUSTOMERSERVICE;
    chatService.targetId = SERVICE_ID;
    chatService.title = @"在线客服";
    [self.navigationController pushViewController :chatService animated:YES];
    
}


@end
