//
//  ViewController.h
//  AUCallback
//
//  Created by Chinh Nguyen on 10/14/13.
//  Copyright (c) 2013 Chinh Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

typedef struct{
    SInt16 data;
    struct Node* next;
} Node;

@interface ViewController : UIViewController

@end
