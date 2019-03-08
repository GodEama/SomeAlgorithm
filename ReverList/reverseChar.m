//
//  reverseChar.m
//  ReverList
//
//  Created by 123 on 2019/3/8.
//  Copyright © 2019 jingying. All rights reserved.
//

#import "reverseChar.h"

@implementation reverseChar
void char_reverse(char*cha){
    //    指向第一个字符
    char * begin = cha;
    //  指向最后一个字符
    char * end = cha + strlen(cha) -1;
    
    while (begin < end){
        //交换两个字符的位置，并向中间移动一位
        char temp = *begin;
        *(begin ++) = *end;
        *(end--) = temp;
    }
}


@end
