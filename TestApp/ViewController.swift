//
//  ViewController.swift
//  TestApp
//
//  Created by 黃德桑 on 2021/1/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad input")
//
//        }
//        let n = 15
//        fizzBuzz(n: n)
        
//        let teamA = [5,1,4,7,10]
//        let teamB = [4,3,7,9]
//        let c = counts(teamA: teamA, teamB: teamB)
//
//        print(c)
        
//        var test : Double = pow(2000, 1000)
//        print(test)
//        var t =  Int(test)  % 13
//        print(t)
        
//        print(te())
        
//        let text = ["fav" , "vaf" , "fva" , "c" , "va" ]
//        let r = funwithAnage(text: text)
//        print(r)
        var nodeA : SinglyLinkedListNode? = SinglyLinkedListNode(data: 3)
        nodeA?.next = SinglyLinkedListNode(data: 1)
        nodeA?.next?.next = SinglyLinkedListNode(data: 5)
        nodeA?.next?.next?.next = SinglyLinkedListNode(data: 8)
        nodeA?.next?.next?.next?.next = SinglyLinkedListNode(data: 3)
        nodeA?.next?.next?.next?.next?.next = SinglyLinkedListNode(data: 1)
    
        nodeA = condence(head: nodeA)
        
        showLinkedListNode(head: nodeA)
//        showLinkedListNode(head: node)
    }
//    func SinglyLink
    func te() -> Bool{
        var ass = ["1","2","3","4","5"]
        var t1 = Set<String>()
        var t2 = Set<String>()
        for a in ass {
            t1.insert(a)
            t2.insert(a)
        }
        
        return t1 == t2
    }
    func funwithAnage(text : [String]) -> [String]{
        var newText = [String]()
        for t in text {
            var appendOK = true
            for nT in newText {
                var t1 = Set<String>()
                var t2 = Set<String>()
                for s in nT {
                    t1.insert(String(s))
                }
                for s in t {
                    t2.insert(String(s))
                }
                if t1 == t2 {
                    appendOK = false
                }
            }
            if appendOK {
                newText.append(t)
            }
        }
        return newText
    }
    func counts(teamA : [Int] , teamB : [Int]) -> [Int]{
        var results = [Int]()
        for tB in teamB {
            var count = 0
            for tA in teamA {
                if tB >= tA {
                    count += 1
                }
            }
            results.append(count)
        }
        return results
    }
    
    func fizzBuzz(n: Int) -> Void {
        // Write your code here
        if n < 1 {
            return
        }
        for i in 1...n {
            if i % 3 == 0  && i % 5 == 0  {
                print("FizzBuzz")
            }else if i % 3 == 0 {
                print("Fizz")
            }else if i % 5 == 0 {
                print("Buzz")
            }else{
                print(i)
            }
        }

    }
    enum PLanet:Int {
        case Mercury = 1
        case Venus
        case Earth
        case Mars
    }
//    func square<T>(_ value:T) -> T {
//        return value * value
//    }
}

 class Dog {
    func bark(){
        print("Woof!")
    }
}
class Corgi : Dog  {
    override func bark(){
        print("Yip!")
    }
}
