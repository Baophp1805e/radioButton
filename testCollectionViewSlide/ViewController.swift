//
//  ViewController.swift
//  testCollectionViewSlide
//
//  Created by apple on 9/16/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

@IBOutlet weak var pageControl: UIPageControl!
@IBOutlet weak var collectionView: UICollectionView!

var dataArray = [Category]()

@IBAction func handlePrev(_ sender: Any) {
   let nextIndex = max(pageControl.currentPage - 1, 0)
   let indexPath = IndexPath(item: nextIndex, section: 0)
   pageControl.currentPage = nextIndex
   collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)

}

@IBAction func handleNext(_ sender: Any) {
   let nextIndex = min(pageControl.currentPage + 1, dataArray.count - 1)
   let indexPath = IndexPath(item: nextIndex, section: 0)
   pageControl.currentPage = nextIndex
   collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
}
override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view.
   collectionView.register(UINib.init(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
   collectionView.dataSource = self
   collectionView.delegate = self
   collectionView?.isPagingEnabled = true
   collectionView?.backgroundColor = .white
   pageControl.pageIndicatorTintColor = UIColor(red: 249/255, green: 207/255, blue: 224/255, alpha: 1)
   setupData()
}

private func setupData() {

   let q11 = Question(questionContent: "Q11", answers: ["A11", "A12", "A13", "A14"])
   let q12 = Question(questionContent: "Q12", answers: ["A11", "A12", "A13", "A14"])
   let q13 = Question(questionContent: "Q13", answers: ["A11", "A12", "A13", "A14"])
   let q14 = Question(questionContent: "Q14", answers: ["A11", "A12", "A13", "A14"])
   let cate1 = Category(category: "Cate1", questions: [q11, q12, q13, q14])
   dataArray.append(cate1)

   let q21 = Question(questionContent: "Q21", answers: ["A21", "A22", "A23", "A24"])
   let q22 = Question(questionContent: "Q22", answers: ["A21", "A22", "A23", "A24"])
   let q23 = Question(questionContent: "Q23", answers: ["A21", "A22", "A23", "A24"])
   let q24 = Question(questionContent: "Q24", answers: ["A21", "A22", "A23", "A24"])
   let cate2 = Category(category: "Cate2", questions: [q21, q22, q23, q24])
   dataArray.append(cate2)

   let q31 = Question(questionContent: "Q31", answers: ["A31", "A32", "A33", "A34"])
   let q32 = Question(questionContent: "Q32", answers: ["A31", "A32", "A33", "A34"])
   let q33 = Question(questionContent: "Q33", answers: ["A31", "A32", "A33", "A34"])
   let q34 = Question(questionContent: "Q34", answers: ["A31", "A32", "A33", "A34"])
   let cate3 = Category(category: "Cate3", questions: [q31, q32, q33, q34])
   dataArray.append(cate3)

   collectionView.reloadData()
}

func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
   return 0
}

func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
   return dataArray.count
}
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
   let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
   let data = dataArray[indexPath.row]
   cell.setupData(data: data)
   self.pageControl.numberOfPages = dataArray.count
   return cell
}

func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

   return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
}

}





