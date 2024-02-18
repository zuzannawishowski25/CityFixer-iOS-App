//
//  ContentView.swift
//  CityFixer
//
//  Created by Zuzanna Wichowski on 2/17/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showSecondView = false
    @State private var showThirdView = false
    @State private var showFourthView = false
    @State private var showFifthView = false
    @State private var showSixthView = false
    @State private var showSeventhView = false
    @State private var showEigthView = false
    @State private var showNinthView = false
    @State private var showTenthView = false
    
    var body: some View {
           VStack {
               if showSecondView {
                   SecondView(showThirdView: $showThirdView)
                       .transition(.opacity) // Apply transition to the second view
               } else if showThirdView {
                   ThirdView()
                       .transition(.opacity) // Apply transition to the third view
               } else {
                   VStack {
                       Button(action: {
                           withAnimation {
                               showSecondView.toggle()
                           }
                       }) {
                           Image(systemName: "figure.walk.diamond") // our app logo
                               .resizable()
                               .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                               .frame(width: 80, height: 83) // Set a fixed size for visibility
                               .foregroundColor(.yellow) // Ensure symbol color is visible
                               .offset(x: 0, y: -20) // Adjust position as needed
                           
                           Text("CityFixer")
                               .font(.title)
                               .fontWeight(.bold)
                               .foregroundColor(.white)
                               .offset(x: 0, y: -20)
                           
                       }
                   }
               }
           }
           .frame(width: 393, height: 852)
           .background(
               LinearGradient(gradient: Gradient(colors: [Color(red: 0.10, green: 0.35, blue: 0.06), Color(red: 0.08, green: 0.19, blue: 0.08)]), startPoint: .top, endPoint: .bottom)
           )
           .padding()
       }
   }
// ALL THE PAGES BELOW ARE SCREENS FROM FIGMA: / / / / / / / / / / / / / / / / / / / / / / / / / / / / /





// AFTER COMPLETING REPORT
struct TenthView: View {
    var body: some View {
        ZStack() {
            Group {
                Text("We’re On It!")
                    .font(Font.custom("Khula", size: 32).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0.50, y: 0)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 249, height: 56)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08))
                    .offset(x: 0, y: 233)
                Text("Report Another Issue")
                    .font(Font.custom("Khula", size: 16).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: 233)
                    .opacity(0.80)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 198, height: 198)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.55))
                    .offset(x: 141.50, y: -276)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 113, height: 114)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.55))
                    .offset(x: -198, y: -250)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 113, height: 114)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.55))
                    .offset(x: -198, y: -250)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 113, height: 114)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.55))
                    .offset(x: -35, y: 369)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 198, height: 198)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.55))
                    .offset(x: -151.50, y: 337)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 198, height: 198)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.55))
                    .offset(x: 180.50, y: 99)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 198, height: 198)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.55))
                    .offset(x: -166.50, y: -151)
            }; Group {
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 198, height: 198)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.55))
                    .offset(x: 64.50, y: -398)
                
                ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                                   NavigationLink(destination: SixthView()) {
                                       Text("Report Another Issue")
                                           .font(Font.custom("Khula", size: 16).weight(.bold))
                                           .foregroundColor(.white)
                                           .offset(x: 0, y: 233)
                                           .opacity(0.80)
                                   }
                ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                 
                Image(systemName: "map") // our map logo
                                    .resizable()
                                    .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                                    .frame(width: 36, height: 36) // Set a fixed size for visibility
                                    .foregroundColor(.white) // Ensure symbol color is visible
                                    .offset(x: 144.50, y: -376) // Adjust position as needed
                                
                Image(systemName: "figure.walk.diamond") // our app logo
                                        .resizable()
                                        .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                                        .frame(width: 25, height: 25) // Set a fixed size for visibility
                                        .foregroundColor(.yellow) // Ensure symbol color is visible
                                        .offset(x: -140.50, y: -363.50) // Adjust position as needed
                                    
                                    Text("CityFixer")
                                        .font(Font.custom("Khula", size: 20).weight(.bold))
                                        .foregroundColor(.white)
                                        .offset(x: -80.50, y: -363.50)
            }
        }
        .frame(width: 393, height: 852)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.10, green: 0.35, blue: 0.06), Color(red: 0.08, green: 0.19, blue: 0.08)]), startPoint: .top, endPoint: .bottom)
        )
    }
}


// AFTER CHOOSING CATEGORY
struct NinthView: View {
    var body: some View {
        ZStack() {
            Group {
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 198, height: 198)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.55))
                    .offset(x: -151.50, y: 337)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 99, height: 99)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.55))
                    .offset(x: 63, y: 287.50)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 99, height: 99)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.55))
                    .offset(x: 19, y: -413.50)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 198, height: 198)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.55))
                    .offset(x: 162.50, y: 238)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 319, height: 306)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.55))
                    .offset(x: 179, y: -334)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 308, height: 197)
                    .background(Color(red: 0.30, green: 0.48, blue: 0.27).opacity(0.70))
                    .offset(x: 0.50, y: -19.50)
                Text("Describe the Issue in 1-15 words:")
                    .font(Font.custom("Khula", size: 16).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: -31, y: -139)
                Text("Start Typing...")
                    .font(Font.custom("Khula", size: 11).weight(.semibold))
                    .foregroundColor(.white)
                    .offset(x: -78, y: -94)
                    .opacity(0.30)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 166, height: 30)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.70))
                    .offset(x: 7.50, y: 118)
                Text("Done")
                    .font(Font.custom("Khula", size: 13).weight(.semibold))
                    .foregroundColor(.white)
                    .offset(x: 7.50, y: 118)
                    .opacity(0.75)
                
                ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                                   NavigationLink(destination: TenthView()) {
                                       Text("Done")
                                           .font(Font.custom("Khula", size: 13).weight(.semibold))
                                           .foregroundColor(.white)
                                           .offset(x: 7.50, y: 118)
                                           .opacity(0.75)
                                   }
                ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                  
                Image(systemName: "map") // our map logo
                                    .resizable()
                                    .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                                    .frame(width: 36, height: 36) // Set a fixed size for visibility
                                    .foregroundColor(.white) // Ensure symbol color is visible
                                    .offset(x: 144.50, y: -376) // Adjust position as needed
                                
            }; Group {
                Image(systemName: "figure.walk.diamond") // our app logo
                                        .resizable()
                                        .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                                        .frame(width: 25, height: 25) // Set a fixed size for visibility
                                        .foregroundColor(.yellow) // Ensure symbol color is visible
                                        .offset(x: -140.50, y: -363.50) // Adjust position as needed
                                    
                                    Text("CityFixer")
                                        .font(Font.custom("Khula", size: 20).weight(.bold))
                                        .foregroundColor(.white)
                                        .offset(x: -80.50, y: -363.50)
            }
        }
        .frame(width: 393, height: 852)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.10, green: 0.35, blue: 0.06), Color(red: 0.08, green: 0.19, blue: 0.08)]), startPoint: .top, endPoint: .bottom)
        )
    }
}

// CHOOSE CATGEORY OF ISSUE
struct EigthView: View {
    var body: some View {
        ZStack() {
            Group {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 287, height: 65)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08))
                    .offset(x: 0, y: -255.50)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                    )
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 287, height: 65)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08))
                    .offset(x: 0, y: -69.50)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                    )
                Text("Car Crash")
                    .font(Font.custom("Khula", size: 24).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: -162)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 287, height: 65)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08))
                    .offset(x: 0, y: -162.50)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                    )
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 287, height: 65)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08))
                    .offset(x: 0, y: 23.50)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                    )
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 287, height: 65)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08))
                    .offset(x: 0, y: 116.50)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                    )
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 287, height: 65)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08))
                    .offset(x: 0, y: 209.50)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                    )
                Text("Fire")
                    .font(Font.custom("Khula", size: 24).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: -255.50)
                Text("Car Crash")
                    .font(Font.custom("Khula", size: 24).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: -162)
                Text("Other:")
                    .font(Font.custom("Khula", size: 24).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: 210)
            }; Group {
                Text("Sidewalk Issue")
                    .font(Font.custom("Khula", size: 24).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: 117)
                Text("Overflowing Trash")
                    .font(Font.custom("Khula", size: 24).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: 24)
                Text("Leaky Pipe")
                    .font(Font.custom("Khula", size: 24).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: -69)
                
                ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                                   NavigationLink(destination: NinthView()) { //for now, just fire
                                       Text("Choose the issue type:")
                                           .font(Font.custom("Khula", size: 24).weight(.bold))
                                           .foregroundColor(.white)
                                           .offset(x: 0, y: -255.50)
                                   }
                ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                  
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 136, height: 130)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.60))
                    .offset(x: 109.50, y: -398)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 136, height: 130)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.80))
                    .offset(x: -194.50, y: 319)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 136, height: 130)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.60))
                    .offset(x: 33.50, y: -429)
                
                Image(systemName: "map") // our map logo
                                    .resizable()
                                    .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                                    .frame(width: 36, height: 36) // Set a fixed size for visibility
                                    .foregroundColor(.white) // Ensure symbol color is visible
                                    .offset(x: 144.50, y: -376) // Adjust position as needed
                
                Image(systemName: "figure.walk.diamond") // our app logo
                                        .resizable()
                                        .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                                        .frame(width: 25, height: 25) // Set a fixed size for visibility
                                        .foregroundColor(.yellow) // Ensure symbol color is visible
                                        .offset(x: -140.50, y: -363.50) // Adjust position as needed
                                    
                                    Text("CityFixer")
                                        .font(Font.custom("Khula", size: 20).weight(.bold))
                                        .foregroundColor(.white)
                                        .offset(x: -80.50, y: -363.50)
                                
            }
        }
        .frame(width: 393, height: 852)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.10, green: 0.35, blue: 0.06), Color(red: 0.08, green: 0.19, blue: 0.08)]), startPoint: .top, endPoint: .bottom)
        )
    }
}
    

// SELECTED LOCATION SCREEN (for now, only have Brooklyn in Swift UI
struct SeventhView: View {
    var body: some View {
        ZStack() {
            ZStack() {
                ZStack() { }
                .frame(width: 41, height: 41)
                .offset(x: 0, y: 0)
            }
            
            Image(systemName: "arrow.down") // arrow image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                                    .frame(width: 41, height: 41) // Set a fixed size for visibility
                                    .foregroundColor(.yellow) // Ensure symbol color is visible
                                    .offset(x: 0, y: 348.50) // Adjust position as needed
            
            Text("Brooklyn")
                .font(Font.custom("Khula", size: 40).weight(.heavy))
                .foregroundColor(.white)
                .offset(x: 0.50, y: -256)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 324, height: 0)
                .overlay(
                    Rectangle()
                        .stroke(
                            Color(red: 1, green: 1, blue: 1).opacity(0.60), lineWidth: 0.50
                        )
                )
                .offset(x: 0.50, y: -223)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 305, height: 341)
                .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/305x341"))
                )
                .cornerRadius(37)
                .offset(x: 0, y: -9.50)
            Text("Scroll Down to Pick Problem Category")
                .font(Font.custom("Khula", size: 16).weight(.bold))
                .foregroundColor(.white)
                .offset(x: 0, y: 225)
            
            ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                               NavigationLink(destination: EigthView()) {
                                   Text("Pick Problem Category")
                                       .font(Font.custom("Khula", size: 16).weight(.bold))
                                       .foregroundColor(.white)
                                       .offset(x: 0, y: 225)
                                       .opacity(0.70)
                               }
            ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
             
            Ellipse()
                .foregroundColor(.clear)
                .frame(width: 208, height: 208)
                .background(Color(red: 0.10, green: 0.35, blue: 0.06).opacity(0.50))
                .offset(x: -184.50, y: 369)
            Ellipse()
                .foregroundColor(.clear)
                .frame(width: 208, height: 208)
                .background(Color(red: 0.10, green: 0.35, blue: 0.06).opacity(0.50))
                .offset(x: -103.50, y: 426)
            
            Image(systemName: "figure.walk.diamond") // our app logo
                                    .resizable()
                                    .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                                    .frame(width: 25, height: 25) // Set a fixed size for visibility
                                    .foregroundColor(.yellow) // Ensure symbol color is visible
                                    .offset(x: -140.50, y: -363.50) // Adjust position as needed
                                
                                Text("CityFixer")
                                    .font(Font.custom("Khula", size: 20).weight(.bold))
                                    .foregroundColor(.white)
                                    .offset(x: -80.50, y: -363.50)
            
        }
        .frame(width: 393, height: 852)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.10, green: 0.35, blue: 0.06), Color(red: 0.08, green: 0.19, blue: 0.08)]), startPoint: .top, endPoint: .bottom)
        )
    }
}
    


// CHOOSE YOUR BOROUGH
struct SixthView: View {
    var body: some View {
        ZStack() {
            Group {
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 222, height: 221)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08))
                    .offset(x: 196.50, y: 186.50)
                    .opacity(0.60)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 222, height: 221)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08))
                    .offset(x: 30.50, y: 425.50)
                    .opacity(0.60)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 293, height: 309)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08))
                    .offset(x: -127, y: 358.50)
                    .opacity(0.50)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 193, height: 39)
                    .background(Color(red: 0.22, green: 0.54, blue: 0.17).opacity(0.50))
                    .offset(x: 0, y: -144.50)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                    )
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 193, height: 39)
                    .background(Color(red: 0.22, green: 0.54, blue: 0.17).opacity(0.50))
                    .offset(x: 0, y: -6.50)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                    )
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 193, height: 39)
                    .background(Color(red: 0.22, green: 0.54, blue: 0.17).opacity(0.50))
                    .offset(x: 0, y: 62.50)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                    )
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 193, height: 39)
                    .background(Color(red: 0.22, green: 0.54, blue: 0.17).opacity(0.50))
                    .offset(x: 0, y: -75.50)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                    )
                
                ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                                   NavigationLink(destination: SeventhView()) {
                                       Text("Choose Borough")
                                           .font(Font.custom("Khula", size: 24).weight(.bold))
                                           .foregroundColor(.white)
                                           .offset(x: 0.50, y: -236.50)
                                   }
                ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                    
                Text("Bronx")
                    .font(Font.custom("Khula", size: 16).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: -75)
                Text("Manhattan")
                    .font(Font.custom("Khula", size: 16).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: -6)
                Text("Queens")
                    .font(Font.custom("Khula", size: 16).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: 64)
            };Group {
                Text("Brooklyn")
                    .font(Font.custom("Khula", size: 16).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: -145)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 193, height: 39)
                    .background(Color(red: 0.22, green: 0.54, blue: 0.17).opacity(0.50))
                    .offset(x: 0, y: 131.50)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                    )
                Text("Staten Island")
                    .font(Font.custom("Khula", size: 16).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: 133)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 290, height: 56)
                    .background(Color(red: 0.22, green: 0.54, blue: 0.17).opacity(0.50))
                    .offset(x: 2.50, y: -237)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                    )
                Text("Choose Your Borough:")
                    .font(Font.custom("Khula", size: 24).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0.50, y: -236.50)
            
                Image(systemName: "map") // our map logo
                                    .resizable()
                                    .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                                    .frame(width: 36, height: 36) // Set a fixed size for visibility
                                    .foregroundColor(.white) // Ensure symbol color is visible
                                    .offset(x: 144.50, y: -376) // Adjust position as needed
                                
                Image(systemName: "figure.walk.diamond") // our app logo
                                        .resizable()
                                        .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                                        .frame(width: 25, height: 25) // Set a fixed size for visibility
                                        .foregroundColor(.yellow) // Ensure symbol color is visible
                                        .offset(x: -140.50, y: -363.50) // Adjust position as needed
                                    
                                    Text("CityFixer")
                                        .font(Font.custom("Khula", size: 20).weight(.bold))
                                        .foregroundColor(.white)
                                        .offset(x: -80.50, y: -363.50)
            }
        }
        .frame(width: 393, height: 852)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.10, green: 0.35, blue: 0.06), Color(red: 0.08, green: 0.19, blue: 0.08)]), startPoint: .top, endPoint: .bottom)
        )
    }
}
    


// AFTER SUCCESSFUL LOGIN
struct FifthView: View {
    var body: some View {
        ZStack() {
            Group {
                ZStack() {

                }
                Image(systemName: "map") // our app logo
                    .resizable()
                    .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                    .frame(width: 36, height: 36) // Set a fixed size for visibility
                    .foregroundColor(.white) // Ensure symbol color is visible
                    .offset(x: 144.50, y: -376) // Adjust position as needed
                
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 179, height: 175)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.70))
                    .offset(x: -162, y: -363.50)
                Circle()
                    .foregroundColor(.clear)
                    .frame(width: 136, height: 130)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.80))
                    .offset(x: -55.50, y: -417)
 
                Image(systemName: "instagram") // instagram symbol
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 34, height: 33)
                    .foregroundColor(.white)
                    .offset(x: -39.50, y: 282.50)
                
                Image(systemName: "twitter") // twitter symbol
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 33, height: 30)
                    .foregroundColor(.white)
                    .offset(x: 39, y: 283)
                
                Image(systemName: "linkedin") // linkedin symbol
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 33, height: 30)
                    .foregroundColor(.white)
                    .offset(x: 0, y: 283)
                
                Text("CityFixer")
                    .font(Font.custom("Khula", size: 20).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0.50, y: 373.50)
                
                Image(systemName: "mappin.and.ellipse") // location symbol as decoration above "Get Started"
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 72)
                    .foregroundColor(.white)
                    .offset(x: 0.50, y: 1)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 277, height: 66)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08).opacity(0.80))
                    .offset(x: 0, y: 87)
                
                ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                                   NavigationLink(destination: SixthView()) {
                                       Text("Click to Get Started")
                                           .font(Font.custom("Khula", size: 20).weight(.bold))
                                           .foregroundColor(.white)
                                           .offset(x: 0, y: 82)
                                   }
                ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                            
                Text("Click To Get Started")
                    .font(Font.custom("Khula", size: 20).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: 82)
            };Group {
                Text("Back To Sign In")
                    .font(Font.custom("Khula", size: 10))
                    .foregroundColor(.white)
                    .offset(x: 0.50, y: 140)
                Text("Welcome, Zuzanna")
                    .font(Font.custom("Khula", size: 36).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0.50, y: -155)
                Text("Ready to help your community?")
                    .font(Font.custom("Khula", size: 15).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0.50, y: -105.50)
                    .opacity(0.70)
                
                Image(systemName: "figure.walk.diamond") // our app logo
                    .resizable()
                    .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                    .frame(width: 162, height: 139) // Set a fixed size for visibility
                    .foregroundColor(.yellow) // Ensure symbol color is visible
                    .offset(x: 0, y: 0) // Adjust position as needed
                
                Image(systemName: "map") // our app logo
                                    .resizable()
                                    .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                                    .frame(width: 36, height: 36) // Set a fixed size for visibility
                                    .foregroundColor(.white) // Ensure symbol color is visible
                                    .offset(x: 144.50, y: -376) // Adjust position as needed
                                
                                    
            }
        }
        .frame(width: 393, height: 852)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.10, green: 0.35, blue: 0.06), Color(red: 0.08, green: 0.19, blue: 0.08)]), startPoint: .top, endPoint: .bottom)
        )
    }
}
    
    
   

// AFTER RECOVERY EMAIL WAS SENT
struct FourthView: View {
    var body: some View {
        ZStack() {
            Group {
                Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 222, height: 221)
                    .background(Color(red: 0.22, green: 0.54, blue: 0.17))
                    .offset(x: 131.50, y: 385.50)
                    .opacity(0.60)
                Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 293, height: 309)
                    .background(Color(red: 0.22, green: 0.54, blue: 0.17))
                    .offset(x: -4, y: 364.50)
                    .opacity(0.50)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 32, height: 32)
                    .offset(x: -101.50, y: 112)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 328, height: 194)
                    .background(Color(red: 0.08, green: 0.19, blue: 0.08))
                    .cornerRadius(21)
                    .offset(x: 0.50, y: -176)
                    .opacity(0.60)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 302, height: 49)
                    .background(Color(red: 0.22, green: 0.37, blue: 0.19))
                    .offset(x: 0.50, y: -145.50)
                Text("Enter Code")
                    .font(Font.custom("Khula", size: 15).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: -30.50, y: -132.50)
                    .opacity(0.60)
                
                
                ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                NavigationLink(destination: FifthView()) {
                    Text("Enter Code")
                        .font(Font.custom("Khula", size: 15).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: -30.50, y: -132.50)
                        .opacity(0.60)
                }
                ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 300, height: 0)
                    .overlay(
                        Rectangle()
                            .stroke(
                                Color(red: 1, green: 1, blue: 1).opacity(0.50), lineWidth: 0.50
                            )
                    )
                    .offset(x: -0.50, y: 70.99)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 264, height: 62)
                    .background(Color(red: 0.10, green: 0.25, blue: 0.08).opacity(0.80))
                    .cornerRadius(14)
                    .offset(x: -0.50, y: 117)
                Text("Sign In with Apple ID")
                    .font(Font.custom("Khula", size: 16).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: 116.50)
            };Group {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 288, height: 51)
                    .background(Color(red: 0.16, green: 0.38, blue: 0.12))
                    .cornerRadius(14)
                    .offset(x: -0.50, y: 26.50)
                Text("Send Code Again")
                    .font(Font.custom("Khula", size: 24).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: -3.50, y: 26.50)
                Text("Check Your Inbox/ Texts")
                    .font(Font.custom("Khula", size: 24).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: -8.50, y: -212.50)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 49, height: 47)
                    .background(
                        AsyncImage(url: URL(string: "https://via.placeholder.com/49x47"))
                    )
                    .offset(x: -151, y: -363.50)
                    .blendMode(.lighten)
                Text("CityFixer")
                    .font(Font.custom("Khula", size: 20).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: -80.50, y: -363.50)
            }
        }
        .frame(width: 393, height: 852)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.10, green: 0.35, blue: 0.06), Color(red: 0.08, green: 0.19, blue: 0.08)]), startPoint: .top, endPoint: .bottom)
        )
    }
}
    
    
    
    
    // FORGOT PASSWORD PAGE
    struct ThirdView: View {
        var body: some View {
            ZStack() {
                Group {
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 222, height: 221)
                        .background(Color(red: 0.22, green: 0.54, blue: 0.17))
                        .offset(x: 131.50, y: 385.50)
                        .opacity(0.60)
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 293, height: 309)
                        .background(Color(red: 0.22, green: 0.54, blue: 0.17))
                        .offset(x: -4, y: 364.50)
                        .opacity(0.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 328, height: 194)
                        .background(Color(red: 0.08, green: 0.19, blue: 0.08))
                        .cornerRadius(21)
                        .offset(x: 0.50, y: -176)
                        .opacity(0.60)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 32, height: 32)
                        .offset(x: -101.50, y: 112)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 302, height: 49)
                        .background(Color(red: 0.22, green: 0.37, blue: 0.19))
                        .offset(x: 0.50, y: -145.50)
                    Text("Enter E-mail/Phone Number")
                        .font(Font.custom("Khula", size: 15).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: -30.50, y: -132.50)
                        .opacity(0.60)
                    
                    
                    ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                    NavigationLink(destination: FourthView()) {
                        Text("Enter E-mail/Phone Number")
                            .font(Font.custom("Khula", size: 15).weight(.bold))
                            .foregroundColor(.white)
                            .offset(x: -30.50, y: -132.50)
                            .opacity(0.60)
                    }
                    ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                    
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 300, height: 0)
                        .overlay(
                            Rectangle()
                                .stroke(
                                    Color(red: 1, green: 1, blue: 1).opacity(0.50), lineWidth: 0.50
                                )
                        )
                        .offset(x: -0.50, y: 70.99)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 264, height: 62)
                        .background(Color(red: 0.10, green: 0.25, blue: 0.08).opacity(0.80))
                        .cornerRadius(14)
                        .offset(x: -0.50, y: 117)
                    
                    // APPLE LOGO
                    Text("Sign In with Apple ID")
                        .font(Font.custom("Khula", size: 16).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: 0, y: 116.50)
                    
                    Image(systemName: "apple.logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                        .frame(width: 25, height: 25) // Set a fixed size for visibility
                        .foregroundColor(.white) // Ensure symbol color is visible
                        .offset(x: -93, y: 114) // Adjust position as needed
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 288, height: 51)
                        .background(Color(red: 0.16, green: 0.38, blue: 0.12))
                        .cornerRadius(14)
                        .offset(x: -0.50, y: 26.50)
                    Text("Sign In")
                        .font(Font.custom("Khula", size: 24).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: 0, y: 26.50)
                    ZStack() {
                        
                    }
                    Image(systemName: "figure.walk.diamond") // our app logo
                        .resizable()
                        .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                        .frame(width: 25, height: 25) // Set a fixed size for visibility
                        .foregroundColor(.yellow) // Ensure symbol color is visible
                        .offset(x: -140.50, y: -363.50) // Adjust position as needed
                    
                    Text("CityFixer")
                        .font(Font.custom("Khula", size: 20).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: -80.50, y: -363.50)
                }
            }
            .frame(width: 393, height: 852)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(red: 0.10, green: 0.35, blue: 0.06), Color(red: 0.08, green: 0.19, blue: 0.08)]), startPoint: .top, endPoint: .bottom)
            )
        }
    }
    
    
    
    
    
    
    // LOGIN PAGE
    struct SecondView: View {
        @Binding var showThirdView: Bool
        
        var body: some View {
            ZStack() {
                Group {
                    Circle()
                        .foregroundColor(Color(red: 0.22, green: 0.54, blue: 0.17))
                        .frame(width: 222, height: 222) // Set width and height to the same value for a circle
                        .offset(x: 131.50, y: 385.50)
                        .opacity(0.60)
                    Circle()
                        .foregroundColor(Color(red: 0.22, green: 0.54, blue: 0.17))
                        .frame(width: 293, height: 293) // Set width and height to the same value for a circle
                        .offset(x: -4, y: 364.50)
                        .opacity(0.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 336, height: 429)
                        .background(Color(red: 0.08, green: 0.19, blue: 0.08))
                        .offset(x: -0.50, y: -46.50)
                        .opacity(0.50)
                    ZStack() {
                        
                    }
                    .frame(width: 10, height: 10)
                    .background(Color(red: 1, green: 1, blue: 1).opacity(0))
                    .offset(x: 38.50, y: -27)
                    .opacity(0.70)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 32, height: 32)
                        .offset(x: -101.50, y: 112)
                    Text("Sign In")
                        .font(Font.custom("Khula", size: 36).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: 0.50, y: -211)
                        .onTapGesture {
                            withAnimation {
                                showThirdView.toggle()
                            }
                        }
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 302, height: 49)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.20))
                        .offset(x: 0.50, y: -145.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 302, height: 49)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.20))
                        .offset(x: 0.50, y: -68.50)
                    Text("Username")
                        .font(Font.custom("Khula", size: 15).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: -85.50, y: -132.50)
                        .opacity(0.60)
                    Text("Password")
                        .font(Font.custom("Khula", size: 15).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: -85.50, y: -58)
                        .opacity(0.60)
                }; Group {
                    Text("Forgot password?")
                        .font(Font.custom("Khula", size: 12).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: 98.50, y: -25.50)
                        .opacity(0.70)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 300, height: 0)
                        .overlay(
                            Rectangle()
                                .stroke(
                                    Color(red: 1, green: 1, blue: 1).opacity(0.50), lineWidth: 0.50
                                )
                        )
                        .offset(x: -0.50, y: 70.99)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 264, height: 62)
                        .background(Color(red: 0.10, green: 0.25, blue: 0.08).opacity(0.80))
                        .cornerRadius(14)
                        .offset(x: -0.50, y: 117)
                    
                    
                    ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                    NavigationLink(destination: ThirdView()) {
                        Text("Forgot password?")
                            .font(Font.custom("Khula", size: 12).weight(.bold))
                            .foregroundColor(.white)
                            .offset(x: 98.50, y: -25.50)
                            .opacity(0.70)
                    }
                    ///////////////////////////////// BUTTON TO TAKE YOU TO ANOTHER SCREEN ///////////////////////////////////////
                    
                    // APPLE LOGO
                    Text("Sign In with Apple ID")
                        .font(Font.custom("Khula", size: 16).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: 0, y: 116.50)
                    
                    Image(systemName: "apple.logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                        .frame(width: 25, height: 25) // Set a fixed size for visibility
                        .foregroundColor(.white) // Ensure symbol color is visible
                        .offset(x: -93, y: 114) // Adjust position as needed
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 288, height: 51)
                        .background(Color(red: 0.16, green: 0.38, blue: 0.12))
                        .cornerRadius(14)
                        .offset(x: -0.50, y: 26.50)
                    Text("Sign In")
                        .font(Font.custom("Khula", size: 24).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: 0, y: 26.50)
                    ZStack() {
                        
                    }
                    Image(systemName: "figure.walk.diamond") // our app logo
                        .resizable()
                        .aspectRatio(contentMode: .fit) // Ensure the symbol fits within the frame
                        .frame(width: 25, height: 25) // Set a fixed size for visibility
                        .foregroundColor(.yellow) // Ensure symbol color is visible
                        .offset(x: -140.50, y: -363.50) // Adjust position as needed
                    
                    Text("CityFixer")
                        .font(Font.custom("Khula", size: 20).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: -80.50, y: -363.50)
                }
            }
            .frame(width: 393, height: 852)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(red: 0.10, green: 0.35, blue: 0.06), Color(red: 0.08, green: 0.19, blue: 0.08)]), startPoint: .top, endPoint: .bottom)
            )
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

