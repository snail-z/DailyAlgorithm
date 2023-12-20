//
//  Algorithms.swift
//  DailyAlgorithm
//
//  Created by zhang on 2023/12/19.
//

import UIKit

class Algorithms: NSObject {
    
    static let shared = Algorithms()
    
    func Log(_ message: String) {
        print("\n===============\(message)👇\n")
    }
}

extension Algorithms {

    func day1() {
        Log("两数之和")
        var nums = [2, 7, 11, 15]
        var target = 18
        
        let res = solution(nums: nums, target: target)
        print("res ==> \(res)")
        func solution(nums: [Int], target: Int) -> [Int] {
            var temps = [Int: Int]()
            for (index, element) in nums.enumerated() {
                if temps.keys.contains(target - element) {
                    if let res = temps[target - element] {
                        return [res, index]
                    }
                } else {
                    temps.updateValue(index, forKey: element)
                }
            }
            return []
        }
    }
    
    func day2() {
        Log("最大数")
        
        let nums = [50, 201, 34, 9]
        // C++ 精髓：str_a+str_b > str_b+str_a
        print("stringValues======> \(largestNumber(nums))")
        
        func largestNumber(_ nums: [Int]) -> String {
            var values = nums
            values.sort { v1, v2 in
                return String(v1) + String(v2) > String(v2) + String(v1)
            }
                        
            var res: String = ""
            for element in values {
                res += String(element)
            }
            return Int(res) == 0 ? "0" : res
        }
        
       
        comps(t1: 34, t2: 332)
        func comps(t1: Int, t2: Int) {
            // A拼接B > B拼接A，那么A在前，B在后
            // A拼接B = B拼接A，那么哪个前哪个后无所谓
            // A拼接B < B拼接A，那么B在前，A在后
            let temp1 = String(t1) + String(t2)
            let temp2 = String(t2) + String(t1)
            if temp1 > temp2 {
                print("temp1大: \(t1)")
            } else {
                print("temp2大: \(t2)")
            }
        }
    }
}

extension Algorithms {
    
    func day3() {
        
    }
}
