//
//  OnboardingCollectionViewCell.swift
//  onboarding-restaurant-app
//
//  Created by Apurva Deshmukh on 8/1/20.
//  Copyright © 2020 Apurva Deshmukh. All rights reserved.
//

import UIKit
import Lottie

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var animationView: AnimationView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    
    var actionButtonDidTap: (() -> Void)?
    
    func configure(with slide: Slide) {
        titleLabel.text = slide.title
        actionButton.backgroundColor = slide.buttonColor
        actionButton.setTitle(slide.buttonTitle, for: .normal)
        actionButton.layer.cornerRadius = 4
        
        let animation = Animation.named(slide.animationName)
        animationView.animation = animation
        animationView.loopMode = .loop
        
        if !animationView.isAnimationPlaying {
            animationView.play()
        }
    }
    
    @IBAction func actionButtonTapped() {
        actionButtonDidTap?()
    }
}
