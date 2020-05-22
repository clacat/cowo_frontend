//
//  ViewController.swift
//  COWO_PROJECT
//
//  Created by Claudia Catapano on 21/05/2020.
//  Copyright © 2020 Claudia Catapano. All rights reserved.
//

import UIKit

class MyCustomTabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self

        //here's the code that creates no border, but has a shadow:

        tabBar.layer.shadowColor = UIColor.lightGray.cgColor
        tabBar.layer.shadowOpacity = 0.7
        tabBar.layer.shadowOffset = CGSize.zero
        tabBar.layer.shadowRadius = 5
        self.tabBar.layer.borderColor = UIColor.clear.cgColor
        self.tabBar.layer.borderWidth = 0
        self.tabBar.clipsToBounds = false
        self.tabBar.backgroundColor = UIColor.white
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().unselectedItemTintColor = UIColor(red: 0.81, green: 0.80, blue: 1.00, alpha: 1.00)
    }
}
//    private enum Constants {
//        static let segmentedControlHeight: CGFloat = 40
//        static let underlineViewColor : UIColor = .init(red: 0.75, green: 0.64, blue: 1.00, alpha: 1.00)
//        static let underlineViewHeight: CGFloat = 3
//    }
//
//    
//    // Container view of the segmented control
//    private lazy var segmentedControlContainerView: UIView = {
//        let containerView = UIView()
//        containerView.backgroundColor = .none
//        containerView.translatesAutoresizingMaskIntoConstraints = false
//        return containerView
//    }()
//
//    // Customised segmented control
//    private lazy var segmentedControl: UISegmentedControl = {
//        let segmentedControl = UISegmentedControl()
//
//        
//        // Remove background and divider colors
//        segmentedControl.backgroundColor = nil
//        segmentedControl.tintColor = nil
//
//        // Append segments
//        segmentedControl.insertSegment(withTitle: "Sign In", at: 0, animated: true)
//        segmentedControl.insertSegment(withTitle: "Sign Up", at: 1, animated: true)
//
//        // Select first segment by default
//        segmentedControl.selectedSegmentIndex = 0
//
//        // Change text color and the font of the NOT selected (normal) segment
//        segmentedControl.setTitleTextAttributes([
//            NSAttributedString.Key.foregroundColor: UIColor.black,
//            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 28, weight: .regular)], for: .normal)
//
//        // Change text color and the font of the selected segment
//        segmentedControl.setTitleTextAttributes([
//            NSAttributedString.Key.foregroundColor: UIColor.black,
//            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 28, weight: .bold)], for: .selected)
//
//        // Set up event handler to get notified when the selected segment changes
//        segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
//
//        // Return false because we will set the constraints with Auto Layout
//        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
//        return segmentedControl
//    }()
//
//    // The underline view below the segmented control
//    private lazy var bottomUnderlineView: UIView = {
//        let underlineView = UIView()
//        underlineView.backgroundColor = Constants.underlineViewColor
//        underlineView.translatesAutoresizingMaskIntoConstraints = false
//        return underlineView
//    }()
//
//    private lazy var leadingDistanceConstraint: NSLayoutConstraint = {
//        return bottomUnderlineView.leftAnchor.constraint(equalTo: segmentedControl.leftAnchor)
//    }()
//
//    override func viewDidLoad() {
//                // Add subviews to the view hierarchy
//                // (both segmentedControl and bottomUnderlineView are subviews of the segmentedControlContainerView)
//                view.addSubview(segmentedControlContainerView)
//                segmentedControlContainerView.addSubview(segmentedControl)
//                segmentedControlContainerView.addSubview(bottomUnderlineView)
//
//                // Constrain the container view to the view controller
//                let safeLayoutGuide = self.view.safeAreaLayoutGuide
//                NSLayoutConstraint.activate([
//                    segmentedControlContainerView.topAnchor.constraint(equalTo: safeLayoutGuide.topAnchor),
//                    segmentedControlContainerView.leadingAnchor.constraint(equalTo: safeLayoutGuide.leadingAnchor),
//                    segmentedControlContainerView.widthAnchor.constraint(equalTo: safeLayoutGuide.widthAnchor),
//                    segmentedControlContainerView.heightAnchor.constraint(equalToConstant: Constants.segmentedControlHeight)
//                    ])
//
//                // Constrain the segmented control to the container view
//                NSLayoutConstraint.activate([
//                    segmentedControl.topAnchor.constraint(equalTo: segmentedControlContainerView.topAnchor),
//                    segmentedControl.leadingAnchor.constraint(equalTo: segmentedControlContainerView.leadingAnchor),
//                    segmentedControl.centerXAnchor.constraint(equalTo: segmentedControlContainerView.centerXAnchor),
//                    segmentedControl.centerYAnchor.constraint(equalTo: segmentedControlContainerView.centerYAnchor)
//                    ])
//
//                // Constrain the underline view relative to the segmented control
//                NSLayoutConstraint.activate([
//                    bottomUnderlineView.bottomAnchor.constraint(equalTo: segmentedControl.bottomAnchor),
//                    bottomUnderlineView.heightAnchor.constraint(equalToConstant: Constants.underlineViewHeight),
//                    leadingDistanceConstraint,
//                    bottomUnderlineView.widthAnchor.constraint(equalTo: segmentedControl.widthAnchor, multiplier: 1 / CGFloat(segmentedControl.numberOfSegments))
//                    ])
//            }
//
//            @objc private func segmentedControlValueChanged(_ sender: UISegmentedControl) {
//                changeSegmentedControlLinePosition()
//            }
//
//            // Change position of the underline
//            private func changeSegmentedControlLinePosition() {
//                let segmentIndex = CGFloat(segmentedControl.selectedSegmentIndex)
//                let segmentWidth = segmentedControl.frame.width / CGFloat(segmentedControl.numberOfSegments)
//                let leadingDistance = segmentWidth * segmentIndex
//                UIView.animate(withDuration: 0.3, animations: { [weak self] in
//                    self?.leadingDistanceConstraint.constant = leadingDistance
//                })
//            }
extension UIColor {
    static let cowoColor = UIColor(named: "COWOCOLOR")
    static let lightCowoColor = UIColor(named: "LIGHTCOROCOLOR")
}

