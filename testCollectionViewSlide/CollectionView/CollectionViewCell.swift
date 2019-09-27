//
//  CollectionViewCell.swift
//  testCollectionViewSlide
//
//  Created by apple on 9/16/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    var selectedIndex:NSIndexPath?
    var radioOption:Int?
    var tableData = [Question]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        tableView.delegate = self
        tableView.dataSource = self
        tableView?.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
    
    func setupData(data: Category) {
        categoryLabel.text = data.category
        tableData = data.questions
        tableView.reloadData()
    }
}
extension CollectionViewCell: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 25
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableData.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let data = tableData[section]
        return data.questionContent
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.white
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let data = tableData[section].answers
        return data.count
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let data = tableData[indexPath.section].answers
        let index = data[indexPath.row]
        if radioOption==indexPath.row{
//            tableData[indexPath.row]["check"]="true"
            cell.radioButton.isSelected = false
        } else{
//            tableData[indexPath.row]["check"]="false"
//            cell.btnSelection.setImage(UIImage(named: "radioButton_UnSelect"), for: .normal)
//            cell.radioButton.isOn = false
            cell.radioButton.isSelected = false
        }
        print(index )
        cell.answerLabel?.text = index
       
        return cell
    }
    
    
}
