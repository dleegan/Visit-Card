//
//  CompetencesItem.swift
//  Visit Card
//
//  Created by dleegan on 30/11/2024.
//

import SwiftUI

struct CompetencesItem: View {
    let name: String
    let rating: Double

    var body: some View {
        HStack {
            Text(name)
            Spacer()
            HStack {
                ForEach(0 ..< 5) { index in
                    Image(systemName: autoStars(index))
                }
            }
            .foregroundStyle(.purple)
        }
        .frame(maxWidth: .infinity)
    }

    private func autoStars(_ index: Int) -> String {
        let rest = rating - Double(index)

        if rest >= 1 {
            return "star.fill"
        } else if rest > 0 {
            return "star.leadinghalf.filled"
        } else {
            return "star"
        }
    }
}

#Preview {
    CompetencesItem(name: "Swift UI", rating: 2.5)
}
