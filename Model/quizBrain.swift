import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Is the color of a slug's blood green?", a: "True"),
        Question(q: "Do human feet contain about one fourth of all the human body's bones?", a: "True"),
        Question(q: "Is the combined surface area of two human lungs roughly equal to 70 square metres?", a: "True"),
        Question(q: "Can you legally take an animal you accidentally hit with your car home to eat in West Virginia, USA?", a: "True"),
        Question(q: "Does dying in the House of Parliament in London, UK, technically entitle you to a state funeral due to the building's sacred status?", a: "False"),
        Question(q: "Is it against the law to urinate in the ocean in Portugal?", a: "True"),
        Question(q: "Is it true that you can guide a cow downstairs but not upstairs?", a: "False"),
        Question(q: "Did Google originally bear the name 'Backrub'?", a: "True"),
        Question(q: "Was 'Moon' the maiden name of Buzz Aldrin's mother?", a: "True"),
        Question(q: "Is the loudest sound made by any animal, a sound of 188 decibels, produced by the African Elephant?", a: "False"),
        Question(q: "Is it impossible to fold a square piece of dry paper in half more than 7 times?", a: "False"),
        Question(q: "Can a few ounces of chocolate potentially be lethal to a small dog due to its effect on the heart and nervous system?", a: "True")
    ]
    
    var questionNumber = 0
    var scoreLabel = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            scoreLabel += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func getScore() -> Int{
        return scoreLabel
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion(){
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
            scoreLabel = 0
        }
    }
    
}
