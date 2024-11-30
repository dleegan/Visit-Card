//
//  ContentView.swift
//  Visit Card
//
//  Created by dleegan on 25/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Profile
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

            // Description
            Text("Développeur iOS passionné, je transforme vos idées en applications élégantes afin d'enrichir l'expérience de vos utilisateurs.")
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

            // Contact
            VStack(alignment: .leading, spacing: 4) {
                ContactItem(iconName: "envelope", name: "leegandupros@gmail.com")
                ContactItem(iconName: "link", name: "[www.dleegan.dev](https://dleegan.dev)")
                ContactItem(iconName: "phone", name: "+33 7 67 34 80 80")
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            // Compétences
            VStack(alignment: .leading, spacing: 10) {
                CompetencesItem(name: "React", rating: 4.5)
                CompetencesItem(name: "GitHub", rating: 3)
                CompetencesItem(name: "Swift UI", rating: 2)
                CompetencesItem(name: "Xcode", rating: 1.5)
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
                .bold().foregroundStyle(Color.orange)
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
