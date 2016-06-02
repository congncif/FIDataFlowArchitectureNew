#import "SWGEstimatesApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGPriceEstimate.h"
#import "SWGError.h"
#import "SWGProduct.h"


@interface SWGEstimatesApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGEstimatesApi

static SWGEstimatesApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        SWGConfiguration *config = [SWGConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[SWGApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(SWGEstimatesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGEstimatesApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGEstimatesApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGEstimatesApi alloc] init];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Price Estimates
/// The Price Estimates endpoint returns an estimated price range\nfor each product offered at a given location. The price estimate is\nprovided as a formatted string with the full price range and the localized\ncurrency symbol.<br><br>The response also includes low and high estimates,\nand the [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217) currency code for\nsituations requiring currency conversion. When surge is active for a particular\nproduct, its surge_multiplier will be greater than 1, but the price estimate\nalready factors in this multiplier.
///  @param startLatitude Latitude component of start location.
///
///  @param startLongitude Longitude component of start location.
///
///  @param endLatitude Latitude component of end location.
///
///  @param endLongitude Longitude component of end location.
///
///  @returns NSArray<SWGPriceEstimate>*
///
-(NSNumber*) estimatesPriceGetWithCompletionBlock: (NSNumber*) startLatitude
         startLongitude: (NSNumber*) startLongitude
         endLatitude: (NSNumber*) endLatitude
         endLongitude: (NSNumber*) endLongitude
        
        completionHandler: (void (^)(NSArray<SWGPriceEstimate>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'startLatitude' is set
    if (startLatitude == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startLatitude` when calling `estimatesPriceGet`"];
    }
    
    // verify the required parameter 'startLongitude' is set
    if (startLongitude == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startLongitude` when calling `estimatesPriceGet`"];
    }
    
    // verify the required parameter 'endLatitude' is set
    if (endLatitude == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `endLatitude` when calling `estimatesPriceGet`"];
    }
    
    // verify the required parameter 'endLongitude' is set
    if (endLongitude == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `endLongitude` when calling `estimatesPriceGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/estimates/price"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(startLatitude != nil) {
        
        queryParams[@"start_latitude"] = startLatitude;
    }
    if(startLongitude != nil) {
        
        queryParams[@"start_longitude"] = startLongitude;
    }
    if(endLatitude != nil) {
        
        queryParams[@"end_latitude"] = endLatitude;
    }
    if(endLongitude != nil) {
        
        queryParams[@"end_longitude"] = endLongitude;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGPriceEstimate>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGPriceEstimate>*)data, error);
              }
          ];
}

///
/// Time Estimates
/// The Time Estimates endpoint returns ETAs for all products offered at a given location, with the responses expressed as integers in seconds. We recommend that this endpoint be called every minute to provide the most accurate, up-to-date ETAs.
///  @param startLatitude Latitude component of start location.
///
///  @param startLongitude Longitude component of start location.
///
///  @param customerUuid Unique customer identifier to be used for experience customization.
///
///  @param productId Unique identifier representing a specific product for a given latitude & longitude.
///
///  @returns NSArray<SWGProduct>*
///
-(NSNumber*) estimatesTimeGetWithCompletionBlock: (NSNumber*) startLatitude
         startLongitude: (NSNumber*) startLongitude
         customerUuid: (NSString*) customerUuid
         productId: (NSString*) productId
        
        completionHandler: (void (^)(NSArray<SWGProduct>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'startLatitude' is set
    if (startLatitude == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startLatitude` when calling `estimatesTimeGet`"];
    }
    
    // verify the required parameter 'startLongitude' is set
    if (startLongitude == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startLongitude` when calling `estimatesTimeGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/estimates/time"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(startLatitude != nil) {
        
        queryParams[@"start_latitude"] = startLatitude;
    }
    if(startLongitude != nil) {
        
        queryParams[@"start_longitude"] = startLongitude;
    }
    if(customerUuid != nil) {
        
        queryParams[@"customer_uuid"] = customerUuid;
    }
    if(productId != nil) {
        
        queryParams[@"product_id"] = productId;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGProduct>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGProduct>*)data, error);
              }
          ];
}



@end
