//
//  PhotoTransition.swift
//  transitionDemo
//
//  Created by Timothy Lee on 11/4/14.
//  Copyright (c) 2014 Timothy Lee. All rights reserved.
//

import UIKit

class PhotoTransition: BaseTransition {
    
    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        var photoViewController = toViewController as! PhotoViewController
        photoViewController.photoView.frame = initialImageSize
        photoViewController.photoView.frame.origin.y += initialY
        photoViewController.photoScrollView.backgroundColor = UIColor(white: 0, alpha: 0)
        UIView.animateWithDuration(duration, animations: {
            photoViewController.photoView.frame = CGRect(x: 0, y: 0, width: 320, height: 568)
            photoViewController.photoScrollView.backgroundColor = UIColor(white: 0, alpha: 1)
        }) { (finished: Bool) -> Void in
            self.finish()
        }
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        var photoViewController = fromViewController as! PhotoViewController
        
        photoViewController.photoView.frame = CGRect(x: 0, y: 0, width: 320, height: 568)
        photoViewController.photoScrollView.backgroundColor = UIColor(white: 0, alpha: 1)
        UIView.animateWithDuration(duration, animations: {
            photoViewController.photoView.frame = initialImageSize
            photoViewController.photoView.frame.origin.y += initialY
            photoViewController.photoScrollView.backgroundColor = UIColor(white: 0, alpha: 0)
        }) { (finished: Bool) -> Void in
            self.finish()
        }
    }
}
