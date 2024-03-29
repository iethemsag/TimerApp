//
//  ProgressBar.swift
//  TimerApp
//
//  Created by Ibrahim Ethem Sag on 22.01.2024.
//

import SwiftUI

struct ProgressBarView: View {
    //MARK: - Bindig properties
    @Binding var progress : TimeInterval
    @Binding var goal : Double
    //MARK: - View body
    var body: some View {
        ZStack{
            //Default Circle
            defaultCircle
            // overlap Circle
            prograssCircle
        }
    }
    
    private var defaultCircle: some View{
        Circle()
            .stroke(style: StrokeStyle(lineWidth: 20,lineCap: .butt,dash: [2,6]))
            .fill(Color.gray)
            .rotationEffect(Angle(degrees: -90))
            .frame(width: 300,height: 300)
    }
    private var prograssCircle: some View{
        Circle()
            .trim(from: 0.0, to: CGFloat(progress) / CGFloat(goal))
            .stroke(style: StrokeStyle(lineWidth: 20,lineCap: .butt,dash: [2,6]))
            .fill(Color(red: 236/255, green: 230/255, blue: 0/255))
            .animation(.spring(), value: progress)
            .rotationEffect(Angle(degrees: -90))
            .frame(width: 300,height: 300)
    }
}

#Preview {
    ProgressBarView(progress: .constant(0), goal: .constant(0))
}
