//
//  LocationViewController.m
//  webApp
//
//  Created by Derek Bertubin on 12/13/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "LocationViewController.h"

@interface LocationViewController ()

@end

@implementation LocationViewController

@synthesize locationTableView;

@synthesize isInEditMode;

@synthesize url, request, connection, requestData;

@synthesize requestString;
@synthesize xmlData;
@synthesize parser;

@synthesize locationArray,locationDetailURLArray;

@synthesize currentElement, ElementValue;
@synthesize article;
@synthesize articleDetails;
@synthesize item;

@synthesize xmlUrlString;
@synthesize name;
@synthesize nameTitle;
@synthesize obTime;
@synthesize obTimeTitle;
@synthesize temp;
@synthesize tempTitle;
@synthesize weather;
@synthesize weatherTitle;
@synthesize itemString;
@synthesize parseController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
    //When the application launches, using NSURLRequest, build a url and request data from a web service of your choice. The data from the request will be placed into a NSMutableData object. The request MUST be asynchronous.
    
    url = [[NSURL alloc] initWithString:self.xmlUrlString];
    NSLog(@"%@", url);
    request = [[NSURLRequest alloc]initWithURL:url];
    if (request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    }
    
    // Mutable Data Object
    requestData = [NSMutableData data];
    
    
    
}

#pragma mark -Connection Handler

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    if (data != nil)
    {
        // adds data to our Existing requestData
        [requestData appendData:data];
    }
    
    
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    requestString = [[NSString alloc]initWithData:requestData encoding:NSASCIIStringEncoding];
    if (requestString != nil) {
        //    NSLog(@"%@", requestString);
    }
    
    parser = [[NSXMLParser alloc]initWithData:requestData];
    
    if (parser != nil)
    {
        [parser setDelegate:self];
        [parser parse];
    }
    
    
}

#pragma mark -Parsing Starts Here
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{
    currentElement = [elementName copy];
    ElementValue = [[NSMutableString alloc] init];
    
    parseController = false;
    
}


- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    if (parseController == false)
    {
        parseController = true;
        if (ElementValue != nil) {
            // init the ad hoc string with the value
            ElementValue = [[NSMutableString alloc] initWithString:string];
        } else {
            // append value to the ad hoc string
            [ElementValue appendString:string];
        }
    }
}



- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    
    
    if ([elementName isEqualToString:@"location"])
    {
        item = [[NSMutableDictionary alloc]init];
        if (item != nil) {
            [item setObject:ElementValue forKey:elementName];
            name = [item objectForKey:@"location"];
            nameTitle = @"Location";
            
        }
        
        NSLog(@" %@ is %@", name, nameTitle);
    }
    
    if ([elementName isEqualToString:@"observation_time"])
    {
        item = [[NSMutableDictionary alloc]init];
        if (item != nil) {
            [item setObject:ElementValue forKey:elementName];
            
            obTime = [item objectForKey:@"observation_time"];
            obTimeTitle = @"Time Last Updated";
        }
        NSLog(@"obv time is %@", obTime);
    }
    
    if ([elementName isEqualToString:@"temperature_string"])
    {
        item = [[NSMutableDictionary alloc]init];
        if (item != nil) {
            [item setObject:ElementValue forKey:elementName];
            
            temp = [item objectForKey:@"temperature_string"];
            tempTitle = @"Current Temp";
        }
        NSLog(@"Temp is %@", temp);
    }
    if ([elementName isEqualToString:@"weather"])
    {
        item = [[NSMutableDictionary alloc]init];
        if (item != nil) {
            [item setObject:ElementValue forKey:elementName];
            
            weather = [item objectForKey:@"weather"];
            weatherTitle= @"Current Weather Conditions";
        }
        NSLog(@"Weather is %@", weather);
    }
    
    article = [[NSMutableArray alloc]initWithObjects:
               self.nameTitle,
               self.tempTitle,
               self.weatherTitle,
               self.obTimeTitle,
               nil];
    articleDetails = [[NSMutableArray alloc] initWithObjects:
                      self.name,
                      self.temp,
                      self.weather,
                      self.obTime,
                      nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return article.count;
    
}


//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (editingStyle == UITableViewCellEditingStyleDelete)
//    {
//        NSLog(@"we want to delelete %d", indexPath.row);
//
//        [DataDelegate.annoList removeObjectAtIndex:indexPath.row];
//        [tableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:TRUE];
//
//    }
//}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
    static NSString * CellIdentifier = @"Cell";
    
    CustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
        
        cell = [[CustomTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    {
        NSArray * views = [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:nil options:nil];
        
        for (UIView* view in views) {
            if ([view isKindOfClass:[CustomTableViewCell class]])
            {
                cell = (CustomTableViewCell* )view;
                
                
                cell.textLabel.text = [article objectAtIndex:indexPath.row];
                
                cell.subTextLabel.text = [articleDetails objectAtIndex:indexPath.row];
                
            }
        }
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    

    
    DetailViewController * detailView = [[DetailViewController alloc] initWithNibName:(@"DetailViewController") bundle:nil];
    {
        if (detailView !=nil) {
            detailView.textViewText = [NSString stringWithFormat:@"%@: \n%@",[article objectAtIndex:indexPath.row],[articleDetails objectAtIndex:indexPath.row] ];
        }
        
        [self.navigationController pushViewController:detailView animated:YES];
        
    }
    
    
}



@end
