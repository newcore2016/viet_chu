//
//  MenuViewController.swift
//  viet_chu
//
//  Created by Admin on 11/14/16.
//  Copyright © 2016 efode. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    var cellGameArray = Array<Array<CellGame>>()
    
    var colNo = 9 // default column number
    
    var rowNo = 4 // default row number
    
    var boardGame = UIImageView()


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        boardGame.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.8 , height: (UIScreen.main.bounds.height * 0.5))
        cellGameArray = Array(repeating: Array(repeating : CellGame(), count: rowNo), count: colNo)
        for i in 1...colNo {
            for j in 1...rowNo {
                let tmpImageView = CellGame()
                tmpImageView.frame = CGRect(x: CGFloat(i - 1) * (boardGame.frame.width / CGFloat(colNo)) , y: CGFloat(j - 1) * (boardGame.frame.height / CGFloat(rowNo)), width: boardGame.frame.width / CGFloat(colNo), height: boardGame.frame.height / CGFloat(rowNo))
                    tmpImageView.isExclusiveTouch = true
                tmpImageView.layer.borderWidth = 1
                tmpImageView.layer.borderColor = UIColor(red:222/255.0, green:225/255.0, blue:227/255.0, alpha: 1.0).cgColor
                
                cellGameArray[i-1][j-1] = tmpImageView
                boardGame.addSubview(tmpImageView)
                self.boardGame.center = self.view.center
            }
        }
        
        self.view.addSubview(boardGame)
        
        
        //ten game
        let name = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        name.center = CGPoint(x: 50, y: 30)
        name.textAlignment = .center
        name.text = "Game "
        self.view.addSubview(name)
        
        //logo
        let logo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        logo.center = CGPoint(x: 50, y: UIScreen.main.bounds.height - 30)
        logo.textAlignment = .center
        logo.text = "Logo "
        self.view.addSubview(logo)
        
        //play button
        let playBtn = UIButton(frame: CGRect(x: UIScreen.main.bounds.width - 80, y: UIScreen.main.bounds.height * 0.15 , width: 80, height: 30))
        playBtn.setTitle("Viết chữ", for: .normal)
        playBtn.backgroundColor = UIColor.purple
        //playBtn.addTarget(self, action: #selector(self.playGame), for: .touchUpInside)
        self.view.addSubview(playBtn)
        
        //back button
        let backBtn = UIButton(frame: CGRect(x: UIScreen.main.bounds.width - 80, y: UIScreen.main.bounds.height * 0.85 , width: 80, height: 30))
        backBtn.setTitle("Quay lại", for: .normal)
        backBtn.backgroundColor = UIColor.purple
        self.view.addSubview(backBtn)
    }
    
}

class CellGame: UIImageView {
    var character: String?
    
    
}