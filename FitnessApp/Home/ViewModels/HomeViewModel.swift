//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by APPLE on 30/07/24.
//

import Foundation

@Observable
class HomeViewModel{
     var calories: Int = 123
     var active: Int = 123
     var stand: Int = 123
    var mockActivities = [
        Activity(id: 0, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9,812"),
        Activity(id: 1, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .red, amount: "9,812"),
        Activity(id: 2, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "9,812"),
        Activity(id: 3, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .purple, amount: "9,812")
    ]
    var mockWorkouts = [
     Workout(id: 0, title: "Running", image: "figure.run", tintColor: .cyan, duration: "51 mins", date: "Aug 1", calories: "512 kcal"),
     Workout(id: 1, title: "Strength", image: "figure.run", tintColor: .red, duration: "51 mins", date: "Aug 1", calories: "512 kcal"),
     Workout(id: 2, title: "Cycling", image: "figure.run", tintColor: .blue, duration: "51 mins", date: "Aug 1", calories: "512 kcal"),
     Workout(id: 3, title: "Yoga", image: "figure.run", tintColor: .purple, duration: "51 mins", date: "Aug 1", calories: "512 kcal"),
   
    ]
    
}
