//
//  MainMenuView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import SwiftUI

struct MainMenuView: View {
    
    @ObservedObject var vm: ProjectARViewModel
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 140, maximum: 300))]
    
    var body: some View {
        VStack {
            Text("Main Menu")
                .font(.largeTitle)
  
            LazyVGrid(columns: columns) {
                // MARK: - Scene 1
                Button {
                    withAnimation(.spring()) {
                        vm.reality.indexAR = 1
                        vm.reality.isShowRealityView = true
                        vm.reality.isShowRotationRow.toggle()
                    }
                } label: {
                    RowMenuView(image: Image(systemName: "1.circle"), name: "One", isShowRotation: $vm.reality.isShowRotationRow)
                }
                // MARK: - Scene 2
                Button {
                    withAnimation(.spring()) {
                        vm.reality.indexAR = 2
                        vm.reality.isShowRealityView = true
                        vm.reality.isShowRotationRow.toggle()
                    }
                } label: {
                    RowMenuView(image: Image(systemName: "2.circle"), name: "Two", isShowRotation: $vm.reality.isShowRotationRow)
                }
            }
            .padding()
            Spacer()

        }
    }
}










struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView(vm: ProjectARViewModel())
    }
}
