//
//  ViewController.swift
//  buoi2
//
//  Created by Kien Nguyen on 2021-05-15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var imgHinh: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = "Hello world !"
        //Color for the text Hello :
        
        lbl.textColor = UIColor.green
        
        //image for background :
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hinh.jpg")!)
    }
    @IBAction func XULY(_ sender: Any) {
        
        lbl.text = " Kien Nguyen"
    }
    
    @IBAction func LoadHinhLocal(_ sender: Any) {
        imgHinh.image = UIImage(named: "hinh.jpg")
        
    }
    
    @IBAction func LoadHinhInternet(_ sender: Any) {
        //Create URL with https  :
        
        // image with http changed(needed App Transport Security):
        let u = URL(string :"http://vinakoforwarding.com/wp-content/uploads/2017/06/photoshop-anh-logo-2.jpg")
        
        //Create data :
        do{
          let d = try Data(contentsOf: u!)
            imgHinh.image = UIImage(data: d)   // Hien thi hinh ra
        }catch{
            print(" Loi data !!!")
        }
}
}
