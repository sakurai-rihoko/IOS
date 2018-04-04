//
//  main.m
//  OC_Learn
//
//  Created by 叶泽群 on 19/10/2017.
//  Copyright © 2017 叶泽群. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"
#import "Fraction.h"
#import "Student.h"
#import "schoolClass.h"
#import "PhoneBook.h"
#import "LrcManage.h"

//forLearn
//Student类
//@interface定义类的关键字
//@end类的结束
//NSobject 根类基类

//@interface Student : NSObject
//{
//    //实例变量的定义，命名通常以_开头，
//    NSString *_name;
//    NSInteger _age; //NSInteger == long类型
//
//}
////构造函数
////id = C语言的void * 返回值为泛型对象
////-符号表示为对象方法
//-(id)init;
//
//-(id)init:(NSString * )name :(NSInteger)age;
//
//
//
////setter方法
//-(void)setName:(NSString *)name;//name形参
//-(void)setAge:(NSInteger)age;
////两个传入参数name and age
////方法名setName:andAge:
//-(void)setName:(NSString *)name andAge:(NSInteger)age;
//-(void)setNameAndAge:(NSString *)name :(NSInteger)age;
//
////getter方法
//-(NSString *)getName;
//-(NSInteger)getAge;
//
////+开头的函数为类函数，给类调用的函数，通常为类调用
//+(void)testStudent;
//
//@end
//
//@implementation Student
//
//-(id)init{
//    self = [super init];//self 表示调用者，指向自身的指针，super调用父类的构造函数
//    if(self){
//        _name = @"rihoko";//@指针引用
//        _age = 12;
//    }
//    return self;
//}
//
//-(id)init:(NSString *)name :(NSInteger)age{
//    self = [super init];
//    if(self){
//        _name = name;
//        _age =age;
//    }
//    return self;
//}
//
//
//
//
//
//
//-(void)setName:(NSString *) name{
//    _name = name;
//}
//-(void)setAge:(NSInteger)age{
//    _age = age;
//}
//
//-(void)setName:(NSString *)name andAge:(NSInteger)age{
//    _name = name;
//    _age = age;
//}
//
//-(void)setNameAndAge:(NSString *)name :(NSInteger)age{
//    _name = name;
//    _age = age;
//
//}
//
//
//-(NSString *)getName{
//    return _name;
//}
//
//-(NSInteger)getAge{
//    return _age;
//}
//
//
//+(void)testStudent{
//    Student * stuTest = [[Student alloc] init];
//    [stuTest setNameAndAge:@"mwt" :27];
//    NSLog(@"name = %@ , age = %li",[stuTest getName],[stuTest getAge]);
//}
//
//@end
//
//void printX(const id object){
//    NSLog(@"name = %@ , age = %li", [object getName],[object getAge]);
//}
//
//
//void compareNSString(NSString * OCStr10,NSString *OCStr11)
//{
//   NSComparisonResult ret1 = [OCStr10 caseInsensitiveCompare:OCStr11];
//    switch (ret1){
//        case NSOrderedAscending:
//            NSLog(@"对象字符串%@小于对象字符串%@",OCStr10,OCStr11);
//            break;
//        case NSOrderedSame:
//            NSLog(@"对象字符串%@等于对象字符串%@",OCStr10,OCStr11);
//            break;
//        case NSOrderedDescending:
//            NSLog(@"对象字符串%@大于对象字符串%@",OCStr10,OCStr11);
//            break;
//    }
//}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Student *stu = [[Student alloc] init];
//        NSLog(@"name = %@ ,age = %li", [stu getName],[stu getAge]);
//        /*@取值
//         */
////        [stu setName:@"mwt"];
////        [stu setAge:27];
//        [stu setName:@"mwt" andAge:27];
//        NSLog(@"name = %@ ,age = %li",[stu getName],[stu getAge]);//li long类型占位符
//
//        [Student testStudent];
//
//
//
//        Student *stu2 = [[Student alloc] init:@"rihoko" :18];
//        printX(stu2);
//
//
//        [Person testPerson];
//        /*对象方法的调用需要如下方式[object func]类似于C++ object->func()
//         或者object.func();
//         */
//        Book *book1 = [[Book alloc]initWith:@"Objective-C" :100.00];
//        NSLog(@"Book's name:%@ ,Book'price:%.2f",[book1 getName],[book1 getPrice]);
//        /*对一个对象只可以使用一次构造方法*/
//        Book *book = [Book constructBookWith:@"objective-c" :100.00];
//        NSLog(@"Book's name:%@ ,Book'price:%.2f",[book getName],[book getPrice]);
        
//        Fraction *frac1 = [[Fraction alloc] initWith:377 :319];
//        Fraction *frac2 = [[Fraction alloc] initWith:4 :5];
//
//        [frac1 divFraction:frac2];
//        [frac1 reduce];
//        [frac1 printFraction];
/* NSString字符串*/
  /*      NSString *OCstr1 = @"Objective-C";
        NSLog(@"OCstr1 = %@",OCstr1);
        //字符串对象-构造方式
        NSString *OCStr1 = [[NSString alloc] initWithUTF8String:"Welcome!"];
        NSLog(@"OCStr1 = %@",OCStr1);
        
        //格式化构造OC字符串对象
        NSString * OCStr2 = [[NSString alloc] initWithFormat:
                             @"%s###%d###%@","CQC",89,OCstr1];
        NSLog(@"OCsStr2 = %@",OCStr2);
        
        NSString * OCStr3 = [[NSString alloc] initWithString:OCStr2];
        NSLog(@"OCsStr3 = %@",OCStr3);
        
        NSString * OCStr4 = [[NSString alloc] initWithCString:"hello" encoding:NSUTF8StringEncoding];
        
         NSLog(@"OCsStr4 = %@",OCStr4);
   //NSString类方法
        NSString *OCStr5 =[NSString stringWithUTF8String:"hello OCStr5"];
        NSLog(@"OCsStr5 = %@",OCStr5);
        
        NSString * OCStr6 = [NSString stringWithString:OCStr5];
        NSLog(@"OCsStr6 = %@",OCStr6);
        
        
        NSString *OCStr7 = [NSString stringWithFormat:
                           @"%d,%f,%s",23,45.00,"hello OCStr7"];
        
        NSLog(@"OCsStr7 = %@",OCStr7);
        
        NSString *OCStr8 = [NSString stringWithCString:"你好，OCStr8" encoding:NSUTF8StringEncoding];
         NSLog(@"OCsStr8 = %@",OCStr8);
        */
    /* //字符串长度及寻找字符
        const NSString *OCStr9 = @"Big BOSS";
        NSInteger len = [OCStr9 length];
        NSLog(@"OCsStr9's length = %li",len);
        
        unichar ch = [OCStr9 characterAtIndex:6];
        NSLog(@"ch = %C",ch);//%c打印ASCII %C打印unicode字符;
    */
        
       //字符串操作
        //NSString *OCStr10 = @"uncharted4";
        //NSString *OCStr11 = @"uncharted4";
        //NSString *OCStr11 = [[NSString alloc] initWithUTF8String:"Uncharted4"];
        //NSOrderedAscending = -1L, 递增；
        //NSOrderedSame,      相等;
        //NSOrderedDescending 递减;
       // NSComparisonResult ret1 = [OCStr10 compare:OCStr11];
        /*
         void compareNsstring(NSString * OCStr10,NSString * OCStr11)
         {
         NSComparisonResult ret1 = [OCStr10 caseInsensitiveCompare:OCStr11];
         NSComparisonResult ret1 = [OCStr10 Compare:OCStr11];
         汉字没有大小写之分
         switch (ret1){
         case NSOrderedAscending:
         NSLog(@"对象字符串%@小于对象字符串%@",OCStr10,OCStr11);
         break;
         case NSOrderedSame:
         NSLog(@"对象字符串%@等于对象字符串%@",OCStr10,OCStr11);
         break;
         case NSOrderedDescending:
         NSLog(@"对象字符串%@大于对象字符串%@",OCStr10,OCStr11);
         break;
         }
         }
         */
//        compareNSString(OCStr10, OCStr11);
        //[OCStr10 compare:OCStr11 options:NSCaseInsensitiveSearch];
     
        //判断两个字符串对象是否相等
    
//        BOOL ret2 =  [OCStr10 isEqualToString:OCStr11];
//        if(ret2 == YES){
//            NSLog(@"OCStr10 等于 OCStr11");
//        }else{
//            NSLog(@"OCStr10 不等于 OCStr11");
//        }
        
        
        //判断开头
//        BOOL ret5 = [@"www.yahoo.com" hasPrefix:@"www"];
//        BOOL ret5 = [@"www.yahoo.com" hasSuffix:@"com"];
//        NSLog(@"%i",ret5);
        
//        NSString *OCStr13 = @"yahoo";
//        NSString *OCStr14 = [OCStr13 stringByAppendingString:@".com"];
//        //OCStr13并没有改变，NSString创建的是不可变字符串不可以直接修改，只能用原字符串间接创建新的
//         NSLog(@"OCStr13:%@",OCStr13);
//        NSLog(@"OCStr14:%@",OCStr14);
//
//        NSString * OCStr15 = [OCStr13 stringByAppendingFormat:@"%li%s",123,"ppap"];
//        NSLog(@"OCStr15:%@",OCStr15);
//
        
        //字符串的提取
//        NSString *OCStr16 = @"www.yahoo.com";
//        NSLog(@"subString = %@",[OCStr16 substringFromIndex:4]);
//
//        NSLog(@"subString = %@",[OCStr16 substringToIndex:4]);//to不包含
//
//
//        NSRange range1 = {4,6};
//        NSLog(@"subString = %@",[OCStr16 substringWithRange:range1]);
//        NSLog(@"subString = %@",[OCStr16 substringWithRange:NSMakeRange(4, 9)]);
        
        
        
        //字符串查找
        
        
//        NSString* OCStr17 = @"lovelive sunshine season two";
//        NSRange range2 =  [OCStr17 rangeOfString:@"e"];
//
//        if(range2.location == NSNotFound){
//            NSLog(@"没有该字符串");
//            //NSNotFound是long类型的最大值 NSNotfound = NSIntegerMAX
//
//        }else{
//            NSLog(@"该字符位置为%lu",range2.location);
//        }
//        //倒序查找
//        NSRange range3 =  [OCStr17 rangeOfString:@"e" options:4];
//        if(range3.location == NSNotFound){
//            NSLog(@"没有该字符串");
//            //NSNotFound是long类型的最大值 NSNotfound = NSIntegerMAX
//
//        }else{
//            NSLog(@"该字符位置为%lu",range3.location);
//        }
//
//        NSRange range4 = [OCStr17 rangeOfString:@"e" options:(NSLiteralSearch) range:NSMakeRange(4, 15)];
//        if(range4.location == NSNotFound){
//            NSLog(@"没有该字符串");
//            //NSNotFound是long类型的最大值 NSNotfound = NSIntegerMAX
//
//        }else{
//            NSLog(@"该字符位置为%lu",range4.location);
//        }
        
   /*字符串的大小写转换*/
//        NSString* OCStr18 = @"LoveLive Sunshine season2";
//        NSLog(@"OCstr18 = %@",[OCStr18 uppercaseString]);
//        NSLog(@"OCstr18 = %@",[OCStr18 lowercaseString]);
//        NSLog(@"OCstr18 = %@",[OCStr18 capitalizedString]);//单词首字母大写
        
        
        //字符串数值转换-只转换0-9的数值
//        NSString *OCStr19 = @"123456";
//        NSLog(@"num = %i",[OCStr19 intValue]);
//        NSLog(@"num = %li",[@"9876" integerValue]);
//        NSLog(@"num = %.2f",[@"3.1415926" floatValue]);
        
        //字符串置换
        
//        NSString* OCStr20 = @"hello rihoko megumi";
//        NSLog(@"the str is %@",[OCStr20 stringByReplacingCharactersInRange:NSMakeRange(13, 6) withString:@"sakurai"]);
//
//        //字符串替换字符串
//
//        NSLog(@"the replaced result %@",[OCStr20 stringByReplacingOccurrencesOfString:@"megumi" withString:@"sakurai"]);
//
//        NSLog(@"the replaced result %@",[OCStr20 stringByReplacingOccurrencesOfString:@"megumi" withString:@"sakurai" options:NSLiteralSearch range:NSMakeRange(0, 18)]);
        
        
        //文件的输入输出
//        NSError *error1 = nil;
//        NSString *OCStr21 = [[NSString alloc] initWithContentsOfFile:@"/Users/tokido_saya/Desktop/shell.sh" encoding:NSUTF8StringEncoding error:&error1] ;
//        if(error1){
//        NSLog(@"%@",error1);
//        }else{
//            NSLog(@"%@",OCStr21);
//        }
//
//
//        // NSString *OCStr22 = [NSString stringWithContentsOfFile:<#(nonnull NSString *)#> encoding:<#(NSStringEncoding)#> error:<#(NSError * _Nullable __autoreleasing * _Nullable)#>];
//
//        NSString *OCStr23 = @"echo hello world";
//        [OCStr23 writeToFile:@"/Users/tokido_saya/Desktop/shell.sh" atomically:YES encoding:NSUTF8StringEncoding error:&error1];
        //可变字符串
        //可变字符串可以直接调用不可变字符串NSString的方法
        
        //NSMutableString *OCStr24 = @"rihoko";
//        NSMutableString *OCStr24 = [[NSMutableString alloc ] initWithString:@"rihoko"];
//        //NSMutableString *OCStr24 = [[NSMutableString alloc ] initWithCapacity:20];
//        //NSMutableString * OCStr24 = [NSMutableString stringWithCapacity:20];
//        [OCStr24 appendString:@" sakurai"];
//        [OCStr24 insertString:@" ex" atIndex:14];
//        [OCStr24 deleteCharactersInRange:NSMakeRange(14, 3)];
//        [OCStr24 appendFormat:@" %s %d %s %.2f","birth",17,"length",163.00];
//        [OCStr24 setString:@"hello"];
//        [OCStr24 replaceCharactersInRange:NSMakeRange(2,3) withString:@"pp "];
//        [OCStr24 replaceOccurrencesOfString:@"he" withString:@"ll" options:NSLiteralSearch range:NSMakeRange(0, 5)];
//        NSLog(@"%@",OCStr24);
//
        
       //数组
        //数组存储对象地址
        //不可变数组一旦被创建，就不可以添加删除或修改
        
//        NSArray *array1 = @[@"one",@2,@"three",[NSNumber numberWithInt:123]];
//        NSMutableArray *array2 = @[@"sakurai",@"rihoko"];
//
//        NSLog(@"%@,%@",array1[1],array2);
//        NSArray *array3 = [[NSArray alloc] init];
//        NSArray *array4 = [[NSArray alloc] initWithObjects:@"tokido",@"saya", nil];
//
//        NSLog(@"%@,%@",array3,array4);
//
//
//        NSArray *array5 = [[NSArray alloc] initWithArray:array4];
//        NSArray *array6 = [[NSArray alloc] initWithArray:array4 copyItems:YES];
//        NSLog(@"%@,%@",array5,array6);
//
//        NSArray *array7 = [NSArray array];
//        NSArray *array8 = [NSArray arrayWithObjects:@"ma",@"wen",@"ting",nil];
//        NSArray *array9 = [NSArray arrayWithArray:array8];
//
//        NSInteger countArray = [array8 count];
//         NSLog(@"%@,%@,%li",array8,array9,countArray);
//        //元素访问
//
//        id obj1 = [array8 objectAtIndex:2];
//        NSLog(@"obj1:%@",obj1);
//        NSInteger li = [array8 indexOfObject:@"wen"];
//        NSLog(@"%li",li);
//
//
//
//        NSLog(@"%@",[array8 firstObject]);
//        NSLog(@"%@",[array8 lastObject]);
//
//        //数组比较
//
//        NSArray *array10 = [[NSArray alloc] initWithObjects:@"wen",@"ting",nil];
//
//       BOOL ret = [array8 isEqualToArray:array10];
//
//        if(ret == YES){
//            NSLog(@"数组1等于数组2");
//        }else{
//            NSLog(@"数组1不等于数组2");
//        }
//
//
//        //返回两个数组中数组1与数组2第一个相等的元素
//        id obj2 = [array8 firstObjectCommonWithArray:array10];
//        NSLog(@"%@",obj2);
//
//
//        //数组的排序
//        //通常排序的数组中的元素是相同的
//        //默认的排序后的数组默认是从小到大
//
//        //seletor生成选择器
//        //规则方法的返回值为>0的数的时候，底层交换两个数组的元素
//
//        NSArray *sortedArray = [array8 sortedArrayUsingSelector:@selector(compare:)];
//
//        NSLog(@"%@",sortedArray);
//
//
//
//        //数组的操作
//        //为一个数组添加元素
//        NSArray *appendArray = [array8 arrayByAddingObject:@"birth 27"];
//        NSLog(@"%@",appendArray);
//        NSLog(@"%@",[array8 arrayByAddingObjectsFromArray:@[@"length:160"]]);
    /*问题*/
//        NSArray *array9 = @[@"ma",@"wen",@"ting"];
//
//        //数组提取
//        NSArray *subArray = [array9 subarrayWithRange:NSMakeRange(0, 2)];
//        NSLog(@"%@",subArray);
//        NSArray *subArray2 = [array9 objectAtIndexedSubscript:2];
//        NSLog(@"%@",subArray2);
//        //可变下标集合对象
//
//        NSMutableIndexSet *indexSet1 =[[NSMutableIndexSet alloc] initWithIndex:1];
//        [indexSet1 addIndex:2];
//        NSLog(@"%@",indexSet1);
//
//
//
//       NSArray *subArray3 = [array9 objectAtIndex:indexSet1];
//       NSLog(@"%@",subArray3);
       //字符串分割成数组//componentsSeparatedByString
//        NSString *str = @"ma wen ting";
//        NSLog(@"%@",[str componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"a"]]);
//       NSLog(@"%@", [str componentsSeparatedByString:@" "]);
//
//
//        NSArray *OCStr25 =@[@"ma",@"wen",@"ting"];
//        NSString *str2 = [OCStr25 componentsJoinedByString:@" "];
//         NSLog(@"%@", str2);
        
        
        /*数组的遍历
         1.数组元素的下标遍历
         2.枚举器
         3.快速枚举法
         */
//        NSInteger cnt = [OCStr25 count];
//        for(NSInteger i = 0;i < cnt;i++){
//            NSLog(@"%@",OCStr25[i]);
//        }
//
//        //倒序枚举器
//        NSEnumerator *reverseEnum = [OCStr25 reverseObjectEnumerator];
//        id obj = nil;
//        while(obj = [reverseEnum nextObject]){
//            NSLog(@"%@",obj);
//        }
//
//        NSEnumerator *Enum = [OCStr25 objectEnumerator];
//        id obj2 = nil;
//        while(obj2 = [reverseEnum nextObject]){
//            NSLog(@"%@",obj2);
//        }
//        for(id obj3 in OCStr25){
//            NSLog(@"obj3:%@",obj3);
//        }
        
        
        
        //可变数组
        /*
         1.可变数据继承与不可变数据
         2.NSMutableArray
         3.创建可变数据对象，不可变数组中的方法，可变数组对象都可以调用
         4.对于可变数组对象，可以直接修改，添加，删除元素
         */
//
//        NSMutableArray *OCArray1 = [[NSMutableArray alloc] initWithObjects:@"ma",@"wen",@"ting", nil];
//
//        //创建指定容量大小的可变数组对象
//        NSMutableArray *OCArray2 = [[NSMutableArray alloc] initWithCapacity:20];
//        NSMutableArray *OCArray3 = [NSMutableArray arrayWithCapacity:20];
//
//        //可变数组创建后不可以再添加nil
//
//
//        [OCArray2 addObject:@"27"];
//        [OCArray2 addObjectsFromArray:OCArray1];
//        //可变数组插入元素
//        [OCArray2 insertObject:@"pp" atIndex:4];
//        NSMutableIndexSet *newSet = [NSMutableIndexSet indexSetWithIndex:2];
//        //集合创建1，2，3，4
//        [newSet addIndex:1];
//        [newSet addIndexesInRange:NSMakeRange(3, 2)];
//        [OCArray2 insertObjects:@[@"hello",@"kk",@"xx",@"tt"] atIndexes:newSet];
//        NSLog(@"obj3:%@",OCArray2);
//
//
//        //修改重置对象
//        [OCArray1 setArray:@[@"ll",@"world",@"good"]];
//        NSLog(@"%@",OCArray1);
//
//
//        //替换数组中的元素
//        //替换指定下标位置的数组元素
//        [OCArray1 replaceObjectAtIndex:2 withObject:@"rihoko"];
//         NSLog(@"%@",OCArray1);
//
//
//
//        NSMutableIndexSet *newIndex2 = [NSMutableIndexSet indexSetWithIndexesInRange:NSMakeRange(0, 2)];
//
//
//        [OCArray1 replaceObjectsAtIndexes:newIndex2 withObjects:@[@"profect",@"hello"]];
//         NSLog(@"%@",OCArray1);
//
//        //交换数据中的元素
//
//        [OCArray1 exchangeObjectAtIndex:2 withObjectAtIndex:0];
//          NSLog(@"%@",OCArray1);
//
//
//
//        //替换指定范围内的数组元素
//        [OCArray1 replaceObjectsInRange:NSMakeRange(0, 2) withObjectsFromArray:@[@"better",@"first"]];
//        NSLog(@"%@",OCArray1);
//
//
//        //数组的删除
//
//
//
//        [OCArray1 removeObject:@"first"];
//         NSLog(@"%@",OCArray1);
//
//        [OCArray1 removeObjectAtIndex:1];
//         NSLog(@"%@",OCArray1);
//
//        [OCArray1 addObjectsFromArray:@[@"one",@"two",@"three"]];
//        [OCArray1 removeObjectAtIndex:2];
//         NSLog(@"%@",OCArray1);
//
//        [OCArray1 removeLastObject];
//         NSLog(@"%@",OCArray1);
//
//        [OCArray1 removeAllObjects];
//
//         NSLog(@"%@",OCArray1);
//
//
//        [OCArray1 addObjectsFromArray:OCArray2];
//         NSLog(@"%@",OCArray1);
//
//        [OCArray1 removeObject:@"hello" inRange:NSMakeRange(0, 2)];
//         NSLog(@"%@",OCArray1);
//        [OCArray1 removeObjectsInArray:OCArray2];
//         NSLog(@"%@",OCArray1);
//
//
//        NSMutableArray *sortedArrayX = [NSMutableArray  arrayWithObjects:@"one",@"two",@"three",@"four",@"five",@"six", nil];
//
//        //传入selector选择器 compare
//        //比较规则的方法，返回值大于0时底层数组元素交换位置
//        [sortedArrayX sortUsingSelector:@selector(compare:)];
//        //sortedArrayUsingSelector 该方法是不可变数据排序使用通常需要接受返回值，可变数组也可以调用。
//         NSLog(@"%@",sortedArrayX);
        
        
        /*  字典
         1.字典以key值为顺序
         2.键值对：key：value
         3.字典value没有顺序
         4.key值唯一
         
         */
        
//        NSDictionary *OCDict = @{@"one":@"ma",@"two":@"wen",@"three":@"ting"};
//        NSLog(@"%@",OCDict);
//        NSDictionary *tempDict = [[NSDictionary alloc] initWithDictionary:OCDict];
//
//        NSDictionary *OCDict2 = [[NSDictionary alloc] initWithObjectsAndKeys   :@"ma",@"1",@"wen",@"2",@"ting",@"3",nil];
//         NSLog(@"%@",OCDict2);
//
//        NSDictionary *OCDict3 = [[NSDictionary alloc] initWithObjects:[NSArray arrayWithObjects:@"ma",@"wen",@"ting", nil] forKeys:@[@"1",@"2",@"3"]];
//        NSLog(@"%@",OCDict3);
//
//
//
//        NSDictionary *OCdict5 = [NSDictionary dictionaryWithObjectsAndKeys:@"ma",@"1",@"wen",@"2",@"ting",@"3", nil];
//
//        NSDictionary *OCdict6 = [NSDictionary dictionaryWithDictionary:OCdict5];
//
//        NSDictionary *OCdict7 = [NSDictionary dictionaryWithObject:[NSArray arrayWithObjects:@"ma",@"wen",@"ting", nil]  forKey:@[@"1",@"2",@"3"]];
//
//
//        NSInteger dictCount = [OCdict7 count];
//        NSLog(@"count = %li",dictCount);
//
//        id obj = [OCdict7 objectForKey:@"1"];
//        NSLog(@"obj = %@",obj);
//
//        NSArray *keyArray = [OCdict7 allKeys];
//        NSArray *valueArray = [OCdict7 allValues];
//
//
//
//        NSLog(@"all key is %@ \n all value is %@",keyArray,valueArray);
//
//
//        //判断两个字典对象是否相等
//
//        BOOL ret = [OCdict7 isEqualToDictionary:OCdict5];
//
//
//
//        //字典的遍历
//        NSEnumerator *keysEnum = [OCdict7 keyEnumerator];
//        id obj2 = nil;
//        while(obj2 = [keysEnum nextObject]){
//            NSLog(@"key = %@ value = %@",obj2,[OCdict7 objectForKey:obj2]);
//        }
//
//        for(id obj3 in OCdict7){
//            NSLog(@"key & value = %@,%@",obj3,[OCdict7 objectForKey:obj3]);
//        }
//
//
//        //可变数组对象
//        NSMutableDictionary *OCMdict = [NSMutableDictionary dictionaryWithCapacity:20];
//        NSMutableDictionary *OCMdict2 = [[NSMutableDictionary alloc]initWithCapacity:20];
//
//        NSDictionary *OCdict8 = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"ma",@"wen",@"ting", nil]  forKeys:[NSArray arrayWithObjects:@"1",@"2",@"3",nil]];
//        NSMutableDictionary *OCMdict3 = [NSMutableDictionary dictionaryWithDictionary:OCdict8];
//
//        [OCMdict3 removeObjectsForKeys:@[@"1",@"2"]];
//        NSLog(@"%@",OCMdict3);
//
//        [OCMdict3 removeAllObjects];
//
//
//        [OCMdict3 addEntriesFromDictionary:@{@"1":@"ma",@"2":@"wen"}];
//        NSLog(@"%@",OCMdict3);
//
//
//        //重置字典
//        [OCMdict3 setDictionary:OCdict8];
//
//         NSLog(@"%@",OCMdict3);
//
//        //setObject 修改value值，如果key不存在则增加
//
//        [OCMdict3 setObject:@"ting*" forKey:@"3"];
//        NSLog(@"%@",OCMdict3);
        
//        [Student testStudent];
//        schoolClass *MyClass = [[schoolClass alloc] initWithClassName:@"ll"];
//        StudentX *testStudent = [[StudentX alloc] initWithName:@"ye" andWithAge:18 andWithScore:100 andWithNum:10001];
//        [MyClass addStudentMember:testStudent];
//        NSLog(@"%li",[MyClass getTheStuListCount]);
//        NSLog(@"%@",testStudent);
//        [MyClass showStuList];
//        [PhoneBook testPhoneBook];
        

    }
    return 0;
    
}
