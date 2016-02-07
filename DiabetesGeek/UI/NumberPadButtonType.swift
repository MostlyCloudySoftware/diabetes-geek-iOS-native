//
//  NumberPadButtonType.swift
//  DiabetesGeek
//
//  Created by Jeff Calog on 2/6/16.
//  Copyright © 2016 Mostly Cloudy. All rights reserved.
//

import Foundation

enum NumberPadButtonType: Int {
    case
    Zero = 0,
    One,
    Two,
    Three,
    Four,
    Five,
    Six,
    Seven,
    Eight,
    Nine,
    OK,
    Delete,
    Period,
    Clear,
    Blank
    
    static let allValues = [
        One,
        Two,
        Three,
        OK,

        Four,
        Five,
        Six,
        Delete,

        Seven,
        Eight,
        Nine,
        Clear,
        
        Blank,
        Zero,
        Period,
        Blank]
}