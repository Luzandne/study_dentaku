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
    self.inputFirst = true;
    CGRect windowRange = [[UIScreen mainScreen] bounds];
    int centerWidth = windowRange.size.width / 2;
    int centerHeight = windowRange.size.height / 2;
    int spaceWidth = 15;
    int spaceHeight = 18;
    int labelButtonWidth = 80;
    int labelButtonHeight = 40;
    int labelResultWidth = windowRange.size.width - spaceWidth * 10 - 15;
    int labelResultHeight = 40;
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
    // 結果ラベルのY座標
    int lineResultPosition = centerHeight - spaceHeight / 2;
    // 入力値初期化
    self.inputValue = 0;
    
//    int counter = 0;
//    // 数字ボタン(1~9まで)配置
//    for (int i = 1; i <= 3 ;i++){       //列
//        for(int j = 1; j <= 3; j++){    //行
//            ++counter;
//            self.labelButton = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition + (spaceWidth * 6 * (j-1)), line2Position - (spaceHeight * 3 * (i - 1)), labelButtonWidth, labelButtonHeight)];
//            self.labelButton.text = [NSString stringWithFormat:@"%d", counter];;
//            self.labelButton.tag = counter;
//            [self labelButtonSetting:self.labelButton];
//            [self.view addSubview:self.labelButton];
//        }
//
//    }
    self.label0 = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line1Position, labelButtonWidth, labelButtonHeight)];
    self.label0.text = @"0";
    self.label0.tag = 0;
    [self labelButtonSetting:self.label0];
    [self.view addSubview:self.label0];
    
    self.label1 = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line2Position, labelButtonWidth, labelButtonHeight)];
    self.label1.text = @"1";
    self.label1.tag = 1;
    [self labelButtonSetting:self.label1];
    [self.view addSubview:self.label1];
    
    self.label2 = [[UILabel alloc]initWithFrame:CGRectMake(lineCenterPosition, line2Position, labelButtonWidth, labelButtonHeight)];
    self.label2.text = @"2";
    self.label2.tag = 2;
    [self labelButtonSetting:self.label2];
    [self.view addSubview:self.label2];
    
    self.label3 = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line2Position, labelButtonWidth, labelButtonHeight)];
    self.label3.text = @"3";
    self.label3.tag = 3;
    [self labelButtonSetting:self.label3];
    [self.view addSubview:self.label3];
    
    self.label4 = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line3Position, labelButtonWidth, labelButtonHeight)];
    self.label4.text = @"4";
    self.label4.tag = 4;
    [self labelButtonSetting:self.label4];
    [self.view addSubview:self.label4];
    
    self.label5 = [[UILabel alloc]initWithFrame:CGRectMake(lineCenterPosition, line3Position, labelButtonWidth, labelButtonHeight)];
    self.label5.text = @"5";
    self.label5.tag = 6;
    [self labelButtonSetting:self.label5];
    [self.view addSubview:self.label5];
    
    self.label6 = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line3Position, labelButtonWidth, labelButtonHeight)];
    self.label6.text = @"6";
    self.label6.tag = 6;
    [self labelButtonSetting:self.label6];
    [self.view addSubview:self.label6];
    
    self.label7 = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line4Position, labelButtonWidth, labelButtonHeight)];
    self.label7.text = @"7";
    self.label7.tag = 7;
    [self labelButtonSetting:self.label7];
    [self.view addSubview:self.label7];
    
    self.label8 = [[UILabel alloc]initWithFrame:CGRectMake(lineCenterPosition, line4Position, labelButtonWidth, labelButtonHeight)];
    self.label8.text = @"8";
    self.label8.tag = 8;
    [self labelButtonSetting:self.label8];
    [self.view addSubview:self.label8];
    
    self.label9 = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line4Position, labelButtonWidth, labelButtonHeight)];
    self.label9.text = @"9";
    self.label9.tag = 9;
    [self labelButtonSetting:self.label9];
    [self.view addSubview:self.label9];
    // 数字ボタン0配置
    self.labelButton = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line1Position, labelButtonWidth, labelButtonHeight)];
    self.labelButton.text = @"0";
    self.labelButton.tag = 0;
    [self labelButtonSetting:self.labelButton];
    [self.view addSubview:self.labelButton];

//    // 小数点ボタン配置
//    self.labelButton = [[UILabel alloc]initWithFrame:CGRectMake(lineCenterPosition, line1Position, labelButtonWidth, labelButtonHeight)];
//    self.labelButton.text = @".";
//    self.labelButton.tag = 10;
//    [self labelButtonSetting:self.labelButton];
//    [self.view addSubview:self.labelButton];
    // =ボタン配置
    self.labelButton = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line1Position, labelButtonWidth, labelButtonHeight)];
    self.labelButton.text = @"=";
    self.labelButton.tag = 11;
    [self labelButtonSetting:self.labelButton];
    [self.view addSubview:self.labelButton];
    // +ボタン配置
    self.labelButton = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line5Position, labelButtonWidth, labelButtonHeight)];
    self.labelButton.text = @"+";
    self.labelButton.tag = 12;
    [self labelButtonSetting:self.labelButton];
    [self.view addSubview:self.labelButton];
    // -ボタン配置
    self.labelButton = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line6Position, labelButtonWidth, labelButtonHeight)];
    self.labelButton.text = @"-";
    self.labelButton.tag = 13;
    [self labelButtonSetting:self.labelButton];
    [self.view addSubview:self.labelButton];
    // ×ボタン配置
    self.labelButton = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line7Position, labelButtonWidth, labelButtonHeight)];
    self.labelButton.text = @"×";
    self.labelButton.tag = 14;
    [self labelButtonSetting:self.labelButton];
    [self.view addSubview:self.labelButton];
    // ÷ボタン配置
    self.labelButton = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line8Position, labelButtonWidth, labelButtonHeight)];
    self.labelButton.text = @"÷";
    self.labelButton.tag = 15;
    [self labelButtonSetting:self.labelButton];
    [self.view addSubview:self.labelButton];
    // オールクリアボタン配置
    self.labelButton = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line8Position, labelButtonWidth, labelButtonHeight)];
    self.labelButton.text = @"全部取消";
    self.labelButton.tag = 16;
    [self labelButtonSetting:self.labelButton];
    [self.view addSubview:self.labelButton];
    // モードボタン配置
    self.labelCalMode = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line7Position, labelButtonWidth, labelButtonHeight)];
    self.labelCalMode.text = @"";
    [self labelButtonSetting:self.labelCalMode];
    [self.view addSubview:self.labelCalMode];
    // 計算結果ラベル配置
    self.labelResult = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, lineResultPosition, labelResultWidth, labelResultHeight)];
    self.labelResult.text = @"0";
    [self labelResultSetting:self.labelResult];
    [self.view addSubview:self.labelResult];
    
}

// ラベルボタン設定
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

// 結果ラベル設定
-(UILabel *)labelResultSetting:(UILabel *)labelResult {
    labelResult.backgroundColor = [UIColor whiteColor];
    labelResult.textColor = [UIColor blackColor];
    labelResult.textAlignment = NSTextAlignmentRight;
    labelResult.userInteractionEnabled = YES;
    labelResult.font = [UIFont systemFontOfSize:34];
    //枠線
    labelResult.layer.borderWidth = 1.0f;
    //枠線の色
    labelResult.layer.borderColor = [[UIColor blackColor] CGColor];

    return labelResult;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    //タッチイベント
    switch (touch.view.tag) {
        case 0:
            self.inputValue = 0;
            [self reloadStatus];
            break;
        case 1:
            self.inputValue = 1;
            [self reloadStatus];
            break;
        case 2:
            self.inputValue = 2;
            [self reloadStatus];
            break;
        case 3:
            self.inputValue = 3;
            [self reloadStatus];
            break;
        case 4:
            self.inputValue = 4;
            [self reloadStatus];
            break;
        case 5:
            self.inputValue = 5;
            [self reloadStatus];
            break;
        case 6:
            self.inputValue = 6;
            [self reloadStatus];
            break;
        case 7:
            self.inputValue = 7;
            [self reloadStatus];
            break;
        case 8:
            self.inputValue = 8;
            [self reloadStatus];
            break;
        case 9:
            self.inputValue = 9;
            [self reloadStatus];
            break;
//        case 10:
//            break;
        case 11:    // =
            self.inputMode = @"equal";
            self.isCalculation = false;
            self.inputFirst = true;
            break;
        case 12:    // 足し算
            self.inputMode = @"addition";
            self.isCalculation = true;
            break;
        case 13:    // 引き算
            self.inputMode = @"subtraction";
            self.isCalculation = true;
            [self reloadStatus];
            break;
        case 14:    // 掛け算
            self.inputMode = @"multiplication";
            self.isCalculation = true;
            [self reloadStatus];
            break;
        case 15:    // 割り算
            self.inputMode = @"division";
            self.isCalculation = true;
            [self reloadStatus];
            break;
        case 16:    // オールクリア
            self.inputMode = @"AC";
            [self reloadStatus];
            break;
        default:
            break;
    }
}

-(void)reloadStatus {
    if(self.isCalculation){
        
    } else {
        if(self.evadeInputValue != 0){
            NSString *str = [NSString stringWithFormat:@"%d%d",self.evadeInputValue,self.inputValue];
            self.labelResult.text = str;
        } else {
            self.labelResult.text = [NSString stringWithFormat:@"%d",self.inputValue];
        }
        self.evadeInputValue = [self.labelResult.text intValue];
        if(self.evadeInputValue >= 2147483647) {
            self.labelResult.text = [NSString stringWithFormat:@"%d",self.evadeInputValue];
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"桁あふれです" preferredStyle:UIAlertControllerStyleAlert];
            [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
            [self presentViewController:alert animated:YES completion:nil];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
