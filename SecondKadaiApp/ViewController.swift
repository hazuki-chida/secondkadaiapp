//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by hazuki chida on 2016/11/16.
//  Copyright © 2016年 hazuki chida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    var name:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let ResultViewController:ResultViewController = segue.destination as! ResultViewController
        ResultViewController.name = textfield.text!
        
    }
    @IBAction func textFieldDidEndOnExit(_ sender: UITextField) {
        name = textfield.text
        }
    @IBAction func unwind(segue: UIStoryboardSegue) {
            // 他の画面から segue を使って戻ってきた時に呼ばれる
    }


}

