//
//  Common.swift
//  HabitTracker
//
//  Created by Decagon on 6/26/22.
//

import Foundation
import UIKit

func habitView() -> UIView {
    let meditationView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9587430358, green: 0.9836654067, blue: 0.9750916362, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        
        
        return view
    }()
    return meditationView
}

func timeLabel(text: String) -> UILabel {
    let timeLabel: UILabel = {
        let time = UILabel()
        time.text = text
        time.translatesAutoresizingMaskIntoConstraints = false
        
        
        return time
    }()
    return timeLabel
}
