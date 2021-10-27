//
//  MainMenuView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import SwiftUI

struct MainMenuView: View {
    
    @Binding var isShowRealityView: Bool
    @ObservedObject var vm: ProjectARViewModel
    
    var body: some View {
        VStack {
            Text("Main Menu")
                .font(.largeTitle)
            Spacer()
            
            ScrollView {
                
            }
            
            HStack {
                Button {
                    vm.indexAR = 1
                    isShowRealityView = true
                } label: {
                    Text("AR View1")
                }
                
                Button {
                    vm.indexAR = 2
                    isShowRealityView = true
                } label: {
                    Text("AR View2")
            }
            }

        }
    }
}










struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView(isShowRealityView: .constant(false), vm: ProjectARViewModel())
    }
}
