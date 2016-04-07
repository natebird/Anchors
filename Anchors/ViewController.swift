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
    

    let container = UIStackView()
    container.translatesAutoresizingMaskIntoConstraints = false
    container.axis = .Vertical
    view.addSubview(container)
    
    let photoView = UIImageView(image: UIImage(named: "photo"))
    container.addArrangedSubview(photoView)
    
    let buttonsContainer = UIStackView()
    buttonsContainer.alignment = .Leading
    buttonsContainer.spacing = 16
    buttonsContainer.layoutMargins = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
    container.addArrangedSubview(buttonsContainer)
    
    let likeButton = UIButton()
    likeButton.setImage(UIImage(named: "Like"), forState: .Normal)
    buttonsContainer.addArrangedSubview(likeButton)
    
    let commentButton = UIButton()
    commentButton.setImage(UIImage(named: "Comment"), forState: .Normal)
    buttonsContainer.addArrangedSubview(commentButton)

    let sendButton = UIButton()
    sendButton.setImage(UIImage(named: "Send"), forState: .Normal)
    buttonsContainer.addArrangedSubview(sendButton)
    
    buttonsContainer.addArrangedSubview(UIView())

    NSLayoutConstraint.activateConstraints([
      container.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor, constant: 16),
      container.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor, constant: -16),
      container.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 16),
    ])
  }

}

