//
//  TimeInterval.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/06/17.
//
//140600

import Foundation

class  TimeInterval: ObservableObject{
    @Published var count = 0
    @Published var time = 0
    @Published var test = 160600
    var timer : Timer!
    init(){
        self.Timeset()
        self.startTimer()
    }
    @objc func Timeset(){
        let day = Calendar.current.component(.day, from: Date())
        let hour = Calendar.current.component(.hour, from: Date())
        let minute = Calendar.current.component(.minute, from: Date())
        time = day*10000+hour*60+minute
        
        if time<test {
            count = 0
        }else if time < test+45{
            count = 1
        }else if time < test+70{
            count = 2
        }else if time < test+82{
            count = 3
        }else if time < test+104{
            count=4
        }else if time < test+136{
            count=5//12:16
        }else if time < test+156{
            count=6//12:36
        }else if time < test+240{
            count=7//14:00
        }else if time < test+255{
            count=8//14:15
        }else if time < test+270{
            count=9//14:30
        }else if time < test+9945{
            count=10//9:05
        }else if time < test+9965{
            count=11//9:25
        }else if time < test+9985{
            count=12//9:45
        }else if time < test+9996{
            count=13//9:56
        }else if time < test+10007{
            count=14//10:07
        }else if time < test+10018{
            count=15//10:18
        }else if time < test+10029{
            count=16//10:29
        }else if time < test+10040{
            count=17//10:40
        }else if time < test+10051{
            count=18//10:51
        }else if time < test+10062{
            count=19//11:02
        }else if time < test+10082{
            count=20//11:22
        }else if time < test+10099{
            count=21//11:39
        }else if time < test+10110{
            count=22//11:50
        }else{
            count = 23
        }
    }
    func startTimer(){
        self.timer = Timer.scheduledTimer(timeInterval: 5,target: self, selector: #selector(self.Timeset), userInfo: nil, repeats: true)
    }
}
