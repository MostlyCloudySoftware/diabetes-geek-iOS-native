//
//  NumericPadKeyCell.swift
//  DiabetesGeek
//
//  Created by Jeff Calog on 2/5/16.
//  Copyright © 2016 Mostly Cloudy. All rights reserved.
//

import UIKit

class NumberPadKeyCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var type: NumberPadButtonType = NumberPadButtonType.Zero {
        didSet {
            configureCell(type)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        print("init coder/decoder being called")
        super.init(coder: aDecoder)
    }
    
    override func prepareForReuse() {
        titleLabel.text = ""
        contentView.hidden = false
    }
    
    func configureCell(type: NumberPadButtonType) {
        switch type {
        case .Zero:
            configureAsStandardKey("0")
        case .One:
            configureAsStandardKey("1")
        case .Two:
            configureAsStandardKey("2")
        case .Three:
            configureAsStandardKey("3")
        case .Four:
            configureAsStandardKey("4")
        case .Five:
            configureAsStandardKey("5")
        case .Six:
            configureAsStandardKey("6")
        case .Seven:
            configureAsStandardKey("7")
        case .Eight:
            configureAsStandardKey("8")
        case .Nine:
            configureAsStandardKey("9")
        case .OK:
            configureAsSpecialKey("OK")
        case .Delete:
            configureAsSpecialKey("Del")
        case .Period:
            configureAsSpecialKey(".")
        case .Clear:
            configureAsSpecialKey("Clr")
        case .Blank:
            configureAsBlankKey()
        }
    }

    func configureDefault(titleLabelText: String) {
        titleLabel.text = titleLabelText
        titleLabel.font = UIFont.systemFontOfSize(18)
    }
    
    func configureAsStandardKey(titleLabelText: String) {
        configureDefault(titleLabelText)
        titleLabel.textColor = UIColor.blackColor()
        contentView.backgroundColor = UIColor.whiteColor()
    }
    
    func configureAsSpecialKey(titleLabelText: String) {
        configureDefault(titleLabelText)
        titleLabel.textColor = UIColor.whiteColor()
        contentView.backgroundColor = UIColor.orangeColor()
    }
    
    func configureAsBlankKey() {
        contentView.hidden = true
    }
}
