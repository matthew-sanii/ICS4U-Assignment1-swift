/*
* The RockPaperScissors program, that has you play Rock Paper Scissors with
* the computer.
*
* @author  Matthew Sanii
* @version 1.0
* @since   2021-24-11
*/

import Foundation
var computerChoice = 0
var choice = ""
var game = 0
let rock = "rock"
let paper = "paper"
let scissors = "scissors"

func computerRand() -> Int {
    let rand = Int.random(in: 1..<4)
    return rand
}

func rockCompare(comp: String, user: String) -> Int {
    var result = 0
    computerchose(computer: comp)
    if user == comp {
        print("Tie")
    } else if comp == paper {
        print("You lose")
        result += 1
    } else {
        print("You win!")
        result += 1
    }
    return result
}

func paperCompare(comp: String, user: String) -> Int {
    var result = 0
    computerchose(computer: comp)
    if user == comp {
        print("Tie")
    } else if comp == scissors {
        print("You lose")
        result += 1
    } else {
        print("You win!")
        result += 1
    }
    return result
}

func scissorsCompare(comp: String, user: String) -> Int {
    var result = 0
    computerchose(computer: comp)
    if user == comp {
        print("Tie")
    } else if comp == rock {
        print("You lose")
        result += 1
    } else {
        print("You win!")
        result += 1
    }
    return result
}

func computerchose(computer: String) {
    print("Computer chose: ", computer)
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
    let playerChoice = readLine()!
    let player = playerChoice.lowercased()
    if player == rock {
        game = rockCompare(comp: computer, user: player)
    } else if player == paper {
        game = paperCompare(comp: computer, user: player)
    } else if player == scissors {
        game = scissorsCompare(comp: computer, user: player)
    } else {
        print("Invalid input")
        exit(0)
}
} while(game == 0)
