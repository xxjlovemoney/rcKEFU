//
//  SSDConversationViewController.m
//  融云聊天测试
//
//  Created by gagakj on 2017/5/24.
//  Copyright © 2017年 gagakj. All rights reserved.
//

#import "SSDConversationViewController.h"

@interface SSDConversationViewController ()

@end

@implementation SSDConversationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.conversationMessageCollectionView.backgroundView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"menu-BG"]];
    
    //语音按钮隐藏
    self.chatSessionInputBarControl.switchButton.hidden = YES;
    //输入框位置和宽度修改
    self.chatSessionInputBarControl.inputTextView.xxj_x = 10;
    self.chatSessionInputBarControl.inputTextView.xxj_width = 285;
    
    //聊天界面底部输入工具栏背景颜色的修改
    self.chatSessionInputBarControl.backgroundColor = RGBCOLOR(0, 144, 162);
    //聊天界面底部输入工具栏的输入框的背景颜色
    [self.chatSessionInputBarControl.inputTextView setBackgroundColor:RGBCOLOR(0, 144, 162)];
    self.chatSessionInputBarControl.inputTextView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.chatSessionInputBarControl.inputTextView.layer.borderWidth = 1;
    
    

    
    
//    NSLog(@"%f",self.chatSessionInputBarControl.inputTextView.xxj_width);
//    NSLog(@"%f",self.chatSessionInputBarControl.emojiButton.xxj_x);
//    NSLog(@"%@",self.chatSessionInputBarControl.emojiButton);
    NSLog(@"%@",self.chatSessionInputBarControl.inputView);
}



/*!
 即将显示消息Cell的回调
 
 @param cell        消息Cell
 @param indexPath   该Cell对应的消息Cell数据模型在数据源中的索引值
 
 @discussion 您可以在此回调中修改Cell的显示和某些属性。
 */
- (void)willDisplayMessageCell:(RCMessageBaseCell *)cell
                   atIndexPath:(NSIndexPath *)indexPath
{
    
    //比如修改文本消息的字体颜色，需要先判断
    if ([cell isMemberOfClass:[RCTextMessageCell class]]) {
        //现在方法中的cell的类型是RCMessageBaseCell，里面没有修改的这些属性，所以需要转换，
        RCTextMessageCell * textCell = (RCTextMessageCell *)cell;
        //转换后cell里面的lable是融云自己封装的lable，所以再转换一下
        UILabel * textMsgLable = (UILabel *)textCell.textLabel;
        textMsgLable.textColor = [UIColor whiteColor];
        
        [textCell.bubbleBackgroundView setImage:[UIImage new]];
        [textCell.bubbleBackgroundView setBackgroundColor:RGBCOLOR(24, 108, 158)];
    }
    
    RCMessageCell *BaseCell=(RCMessageCell *)cell;
    UIImageView *imageView= (UIImageView *)BaseCell.portraitImageView;
    imageView.hidden=YES;
//    BaseCell.messageContentView.xxj_x = 20;
    
    RCMessage * message = [[RCMessage alloc]init];
    if (message.messageDirection == 1) {
        
        BaseCell.messageContentView.xxj_x = 20;
        
    }else if (message.messageDirection == 2)
    {
        BaseCell.messageContentView.xxj_x = 100;
    }
}


//
//- (RCMessageBaseCell *)rcConversationCollectionView:(UICollectionView *)collectionView
//                             cellForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//
//}


//- (RCMessage *)willAppendAndDisplayMessage:(RCMessage *)message
//{
//    RCMessageCell *BaseCell=[[RCMessageCell alloc]init];
//    if (message.messageDirection == 1) {
//        
//        BaseCell.messageContentView.xxj_x = 20;
//        
//    }else if (message.messageDirection == 2)
//    {
//        BaseCell.messageContentView.xxj_x = 100;
//    }
//    return message;
//}





















@end
