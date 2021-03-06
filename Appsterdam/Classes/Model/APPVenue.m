//
//  APPVenue.m
//  Appsterdam
//
//  Created by Mouhcine El Amine on 14/11/13.
//  Copyright (c) 2013 Alessio Roberto. All rights reserved.
//

#import "APPVenue.h"

@interface APPVenue ()
@property (nonatomic) CLLocationCoordinate2D coordinate;
@end

@implementation APPVenue

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        self.venueID = dictionary[@"id"];
        self.name = dictionary[@"name"];
        self.address = dictionary[@"address_1"];
        self.city = dictionary[@"city"];
        self.country = dictionary[@"country"];
        CLLocationCoordinate2D coordinate;
        coordinate.latitude = [dictionary[@"lat"] doubleValue];
        coordinate.longitude = [dictionary[@"lon"] doubleValue];
        self.coordinate = coordinate;
    }
    return self;
}

#pragma mark - MKAnnotation

-(NSString *)title
{
    return self.name;
}

-(NSString *)subtitle
{
    return self.address;
}

@end
