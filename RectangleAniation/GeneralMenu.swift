//
//  GeneralMenu.swift
//  RectangleAniation
//
//  Created by Дима Васильев on 10.11.2023.
//

import SwiftUI

struct GeneralMenu: View {
    @State var isPressRectangle = false
    
    var body: some View {
        ZStack{
            Color("backgroundColor")
                .ignoresSafeArea()
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isPressRectangle ? 400 : 300, height: isPressRectangle ? 300 : 200, alignment: .center)
                    .foregroundStyle(Color("cardColor"))
                    .shadow(color: .pink, radius: 3, x: 0, y: 0)
                Text("Gear")
            }.offset(y: isPressRectangle ? 60 : 0)
                .opacity(isPressRectangle ? 1 : 0)
            
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: isPressRectangle ? 400 : 300, height: isPressRectangle ? 300 : 200, alignment: .center)
                        .foregroundStyle(Color("cardColor"))
                        .shadow(color: .pink, radius: 3, x: 0, y: 0)
                    Image(systemName: "gear")
                        .font(.largeTitle)
                        .foregroundColor(.pink)
                }.offset(y: isPressRectangle ? -268 : 0)
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.9, blendDuration: 0)) {
                isPressRectangle.toggle()
            }
        }
        
    }
}

struct GeneralMenu_Previews: PreviewProvider {
    static var previews: some View {
        GeneralMenu()
    }
}
