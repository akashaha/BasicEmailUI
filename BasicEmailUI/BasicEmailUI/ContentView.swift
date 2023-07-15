//
//  ContentView.swift
//  BasicEmailUI
//
//  Created by Arman Akash on 7/16/23.
//

import SwiftUI

struct ContentView: View {
    @State private var textFieldForTousername = String()
    @State private var textFieldForSubject = String()
    @State private var text = String()
    var body: some View {
        
        NavigationView{
            
            VStack {
                // For To(username)
                TextField("To(username)", text: $textFieldForTousername)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .padding(.bottom)
                // For Suject
                TextField("Subject", text: $textFieldForSubject)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .padding(.bottom)
                
                ZStack(alignment: .topLeading) {
                            TextEditor(text: $text)
                                .frame(height: UIScreen.main.bounds.height * 0.3)
                                .border(Color.gray)
                                .cornerRadius(8)
                                .background(Color.gray.opacity(0.3))
                            
                            if text.isEmpty {
                                placeholderView()
                                    .padding(.horizontal, 8)
                            }
                        } //: Zstack
                             
                Spacer()
                               
                
                HStack{
                    Spacer()
                    // Send Button
                    Button {
                        // action code
                    } label: {
//                        ZStack{
//                            Circle()
//                                .frame(width: 60, height: 60, alignment: .center)
//                                .foregroundColor(.white)
//                            Image(systemName: "paperplane.circle.fill")
//                                .resizable()
//                                .frame(width: 60, height: 60, alignment: .center)
//                                .padding()
//                        }
                        
                         
                       Image(systemName: "paperplane.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .padding()
//                            .clipShape(Circle())
                    }
                    .padding(.top,40)
                    
                    //: Button

                } //: HStack
            } //: VStack
            .navigationBarItems(leading: Text("Compose Email"), trailing: Button(action: {
                // acotion code for attached file or media
            }, label: {
                Image(systemName: "paperclip")
            }))
            .padding()

        } //: NavigationView
    }
    private func placeholderView() -> Text {
           Text("Write your email here")
               .foregroundColor(.gray)
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

