//
//  PhotoViewController.swift
//  Facebook
//
//  Created by Marc Haumann on 3/6/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    var image: UIImage!
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var photoScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        photoView.image = image
        photoScrollView.frame.size = CGSize(width: 320, height: 568)
        // Do any additional setup after loading the view.
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
