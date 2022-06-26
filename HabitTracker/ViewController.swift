//
//  ViewController.swift
//  HabitTracker
//
//  Created by Decagon on 6/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var calenderIcon: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "calenderIcon")
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var todayLabel: UILabel = {
        let label = UILabel()
        label.text = "Today"
        label.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        
        label.textColor = #colorLiteral(red: 0.2823529412, green: 0.4588235294, blue: 0.3882352941, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var allHabitsButton: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "allHabit")
        button.setTitle("  All Habits  4", for: .normal)
        button.setImage(image, for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 15
        button.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9803921569, blue: 0.968627451, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var areaButton: UIButton = {
        let button = UIButton()
        button.setTitle("Area  2", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 15
        button.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9803921569, blue: 0.968627451, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var meditationView = habitView()
    
    lazy var meditationTimeLabel = timeLabel(text: "0 / 1 time")
    
    lazy var meditationTextLabel = timeLabel(text: "Meditation")
    
    
    lazy var todoListView = habitView()
    
    lazy var todoTimeLabel = timeLabel(text: "0 / 1 time")
    
    lazy var todoTextLabel = timeLabel(text: "Set a To-do List")
    
    
    lazy var drinkWaterView = habitView()
    
    lazy var drinkWaterTimeLabel = timeLabel(text: "0 / 1 time")
    
    lazy var drinkWaterTextLabel = timeLabel(text: "Drink Water")
    
    lazy var runningView = habitView()
    
    lazy var runningTimeLabel = timeLabel(text: "0 / 1 time")
    
    lazy var runningTextLabel = timeLabel(text: "Running")
    
    
        

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8878751397, green: 0.945014894, blue: 0.9246451855, alpha: 1)
        
        view.addSubview(calenderIcon)
        view.addSubview(todayLabel)
        view.addSubview(allHabitsButton)
        view.addSubview(areaButton)
        view.addSubview(meditationView)
        view.addSubview(todoListView)
        view.addSubview(drinkWaterView)
        view.addSubview(runningView)
        
        meditationView.addSubview(meditationTimeLabel)
        meditationView.addSubview(meditationTextLabel)
        todoListView.addSubview(todoTimeLabel)
        todoListView.addSubview(todoTextLabel)
        drinkWaterView.addSubview(drinkWaterTimeLabel)
        drinkWaterView.addSubview(drinkWaterTextLabel)
        runningView.addSubview(runningTimeLabel)
        runningView.addSubview(runningTextLabel)
        
        
        
        NSLayoutConstraint.activate([
            calenderIcon.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            calenderIcon.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            todayLabel.topAnchor.constraint(equalTo: calenderIcon.bottomAnchor, constant: 11),
            todayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            allHabitsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            allHabitsButton.topAnchor.constraint(equalTo: todayLabel.bottomAnchor, constant: 14),
            allHabitsButton.heightAnchor.constraint(equalToConstant: 30),
            allHabitsButton.widthAnchor.constraint(equalToConstant: 135),
            
            areaButton.leadingAnchor.constraint(equalTo: allHabitsButton.trailingAnchor, constant: 10),
            areaButton.topAnchor.constraint(equalTo: todayLabel.bottomAnchor, constant: 14),
            areaButton.heightAnchor.constraint(equalToConstant: 30),
            areaButton.widthAnchor.constraint(equalToConstant: 72),
            
            meditationView.topAnchor.constraint(equalTo: areaButton.bottomAnchor, constant: 24),
            meditationView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            meditationView.heightAnchor.constraint(equalToConstant: 60),
            meditationView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            todoListView.topAnchor.constraint(equalTo: meditationView.bottomAnchor, constant: 24),
            todoListView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            todoListView.heightAnchor.constraint(equalToConstant: 60),
            todoListView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            drinkWaterView.topAnchor.constraint(equalTo: todoListView.bottomAnchor, constant: 24),
            drinkWaterView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            drinkWaterView.heightAnchor.constraint(equalToConstant: 60),
            drinkWaterView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            runningView.topAnchor.constraint(equalTo: drinkWaterView.bottomAnchor, constant: 24),
            runningView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            runningView.heightAnchor.constraint(equalToConstant: 60),
            runningView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            
            meditationTimeLabel.topAnchor.constraint(equalTo: meditationView.topAnchor, constant: 8),
            meditationTimeLabel.leadingAnchor.constraint(equalTo: meditationView.leadingAnchor, constant: 62),
            
            meditationTextLabel.topAnchor.constraint(equalTo: meditationTimeLabel.bottomAnchor, constant: 1),
            meditationTextLabel.leadingAnchor.constraint(equalTo: meditationView.leadingAnchor, constant: 62),
            
            todoTimeLabel.topAnchor.constraint(equalTo: todoListView.topAnchor, constant: 8),
            todoTimeLabel.leadingAnchor.constraint(equalTo: todoListView.leadingAnchor, constant: 62),
            
            todoTextLabel.topAnchor.constraint(equalTo: todoTimeLabel.bottomAnchor, constant: 1),
            todoTextLabel.leadingAnchor.constraint(equalTo: todoListView.leadingAnchor, constant: 62),
            
            drinkWaterTimeLabel.topAnchor.constraint(equalTo: drinkWaterView.topAnchor, constant: 8),
            drinkWaterTimeLabel.leadingAnchor.constraint(equalTo: drinkWaterView.leadingAnchor, constant: 62),
            
            drinkWaterTextLabel.topAnchor.constraint(equalTo: drinkWaterTimeLabel.bottomAnchor, constant: 1),
            drinkWaterTextLabel.leadingAnchor.constraint(equalTo: drinkWaterView.leadingAnchor, constant: 62),
            
            runningTimeLabel.topAnchor.constraint(equalTo: runningView.topAnchor, constant: 8),
            runningTimeLabel.leadingAnchor.constraint(equalTo: runningView.leadingAnchor, constant: 62),
            
            runningTextLabel.topAnchor.constraint(equalTo: runningTimeLabel.bottomAnchor, constant: 1),
            runningTextLabel.leadingAnchor.constraint(equalTo: runningView.leadingAnchor, constant: 62)
        
        ])
    }


}

