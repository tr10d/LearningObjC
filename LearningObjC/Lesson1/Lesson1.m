//
//  Lesson1.m
//  LearningObjC
//
//  Created by  Sergei on 17.06.2021.
//

#import "Lesson1.h"

@implementation Lesson1

void lesson1(void) {
  NSInteger number1 = 0, number2 = 0, number3 = 0;
  CGFloat result = 0;
  
  printf("Введите первое число: ");
  scanf("%ld", &number1);
  printf("Введите второе число: ");
  scanf("%ld", &number2);
  printf("Введите третье число: ");
  scanf("%ld", &number3);
  
  result = (CGFloat)(number1 + number2 + number3) / 3;
  
  NSLog(@"\nЧисло 1: %ld\n Число 2: %ld\n Число 3: %ld\n Среднее: %f", (long)number1, (long)number2, (long)number3, result);
}

@end
