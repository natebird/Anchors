//
//  ViewController.swift
//  Anchors
//
//  Created by Nate Bird on 4/7/16.
//  Copyright © 2016 Birdhouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "Anchors"
    view.backgroundColor = .whiteColor()
    
    let box = UIView()
    box.translatesAutoresizingMaskIntoConstraints = false
    box.backgroundColor = .redColor()
    view.addSubview(box)
    
    NSLayoutConstraint.activateConstraints([
      box.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor, constant: 16),
      box.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor, constant: -16),
      box.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 16),
      box.heightAnchor.constraintEqualToConstant(44)
    ])
  }

}

