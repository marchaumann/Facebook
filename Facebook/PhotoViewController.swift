//
//  PhotoViewController.swift
//  Facebook
//
//  Created by Marc Haumann on 3/6/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

var alpha: CGFloat! = 1

class PhotoViewController: UIViewController, UIScrollViewDelegate {
    
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
        
        photoScrollView.delegate = self
        
        photoView.image = image
//        photoScrollView.contentSize = CGSize(width: 320, height: 568)
        photoScrollView.alwaysBounceVertical = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doneDidTap(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        print(alpha)
        alpha = convertValue(abs(scrollView.contentOffset.y), r1Min: 0, r1Max: 80, r2Min: 1, r2Max: 0)
        photoScrollView.backgroundColor = UIColor(white: 0, alpha: alpha)
        // This method is called as the user scrolls
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
        willDecelerate decelerate: Bool) {
            if abs(scrollView.contentOffset.y) > 60 {
                dismissViewControllerAnimated(true, completion: nil)
            }
            // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView!) -> UIView! {
        return photoView
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
