//
//  HashFind.m
//  ReverList
//
//  Created by 123 on 2019/3/8.
//  Copyright © 2019 jingying. All rights reserved.
//

#import "HashFind.h"

@implementation HashFind
///查找第一个只出现一次的字符
char findFirstChar(char * cha){
    char result = '\0';
    //定义一个数组用来存储哥哥字母出现的次数
    int array[256];
    //对数组进行初始化操作
    for (int i = 0; i<256; i++) {
        array[i] = 0;
    }
    //定义一个指针 指向当前字符串的头部
    char * p = cha;
    //遍历每个字符
    while (*p != '\0') {
        //在字母对应存储位置 进行出现洗漱+1操作
        array[*(p++)]++;
    }
    //  将P值装重新指向字符串头部
    p = cha;
    //  遍历每个字母出现的次数
    while (*p != '\0') {
        //遇到第一个出现次数为1的字符打印结果
        if (array[*p] == 1) {
            result = *p;
            break;
        }
        //反之继续查找
        p++;
    }
    return result;
    
}
@end
