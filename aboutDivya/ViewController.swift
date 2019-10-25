//
//  ViewController.swift
//  aboutDivya
//
//  Created by Melanie Cooray on 10/24/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var blueBackground : UIView!
    var whiteBackground : UIView!
    var colorChangeButton : UIButton!
    var backgroundOptions = [UIColor.blue, UIColor.systemPink, UIColor.black, UIColor.green]
    var currentBackground = 0
    
    var profilePic : UIImageView!
    
    var nameLabel : UILabel!
    
    var subLabel : UILabel!
    
    var statsBox : UIView!
    
    var ageLabel : UILabel!
    var ageNumberLabel : UILabel!
    
    var mdbLabel : UILabel!
    var semesterLabel : UILabel!
    
    var birthdayLabel : UILabel!
    var highSchoolLabel : UILabel!
    var hometownLabel : UILabel!
    var golfLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        changeColors()
    }
    
    func initUI() {
        
        // BLUE BACKGROUND
        blueBackground = UIView()
        self.view.addSubview(blueBackground)
        blueBackground.translatesAutoresizingMaskIntoConstraints = false
        blueBackground.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        blueBackground.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        blueBackground.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.25).isActive = true
        blueBackground.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        
        blueBackground.backgroundColor = .blue
        
        whiteBackground = UIView()
        self.view.addSubview(whiteBackground)
        whiteBackground.translatesAutoresizingMaskIntoConstraints = false
        whiteBackground.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        whiteBackground.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        whiteBackground.topAnchor.constraint(equalTo: blueBackground.bottomAnchor).isActive = true
        whiteBackground.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        whiteBackground.backgroundColor = .white
        
        let water = WaterController(view: self.blueBackground)
        water.start()
        
        
        // PROFILE PIC
        profilePic = UIImageView()
        self.view.addSubview(profilePic)
        profilePic.translatesAutoresizingMaskIntoConstraints = false
        profilePic.centerYAnchor.constraint(equalTo: blueBackground.centerYAnchor, constant: 100).isActive = true
        profilePic.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        profilePic.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        profilePic.heightAnchor.constraint(equalTo: self.profilePic.widthAnchor).isActive = true
        profilePic.image = UIImage(named: "divya.jpg")
        profilePic.layer.cornerRadius = 10.0
        profilePic.layer.masksToBounds = true
        profilePic.layer.borderColor = UIColor.white.cgColor;
        profilePic.layer.borderWidth = 5.0;
        
        // NAME
        nameLabel = UILabel()
        self.view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: profilePic.centerYAnchor, constant: 140).isActive = true
        nameLabel.text = "Divya Tadimeti"
        nameLabel.textAlignment = .center
        nameLabel.textColor = .black
        nameLabel.font = UIFont(name: "AvenirNext-Bold", size: 30)
        
        // SUB-LABEL
        subLabel = UILabel()
        self.view.addSubview(subLabel)
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        subLabel.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor, constant: 40).isActive = true
        subLabel.text = "iOS Newbie"
        subLabel.textAlignment = .center
        subLabel.textColor = .darkGray
        subLabel.font = UIFont(name: "AvenirNext-Regular", size: 20)
        
        // AGE LABEL
        ageLabel = UILabel()
        self.view.addSubview(ageLabel)
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        ageLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -90).isActive = true
        ageLabel.centerYAnchor.constraint(equalTo: subLabel.centerYAnchor, constant: 60).isActive = true
        ageLabel.text = "Age"
        ageLabel.textAlignment = .center
        ageLabel.textColor = .black
        ageLabel.font = UIFont(name: "AvenirNext-DemiBold", size: 20)
        
        ageNumberLabel = UILabel()
        self.view.addSubview(ageNumberLabel)
        ageNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        ageNumberLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -90).isActive = true
        ageNumberLabel.centerYAnchor.constraint(equalTo: ageLabel.centerYAnchor, constant: 50).isActive = true
        ageNumberLabel.text = "18"
        ageNumberLabel.textAlignment = .center
        ageNumberLabel.textColor = .black
        ageNumberLabel.font = UIFont(name: "AvenirNext-Regular", size: 20)
        
        // JOINED MDB LABEL
        mdbLabel = UILabel()
        self.view.addSubview(mdbLabel)
        mdbLabel.translatesAutoresizingMaskIntoConstraints = false
        mdbLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 70).isActive = true
        mdbLabel.centerYAnchor.constraint(equalTo: subLabel.centerYAnchor, constant: 60).isActive = true
        mdbLabel.text = "Joined MDB"
        mdbLabel.textAlignment = .center
        mdbLabel.textColor = .black
        mdbLabel.font = UIFont(name: "AvenirNext-DemiBold", size: 20)
        
        semesterLabel = UILabel()
        self.view.addSubview(semesterLabel)
        semesterLabel.translatesAutoresizingMaskIntoConstraints = false
        semesterLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 70).isActive = true
        semesterLabel.centerYAnchor.constraint(equalTo: ageLabel.centerYAnchor, constant: 50).isActive = true
        semesterLabel.text = "Fall 2019"
        semesterLabel.textAlignment = .center
        semesterLabel.textColor = .black
        semesterLabel.font = UIFont(name: "AvenirNext-Regular", size: 20)

        // BOX OUTLINE
        statsBox = UIView()
        self.view.addSubview(statsBox)
        statsBox.translatesAutoresizingMaskIntoConstraints = false
        statsBox.trailingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 150).isActive = true
        statsBox.leadingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -150).isActive = true
        statsBox.topAnchor.constraint(equalTo: ageLabel.topAnchor, constant: -20).isActive = true
        statsBox.bottomAnchor.constraint(equalTo: ageNumberLabel.bottomAnchor, constant: 20).isActive = true
        statsBox.layer.borderColor = UIColor.black.cgColor
        statsBox.layer.borderWidth = 1.0
        
        // BIRTHDAY LABEL
        birthdayLabel = UILabel()
        self.view.addSubview(birthdayLabel)
        birthdayLabel.translatesAutoresizingMaskIntoConstraints = false
        birthdayLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        birthdayLabel.centerYAnchor.constraint(equalTo: subLabel.centerYAnchor, constant: 200).isActive = true
        birthdayLabel.text = "Birthday: August 8"
        birthdayLabel.textAlignment = .center
        birthdayLabel.textColor = .black
        birthdayLabel.font = UIFont(name: "AvenirNext-Medium", size: 20)
        
        // HIGH SCHOOL LABEL
        highSchoolLabel = UILabel()
        self.view.addSubview(highSchoolLabel)
        highSchoolLabel.translatesAutoresizingMaskIntoConstraints = false
        highSchoolLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        highSchoolLabel.centerYAnchor.constraint(equalTo: birthdayLabel.centerYAnchor, constant: 40).isActive = true
        highSchoolLabel.text = "High School: Castilleja School"
        highSchoolLabel.textAlignment = .center
        highSchoolLabel.textColor = .black
        highSchoolLabel.font = UIFont(name: "AvenirNext-Medium", size: 20)
        
        // HOMETOWN LABEL
        hometownLabel = UILabel()
        self.view.addSubview(hometownLabel)
        hometownLabel.translatesAutoresizingMaskIntoConstraints = false
        hometownLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        hometownLabel.centerYAnchor.constraint(equalTo: highSchoolLabel.centerYAnchor, constant: 40).isActive = true
        hometownLabel.text = "Hometown: Palo Alto, CA"
        hometownLabel.textAlignment = .center
        hometownLabel.textColor = .black
        hometownLabel.font = UIFont(name: "AvenirNext-Medium", size: 20)
        
        golfLabel = UILabel()
        self.view.addSubview(golfLabel)
        golfLabel.translatesAutoresizingMaskIntoConstraints = false
        golfLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        golfLabel.centerYAnchor.constraint(equalTo: hometownLabel.centerYAnchor, constant: 40).isActive = true
        golfLabel.text = "Plays golf!"
        golfLabel.textAlignment = .center
        golfLabel.textColor = .black
        golfLabel.font = UIFont(name: "AvenirNext-Medium", size: 20)
    }
    
    func changeColors() {
        colorChangeButton = UIButton()
        self.view.addSubview(colorChangeButton)
        colorChangeButton.translatesAutoresizingMaskIntoConstraints = false
        colorChangeButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        colorChangeButton.trailingAnchor.constraint(equalTo: profilePic.leadingAnchor).isActive = true
        colorChangeButton.topAnchor.constraint(equalTo: blueBackground.bottomAnchor).isActive = true
        colorChangeButton.bottomAnchor.constraint(equalTo: profilePic.bottomAnchor).isActive = true
        colorChangeButton.backgroundColor = .white
        colorChangeButton.addTarget(self, action: #selector(changeBackground), for: .touchUpInside)
    }
    
    @objc func changeBackground() {
        currentBackground = (currentBackground + 1) % 4
        self.blueBackground.backgroundColor = backgroundOptions[currentBackground]
    }
    


}

