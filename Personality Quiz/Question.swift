//
//  File.swift
//  Personality Quiz
//
//  Created by student on 21.09.2018.
//  Copyright © 2018 Denis Bystruev. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponceType
    var answers: [Answer]
}

enum ResponceType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравиться быть с друзьямы, вы общительны"
        case .cat:
            return "Вы себе на уме, любите гулять в одиночестве"
        case .rabbit:
            return "Вы обожаете активный отдых и семью"
        case .turtle:
            return "Вы мудры и осторожны.  Медленный выигрывает."
        }
    }
}

var questions: [Question] = [
    
    Question(
        text: "Какая пища вам нравится?",
        type: .single,
        answers: [
            Answer(text: "Мясо", type: .dog),
            Answer(text: "Рыба", type: .cat),
            Answer(text: "Морковка", type: .rabbit),
            Answer(text: "Кукуруза", type: .turtle)
        ]),
    
    Question(
        text: "Что вы любите делать?",
        type: .multiple,
        answers: [
            Answer(text: "Есть", type: .dog),
            Answer(text: "Спать", type: .cat),
            Answer(text: "Обниматься", type: .rabbit),
            Answer(text: "Плавать", type: .turtle)
        ]),
    
    
    Question(
        text: "Насколько вы любите поездки на машине?",
        type: .ranged,
        answers: [
            Answer(text: "Ненавижу", type: .cat),
            Answer(text: "Нервничаю", type: .rabbit),
            Answer(text: "Не замечаю", type: .turtle),
            Answer(text: "Обожаю", type: .dog)
        ])
]
