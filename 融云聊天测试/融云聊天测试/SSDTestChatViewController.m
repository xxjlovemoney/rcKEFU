//
//  SSDTestChatViewController.m
//  融云聊天测试
//
//  Created by gagakj on 2017/5/23.
//  Copyright © 2017年 gagakj. All rights reserved.
//

#import "SSDTestChatViewController.h"
#import "SSDConversationViewController.h"
@interface SSDTestChatViewController ()

@end

@implementation SSDTestChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置需要显示哪些类型的会话
    [self setDisplayConversationTypes:@[@(ConversationType_PRIVATE),
                                        @(ConversationType_DISCUSSION),
                                        @(ConversationType_CHATROOM),
                                        @(ConversationType_GROUP),
                                        @(ConversationType_APPSERVICE),
                                        @(ConversationType_SYSTEM)]];
    //设置需要将哪些类型的会话在会话列表中聚合显示
    [self setCollectionConversationType:@[@(ConversationType_DISCUSSION),
                                          @(ConversationType_GROUP)]];
}


-(void)onSelectedTableRow:(RCConversationModelType)conversationModelType conversationModel:(RCConversationModel *)model atIndexPath:(NSIndexPath *)indexPath
{
    SSDConversationViewController *conversationVC = [[SSDConversationViewController alloc]init];
    conversationVC.conversationType = model.conversationType;
    conversationVC.targetId = model.targetId;
    conversationVC.title = @"和谁谁谁的聊天";
    [self.navigationController pushViewController:conversationVC animated:YES];

}



@end
