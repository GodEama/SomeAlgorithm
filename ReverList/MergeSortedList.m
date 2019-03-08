//
//  MergeSortedList.m
//  ReverList
//
//  Created by 123 on 2019/3/8.
//  Copyright © 2019 jingying. All rights reserved.
//

#import "MergeSortedList.h"

@implementation MergeSortedList
//将有序数组a和有序数组b合并到一个数组result当中，且仍然保持有序
void mergeList(int a[], int aLen, int b[], int bLen, int result[])
{
    int p = 0;//遍历数组a的指针
    int q = 0;//遍历数组b的指针
    int i = 0;//记录当前储存位置
    //任一数组没有达到边界遍历
    while (p < aLen && q < bLen) {
        //如果a数组对应位置小于b数组对应位置的值
        if (a[p] < b[q]) {
            //储存a数组的b值
            result[i] = a[p];
            //移动p指针的位置
            p++;
        }
        else{
            //储存b数组的b值
            result[i] = b[q];
            //移动q指针的位置
            q++;
        }
        i++;
    }
    //如果a数组有剩余
    while (p < aLen) {
        result[i] = a[p++];
        i++;
    }
    //如果b数组有剩余
    while (q < bLen) {
        result[i] = b[q++];
        i++;
    }
    
}
@end
