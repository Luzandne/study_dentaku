//
//  ViewController.m
//  dentaku
//
//  Created by 牧圭祐 on 2017/12/23.
//  Copyright © 2017年 牧圭祐. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect windowRange = [[UIScreen mainScreen] bounds];
    int centerWidth = windowRange.size.width / 2;
    int centerHeight = windowRange.size.height / 2;
    int spaceWidth = 20;
    int spaceHeight = 25;
    int labelWidth = 100;
    int labelHeight = 60;
    // 左の列のX座標
    int lineLeftPosition = centerWidth - spaceWidth * 8 - spaceWidth / 2;
    // 中央の列のX座標
    int lineCenterPosition = centerWidth - spaceWidth * 2 - spaceWidth / 2;
    // 右の列のX座標
    int lineRightPosition = centerWidth + spaceWidth * 4 - spaceWidth / 2;
    
    // 一番下の行のY座標
    int line1Position = centerHeight + spaceHeight * 11;
    // 下から二番目のY座標
    int line2Position = centerHeight + spaceHeight * 8;
    // 下から三番目のY座標
    int line3Position = centerHeight + spaceHeight * 5;
    // 下から四番目のY座標
    int line4Position = centerHeight + spaceHeight * 2;
    // 下から五番目のY座標
    int line5Position = centerHeight - spaceHeight * 3;
    // 下から六番目のY座標
    int line6Position = centerHeight - spaceHeight * 6;
    // 下から七番目のY座標
    int line7Position = centerHeight - spaceHeight * 9;
    // 下から八番目のY座標
    int line8Position = centerHeight - spaceHeight * 12;
    
    
    self.label0 = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line1Position, labelWidth, labelHeight)];
    self.label0.text = @"0";
    self.label0.tag = 0;
    [self labelButtonSetting:self.label0];
    [self.view addSubview:self.label0];
    
    self.label1 = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line2Position, labelWidth, labelHeight)];
    self.label1.text = @"1";
    self.label1.tag = 1;
    [self labelButtonSetting:self.label1];
    [self.view addSubview:self.label1];

    self.label2 = [[UILabel alloc]initWithFrame:CGRectMake(lineCenterPosition, line2Position, labelWidth, labelHeight)];
    self.label2.text = @"2";
    self.label2.tag = 2;
    [self labelButtonSetting:self.label2];
    [self.view addSubview:self.label2];
    
    self.label3 = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line2Position, labelWidth, labelHeight)];
    self.label3.text = @"3";
    self.label3.tag = 3;
    [self labelButtonSetting:self.label3];
    [self.view addSubview:self.label3];
    
    self.label4 = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line3Position, labelWidth, labelHeight)];
    self.label4.text = @"4";
    self.label4.tag = 4;
    [self labelButtonSetting:self.label4];
    [self.view addSubview:self.label4];
    
    self.label5 = [[UILabel alloc]initWithFrame:CGRectMake(lineCenterPosition, line3Position, labelWidth, labelHeight)];
    self.label5.text = @"5";
    self.label5.tag = 6;
    [self labelButtonSetting:self.label5];
    [self.view addSubview:self.label5];
    
    self.label6 = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line3Position, labelWidth, labelHeight)];
    self.label6.text = @"6";
    self.label6.tag = 6;
    [self labelButtonSetting:self.label6];
    [self.view addSubview:self.label6];
    
    self.label7 = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line4Position, labelWidth, labelHeight)];
    self.label7.text = @"7";
    self.label7.tag = 7;
    [self labelButtonSetting:self.label7];
    [self.view addSubview:self.label7];
    
    self.label8 = [[UILabel alloc]initWithFrame:CGRectMake(lineCenterPosition, line4Position, labelWidth, labelHeight)];
    self.label8.text = @"8";
    self.label8.tag = 8;
    [self labelButtonSetting:self.label8];
    [self.view addSubview:self.label8];
    
    self.label9 = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line4Position, labelWidth, labelHeight)];
    self.label9.text = @"9";
    self.label9.tag = 9;
    [self labelButtonSetting:self.label9];
    [self.view addSubview:self.label9];
    
    self.labelDecimalPoint = [[UILabel alloc]initWithFrame:CGRectMake(lineCenterPosition, line1Position, labelWidth, labelHeight)];
    self.labelDecimalPoint.text = @".";
    self.labelDecimalPoint.tag = 10;
    [self labelButtonSetting:self.labelDecimalPoint];
    [self.view addSubview:self.labelDecimalPoint];
    
    self.labelEqual = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line1Position, labelWidth, labelHeight)];
    self.labelEqual.text = @"=";
    self.labelEqual.tag = 11;
    [self labelButtonSetting:self.labelEqual];
    [self.view addSubview:self.labelEqual];
    // +ボタン
    self.labelAdd = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line5Position, labelWidth, labelHeight)];
    self.labelAdd.text = @"+";
    self.labelAdd.tag = 12;
    [self labelButtonSetting:self.labelAdd];
    [self.view addSubview:self.labelAdd];
    // -ボタン
    self.labelSubtract = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line6Position, labelWidth, labelHeight)];
    self.labelSubtract.text = @"+";
    self.labelSubtract.tag = 13;
    [self labelButtonSetting:self.labelSubtract];
    [self.view addSubview:self.labelSubtract];
    // ×ボタン
    self.labelMultiply = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line7Position, labelWidth, labelHeight)];
    self.labelMultiply.text = @"×";
    self.labelMultiply.tag = 14;
    [self labelButtonSetting:self.labelMultiply];
    [self.view addSubview:self.labelMultiply];
    // ÷ボタン
    self.labelDevidedBy = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line8Position, labelWidth, labelHeight)];
    self.labelDevidedBy.text = @"÷";
    self.labelDevidedBy.tag = 15;
    [self labelButtonSetting:self.labelDevidedBy];
    [self.view addSubview:self.labelDevidedBy];
    // オールクリアボタン
    self.labelAllClear = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line8Position, labelWidth, labelHeight)];
    self.labelAllClear.text = @"全部取消";
    self.labelAllClear.tag = 16;
    [self labelButtonSetting:self.labelAllClear];
    [self.view addSubview:self.labelAllClear];
    // クリアボタン
    self.labelClear = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line7Position, labelWidth, labelHeight)];
    self.labelClear.text = @"入力一個取消";
    self.labelClear.tag = 17;
    [self labelButtonSetting:self.labelClear];
    [self.view addSubview:self.labelClear];
}

-(UILabel *)labelButtonSetting:(UILabel *)labelButton {
    labelButton.backgroundColor = [UIColor lightGrayColor];
    labelButton.textColor = [UIColor blackColor];
    labelButton.textAlignment = NSTextAlignmentCenter;
    labelButton.userInteractionEnabled = YES;
    //枠線
    labelButton.layer.borderWidth = 2.0f;
    //枠線の色
    labelButton.layer.borderColor = [[UIColor blackColor] CGColor];

    return labelButton;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //タッチイベント
    UITouch *touchEv = [[event allTouches] anyObject];
    
    //タグを取得
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
