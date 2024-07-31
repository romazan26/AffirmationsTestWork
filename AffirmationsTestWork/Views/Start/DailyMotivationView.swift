//
//  DailyMotivationView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct DailyMotivationView: View {
    @StateObject var vm: ViewModel
    var body: some View {
        VStack {
            
            //MARK: - Title
            Text("Get daily motivation")
                .multilineTextAlignment(.center)
                .font(.system(size: 32, weight: .bold))
            
            Text("We will send you affirmations selected especially for you")
                .padding()
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .font(.system(size: 18))
            
            //MARK: - Time
            VStack{
                //MARK: - start
                HStack{
                    Text("Start at")
                    DatePicker("", selection: $vm.simpleStartTime, displayedComponents: [.hourAndMinute])
                }
                Divider()
                //MARK: - start
                HStack{
                    Text("End at")
                    DatePicker("", selection: $vm.simpleEndTime, displayedComponents: [.hourAndMinute])
                }
                Divider()
                
                //MARK: - Count motivation
                VStack(alignment: .leading){
                    HStack {
                        Text("How many")
                        Spacer()
                        Text(String(format: "%.0f", vm.simpleCountMotivation * 10))
                    }
                    Slider(value: $vm.simpleCountMotivation)
                }.padding(.vertical, 20)
            }
            .padding()
            .background(Color.white.cornerRadius(15))
        }
    }
}

#Preview {
    DailyMotivationView(vm: ViewModel())
}
