//
//  ContentView.swift
//  SwiftUI-example
//
//  Created by patrick kelly on 2/3/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var env: GlobalState
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 6){
                HStack{
                    Text(env.display)
                        .font(.system(size: 50))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 70, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottomTrailing)
                        .padding(8)
                        .foregroundColor(.white)
                }
                HStack(spacing: 6){
                    if env.display != "0" {
                        self.makeButton(key: .clear, bgColor: Color(white: 0.2, opacity:1.0))
                    }else{
                        self.makeButton(key: .allClear, bgColor: Color(white: 0.2, opacity:1.0))
                    }
                    
                    self.makeButton(key: .plusMinus, bgColor: Color(white: 0.2, opacity:1.0))
                    self.makeButton(key: .percent, bgColor: Color(white: 0.2, opacity:1.0))
                    self.makeButton(key: .divide, bgColor: .green)
                }
                HStack(spacing: 6){
                    self.makeButton(key: .seven)
                    self.makeButton(key: .eight)
                    self.makeButton(key: .nine)
                    self.makeButton(key: .muliply, bgColor: .green)
                }
            
                HStack(spacing: 6){
                    self.makeButton(key: .four)
                    self.makeButton(key: .five)
                    self.makeButton(key: .six)
                    self.makeButton(key: .minus, bgColor: .green)
                }
                
                HStack(spacing: 6){
                    self.makeButton(key: .one)
                    self.makeButton(key: .two)
                    self.makeButton(key: .three)
                    self.makeButton(key: .plus, bgColor: .green)
                }
                
                HStack(spacing: 6){
                    self.makeButton(key: .zero)
                    self.makeButton(key: .dot)
                    self.makeButton(key: .equal, width: 140, bgColor: .green)
                }
                
                Spacer(minLength: 10)
            }
        }
    }
    
    func makeButton(key: CalculatorKey = .zero, width: CGFloat = 70, height: CGFloat = 70, bgColor: Color = Color(white: 0.4)) -> some View {
        return AnyView(
            Button(action: {
                env.keyPressed(key: key)
            }, label: {
                Text(key.rawValue)
                .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(bgColor)
                .cornerRadius(35)
                .font(.system(size: 28))
                .foregroundColor(.white)
        }))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GlobalState())
    }
}



