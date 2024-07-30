//
//  HomeView.swift
//  FitnessApp
//
//  Created by APPLE on 26/07/24.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 123
    @State var stand: Int = 123
    
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
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false){
                VStack{
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    
                    HStack{
                        Spacer()
                        VStack{
                            VStack(alignment: .leading,spacing: 8){
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.red)
                                
                                Text("123 kcal")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading,spacing: 8){
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.green)
                                
                                Text("52 mins")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading,spacing: 8){
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.blue)
                                
                                Text("8 hours")
                                    .bold()
                            }
                        }
                        Spacer()
                        
                        ZStack{
                            ProgressCircleView(progress: $calories, goal: 600, color: .red)
                            
                            ProgressCircleView(progress: $calories, goal: 60, color: .green)
                                .padding(.all,20)
                            ProgressCircleView(progress: $calories, goal: 12, color: .blue)
                                .padding(.all,40)
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                        
                    }
                    .padding()
                    HStack{
                        Text("Fitness Activity")
                            .font(.title2)
                        Spacer()
                        Button{
                            print("show more")
                        } label:{
                            Text("Show more")
                                .padding(.all,10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns:Array(repeating: GridItem(spacing:20), count: 2)){
                        ForEach(mockActivities, id:\.id){activity in
                            ActivityCard(activity: activity)
                        }
                    }
                }
                .padding(.horizontal)
                
                HStack{
                    Text("Recent workout")
                        .font(.title2)
                    
                    Spacer()
                    NavigationLink{
                        
                    } label:{
                        Text("Show more")
                            .padding(.all,10)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(20)
                    }
                    
                   
                }
                .padding(.horizontal)
                .padding(.top)
                 
                LazyVStack{
                    ForEach(mockWorkouts,id: \.id){ workout in
                        WorkoutCard(workout: workout)
                    }
                }
               
            }
        }
    }
}

#Preview {
    HomeView()
}
