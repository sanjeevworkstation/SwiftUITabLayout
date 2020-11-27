//
//  SingleTabPageView.swift
//  SwiftUITabLayout
//
//  Created by Sanjeev Gautam on 27/11/20.
//

import SwiftUI

//MARK:- View
struct PageView: View {
    
    // Property
    var pageIndex: Int
    
    var body: some View {
        
        // VStack with frame & background color properties
        VStack {
            
            // Added Text with background color & text color properties
            Text("Page Number: \(pageIndex+1)")
                .background(Color(.white))
                .foregroundColor(colorValue())
            
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(self.colorValue())
    }
    
    // Method to create dynamic colors
    private func colorValue() -> Color {
        let val = Double(((self.pageIndex+1)*20))/255
        return Color(red: val, green: 30/255, blue: val, opacity: 1)
    }
}

//MARK:- Preview
struct SingleTabPageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pageIndex: 0)
    }
}
