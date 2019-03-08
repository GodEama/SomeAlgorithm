//
//  MergeSortedList.h
//  ReverList
//
//  Created by 123 on 2019/3/8.
//  Copyright © 2019 jingying. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MergeSortedList : NSObject
//将有序数组a和有序数组b合并到一个数组result当中，且仍然保持有序
void mergeList(int a[], int aLen, int b[], int bLen, int result[]);
@end

NS_ASSUME_NONNULL_END
