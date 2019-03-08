//
//  MedianFind.m
//  ReverList
//
//  Created by 123 on 2019/3/8.
//  Copyright © 2019 jingying. All rights reserved.
//

#import "MedianFind.h"

@implementation MedianFind
///无序数组中查找中位数
float findMideian(int a[], int aLen){
    int low = 0;
    int high = aLen - 1;
    
    int mid = (aLen - 1)/2;
    int div = PartSort(a , low, high);
    while (div != mid) {
        if (mid < div) {
            //左半区找
            div = PartSort(a, low, div - 1) ;
        }
        else{
            //右半区找
            div = PartSort(a, div + 1, high) ;
        }
    }
    if (aLen % 2 == 1) {
        //若为奇数
        return a[mid];
    }
    else{
        //若为偶数
        int mid1 = (aLen + 1)/2;
        while (div != mid1) {
            if (mid1 < div) {
                //左半区找
                div = PartSort(a, low, div - 1) ;
            }
            else{
                //右半区找
                div = PartSort(a, div + 1, high) ;
            }
        }
        return (a[mid] + a[mid1])/2.0;
    }
    
}

///快排
int PartSort(int a[], int start, int end){
    int low = start;
    int high = end;
    
    //选取关键字
    int key = a[end];
    while (low < high) {
        //左边找比key大的值
        while (low < high && a[low] <= key) {
            ++low;
        }
        //右边找比key小的值
        while (low < high && a[high] >= key) {
            --high;
        }
        if (low < high) {
            //找到之后交换左右的值
            int temp = a[low];
            a[low] = a[high];
            a[high] = temp;
        }
        
    }
    int temp = a[high];
    a[high] = a[end];
    a[end] = temp;
    return low;
}
@end
