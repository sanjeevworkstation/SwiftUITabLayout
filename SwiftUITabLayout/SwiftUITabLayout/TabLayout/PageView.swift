//
//  SingleTabPageView.swift
//  SwiftUITabLayout
//
//  Created by Sanjeev Gautam on 27/11/20.
//

import SwiftUI

//MARK:- View
struct PageView: View {
    var pageIndex: Int
    
    var body: some View {
        Text("Page Number: \(pageIndex+1)")
    }
}

//MARK:- Preview
struct SingleTabPageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pageIndex: 0)
    }
}
