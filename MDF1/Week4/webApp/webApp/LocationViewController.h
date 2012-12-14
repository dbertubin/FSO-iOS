//
//  LocationViewController.h
//  webApp
//
//  Created by Derek Bertubin on 12/13/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "CustomTableViewCell.h"
#import "LocationDetails.h"

@interface LocationViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate>

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
@property NSMutableArray * articleDetails;

@property NSString * xmlUrlString;
@property NSString * name;
@property NSString * nameTitle;
@property NSString * obTime;
@property NSString * obTimeTitle;
@property NSString * temp;
@property NSString * tempTitle;
@property NSString * weather;
@property NSString * weatherTitle;
@property NSString * itemString;@property BOOL isInEditMode;
@property BOOL parseController;



@end
