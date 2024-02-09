//
//  ContentView.swift
//  AttachUikitWithSwiftUi
//
//  Created by Diab on 31/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State var isSheet :Bool = false
    @State var screenColor:UIColor?
    var body: some View {
            ZStack{
                LinearGradient(colors: [Color(screenColor ?? .white),.white,Color(screenColor ?? .white)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack(spacing:10) {
                    Text("Swift Ui View")
                        .fontWeight(.semibold)
                        .font(.system(size: 22))
                        .padding(.top,19)
                        .foregroundStyle(.black)
                    HStack{
                        Text("Selected Color will be Gradient with white Color")
                            .fontWeight(.semibold)
                            .font(.system(size: 22))
                            .multilineTextAlignment(.center)
                    }.padding(.top,40)
                    Spacer().frame( height: 100)
                    Image(systemName: "apple.logo")
                        .imageScale(.large)
                        .font(.system(size: 100))
                        .foregroundStyle(.black)
                    Text(screenColor?.accessibilityName ?? "No Color Selected")
                        .fontWeight(.semibold)
                        .font(.system(size: 22))
                    Spacer()
                    Button(action: {
                        isSheet.toggle()
                    }, label: {
                        Text("Click On it to select color")
                            .frame(width: 300,height: 60)
                            .foregroundColor(.white)
                            .font(.system(size: 18,weight: .bold))
                            .background(
                                Color.cyan)
                            .cornerRadius(8)
                    })
                    Spacer()
                    
                }.shadow(radius: 20)
            }
            .sheet(isPresented: $isSheet) {
                ViewControllerSwiftUi(color: $screenColor)
            }
            
        
   
    }
}

#Preview {
    ContentView()
}
