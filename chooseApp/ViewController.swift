//
//  ViewController.swift
//  chooseApp
//
//  Created by 曾曜澤 on 2022/5/23.
//

import UIKit

class ViewController: UIViewController {
    //圖片
    let pics = ["持修", "周興哲", "瘦子", "胡彥斌", "蔡依林", "鄧紫棋", "陳忻玥", "Doja", "Billie", "Scott", "nil"]
    //名字
    let singer = ["持修", "周興哲", "E.so瘦子", "胡彥斌", "蔡依林", "鄧紫棋", "陳忻玥", "朵佳貓", "怪奇比莉", "史考特","無結果"]
    var index = 0
    func sync(){
        changeImage.image = UIImage(named: pics[index])
        name.text = singer[index]
    }

    @IBOutlet weak var changeImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var yearsSwitch: UISwitch!
    @IBOutlet weak var songSegmented: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        name.isHidden = true
    }
    @IBAction func button(_ sender: Any) {
        name.isHidden = false
        //瘦子
        if gender.selectedSegmentIndex == 0, ageSlider.value >= 30, yearsSwitch.isOn, songSegmented.selectedSegmentIndex == 0{
            index = 2
            sync()
        //胡彥斌
        } else if gender.selectedSegmentIndex == 0, ageSlider.value >= 30, yearsSwitch.isOn, songSegmented.selectedSegmentIndex == 2{
            index = 3
            sync()
        //Scott
        } else if gender.selectedSegmentIndex == 0, ageSlider.value >= 30, yearsSwitch.isOn == false, songSegmented.selectedSegmentIndex == 1{
                index = 9
                sync()
        //周興哲
        } else if gender.selectedSegmentIndex == 0, ageSlider.value >= 20, yearsSwitch.isOn == false, songSegmented.selectedSegmentIndex == 1{
            index = 1
            sync()
        //持修
        } else if gender.selectedSegmentIndex == 0, ageSlider.value >= 20, yearsSwitch.isOn == false, songSegmented.selectedSegmentIndex == 2{
            index = 0
            sync()
        //蔡依林
        } else if gender.selectedSegmentIndex == 1, ageSlider.value >= 35, yearsSwitch.isOn, songSegmented.selectedSegmentIndex == 2{
            index = 4
            sync()
        //鄧紫棋
        } else if gender.selectedSegmentIndex == 1, ageSlider.value >= 25, yearsSwitch.isOn, songSegmented.selectedSegmentIndex == 2{
            index = 5
            sync()
        //Vicky
        } else if gender.selectedSegmentIndex == 1, ageSlider.value >= 25, yearsSwitch.isOn == false, songSegmented.selectedSegmentIndex == 1{
            index = 6
            sync()
        //Doja
        } else if gender.selectedSegmentIndex == 1, ageSlider.value >= 20, yearsSwitch.isOn == false, songSegmented.selectedSegmentIndex == 0{
            index = 7
            sync()
        //Billie
        } else if gender.selectedSegmentIndex == 1, ageSlider.value >= 20, yearsSwitch.isOn == false, songSegmented.selectedSegmentIndex == 1{
            index = 8
            sync()
        //
        } else{
            index = 10
            sync()
        }
    }
    

}

