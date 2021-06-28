//
//  Student.h
//  LearningObjC
//
//  Created by  Sergei on 28.06.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

  @property (nonatomic, strong) NSString *name;
  @property (nonatomic, strong) NSString *surname;
  @property (nonatomic, strong, readonly) NSString *fullName;
  @property (nonatomic, readonly) NSInteger age;

- (instancetype)initWithName:(NSString *)name withSurname: (NSString *)surname withAge: (NSInteger)age;
- (void)incAge;

@end

NS_ASSUME_NONNULL_END
