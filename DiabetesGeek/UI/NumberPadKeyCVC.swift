//
//  NumberPadKeysVCCollectionViewController.swift
//  DiabetesGeek
//
//  Created by Jeff Calog on 1/31/16.
//  Copyright © 2016 Mostly Cloudy. All rights reserved.
//

import UIKit

private let reuseIdentifier = "NumberPadKeyCell"

class NumberPadKeyCVC: UICollectionViewController {

    var collectionViewFlowLayout: UICollectionViewFlowLayout? {
        get {
            return collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

//    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
//        <#code#>
//    }
    
    override func viewWillLayoutSubviews() {
        if let layout = collectionViewFlowLayout {
            let size = layout.collectionViewContentSize()
            let numberOfColumns = 4
            let width = (size.width - (layout.minimumInteritemSpacing * CGFloat(numberOfColumns-1)))/4.0
            layout.itemSize = CGSize(width: width, height: width)
        }
    }
    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return NumberPadButtonType.allValues.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
    
        // Configure the cell
        if let cell = cell as? NumberPadKeyCell {
            cell.type = NumberPadButtonType.allValues[indexPath.item]
        }
        
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
