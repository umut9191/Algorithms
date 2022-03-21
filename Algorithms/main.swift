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
//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var resultArray:[Int] = [Int]()
//    var firstIndex:Int = 0
//    var secondIndex:Int = 0
//    var i = -1
//    var j = -1
//outerLoop:  for num in nums {
//        i += 1
//        j = -1
//        for secondNum in nums {
//            j += 1
//            if i == j {
//                continue
//            }
//            if(num + secondNum == target){
//                firstIndex = i
//                secondIndex = j
//                break outerLoop
//            }
//        }
//    }
//    resultArray = [firstIndex,secondIndex]
//      return resultArray
//  }
//
//var result = twoSum([0,2,8,5,10,15,27,30,3,6], 9)
//print(result)


//Integer to romen solution not accepted on leetcode; Unknown preprocess compile error

//func intToRoman(_ num: Int) -> String {
//    let dict:[Int:String] = [1:"I", 5:"V", 10:"X",50:"L",100:"C",500:"D",1000:"M",4:"IV",9:"IX",40:"XL",90:"XC",400:"CD",900:"CM"]
//    let array = Array(String(num))
//    let countOfArray = array.count
//    var result:String = ""
//    let secondArray =  array.enumerated().map { (index,element) in
//        return  Int(String(element))! * (Int(pow(Double(10),Double(countOfArray-index-1))))
//    }
//    var i:Int = -1
//    for item in secondArray {
//        i += 1
//        guard let x = dict[item] else{
//            let digitZeros = (Int(pow(Double(10),Double(countOfArray-i-1))))
//            let withoutDigit = item/digitZeros
//            if(withoutDigit<5){
//            guard let y = dict[digitZeros] else { continue }
//            var j:Int = 0
//            while withoutDigit > j {
//                j += 1
//                result += y
//            }
//            }else{
//                guard let y = dict[5*digitZeros] else { continue }
//                result += y
//                guard let z = dict[digitZeros] else { continue }
//                var j:Int = 0
//                while withoutDigit-5 > j {
//                    j += 1
//                    result += z
//                }
//            }
//            continue
//        }
//        result += x
//    }
//    return result
//}
//print(intToRoman(1994))
//Integer to romen
//let result:String = ""
//   var n:Int = 1;
//   if ( num >= 1000 && num <= 3999) { n = 4 }
//   if ( num >= 100 && num <= 999) { n = 3 }
//   if ( num >= 10  && num <= 99) { n = 2}
//   if ( num >= 1  && num <= 9) { n = 1}
//func intToRoman(_ num: Int) -> String {
//    let dict:[Int:String] = [0:"",1:"I",2:"II",3:"III", 5:"V",6:"VI",7:"VII",8:"VIII", 10:"X",50:"L",100:"C",500:"D",1000:"M",4:"IV",9:"IX",40:"XL",90:"XC",400:"CD",900:"CM",20:"XX",30:"XXX",60:"LX",70:"LXX",80:"LXXX",200:"CC",300:"CCC",600:"DC",700:"DCC",800:"DCCC",2000:"MM",3000:"MMM"]
//
//       if ( num > 1000 && num <= 3999) {
//           let tempo:Int = num%1000
//           let tempo2:Int = tempo%100
//           let forthNum:Int = tempo2 > 10 ? num%10 : tempo2
//           let thirdNum:Int = tempo2 > 10 ? tempo2 - forthNum : 0
//           let secondNum:Int = tempo - tempo2
//           let firstNum:Int = num - tempo
//           if let x = dict[firstNum],let y = dict[secondNum],let z = dict[thirdNum],let t = dict[forthNum] {return x + y + z + t}
//       }
//       if ( num > 100 && num <= 999) {
//           let tempo:Int = num%100
//           let thirdNum:Int = tempo > 10 ? num%10 : tempo
//           let secondNum:Int = tempo > 10 ? tempo - thirdNum : 0
//           let firstNum:Int = num - tempo
//           if let x = dict[firstNum],let y = dict[secondNum],let z = dict[thirdNum] {return x + y + z}
//       }
//       if ( num > 10  && num <= 99) {
//           let secondNum:Int = num%10
//           let firstNum:Int = num - secondNum
//           if let x = dict[firstNum],let y = dict[secondNum] {return x + y }
//       }
//    if let x = dict[num] {return x }
//    return ""
//}
//print(intToRoman(2000))

// Palidrome Number;

func isPalindrome(_ x: Int) -> Bool {
    if x >= 0 && x < 10 {
        return true
    }
    if x < 0 {
        return false
    }
    let array = Array(String(x))
    var count:Int = 0
     count = array.count % 2 == 0 ? array.count/2 : (array.count - 1)/2
    for i in 0...count {
        if array[i] != array[array.count - i - 1] {
            return false
        }
    }
    return true
  }
print(isPalindrome(15651))
