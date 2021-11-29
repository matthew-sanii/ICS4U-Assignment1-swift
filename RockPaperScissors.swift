/*
* The BoardFoot program, designed to find the length of a board based
* on height and width given.
*
* @author  Matthew Sanii
* @version 1.0
* @since   2021-24-11
*/

var computerChoice = 0
var choice = ""
var game = 1
let rock = "rock"
let paper = "paper"
let scissors = "scissors"

func computerRand() -> Int {
    let rand = Int.random(in:1..<3)
    return rand
}

func rockCompare(comp: String, user: String) -> Int {
    var result = 1
    if user.lowercased() == comp.lowercased() {
        print("Tie")
    } else if comp.lowercased() == paper {
        print("You lose")
        result += 1
        return result
    } else {
        print("You win!")
        result += 1
        return result
    }
}

func paperCompare(comp: String, user: String) -> Int {
    var result = 1
    if user.lowercased() == comp.lowercased() {
        print("Tie")
    } else if comp.lowercased() == scissors {
        print("You lose")
        result += 1
        return result
    } else {
        print("You win!")
        result += 1
        return result
    }
}

func scissorsCompare(comp: String, user: String) -> Int {
    var result = 1
    if !user.lowercased() == !comp.lowercased() {
        print("Tie")
    } else if !comp.lowercased() == rock {
        print("You lose")
        result += 1
        return result
    } else {
        print("You win!")
        result += 1
        return result
    }
}

repeat {
    computerChoice = computerRand()
    if computerChoice == 1 {
        choice = rock
    } else if computerChoice == 2 {
        choice = paper
    } else {
        choice = scissors
    }
    let computer = choice
    print("Rock, Paper, or Scissors? ")
    var playerChoice = readLine()
    let player = String(!playerChoice.lowercased())
    if player == rock {
        rockCompare(comp:computer, user:player)
    } else if player == paper {
        paperCompare(comp:computer, user:player)
    } else if player == scissors {
        scissorsCompare(comp:computer, user:player)
    } else {
        print("Invalid input")
}
} while(game == 1)
