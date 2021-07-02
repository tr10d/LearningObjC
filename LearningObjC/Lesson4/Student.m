//
//  Student.m
//  LearningObjC
//
//  Created by  Sergei on 28.06.2021.
//

#import "Student.h"

@implementation Student

- (NSString *)fullName
{
    return [NSString stringWithFormat:@"%@ %@", _name, _surname];
}

- (instancetype)initWithName:(NSString *)name withSurname: (NSString *)surname withAge: (NSInteger)age
{
  self = [super init];
  if (self) {
    self.name = name;
    self.surname = surname;
    _age = age;
  }
  return self;
}

- (void)incAge
{
  _age++;
}

- (NSString *)description
{
  return [NSString stringWithFormat:@"Студент: %@, возраст: %ld", self.fullName, (long)_age];
}

@end
