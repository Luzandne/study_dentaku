//
//  ViewController.h
//  dentaku
//
//  Created by 牧圭祐 on 2017/12/23.
//  Copyright © 2017年 牧圭祐. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// ラベルボタン
@property UILabel *labelButton;


@property UILabel *label0;

@property UILabel *label1;

@property UILabel *label2;

@property UILabel *label3;

@property UILabel *label4;

@property UILabel *label5;

@property UILabel *label6;

@property UILabel *label7;

@property UILabel *label8;

@property UILabel *label9;

// 結果出力ラベル
@property UILabel *labelResult;
// 計算モードラベル
@property UILabel *labelCalMode;
// 入力値
@property int inputValue;
// 数値退避
@property int evadeInputValue;
// 結果
@property int result;
// 退避
@property int evacuation;
// trueなら計算中　falseなら数値入力中
@property BOOL isCalculation;
// モード
@property NSString *inputMode;
// 初回入力フラグ
@property BOOL inputFirst;

// モードを用意したけどenumの呼び方が分からない・・・
//@property enum calMode{
//    addition,
//    subtraction,
//    multiplication,
//    division
//};

@end

