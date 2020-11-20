//
//  ViewController.swift
//  calkulator
//
//  Created by Faruz Hillal Albany on 11/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var labelHasil: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnTambah(_ sender: UIButton) {
        hitung(aritmatik: "+")
    }
    @IBAction func btnKurang(_ sender: UIButton) {
        hitung(aritmatik: "-")
    }
    @IBAction func btnKali(_ sender: UIButton) {
        hitung(aritmatik: "*")
    }
    @IBAction func btnbagi(_ sender: UIButton) {
        hitung(aritmatik: "/")
    }
    
    func hitung(aritmatik : String){
        if textField1.text == "" || textField2.text == ""{
            labelHasil.text = "tidak boleh kosong"
        } else {
            let input1 = Double(textField1.text!)
            let input2 = Double(textField2.text!)
            var hasil : Double?
            
        switch aritmatik {
            case "+": hasil=input1! + input2!
            case "-": hasil=input1! - input2!
            case "*": hasil=input1! * input2!
            case "/": hasil=input1! / input2!
        default:
            break
        }
            labelHasil.text = String(hasil!)
        }
    }
}

