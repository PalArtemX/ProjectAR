//
//  ButtonMenuView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 02.11.2021.
//

import SwiftUI

struct ButtonMenuView: View {
    
    @ObservedObject var vm: ARViewModel
    
    var body: some View {
        VStack {
            Spacer()
            Button {
                vm.reality.isShowRealityView = false
            } label: {
                Image(systemName: "filemenu.and.selection")
                Text("Menu")
            }
            .buttonStyle(.bordered)
            .padding(.bottom, 70)
        }
    }
}









struct ButtonMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonMenuView(vm: ARViewModel())
    }
}
