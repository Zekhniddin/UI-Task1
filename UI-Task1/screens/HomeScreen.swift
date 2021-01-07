//
//  HomeScreen.swift
//  UI-Task1
//
//  Created by Зехниддин on 07/01/21.
//

import SwiftUI

struct Images: Identifiable {
    let id = UUID()
    let name: String
}

struct HomeScreen: View {
    let images = [
        Images(name: "photo1"),
        Images(name: "photo2"),
        Images(name: "photo3"),
        Images(name: "photo4"),
        Images(name: "photo5")
    ]
    
    var body: some View {
        NavigationView {
            List(images) { item in
                ZStack {
                    Image(item.name)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 260)
                .clipped()
                .cornerRadius(10)
                .shadow(color: .black, radius: 5)
                .padding(.bottom, 5)
            }
            .listStyle(PlainListStyle())
            .padding(.top, 10)
            
            .navigationBarItems(
                leading: Button(action: { }) {
                    Image("ic_menu")
                },
                trailing: HStack(spacing: 10) {
                    Button(action: { }) {
                        Image("ic_camera")
                    }
                    Button(action: { }) {
                        Image("ic_gallery")
                    }
                }
            )
            .navigationBarTitle("Photos", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
