//
//  CommonSuperFind.h
//  ReverList
//
//  Created by 123 on 2019/3/8.
//  Copyright © 2019 jingying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface CommonSuperFind : NSObject
///查找两个视图的共同父视图
- (NSArray<UIView *> *)findCommonSuperView:(UIView *)viewOne other:(UIView *)viewOther;
@end

NS_ASSUME_NONNULL_END
