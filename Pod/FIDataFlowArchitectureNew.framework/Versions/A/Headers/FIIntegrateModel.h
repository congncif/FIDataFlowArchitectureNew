//
//  FIIntegrateModel.h
//  Pods
//
//  Created by FOLY on 3/10/16.
//
//

#import <Foundation/Foundation.h>

@protocol FIIntegrateModel <NSObject>

- (nullable id)objectForKey:(nonnull NSString *)key;
- (void)setObject:(nullable id)object forKey:(nonnull NSString *)key;
- (void)removeObjectForKey: (nonnull NSString *)key;
- (nullable id)objectForKeyedSubscript:(nonnull NSString *)key;
- (void)setObject:(nullable id)object forKeyedSubscript:(nonnull NSString *)key;

@end

@interface FIIntegrateModel : NSObject

///--------------------------------------
#pragma mark - Accessors
///--------------------------------------

/**
 Returns the value associated with a given key.
 
 @param key The key for which to return the corresponding value.
 
 @see -objectForKeyedSubscript:
 */
- (nullable id)objectForKey:(nonnull NSString *)key;

/**
 Sets the object associated with a given key.
 
 @param object The object for `key`. A strong reference to the object is maintained by FIIntegrateModel.
 Raises an `NSInvalidArgumentException` if `object` is `nil`.
 If you need to represent a `nil` value - use `NSNull`.
 @param key The key for `object`.
 Raises an `NSInvalidArgumentException` if `key` is `nil`.
 
 @see -setObject:forKeyedSubscript:
 */
- (void)setObject:(nullable id)object forKey:(nonnull NSString *)key;

/**
 Unsets a key on the object.
 
 @param key The key.
 */
- (void)removeObjectForKey: (nonnull NSString *)key;

/**
 Returns the value associated with a given key.
 
 This method enables usage of literal syntax on `FIIntegrateModel`.
 E.g. `NSString *value = object[@"key"];`
 
 @param key The key for which to return the corresponding value.
 
 @see -objectForKey:
 */
- (nullable id)objectForKeyedSubscript:(nonnull NSString *)key;

/**
 Returns the value associated with a given key.
 
 This method enables usage of literal syntax on `FIIntegrateModel`.
 E.g. `object[@"key"] = @"value";`
 
 @param object The object for `key`. A strong reference to the object is maintained by FIIntegrateModel.
 Raises an `NSInvalidArgumentException` if `object` is `nil`.
 If you need to represent a `nil` value - use `NSNull`.
 @param key The key for `object`.
 Raises an `NSInvalidArgumentException` if `key` is `nil`.
 
 @see -setObject:forKey:
 */
- (void)setObject:(nullable id)object forKeyedSubscript:(nonnull NSString *)key;

/**
 *  Array keys for mapping model from array of results of MultipleLogic
 *  Override this for custom behavior
 *
 *  @return strings array
 */
+ (nonnull NSArray *) reduceKeys;

@end
