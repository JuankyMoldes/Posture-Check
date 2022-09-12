//
//  ProfileView.swift
//  Posture Check
//
//  Created by Luis Rivera Rivera on 8/29/22.
//

// MARK: File Description
/*
 This view will be responsible for displaying user profiles details like day in study, level and achievements.
 */

import SwiftUI

struct ProfileView: View {
    @State var progressValue: Float = 0.0
    var body: some View {
        NavigationView {
            ScrollView{ // ScrollView changes where things are positioned after being implemented after NavigationView
            ZStack{
                
                //Color.cyan.ignoresSafeArea()
                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                VStack{
                    
                    
                    // This block of code below is a placeholder to be replaced later for an Image, it is unsure whether it will be a local image or uploaded by user
                     
                    Circle()
                        .fill(Color.cyan)
                        .frame(width: 150, height: 150)
                        .position(x:  180, y: 0)
                    
                    // The block of code above is the code to be changed in the future
                    
                    
                        Divider()
                        .background(Color.black)
                            .position(x: 180, y: -80)
                    
                }.padding()
                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    VStack{
                        
                        // The actual progress bar needs functions which track when the user completes the steps and upates the bar so it fills up to completion
                        
                        ProgressBar(value:$progressValue).frame(height: 20.0)
                            .position(x: 180, y: 150)
                            
                        
                        // This code below requires testing, I am unsure whether it will run as intended once most of the application features are implemented
                        // Although the IDE recommends this to be a constant variable, the variable (progressValue) should be changing once the user completes the questionnaires
                        // Hence, it will not be a constant variable in that context
                        
                        var rawProgress: Float = progressValue * 5
                        var formatted = NSNumber(value: rawProgress).stringValue
                        
                        if (progressValue >= 1 ){
                            Text("Complete!")
                                .position(x: 180, y: 30)
                        }
                        else{
                        Text("Progress \(formatted)/5")
                            .position(x: 180, y: 30)
                        }
                            
                            
                    }.padding()
                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    VStack{
                        HStack{
                            Image("B)2. Chin tuck icon")
                                .resizable()
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 275)
                                .position(x: 90, y: 340)
    
                            Image("B)2. Chin tuck icon")
                                .resizable()
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 275)
                                .position(x: 90, y: 340)
                            
                            
                        }.padding()
                        
                        HStack{
                            Image("B)2. Chin tuck icon")
                                .resizable()
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 275)
                                .position(x: 90, y: 340)
    
                            Image("B)2. Chin tuck icon")
                                .resizable()
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 275)
                                .position(x: 90, y: 340)
                        }.padding()
                        
                }
                }
            }
        }
    }
    
    func moreProgress() {
        self.progressValue += 0.20
    }
    }

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
