//
//  ReverseList.m
//  ReverList
//
//  Created by 123 on 2019/3/8.
//  Copyright © 2019 jingying. All rights reserved.
//

#import "ReverseList.h"

@implementation ReverseList

struct Node * reverseList(struct Node * head){
    //定义遍历指针，初始化为头节点
    struct Node * p = head;
    //反转后的b链表头部
    struct Node * newH = NULL;
    while (p != NULL) {
        //记录下一个节点
        struct Node * temp = p->next;
        //当前节点的next指向新链表头部
        p->next = newH;
        //更改新链表头部为当前节点
        newH = p;
        //移动p指针
        p = temp;
    }
    //返回反转后的链表头节点
    return newH;
}

//构造一个链表
struct Node * constructList(void){
    //头节点定义
    struct Node * head = NULL;
    //记录当前节点尾节点
    struct Node * cur = NULL;
    for (int i = 1; i < 5; i++) {
        struct Node * node = malloc(sizeof(struct Node));
        node->data = i;
        
        if (head == NULL) {
            head = node;
        }
        else{
            //当前节点的next为新节点
            cur->next = node;
        }
        cur = node;
    }
    return head;
}

//打印链表中的数据
void printList(struct Node * head){
    
    struct Node * temp = head;
    while (temp != NULL) {
        printf("node is %d \n",temp->data);
        temp = temp->next;
    }
}

@end
