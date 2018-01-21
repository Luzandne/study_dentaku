//
//  ViewController.h
//  dentaku
//
//  Created by 牧圭祐 on 2017/12/23.
//  Copyright © 2017年 牧圭祐. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// 0~9の数字ラベルボタン
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
// ＝ラベル
@property UILabel *labelEqual;
// ＋ラベル
@property UILabel *labelAddition;
// ーラベル
@property UILabel *labelSubtraction;
// ×ラベル
@property UILabel *labelMultiplication;
// ÷ラベル
@property UILabel *labelDivision;
// ACラベル
@property UILabel *labelAc;
// 計算モードラベル
@property UILabel *labelCalMode;
// 結果出力ラベル
@property UILabel *labelResult;
// 入力値
@property int inputValue;
// 数値退避１回目計算時
@property int evacuationInputValue1st;
// 数値退避２回目計算時
@property int evacuationInputValue2nd;
// 結果を出すタイミング
@property BOOL isResultTime;
// 結果を出すタイミング
@property BOOL reInput;
// trueなら２回目　falseなら１回目の数値入力中
@property BOOL isCalculation;
// 初回入力フラグ
@property BOOL inputFirst;

// モードを用意したけどenumの呼び方が分からない・・・情けなし
//@property enum calMode{
//    addition,
//    subtraction,
//    multiplication,
//    division
//};

@end

