//
//  Slide.swift
//  onboarding-restaurant-app
//
//  Created by Apurva Deshmukh on 8/1/20.
//  Copyright © 2020 Apurva Deshmukh. All rights reserved.
//

import UIKit

struct Slide {
    let title: String
    let animationName: String
    let buttonColor: UIColor
    let buttonTitle: String
    
    static let collection: [Slide] = [
        .init(title: "Get your favorite food delivered to you under 30 minutes anytime",
              animationName: "lottieDeliveryGuy",
              buttonColor: .systemYellow,
              buttonTitle: "Next"),
        .init(title: "We serve only from choiced restaurants in your area",
              animationName: "lottieRestaurant",
              buttonColor: .systemGreen,
              buttonTitle: "Order Now")
    ]
}
