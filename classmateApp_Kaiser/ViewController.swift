//
//  ViewController.swift
//  classmateApp_Kaiser
//
//  Created by ANDREW KAISER on 10/11/23.
//

protocol addingStudentProto {
    func addStudent(_ stuName: String, _ stuAge: Int, _ stuMoney: Double)
}

import UIKit

class ViewController: UIViewController {

    var stuArray: [Student] = []
    var stuIndex = 0
    //stu lable outlets
    @IBOutlet weak var ageOutlet: UILabel!
    @IBOutlet weak var moneyOutlet: UILabel!
    @IBOutlet weak var nameOutlet: UILabel!
    //
    // buttons
    @IBOutlet weak var nextOutlet: UIButton!
    @IBOutlet weak var backOutlet: UIButton!
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var s1 = Student(name: "Brain", age: 84, money: 23.14)
        var s2 = Student(name: "Andrew", age: 17, money: 643802.92)
        var s3 = Student(name: "Liam", age: 23, money: 5703.20)
        stuArray.append(s1)
        stuArray.append(s2)
        stuArray.append(s3)

        
        nameOutlet.text = "Name: \(s1.name)"
        ageOutlet.text = "Age: \(String(s1.age))"
        moneyOutlet.text = "Money: \(String(s1.money))"
    }
    @IBAction func nextActioon(_ sender: Any) {
        // changing lables and shifting right in the array
        if stuIndex <= stuArray.count - 2{
            stuIndex+=1
            print("stuIndex is \(stuIndex)")
            nameOutlet.text = "Name: \(stuArray[stuIndex].name)"
            ageOutlet.text = "Age: \(String(stuArray[stuIndex].age))"
            moneyOutlet.text = "Money: \(String(stuArray[stuIndex].money))"
        }
        
    }
    
    @IBAction func backAction(_ sender: Any) {
        // changing lables and shifting left in the array
        if stuIndex >= 1{
            stuIndex-=1
            nameOutlet.text = "Name: \(stuArray[stuIndex].name)"
            ageOutlet.text = "Age: \(String(stuArray[stuIndex].age))"
            moneyOutlet.text = "Money \(String(stuArray[stuIndex].money))"
        }
    }
    
    @IBAction func sortAction(_ sender: Any) {
        stuArray.sort (by: {$0.name < $1.name})
        stuIndex = 0
        nameOutlet.text = "Name: \(stuArray[stuIndex].name)"
        ageOutlet.text = "Age: \(String(stuArray[stuIndex].age))"
        moneyOutlet.text = "Money \(String(stuArray[stuIndex].money))"
    }
    
    func addStudent(_ stuName: String, _ stuAge: Int, _ stuMoney: Double){
        stuArray.append(Student(name: stuName, age: stuAge, money: stuMoney))
    }

    
   
    
    


}

// if segue.indentifer == "segueName" {
// let nvc = segue.destination as! *viewControllerName*
//} else then add your additonal segues

