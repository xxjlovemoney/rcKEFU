//
//  ChatViewController.m
//  融云客服测试
//
//  Created by 许小军 on 2017/6/22.
//  Copyright © 2017年 gaga. All rights reserved.
//

#import "ChatViewController.h"
#import <IQKeyboardReturnKeyHandler.h>
#import "YZInputView.h"
@interface ChatViewController ()
    
@property(nonatomic,strong)IQKeyboardReturnKeyHandler *returnKeyHandler;
//底部条的高度约束
    @property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomHCons;
    @property (weak, nonatomic) IBOutlet NSLayoutConstraint *inputViewBottomHCons;
    
    
    @property (weak, nonatomic) IBOutlet YZInputView *inputView;
    
@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //键盘 开启return返回
    self.returnKeyHandler = [[IQKeyboardReturnKeyHandler alloc] initWithViewController:self];
    
    // 监听文本框文字高度改变
    self.inputView.yz_textHeightChangeBlock = ^(NSString *text,CGFloat textHeight){
        // 文本框文字高度改变会自动执行这个block，修改底部View的高度
        // 设置底部条的高度 = 文字高度 + textView距离上下间距高度（10 = 上（5）下（5）间距总和）
        self.bottomHCons.constant = textHeight + 10;
        self.inputViewBottomHCons.constant = textHeight;
    };
    
}



@end
