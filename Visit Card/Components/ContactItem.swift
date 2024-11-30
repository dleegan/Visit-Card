//
//  ContactItem.swift
//  Visit Card
//
//  Created by dleegan on 30/11/2024.
//

import SwiftUI

struct ContactItem: View {
    let iconName: String
    let name: LocalizedStringKey

    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundStyle(.orange)
                .padding(10)
                .background(
                    Circle()
                        .foregroundStyle(.orange.opacity(0.2))
                )

            Text(name)
                .foregroundStyle(.blue)
        }
    }
}

#Preview {
    ContactItem(iconName: "envelope", name: "leegandupros@gmail.com")
}
