//
//  CalculatorView.swift
//  SwiftUIJam_Nov_2021
//
//  Created by Joel Sereno on 11/5/21.
//

import SwiftUI

struct CalculatorView: View {
          
    @ObservedObject var viewModel = CalculatorViewModel()
    
    //MARK: - View
    var body: some View {
        
        VStack {
            TempDisplayView() //TODO: create real DisplayView
            
            VStack {
                HStack {
                    CalculatorButton(buttonText: "7", buttonTextColor: Color.white, buttonColor: Color.black, enumState: Symbols.seven, viewModel: viewModel)
                    CalculatorButton(buttonText: "8", buttonTextColor: Color.white, buttonColor: Color.black, enumState: Symbols.eight, viewModel: viewModel)
                    CalculatorButton(buttonText: "9", buttonTextColor: Color.white, buttonColor: Color.black, enumState: Symbols.nine,viewModel: viewModel)
                    CalculatorButton(buttonText: "x", buttonTextColor: Color.white, buttonColor: Color.orange, enumState: Symbols.multiply, viewModel: viewModel)
                }
                
                HStack {
                    CalculatorButton(buttonText: "4", buttonTextColor: Color.white, buttonColor: Color.black, enumState: Symbols.four, viewModel: viewModel)
                    CalculatorButton(buttonText: "5", buttonTextColor: Color.white, buttonColor: Color.black, enumState: Symbols.five, viewModel: viewModel)
                    CalculatorButton(buttonText: "6", buttonTextColor: Color.white, buttonColor: Color.black, enumState: Symbols.six, viewModel: viewModel)
                    CalculatorButton(buttonText: "-", buttonTextColor: Color.white, buttonColor: Color.orange, enumState: Symbols.minus, viewModel: viewModel)
                }
                HStack {
                    CalculatorButton(buttonText: "1", buttonTextColor: Color.white, buttonColor: Color.black, enumState: Symbols.one, viewModel: viewModel)
                    CalculatorButton(buttonText: "2", buttonTextColor: Color.white, buttonColor: Color.black, enumState: Symbols.two, viewModel: viewModel)
                    CalculatorButton(buttonText: "3", buttonTextColor: Color.white, buttonColor: Color.black, enumState: Symbols.three, viewModel: viewModel)
                    CalculatorButton(buttonText: "+", buttonTextColor: Color.white, buttonColor: Color.orange, enumState: Symbols.plus, viewModel: viewModel)
                }

                HStack {

                    CalculatorButton(buttonText: "0", buttonTextColor: Color.white, buttonColor: Color.black, enumState: Symbols.zero, viewModel: viewModel)
                    //Empty button, needs update
                    CalculatorButton(buttonText: "", buttonTextColor: Color.white, buttonColor: Color.black, enumState: Symbols.zero, viewModel: viewModel)

                    //TODO: Need more cases
                    CalculatorButton(buttonText: ".", buttonTextColor: Color.white, buttonColor: Color.black, enumState: Symbols.zero, viewModel: viewModel)
                    CalculatorButton(buttonText: "=", buttonTextColor: Color.white, buttonColor: Color.orange, enumState: Symbols.zero, viewModel: viewModel)
                }

            }
            .padding()
        }
        
    }// end CalculatorView
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}

struct TempDisplayView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 3.0)
                .frame(height: UIScreen.main.bounds.height / 5)
                .padding(.horizontal)
                .foregroundColor(Color.gray)
            Text("Display Area")
                .foregroundColor(.primary)
                .font(.title)
        }
    }
}
