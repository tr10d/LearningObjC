//
//  Lesson2.m
//  LearningObjC
//
//  Created by  Sergei on 17.06.2021.
//

#import "Lesson2.h"

#define ALPHABET @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#define SUM 1
#define SUB 2
#define MULT 3
#define DIV 4
#define RDIV 5

@implementation Lesson2

int calculateSum(int a, int b) {
  return a + b;
}

int calculateSub(int a, int b) {
  return a - b;
}

int calculateMult(int a, int b) {
  return a * b;
}

int calculateDiv(int a, int b) {
  return a / b;
}

int calculateRdiv(int a, int b) {
  return a % b;
}

int calculate(int method, int a, int b) {
  int result = 0;
  
  switch (method) {
    case SUM:
      result = calculateSum(a, b);
      break;
    case SUB:
      result = calculateSub(a, b);
      break;
    case MULT:
      result = calculateMult(a, b);
      break;
    case DIV:
      result = calculateDiv(a, b);
      break;
    case RDIV:
      result = calculateRdiv(a, b);
      break;
   default:
      NSLog(@"Функция не знает переданный метод");
      break;
  }
  
  return result;
}

BOOL isAlphabetContainsLetter(NSString *letter) {
  BOOL isContains = [ALPHABET containsString:letter];
  
  if (isContains) {
    NSLog(@"Алфавит содержит %@", letter);
  } else {
    NSLog(@"Алфавит не содержит %@", letter);
  }
  
  return isContains;
}

static void Lesson2Calculate() {
  int a = calculate(SUM, 2, 3);
  int b = calculate(SUB, 3, 2);
  int c = calculate(MULT, 4, 5);
  int d = calculate(DIV, 10, 2);
  int e = calculate(RDIV, 6, 3);
  
  NSLog(@"Result: \n a = %i, \n b = %i, \n c = %i, \n d = %i, \n e = %i", a, b, c, d, e);
}

static void Lesson2CheckChar() {
  isAlphabetContainsLetter(@"G");
  isAlphabetContainsLetter(@"z");
  isAlphabetContainsLetter(@"Ы");
  isAlphabetContainsLetter(@"ц");
}

void lesson2(void) {
  Lesson2Calculate();
  Lesson2CheckChar();
}

@end
