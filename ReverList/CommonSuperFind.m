//
//  CommonSuperFind.m
//  ReverList
//
//  Created by 123 on 2019/3/8.
//  Copyright © 2019 jingying. All rights reserved.
//

#import "CommonSuperFind.h"

@implementation CommonSuperFind
///查找两个视图的共同父视图
- (NSArray<UIView *> *)findCommonSuperView:(UIView *)viewOne other:(UIView *)viewOther{
    NSMutableArray * result = [NSMutableArray array];
    //查找第一个视图的所有父视图
    NSArray * arrayOne = [self findSuperViews:viewOne];
    //查找第二个视图的所有父视图
    NSArray * arrayOther = [self findSuperViews:viewOther];
    
    int i = 0;
    while (i < MIN((int)arrayOne.count, (int)arrayOther.count)) {
        //倒序获取各个视图的父视图
        UIView * superOne = [arrayOne objectAtIndex:arrayOne.count - i - 1];
        UIView * superOther = [arrayOne objectAtIndex:arrayOther.count - i - 1];
        
        if (superOne == superOther) {
            [result addObject:superOne];
            i++;
        }
        //如果不相同，结束遍历
        else{
            break;
        }
    }
    
    return result;
}


-(NSArray <UIView *>*)findSuperViews:(UIView *)view{
    //初始化为第一父视图
    UIView * temp = view.superview;
    //保存结果的数组
    NSMutableArray * result = [NSMutableArray array];
    while (temp) {
        [result addObject:temp];
        temp = temp.superview;
    }
    return result;
    
}
@end
