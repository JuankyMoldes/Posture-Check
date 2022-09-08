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
                            .position(x: 180, y: -220)
                    
                }.padding()
                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    VStack{
                        
                        // The actual progress bar needs functions which track when the user completes the steps and upates the bar so it fills up to completion
                        
                        ProgressBar(value:$progressValue).frame(height: 20.0)
                            .position(x: 180, y: 130)
                        
                        var rawProgress: Float = progressValue * 5
                        var formatted = NSNumber(value: rawProgress).stringValue
                        
                        if (progressValue == 1 ){
                            Text("Complete!")
                                .position(x: 180, y: -150)
                        }
                        else{
                        Text("Progress \(formatted)/5")
                            .position(x: 180, y: -150)
                        }
                        //The progess bar Text below needs to be updated each time the user completes the required steps, a variable must be introduced which counts up +1 when what is stated above is done
                            
                            
                        }.padding()
                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    VStack{
                        HStack{
                            Text("Place")
                            Text("Holder")
                        }
                        HStack{
                            Text("Place")
                            Text("Holder")
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
