//
//  FirstViewController.m
//  webApp
//
//  Created by Derek Bertubin on 12/10/12.
//  Copyright (c) 2012 Derek Bertubin. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize locationTableView;

@synthesize isInEditMode;

@synthesize url, request, connection, requestData;

@synthesize requestString;
@synthesize xmlData;
@synthesize parser;

@synthesize locationArray,locationDetailURLArray;

@synthesize currentElement, ElementValue;
@synthesize article;
@synthesize item;

@synthesize name;
@synthesize obTime;
@synthesize temp;
@synthesize weather;
@synthesize itemString;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //	// Do any additional setup after loading the view, typically from a nib.
    //    //When the application launches, using NSURLRequest, build a url and request data from a web service of your choice. The data from the request will be placed into a NSMutableData object. The request MUST be asynchronous.
    //
    //    url = [[NSURL alloc]initWithString:@"http://w1.weather.gov/xml/current_obs/KMCO.xml"];
    //
    //    request = [[NSURLRequest alloc]initWithURL:url];
    //    if (request != nil)
    //    {
    //        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    //    }
    //
    //    // Mutable Data Object
    //    requestData = [NSMutableData data];
    //
    //
    //#pragma mark -Parsing
    //    parser = [[NSXMLParser alloc]initWithData:requestData];
    //
    //    if (parser != nil)
    //    {
    //        [parser setDelegate:self];
    //        [parser parse];
    //    }
    
    
#pragma mark -Location Arrays
    
    locationArray = [[NSMutableArray alloc]initWithObjects:
                     @"Orlando, FL",
                     @"Miami, FL",
                     @"Tampa, FL",
                     @"New York, NY",
                     @"Providence, RI",
                     nil];
    
    locationDetailURLArray = [[NSMutableArray alloc]initWithObjects:
                              @"http://w1.weather.gov/xml/current_obs/KMCO.xml",
                              @"http://w1.weather.gov/xml/current_obs/KMIA.xml",
                              @"http://w1.weather.gov/xml/current_obs/KTPA.xml",
                              @"http://w1.weather.gov/xml/current_obs/KNYC.xml",
                              @"http://w1.weather.gov/xml/current_obs/KPVD.xml",
                              nil];
}



#pragma mark -Connection Handler

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    if (data != nil)
    {
        // adds data to our Existing requestData
        [requestData appendData:data];
    }
    
    parser = [[NSXMLParser alloc]initWithData:requestData];
    
    if (parser != nil)
    {
        [parser setDelegate:self];
        [parser parse];
    }
    
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{
    currentElement = [elementName copy];
    ElementValue = [[NSMutableString alloc] init];
    
    
    
    
}


- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    if (ElementValue != nil) {
        // init the ad hoc string with the value
        ElementValue = [[NSMutableString alloc] initWithString:string];
    } else {
        // append value to the ad hoc string
        [ElementValue appendString:string];
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
            
        }
        
        //        [article addObject:name];
        
        NSLog(@"Loc is %@", name);
    }
    
    if ([elementName isEqualToString:@"observation_time"])
    {
        item = [[NSMutableDictionary alloc]init];
        if (item != nil) {
            [item setObject:ElementValue forKey:elementName];
            
            obTime = [item objectForKey:@"observation_time"];
            [article addObject:obTime];
        }
        NSLog(@"obv time is %@", obTime);
    }
    
    if ([elementName isEqualToString:@"temperature_string"])
    {
        item = [[NSMutableDictionary alloc]init];
        if (item != nil) {
            [item setObject:ElementValue forKey:elementName];
            
            temp = [item objectForKey:@"temperature_string"];
            [article addObject:temp];
            
        }
        NSLog(@"Temp is %@", temp);
    }
    
    if ([elementName isEqualToString:@"weather"])
    {
        item = [[NSMutableDictionary alloc]init];
        if (item != nil) {
            [item setObject:ElementValue forKey:elementName];
            
            weather = [item objectForKey:@"weather"];
        }
        NSLog(@"Weather is %@", weather);
    }
    
    
    
}



// called once all data is loaded
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    requestString = [[NSString alloc]initWithData:requestData encoding:NSASCIIStringEncoding];
    if (requestString != nil) {
        //    NSLog(@"%@", requestString);
    }
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -TableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return locationArray.count;
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
                
                
                cell.textLabel.text = [locationArray objectAtIndex:indexPath.row];
                cell.subTextLabel.text = [locationDetailURLArray objectAtIndex:indexPath.row];
                
            }
        }
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    url = [[NSURL alloc]initWithString:[locationDetailURLArray objectAtIndex:indexPath.row]];
    
    
    
    request = [[NSURLRequest alloc]initWithURL:url];
    if (request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    }
    
    // Mutable Data Object
    requestData = [NSMutableData data];
    
    
#pragma mark -Parsing
    parser = [[NSXMLParser alloc]initWithData:requestData];
    
    if (parser != nil)
    {
        [parser setDelegate:self];
        [parser parse];
    }
    
    
    LocationDetails * location = [[LocationDetails alloc]initWithName:[item objectForKey:@"location"] obTime:[item objectForKey:@"observation_time"] temp:[item objectForKey:@"temperature_string"] weather:[item objectForKey:@"weather"]];
    
      DetailViewController * detailView = [[DetailViewController alloc] initWithNibName:(@"DetailViewController") bundle:nil];
    {
        if (detailView !=nil) {
            detailView.nameLabelText = location.name;
            detailView.updatedLabelText = location.obTime;
            detailView.tempLabelText = location.temp;
            detailView.weatherLabelText = location.weather;
        }
        
        [self.navigationController pushViewController:detailView animated:YES];
        
    }
    
    
}


-(IBAction)onClick:(id)sender
{
    if (isInEditMode == NO)
    {
        [locationTableView setEditing:TRUE];
        //   [editButton setTitle:@"Done" forState:UIControlStateNormal];
        isInEditMode= YES;
        //        editButton.title = @"Done";
    }
    else
    {
        [locationTableView setEditing:FALSE];
        //    [editButton setTitle:@"Edit " forState:UIControlStateNormal
        
        isInEditMode = NO;
        //        editButton.title = @"Edit";
        
        
    }
    
    
    
}




@end


#pragma mark -Instrcutions

//First Tab view

//When the application launches, using NSURLRequest, build a url and request data from a web service of your choice. The data from the request will be placed into a NSMutableData object. The request MUST be asynchronous.

//Parse this data using the NSXMLParser and place the data into objects appropriate for this type of data. Parser MUST parse the most current data from the server.

//Present the data in a UITableView. Each cell should represent one of the items in the xml. For instance, a list of movies, each cell would display the details for one movie.

//Selecting an item in the list will move to an item details view.

//Item detail view
//Using a UITextView, display the xml for this selected item as text.
