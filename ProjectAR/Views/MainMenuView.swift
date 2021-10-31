//
//  MainMenuView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import SwiftUI

struct MainMenuView: View {
    
    @ObservedObject var vm: ProjectARViewModel
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 260, maximum: 350))]
    
    // MARK: - Number Of Scenes +1
    let numberOfScenes = 5
    
    var body: some View {
        VStack {
            // MARK: - Header Main Menu
//            Text("Main Menu")
//                .font(.largeTitle)
//                .foregroundColor(Color.themeColor.green)
  
            
            // MARK: - SCENS
            
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 30) {
                   
                    ForEach(1..<numberOfScenes) { index in
                        Button {
                            withAnimation(.spring()) {
                                vm.reality.indexAR = index
                                vm.reality.isShowRealityView = true
                                vm.reality.isShowRotationRow.toggle()
                            }
                        } label: {
                            RowMenuView(systemName: "\(index).circle", image: "\(index)", vm: vm)
                        }
                    }
                }
                .padding()
            }
            Spacer()

        }
    }
}










struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView(vm: ProjectARViewModel())
    }
}
