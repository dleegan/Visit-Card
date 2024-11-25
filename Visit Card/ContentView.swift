//
//  ContentView.swift
//  Visit Card
//
//  Created by dleegan on 25/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

            VStack (spacing: 20) {
                //Profile
                VStack {
                    Image("Profil Picture")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(
                            Circle()
                        )
                    
                    Text("Leegan Dupros")
                        .font(.title)
                        .bold()
                        .foregroundStyle(Color(white: 0.2))
                }
                
                // Open to work
                HStack {
                    Text("Développeur IOS")
                        .font(.headline)
                        .bold()
                        .foregroundStyle(Color(white: 0.5))
                    
                    Spacer()
                    
                    Text("Open to work")
                        .foregroundStyle(.white)
                        .font(.caption)
                        .padding(.all, 5)
                        .background(
                            RoundedRectangle(cornerRadius: 50)
                                .fill(.purple)
                        )
                }
                
                //Description
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sed luctus diam. Maecenas ac sodales nibh. Nulla dictum facilisis mi id varius. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(white: 0.9))
                    .clipShape(
                        RoundedRectangle(cornerRadius: 15)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray, lineWidth: 2)
                    )
                
                //Contact
                VStack (alignment: .leading, spacing: 4) {
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundStyle(.orange)
                            .padding(10)
                            .background(
                                Circle()
                                    .foregroundStyle(.orange.opacity(0.2))
                            )
                        
                        Text("leegandupros@gmail.com")
                            .foregroundStyle(.blue)
                    }
                    
                    HStack {
                        Image(systemName: "link")
                            .foregroundStyle(.orange)
                            .padding(10)
                            .background(
                                Circle()
                                    .foregroundStyle(.orange.opacity(0.2))
                            )
                        
                        Text("[www.dleegan.dev](https://dleegan.dev)")
                            .foregroundStyle(.blue)
                    }
                    
                    HStack {
                        Image(systemName: "phone")
                            .foregroundStyle(.orange)
                            .padding(10)
                            .background(
                                Circle()
                                    .foregroundStyle(.orange.opacity(0.2))
                            )
                        
                        Text("+33 7 67 34 80 80")
                            .foregroundStyle(.blue)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                // Compétences
                VStack (alignment: .leading) {
                    HStack {
                        Text("Swift UI")
                        Spacer()
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        .foregroundStyle(.purple)
                    }
                    
                    HStack {
                        Text("Xcode")
                        Spacer()
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star")
                            Image(systemName: "star")
                        }
                        .foregroundStyle(.purple)
                    }
                    
                    HStack {
                        Text("GitHub")
                        Spacer()
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star")
                        }
                        .foregroundStyle(.purple)
                    }
                }

                Spacer()

                Button {
                    guard let messageAppURL = URL(string: "sms:&body=Bonjour,\nCliquez ici pour voir ma carte de visite : www.dleegan.dev.\nA bientôt,\nLeegan")
                    else { return }
                    if UIApplication.shared.canOpenURL(messageAppURL) {
                        UIApplication.shared.open(messageAppURL)
                    }
                } label: {
                    HStack {
                        Text("Partager")
                        Image(systemName: "arrow.up.right")
                    }
                    .bold()
                    .foregroundStyle(Color.orange)
                    .padding()
                    .background(Color.orange.opacity(0.2))
                    .clipShape(
                        RoundedRectangle(cornerRadius: 50)
                    )
                }

            }
            .padding()
            .background {
                VStack {
                    Ellipse()
                        .fill(
                            Color.orange.opacity(0.2)
                        )
                        .frame(width: 600, height: 300)
                    Spacer()
                }
                .offset(y: -150)
                .ignoresSafeArea()
            }
        }
  
}

#Preview {
    ContentView()
}
