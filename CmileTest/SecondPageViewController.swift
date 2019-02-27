//
//  SecondPageViewController.swift
//  CmileTest
//
//  Created by Mac on 26/02/19.
//  Copyright © 2019 Abhishek Rajanakr. All rights reserved.
//

import UIKit

class SecondPageViewController: UIViewController {
    @IBOutlet weak var DiscriptionLbl: UILabel!
    
    let imgUrl = URL(string: "https://www.google.com/url?q=https://cdn.lifehack.org/wp-content/uploads/2016/12/08230522/best-motivational-quotes-dont-limit-challenges.png&ust=1551243720000000&usg=AFQjCNEuU-dmbo8fqP8oCrvz_GrOjCJOqQ&hl=en")
    
    @IBOutlet weak var ImgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let session = URLSession(configuration: .default)
        
        let picTask = session.dataTask(with: imgUrl!) { (data : Data?, response : URLResponse?, error : Error?) in
            if let e = error {
                print("Error downloading cat picture: \(e)")
            } else {
                
                if let res = response as? HTTPURLResponse {
                    print("Downloaded cat picture with response code \(res.statusCode)")
                    if let imageData = data {
                    
                        let image = UIImage(data: imageData)
                        self.ImgView.image = image
                        
                    } else {
                        print("Couldn't get image: Image is nil")
                    }
                } else {
                    print("Couldn't get response code for some reason")
                }
            }
        }
        
        picTask.resume()
        
        DiscriptionLbl.text = "Below there is image"
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.topItem?.title = "Title 2"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
