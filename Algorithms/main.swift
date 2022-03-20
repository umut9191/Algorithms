//
//  main.swift
//  Algorithms
//
//  Created by Macintosh on 20.03.2022.
//

import Foundation
//Roman to Integer solution;
//func romanToInt(_ s: String) -> Int {
//    let dict:[String:Int] = ["I":1, "V":5, "X":10,"L":50,"C":100,"D":500,"M":1000,"IV":4,"IX":9,"XL":40,"XC":90,"CD":400,"CM":900]
//    var i:Int = -1
//    var result:Int = 0
//    let array = Array(s)
//    var twoDigitCalculated:Bool = false;
//    while i < array.count {
//        i = i + 1
//        if array.count == 1 {
//            if let x = dict[String(array[0])] {
//                result = x
//                break
//            }
//        } else if(array.count > 1 ){
//            if !twoDigitCalculated {
//            if array.count >= i+2 {
//                guard let xy = dict[String(array[i])+String(array[i+1])] else{
//                    if let x = dict[String(array[i])]{
//                        result += x
//                        twoDigitCalculated = false
//                    }
//                    continue
//                }
//                twoDigitCalculated = true
//                result += xy
//            }else{
//                if array.count >= i+1 {
//
//                if let x = dict[String(array[i])]{
//                    twoDigitCalculated = false
//                    result += x
//                }
//                }
//            }
//            }else{
//                twoDigitCalculated = false
//            }
//        }
//    }
//    return result
//}
//
//print(romanToInt("MCMXCI"))
//Two sum algorithm
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var resultArray:[Int] = [Int]()
    var firstIndex:Int = 0
    var secondIndex:Int = 0
    var i = -1
    var j = -1
outerLoop:  for num in nums {
        i += 1
        j = -1
        for secondNum in nums {
            j += 1
            if i == j {
                continue
            }
            if(num + secondNum == target){
                firstIndex = i
                secondIndex = j
                break outerLoop
            }
        }
    }
    resultArray = [firstIndex,secondIndex]
      return resultArray
  }

var result = twoSum([0,2,8,5,10,15,27,30,3,6], 9)
print(result)
