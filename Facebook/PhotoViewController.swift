//
//  PhotoViewController.swift
//  Facebook
//
//  Created by Marc Haumann on 3/6/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var doneButton: UIButton!
    var image: UIImage!
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var photoScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        doneButton.backgroundColor = UIColor.clearColor()
        doneButton.layer.cornerRadius = 5
        doneButton.layer.borderWidth = 1
        doneButton.layer.borderColor = UIColor.whiteColor().CGColor
        
        photoView.image = image
        photoScrollView.frame.size = CGSize(width: 320, height: 568)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doneDidTap(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
