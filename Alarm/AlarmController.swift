//
//  AlarmController.swift
//  Alarm
//
//  Created by Joseph Hansen on 7/11/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit


class AlarmController {
    static let sharedController = AlarmController()
    
    var alarms: [Alarm] = []
    
    var mockAlarms: [Alarm] {
        let alarm1 = Alarm(fireTimeFromMidnight: 60.0, name: "Alarm1")
        let alarm2 = Alarm(fireTimeFromMidnight: 70.0, name: "Alarm2", enabled: true, uuid: "123")
        let alarm3 = Alarm(fireTimeFromMidnight: 50.0, name: "Alarm3")
        return [alarm1, alarm2, alarm3]
    }

    init() {
        self.alarms = mockAlarms
    }
    
    
    init(alarm: Alarm, fireTimeFromMidnight: NSTimeInterval, name: String) {
        
    }
    
    func toggleEnabled(alarm: Alarm) {
        alarm.enabled = !alarm.enabled
    }
    
    func addAlarm(fireTimeFromMidnight: NSTimeInterval, name: String) {
        let alarm = Alarm(fireTimeFromMidnight: fireTimeFromMidnight, name: name)
        alarms.append(alarm)
        
        return
        
    }
    
    func updateAlarm(alarm: Alarm, fireTimeFromMidnight: NSTimeInterval, name: String) {
        alarm.fireTimeFromMidnight = fireTimeFromMidnight
        alarm.name = name
    }
    
    func deleteAlarm(alarm: Alarm) {
        guard let index = alarms.indexOf(alarm) else {return}
        alarms.removeAtIndex(index)
        
    }
    
    
    
    
}



