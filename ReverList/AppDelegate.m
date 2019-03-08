//
//  AppDelegate.m
//  ReverList
//
//  Created by 123 on 2019/3/8.
//  Copyright © 2019 jingying. All rights reserved.
//

#import "AppDelegate.h"
#import "reverseChar.h"
#import "ReverseList.h"
#import "MergeSortedList.h"
#import "HashFind.h"

#import "MedianFind.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //反转字符串
//    char ch[] = "hello,world";
//    char_reverse(ch);
//    printf("reverse result is %s",ch);
    
//    //单链表反转
//    struct Node * head = constructList();
//    printList(head);
//    printf("--------------------\n");
//    struct Node * newHead = reverseList(head);
//    printList(newHead);
    
//    int a[5] = {1,4,6,7,9};
//    int b[8] = {2,3,5,6,8,10,11,12};
//
//    int result[13];
//    mergeList(a, 5, b, 8, result);
//    for (int i = 0; i < 13; i++) {
//        printf("%d  ",result[i]);
//    }
//    
    /*
     1.字符（char）是一个长度为8的数据类型，因此用功有2^8 =256种可能
     2.每个字母根据其ASCII码值作为数组的下标对应数组的一个数字
     3.数组中存储的是每个字符出现的次数
     
     哈希表
     例：给定值是字母a，对应的ASCII值是97，数组索引下标为97
     
     char ----f(key)---->index
     f(key) = key
     存储和查找都通过该函数，有效提高查找效率
     */
    
//    //Hash查找
//    char cha[] = "abbaccddeeff";
//    char fc = findFirstChar(cha);
//    printf("this char is %c \n",fc);
    
    //无需数组找中位数
    int list[6] = {12,9,16,24,5,8};
    float median = findMideian(list, 6);
    printf("the midian is %.1f",median);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
