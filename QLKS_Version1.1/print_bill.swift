//
//  print_bill.swift
//  QLKS_Version1.1
//
//  Created by Lê Xuân Kha on 1/16/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class print_bill: UIViewController {
    var image:UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = image
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBAction func inBill(_ sender: Any) {
        let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
        
        // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]
        
        // present the view controller
        self.present(activityViewController, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
