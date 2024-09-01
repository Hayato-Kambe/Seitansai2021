//
//  StageEventTime.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/23.
//

import Foundation

class  TimeInterval1: ObservableObject{
    @Published var count1 = 0
    @Published var time1 = 0
    @Published var test1 = 160600
    var timer : Timer!
    init(){
        self.Timeset1()
        self.startTimer1()
    }
    @objc func Timeset1(){
        let day = Calendar.current.component(.day, from: Date())
        let hour = Calendar.current.component(.hour, from: Date())
        let minute = Calendar.current.component(.minute, from: Date())
        time1 = day*10000+hour*60+minute
        
        if time1<test1 {
            count1 = 0
        }else if time1 < test1+15{
            count1 = 1
        }else if time1 < test1+30{
            count1 = 2
        }else if time1 < test1+45{
            count1 = 3
        }else if time1 < test1+60{
            count1 = 4
        }else if time1 < test1+75{
            count1 = 5
        }else if time1 < test1+90{
            count1 = 6
        }else if time1 < test1+105{
            count1 = 7
        }else if time1 < test1+120{
            count1 = 8
        }else if time1 < test1+135{
            count1 = 9
        }else if time1 < test1+150{
            count1 = 10
        }else if time1 < test1+180{
            count1 = 11//13:00
        }else if time1 < test1+195{
         count1 = 12
        }else if time1 < test1+210{
        count1 = 13
        }else if time1 < test1+225{
            count1 = 14
        }else if time1 < test1+240{
            count1 = 15//14:00
        }else if time1 < test1+255{
            count1 = 16
        }else if time1 < test1+270{
            count1 = 17
        }else if time1 < test1+9990{
            count1 = 18//9:50
        }else if time1 < test1+10005{
            count1 = 19
        }else if time1 < test1+10020{
            count1 = 20
        }else if time1 < test1+10035{
            count1 = 21
        }else if time1 < test1+10050{
            count1 = 22
        }else if time1 < test1+10065{
            count1 = 23
        }else if time1 < test1+10080{
            count1 = 24
        }else if time1 < test1+10095{
            count1 = 25
        }else if time1 < test1+10110{
            count1 = 26
        }else{
            count1 = 27
        }
    }
    func startTimer1(){
        self.timer = Timer.scheduledTimer(timeInterval: 5,target: self, selector: #selector(self.Timeset1), userInfo: nil, repeats: true)
    }
}

