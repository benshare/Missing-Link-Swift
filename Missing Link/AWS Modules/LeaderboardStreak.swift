//
//  LeaderboardStreak.swift
//  MissingLink
//
//
// Copyright 2020 Amazon.com, Inc. or its affiliates (Amazon). All Rights Reserved.
//
// Code generated by AWS Mobile Hub. Amazon gives unlimited permission to 
// copy, distribute and modify it.
//
// Source code generated from template: aws-my-sample-app-ios-swift v0.21
//

import Foundation
import UIKit
import AWSDynamoDB

@objcMembers class LeaderboardStreak: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    var _username: String?
    var _streak: NSNumber?
    var _lastDayInStreak: String?
    var _longestStreak: NSNumber?
    
    class func dynamoDBTableName() -> String {

        return "missinglink-mobilehub-2144505807-LeaderboardStreak"
    }
    
    class func hashKeyAttribute() -> String {

        return "_username"
    }
    
    class func rangeKeyAttribute() -> String {

        return "_streak"
    }
    
    override class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any] {
        return [
               "_username" : "username",
               "_streak" : "streak",
               "_lastDayInStreak" : "lastDayInStreak",
               "_longestStreak" : "longestStreak",
        ]
    }
    
    init(username: String, data: StreakData) {
        super.init()
        _username = username
        _streak = NSNumber(value: data.streak)
        _lastDayInStreak = data.lastDayInStreak
        _lastDayInStreak = _lastDayInStreak!.isEmpty ? "NEVER" : _lastDayInStreak
        _longestStreak = NSNumber(value: data.longestStreak)
    }
    
    required init!(coder: NSCoder!) {
        super.init(coder: coder)
    }
    
    override init(dictionary dictionaryValue: [AnyHashable : Any]!, error: ()) throws {
        try super.init(dictionary: dictionaryValue, error: ())
    }
    
    override init!() {
        super.init()
    }
}
