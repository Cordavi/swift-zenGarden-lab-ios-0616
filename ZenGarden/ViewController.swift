//
//  ViewController.swift
//  ZenGarden
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
   @IBOutlet weak var swordInStoneImage: UIImageView!
   @IBOutlet weak var bushImage: UIImageView!
   @IBOutlet weak var rockImage: UIImageView!
   @IBOutlet weak var rakeImage: UIImageView!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      setUpImageView()
      setConstraints()
   }
   
   func setUpImageView() {
      rakeImage.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(ViewController.whilePanning)))
      rockImage.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(ViewController.whilePanning)))
      bushImage.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(ViewController.whilePanning)))
      swordInStoneImage.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(ViewController.whilePanning)))
   }
   
   func setConstraints() {
      view.removeConstraints(view.constraints)
      view.translatesAutoresizingMaskIntoConstraints = false
      swordInStoneImage.translatesAutoresizingMaskIntoConstraints = false
      bushImage.translatesAutoresizingMaskIntoConstraints = false
      rockImage.translatesAutoresizingMaskIntoConstraints = false
      rakeImage.translatesAutoresizingMaskIntoConstraints = false
      
      rakeImage.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor, constant: -100).active = true
      rakeImage.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor, constant: 100).active = true
      rakeImage.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: (rakeImage.frame.size.height / rakeImage.frame.size.width) * 0.25).active = true
      rakeImage.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: (rakeImage.frame.size.width / rakeImage.frame.size.height) * 0.25).active = true
      
      rockImage.topAnchor.constraintEqualToAnchor(view.topAnchor).active = true
      rockImage.leftAnchor.constraintEqualToAnchor(view.leftAnchor).active = true
      rockImage.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: (rockImage.frame.size.height / rockImage.frame.size.width) * 0.25).active = true
      rockImage.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: (rockImage.frame.size.width / rockImage.frame.size.height) * 0.25).active = true
      
      swordInStoneImage.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor).active = true
      swordInStoneImage.leftAnchor.constraintEqualToAnchor(view.leftAnchor).active = true
      swordInStoneImage.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: (swordInStoneImage.frame.size.height / swordInStoneImage.frame.size.width) * 0.25).active = true
      swordInStoneImage.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: (swordInStoneImage.frame.size.width / swordInStoneImage.frame.size.height) * 0.25).active = true
      
      bushImage.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor, constant: 100).active = true
      bushImage.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor, constant: -100).active = true
      bushImage.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: (bushImage.frame.size.height / bushImage.frame.size.width) * 0.25).active = true
      bushImage.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: (bushImage.frame.size.width / bushImage.frame.size.height) * 0.25).active = true
   }
   
   func whilePanning(sender: UIPanGestureRecognizer) {
      let translation = sender.translationInView(self.view)
      
      guard let startCenterX = sender.view?.center.x  else {
         return
      }
      
      guard let startCenterY = sender.view?.center.y else {
         return
      }
      
      let endCenterX = startCenterX + translation.x
      let endCenterY = startCenterY + translation.y
      
      sender.view?.center = CGPointMake(endCenterX, endCenterY)
      sender.setTranslation(CGPointZero, inView: self.view)
   }
   
}

