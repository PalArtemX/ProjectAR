//
//  MainMenuView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import SwiftUI

struct MainMenuView: View {
    
    @ObservedObject var vm: ProjectARViewModel
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 200, maximum: 300))]
    let numberOfScenes = 5
    
    var body: some View {
        VStack {
            // MARK: - Main Menu
            Text("Main Menu")
                .font(.largeTitle)
  
            
            // MARK: - SCENS
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 50) {
                   
                    ForEach(1..<numberOfScenes) { index in
                        Button {
                            withAnimation(.spring()) {
                                vm.reality.indexAR = index
                                vm.reality.isShowRealityView = true
                                vm.reality.isShowRotationRow.toggle()
                            }
                        } label: {
                            RowMenuView(image: Image(systemName: "\(index).circle"), vm: vm)
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
