//
//  Page.swift
//  testCollectionViewSlide
//
//  Created by apple on 9/16/19.
//  Copyright © 2019 apple. All rights reserved.
//

import Foundation

class Category {
    var category: String?
    var questions: [Question] = []
    
    init(category: String, questions: [Question]) {
        self.category = category
        self.questions = questions
    }
    
    init(category: String) {
        self.category = category
    }
    
}

class Question {
    var questionContent: String = ""
    var answers: [String] = []
    init(questionContent: String, answers: [String]) {
        self.questionContent = questionContent
        self.answers = answers
    }
    init(questionContent: String) {
        self.questionContent = questionContent
    }
}



//class Answer {
//    var answer: [String] = []
//    init(answer: [String]) {
//        self.answer = answer
//    }
//}
//class CollectionViewItemData {
//    var categorys: [Category] = []
//    var questions: [Question] = []
//    init(categorys: [Category], questions: [Question]) {
//        self.categorys = categorys
//        self.questions = questions
//    }
//}

// => data cho CollectionView se la :
// collectionViewDatas: [CollectionViewItemData] = []

// => number of item trong collectionview = collectionViewDatas.count
// va truyen vao cho 1 item se la collectionViewDatas[indexPath.row]

// trong item cua collectionview chua 1 tableview -> truyen vao cho tableview 1 list cac question
// trong tableview numberofsection = questions.count
// numberofRowinSection se la questions[indexPath.section].answers.count
