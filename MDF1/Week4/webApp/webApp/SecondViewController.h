//
//  SecondViewController.h
//  webApp
//
//  Created by Derek Bertubin on 12/10/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h" 
#import "LocationViewController.h"

@protocol xmlData <NSObject>

@required
- (NSString *) xmlDataString;

@end

@interface SecondViewController : UIViewController 
{
    id <xmlData> dataDelegate;
}


@property NSString * xmlText;
@property (weak, nonatomic) IBOutlet UITextView *rawXMLTextView;
@property (strong, nonatomic) NSMutableArray * locationArray;
@property (strong, nonatomic) NSMutableArray * locationDetailURLArray;

@property (strong) id <xmlData> dataDelegate
;
@end
