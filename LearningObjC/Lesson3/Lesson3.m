//
//  Lesson3.m
//  LearningObjC
//
//  Created by  Sergei on 18.06.2021.
//

#import "Lesson3.h"

@implementation Lesson3

// MARK: - Task 2

enum Method {
  Sum,
  Sub,
  Mult,
  Div,
  Rdiv
};

typedef enum Method Method;

int calculateSum_3(int a, int b) {
  return a + b;
}

int calculateSub_3(int a, int b) {
  return a - b;
}

int calculateMult_3(int a, int b) {
  return a * b;
}

int calculateDiv_3(int a, int b) {
  return a / b;
}

int calculateRdiv_3(int a, int b) {
  return a % b;
}

int calculate_3(Method method, int a, int b) {
  int result = 0;
  
  switch (method) {
    case Sum:
      result = calculateSum_3(a, b);
      break;
    case Sub:
      result = calculateSub_3(a, b);
      break;
    case Mult:
      result = calculateMult_3(a, b);
      break;
    case Div:
      result = calculateDiv_3(a, b);
      break;
    case Rdiv:
      result = calculateRdiv_3(a, b);
      break;
   default:
      NSLog(@"Функция не знает переданный метод");
      break;
  }
  
  return result;
}

// MARK: - Task 3

enum Gender {
  Male,
  Female
};

typedef enum Gender Gender;

struct Human {
  NSString *Name;
  NSInteger Age;
  Gender Gander;
};

typedef struct Human Human;

void printHuman(Human human) {
  NSString *gender = human.Gander == 0 ? @"М" : @"Ж";
  NSLog(@"Имя: %@, пол: %@, возраст: %ld лет", human.Name, gender, (long)human.Age);
}

+ (void)demo {
  NSLog(@"Пункт 1");
  NSArray *array = [NSArray arrayWithObjects:@"Строка 1", @"String 2", @"Строка 3", @"Строка 4", @"Строка 5", nil];
  NSString *result = @"";
  
  for (NSUInteger i = 0; i < [array count]; i++) {
    result = [result stringByAppendingString: [array objectAtIndex:i]];
  }
  NSLog(@"%@", result);
  
  
  NSLog(@"Пункт 2");
  NSLog(@"3 + 5 = %d", calculate_3(Sum, 3, 5));
  NSLog(@"3 - 5 = %d", calculate_3(Sub, 3, 5));
  NSLog(@"3 * 5 = %d", calculate_3(Mult, 3, 5));
  NSLog(@"3 / 5 = %d", calculate_3(Div, 3, 5));
  NSLog(@"3 %% 5 = %d", calculate_3(Rdiv, 3, 5));

  
  NSLog(@"Пункт 3");
  Human oleg;
  oleg.Name = @"Олег";
  oleg.Age = 20;
  oleg.Gander = Male;
  
  Human olga;
  olga.Age = 30;
  olga.Gander = Female;
  olga.Name = @"Ольга";
  
  printHuman(oleg);
  printHuman(olga);

}

@end
