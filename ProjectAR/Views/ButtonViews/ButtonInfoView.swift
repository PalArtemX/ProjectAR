//
//  ButtonInfoView.swift
//  ProjectAR
//
//  Created by Artem Paliutin on 08.11.2021.
//

import SwiftUI

struct ButtonInfoView: View {
    
    @ObservedObject var vm: ARViewModel
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button {
                    vm.reality.isShowButtonInfo.toggle()
                } label: {
                    Image(systemName: "info.circle")
                        .foregroundColor(.themeColor.red)
                        .font(.title)
                        .opacity(0.5)
                }
            }
        }
        .padding()
    }
}










struct ButtonInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonInfoView(vm: ARViewModel())
    }
}
