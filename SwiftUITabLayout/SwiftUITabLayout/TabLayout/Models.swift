//
//  Model.swift
//  SwiftUITabLayout
//
//  Created by Sanjeev Gautam on 26/11/20.
//

import Foundation
import SwiftUI

// TabLayoutView data model
struct TabDataModel {
    let tabTitles: [String]
    let spacingBetweenTabs: CGFloat
    let paddingLeftRight: CGFloat
    let selectedTabDataModel: SelectedTabDataModel
    let unselectedTabDataModel: UnselectedTabDataModel
}

struct SelectedTabDataModel: TagViewProtocol {
    var textColor: Color
    
    var backgroundColor: Color
    
    var borderColor: Color
    
    var borderWidth: CGFloat
    
    var cornerRadious: CGFloat
}

struct UnselectedTabDataModel: TagViewProtocol {
    var textColor: Color
    
    var backgroundColor: Color
    
    var borderColor: Color
    
    var borderWidth: CGFloat
    
    var cornerRadious: CGFloat
}
