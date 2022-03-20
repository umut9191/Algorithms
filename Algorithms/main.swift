//
//  main.swift
//  Algorithms
//
//  Created by Macintosh on 20.03.2022.
//

import Foundation
//extension String {
//    subscript(i: Int) -> String {
//        return String(self[index(startIndex, offsetBy: i)])
//    }
//}

func romanToInt(_ s: String) -> Int {
    let dict:[String:Int] = ["I":1, "V":5, "X":10,"L":50,"C":100,"D":500,"M":1000,"IV":4,"IX":9,"XL":40,"XC":90,"CD":400,"CM":900]
    var i:Int = -1
    var result:Int = 0
    let array = Array(s)
    var twoDigitCalculated:Bool = false;
    while i < array.count {
        i = i + 1
        if array.count == 1 {
            if let x = dict[String(array[0])] {
                result = x
                break
            }
        } else if(array.count > 1 ){
            if !twoDigitCalculated {
            if array.count >= i+2 {
                guard let xy = dict[String(array[i])+String(array[i+1])] else{
                    if let x = dict[String(array[i])]{
                        result += x
                        twoDigitCalculated = false
                    }
                    continue
                }
                twoDigitCalculated = true
                result += xy
            }else{
                if array.count >= i+1 {

                if let x = dict[String(array[i])]{
                    twoDigitCalculated = false
                    result += x
                }
                }
            }
            }else{
                twoDigitCalculated = false
            }
        }
    }
    return result
}

print(romanToInt("MCMXCI"))
