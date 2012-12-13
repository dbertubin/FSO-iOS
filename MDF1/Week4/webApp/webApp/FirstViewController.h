//
//  FirstViewController.h
//  webApp
//
//  Created by Derek Bertubin on 12/10/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "CustomTableViewCell.h"
#import "LocationDetails.h"

@interface FirstViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate>



@property (weak, nonatomic) IBOutlet UITableView *locationTableView;

# pragma mark URL Properties
@property (strong, nonatomic) NSURL * url;
@property (strong, nonatomic) NSURLRequest * request;
@property (strong, nonatomic) NSURLConnection * connection;
@property (strong, nonatomic) NSMutableData * requestData;
@property (strong, nonatomic) NSXMLParser * parser;
@property (strong, nonatomic) NSData * xmlData;
@property (strong, nonatomic) NSString * requestString;


@property (strong, nonatomic) NSMutableArray * locationArray;
@property (strong, nonatomic) NSMutableArray * locationDetailURLArray;

@property NSString *currentElement;
@property NSMutableString *ElementValue;
@property NSMutableDictionary *item;
@property NSMutableArray * article;


@property NSString * name;
@property NSString * obTime;
@property NSString * temp;
@property NSString * weather;
@property NSString * itemString;
@property BOOL isInEditMode;

@end
