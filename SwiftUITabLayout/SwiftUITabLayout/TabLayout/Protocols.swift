//
//  Protocols.swift
//  SwiftUITabLayout
//
//  Created by Sanjeev Gautam on 26/11/20.
//

import Foundation
import SwiftUI

// Tag View Protocol to design UI
protocol TagViewProtocol {
    var textColor: Color { get }
    var backgroundColor: Color { get }
    var borderColor: Color { get }
    var borderWidth: CGFloat { get }
    var cornerRadious: CGFloat { get }
}
