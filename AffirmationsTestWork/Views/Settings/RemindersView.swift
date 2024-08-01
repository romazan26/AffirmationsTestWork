//
//  RemindersView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 01.08.2024.
//

import SwiftUI

struct RemindersView: View {
    @StateObject var vm: SettingsViewModel
    var body: some View {
        //MARK: - Time
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
            Color.gray.opacity(0.1).ignoresSafeArea()
            VStack{
                //MARK: - Reminders
                Toggle("Reminders", isOn: $vm.reminders)
                Divider()
                //MARK: - start
                HStack{
                    Text("Start at")
                    DatePicker("", selection: $vm.startAt, displayedComponents: [.hourAndMinute])
                }
                Divider()
                //MARK: - start
                HStack{
                    Text("End at")
                    DatePicker("", selection: $vm.endAt, displayedComponents: [.hourAndMinute])
                }
                Divider()
                
                //MARK: - Count motivation
                VStack(alignment: .leading){
                    HStack {
                        Text("How many")
                        Spacer()
                        Text(String(format: "%.0f", vm.countReminders * 10))
                    }
                    Slider(value: $vm.countReminders)
                }.padding(.vertical, 20)
            }
            
            .padding()
            .background(Color.backStack.cornerRadius(15))
            .padding()
            .padding(.top, 30)
            .navigationTitle("Reminders")
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationView {
        RemindersView(vm: SettingsViewModel())
    }
}
