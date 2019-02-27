//
//  ThirdViewController.swift
//  CmileTest
//
//  Created by Mac on 26/02/19.
//  Copyright © 2019 Abhishek Rajanakr. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var DescriptionLbl: UILabel!
    @IBOutlet weak var videoView: UIWebView!
    
    let videoUrl = "https://www.youtube.com/embed/mj2asf2to7k"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL(string: videoUrl)
        let request  = NSURLRequest(url: url! as URL)
        videoView.loadRequest(request as URLRequest)
        videoView.reload()
        
      DescriptionLbl.text = "How's the josh?"
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.topItem?.title = "Last one"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
