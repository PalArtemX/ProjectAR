//
//  MainMenuView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import SwiftUI

struct MainMenuView: View {
    
    @ObservedObject var vm: ARViewModel
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 260, maximum: 350))]
    
    // MARK: - Number Of Scenes +1
    let numberOfScenes = 5
    
    var body: some View {
        VStack {
            // MARK: - SCENS
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(1..<numberOfScenes) { i in
                        Button {
                            withAnimation {
                                vm.reality.indexAR = i
                                vm.reality.isShowRealityView = true
                            }
                        } label: {
                            RowMenuView(systemName: "\(i).circle", image: "\(i)", vm: vm)
                        }
                    }
                }
            }
        }
    }
}










struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView(vm: ARViewModel())
    }
}
