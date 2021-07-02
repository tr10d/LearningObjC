//
//  Lesson4.m
//  LearningObjC
//
//  Created by  Sergei on 28.06.2021.
//

#import "Lesson4.h"
#import "Student.h"

@implementation Lesson4

+ (void)demo
{
  NSMutableArray *students = [NSMutableArray array];
  
  [students addObject: [[Student new] initWithName: @"Иван" withSurname: @"Иванов" withAge: 20]];
  [students addObject: [[Student new] initWithName: @"Петр" withSurname: @"Петров" withAge: 19]];

  for (Student *student in students) {
    NSLog(@"%@", student);
    [student incAge];
  }
 
  [students addObject: [[Student new] initWithName: @"Ольга" withSurname: @"Ольговна" withAge: 18]];

  NSLog(@"Студенты через год:");
  for (Student *studen in students) {
    NSLog(@"%@", studen);
  }
}

@end
