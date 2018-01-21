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
    [self allClear];
    
    self.label0 = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line1Position, labelButtonWidth, labelButtonHeight)];
    self.label0.text = @"0";
    self.label0.tag = -1;    //0はタグ未設定値で不具合の元だから別の値にする
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
    self.label5.tag = 5;
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

    // =ボタン配置
    self.labelEqual = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line1Position, labelButtonWidth, labelButtonHeight)];
    self.labelEqual.text = @"=";
    self.labelEqual.tag = 11;
    [self labelButtonSetting:self.labelEqual];
    [self.view addSubview:self.labelEqual];
    // +ボタン配置
    self.labelAddition = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line5Position, labelButtonWidth, labelButtonHeight)];
    self.labelAddition.text = @"+";
    self.labelAddition.tag = 12;
    [self labelButtonSetting:self.labelAddition];
    [self.view addSubview:self.labelAddition];
    // -ボタン配置
    self.labelSubtraction = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line6Position, labelButtonWidth, labelButtonHeight)];
    self.labelSubtraction.text = @"-";
    self.labelSubtraction.tag = 13;
    [self labelButtonSetting:self.labelSubtraction];
    [self.view addSubview:self.labelSubtraction];
    // ×ボタン配置
    self.labelMultiplication = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line7Position, labelButtonWidth, labelButtonHeight)];
    self.labelMultiplication.text = @"×";
    self.labelMultiplication.tag = 14;
    [self labelButtonSetting:self.labelMultiplication];
    [self.view addSubview:self.labelMultiplication];
    // ÷ボタン配置
    self.labelDivision = [[UILabel alloc]initWithFrame:CGRectMake(lineRightPosition, line8Position, labelButtonWidth, labelButtonHeight)];
    self.labelDivision.text = @"÷";
    self.labelDivision.tag = 15;
    [self labelButtonSetting:self.labelDivision];
    [self.view addSubview:self.labelDivision];
    // オールクリアボタン配置
    self.labelAc = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line8Position, labelButtonWidth, labelButtonHeight)];
    self.labelAc.text = @"全部取消";
    self.labelAc.tag = 16;
    [self labelButtonSetting:self.labelAc];
    [self.view addSubview:self.labelAc];
    // モードラベル配置
    self.labelCalMode = [[UILabel alloc]initWithFrame:CGRectMake(lineLeftPosition, line7Position, labelButtonWidth, labelButtonHeight)];
    self.labelCalMode.text = @"";
    [self labelModeSetting:self.labelCalMode];
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

// モードラベルボタン設定
-(UILabel *)labelModeSetting:(UILabel *)labelMode {
    labelMode.backgroundColor = [UIColor whiteColor];
    labelMode.textColor = [UIColor blackColor];
    labelMode.textAlignment = NSTextAlignmentCenter;
    labelMode.userInteractionEnabled = YES;
    //枠線
    labelMode.layer.borderWidth = 1.0f;
    //枠線の色
    labelMode.layer.borderColor = [[UIColor blackColor] CGColor];
    
    return labelMode;
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
        case -1:
            self.inputValue = 0;
            [self callReloadInput];
            break;
        case 1:
            self.inputValue = 1;
            [self callReloadInput];
            break;
        case 2:
            self.inputValue = 2;
            [self callReloadInput];
            break;
        case 3:
            self.inputValue = 3;
            [self callReloadInput];
            break;
        case 4:
            self.inputValue = 4;
            [self callReloadInput];
            break;
        case 5:
            self.inputValue = 5;
            [self callReloadInput];
            break;
        case 6:
            self.inputValue = 6;
            [self callReloadInput];
            break;
        case 7:
            self.inputValue = 7;
            [self callReloadInput];
            break;
        case 8:
            self.inputValue = 8;
            [self callReloadInput];
            break;
        case 9:
            self.inputValue = 9;
            [self callReloadInput];
            break;
//        case 10:
//            break;
        case 11:    // =
            [self outputCalResult];
            break;
        case 12:    // 足し算
            self.isCalculation = true;
            self.labelCalMode.text = @"＋";
            self.isResultTime = false;
            self.reInput = false;
            break;
        case 13:    // 引き算
            self.isCalculation = true;
            self.labelCalMode.text = @"ー";
            self.isResultTime = false;
            self.reInput = false;
            break;
        case 14:    // 掛け算
            self.isCalculation = true;
            self.labelCalMode.text = @"×";
            self.isResultTime = false;
            self.reInput = false;
            break;
        case 15:    // 割り算
            self.isCalculation = true;
            self.labelCalMode.text = @"÷";
            self.isResultTime = false;
            self.reInput = false;
            break;
        case 16:    // オールクリア
            [self allClear];
            break;
        default:
            break;
    }
}

-(void)outputCalResult {
    if([self.labelCalMode.text isEqualToString:@"＋"]) {
        self.evacuationInputValue1st += self.evacuationInputValue2nd;
    } else if([self.labelCalMode.text isEqualToString:@"ー"]) {
        self.evacuationInputValue1st -= self.evacuationInputValue2nd;
    } else if([self.labelCalMode.text isEqualToString:@"×"]) {
        self.evacuationInputValue1st *= self.evacuationInputValue2nd;
    } else if([self.labelCalMode.text isEqualToString:@"÷"]) {
        self.evacuationInputValue1st /= self.evacuationInputValue2nd;
    } else {
        // な　に　も　し　な　い
    }
    self.evacuationInputValue2nd = 0;
    self.labelCalMode.text = @"";
    self.isCalculation = false;
    self.isResultTime = true;
    self.inputValue = self.evacuationInputValue1st;
    [self callReloadInput];
}

-(void)allClear {
    self.labelResult.text = @"";
    [self waitMs];
    self.inputValue = 0;
    self.evacuationInputValue1st = 0;
    self.evacuationInputValue2nd = 0;
    self.labelCalMode.text = @"";
    self.labelResult.text = @"0";
    self.isCalculation = false;
    self.isResultTime = false;
    self.reInput = false;
}

// TODO 電卓でよくある点滅のやつ・・・だけど実装がうまくいかない
-(void)waitMs {
    self.labelResult.text = @"";
}

-(void)callReloadInput {
    if(self.isCalculation){
        self.evacuationInputValue2nd = [self inputValueReload:self.evacuationInputValue2nd];
    } else {
        self.evacuationInputValue1st = [self inputValueReload:self.evacuationInputValue1st];
    }
}

// 入出力を画面に反映させる細かい作業はここで行う
// 計算結果の出力と入力値の更新は別々にさせておけばよかった。。
-(int)inputValueReload:(int)evacuationInputValue {
    [self waitMs];
    if((evacuationInputValue != 0 && !self.isResultTime) && !self.reInput){
        NSString *str = [NSString stringWithFormat:@"%d%d",evacuationInputValue,self.inputValue];
        self.labelResult.text = str;
    } else if(evacuationInputValue != 0 && self.isResultTime) {
        self.labelResult.text = [NSString stringWithFormat:@"%d",self.inputValue];
        self.isResultTime = false;
        self.reInput = true;
    } else { // 計算結果を出して再度入力しようとすると値をリセットする。
        self.labelResult.text = [NSString stringWithFormat:@"%d",self.inputValue];
        self.isResultTime = false;
        self.reInput = false;
    }
    evacuationInputValue = [self.labelResult.text intValue];
    if(evacuationInputValue >= 2147483647) {
        self.labelResult.text = [NSString stringWithFormat:@"%d",evacuationInputValue];
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"これより大きな値は計算できませんorz" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
        [self presentViewController:alert animated:YES completion:nil];
    }
    return evacuationInputValue;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
