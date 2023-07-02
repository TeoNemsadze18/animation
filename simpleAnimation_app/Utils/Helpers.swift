//
//  Helpers.swift
//  simpleAnimation_app
//
//  Created by teona nemsadze on 29.06.23.
//

import Foundation
import SwiftUI

func calcTimeSince(data: Date) -> Int {
    let seconds = Int(-data.timeIntervalSinceNow)
    return seconds
}

extension View {
    func centerH() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
}
