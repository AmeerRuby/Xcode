//
//  ContentView.swift
//  CacuBaTau2
//
//  Created by Nguyễn Việt Thái on 13/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State var strDis: String = ""
    @State var strDisOld: String = ""
    @State var strCal: String = ""
    var body: some View {
        ZStack {
            LinearGradient(colors: [.green,.cyan], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
                VStack {
                    ZStack{
                        
                        List{
                            Text(strDisOld)
                                .listRowBackground(LinearGradient(colors: [.green,.cyan], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea())
                                .padding()
                                .font(.system(size:40,weight: .ultraLight))
                                .frame(maxWidth:.infinity,alignment:.trailing)
                        }.scrollContentBackground(.hidden)

                    }
                    Spacer()
                    Text("\(strDis)")
                        .padding()
                        .font(.system(size:40,weight: .ultraLight))
                        .frame(maxWidth:.infinity,alignment:.trailing)
                        .lineLimit(1)
                        .minimumScaleFactor(0.2)
                        .padding()
                    HStack{
                        Button("7"){
                            click7()
                        }
                        .frame(width:100,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.white)
                            .background(.linearGradient(colors: [.orange,.yellow], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(RoundedRectangle(cornerRadius: 50,style:.continuous))
                        Button("8"){
                            click8()
                        }
                        .frame(width:100,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.white)
                            .background(.linearGradient(colors: [.orange,.yellow], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(RoundedRectangle(cornerRadius: 50,style:.continuous))
                        Button("9"){
                            click9()
                        }
                        .frame(width:100,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.white)
                            .background(.linearGradient(colors: [.orange,.yellow], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(RoundedRectangle(cornerRadius: 50,style:.continuous))
                    }
                    HStack{
                        Button("4"){
                            click4()
                        }
                        .frame(width:100,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.white)
                            .background(.linearGradient(colors: [.orange,.yellow], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(RoundedRectangle(cornerRadius: 50,style:.continuous))
                        Button("5"){
                            click5()
                        }
                        .frame(width:100,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.white)
                            .background(.linearGradient(colors: [.orange,.yellow], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(RoundedRectangle(cornerRadius: 50,style:.continuous))
                        Button("6"){
                            click6()
                        }
                        .frame(width:100,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.white)
                            .background(.linearGradient(colors: [.orange,.yellow], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(RoundedRectangle(cornerRadius: 50,style:.continuous))
                    }
                    HStack{
                        Button("3"){
                            click3()
                        }
                        .frame(width:100,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.white)
                            .background(.linearGradient(colors: [.orange,.yellow], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(RoundedRectangle(cornerRadius: 50,style:.continuous))
                        Button("2"){
                            click2()
                        }
                        .frame(width:100,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.white)
                            .background(.linearGradient(colors: [.orange,.yellow], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(RoundedRectangle(cornerRadius: 50,style:.continuous))
                        Button("1"){
                            click1()
                        }
                        .frame(width:100,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.white)
                            .background(.linearGradient(colors: [.orange,.yellow], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(RoundedRectangle(cornerRadius: 50,style:.continuous))
                    }
                    Button("0"){
                        click0()
                    }
                    .frame(width:100,height:80)
                        .font(.system(size:40,weight:.ultraLight))
                        .foregroundColor(.white)
                        .background(.linearGradient(colors: [.orange,.yellow], startPoint: .bottomLeading, endPoint: .topTrailing))
                        .clipShape(RoundedRectangle(cornerRadius: 50,style:.continuous))
                    HStack{
                        Button("C"){
                            clickxoa()
                        }
                        .frame(width:100,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.white)
                            .background(.linearGradient(colors: [.orange,.red], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(RoundedRectangle(cornerRadius: 50,style:.continuous))
                        Button("+"){
                            clickcong()
                        }
                        .frame(width:50,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.red)
                            .background(.linearGradient(colors: [.white,.gray], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(Circle())
                        Button("-"){
                            clicktru()
                        }
                        .frame(width:50,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.red)
                            .background(.linearGradient(colors: [.white,.gray], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(Circle())
                        Button("x"){
                            clicknhan()
                        }
                        .frame(width:50,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.red)
                            .background(.linearGradient(colors: [.white,.gray], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(Circle())
                        Button("÷"){
                            clickchia()
                        }
                        .frame(width:50,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.red)
                            .background(.linearGradient(colors: [.white,.gray], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(Circle())
                        Button("="){
                            clickbang()
                        }
                        .frame(width:80,height:80)
                            .font(.system(size:40,weight:.ultraLight))
                            .foregroundColor(.white)
                            .background(.linearGradient(colors: [.orange,.red], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .clipShape(RoundedRectangle(cornerRadius: 50,style:.continuous))
                    }
                    
                }
                .ignoresSafeArea()
                .minimumScaleFactor(0.2)
            .padding()
            }
        }
    func click7() {
        self.strCal = self.strCal + "7"
        strDis = strCal
    }
    func click8() {
        self.strCal = self.strCal + "8"
        strDis = strCal
    }
    func click9() {
        self.strCal = self.strCal + "9"
        strDis = strCal
    }
    func click4() {
        self.strCal = self.strCal + "4"
        strDis = strCal
    }
    func click5() {
        self.strCal = self.strCal + "5"
        strDis = strCal
    }
    func click6() {
        self.strCal = self.strCal + "6"
        strDis = strCal
    }
    func click3() {
        self.strCal = self.strCal + "3"
        strDis = strCal
    }
    func click2() {
        self.strCal = self.strCal + "2"
        strDis = strCal
    }
    func click1() {
        self.strCal = self.strCal + "1"
        strDis = strCal
    }
    func click0() {
        self.strCal = self.strCal + "0"
        strDis = strCal
    }
    func clickcong() {
        self.strCal = self.strCal + "+"
        strDis = strCal
    }
    func clicktru() {
        self.strCal = self.strCal + "-"
        strDis = strCal
    }
    func clicknhan() {
        self.strCal = self.strCal + "*"
        strDis = strCal
    }
    func clickchia() {
        self.strCal = self.strCal + "/"
        strDis = strCal
    }
    func clickbang() {
        if (strCal == ""){
            
        }
        else{
            var result: Int = 0
            let mathExpression = NSExpression(format: strCal)
            let mathValue = mathExpression.expressionValue(with: nil, context: nil) as? Int
            result = Int(mathValue!)
            self.strCal = self.strCal + "=" + String(result) + "\n"
            strDis = String(result)
            strDisOld = strDisOld + strCal
            strCal = ""
            
        }
    }
    func clickxoa(){
        self.strCal = ""
        self.strDis = self.strCal
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
