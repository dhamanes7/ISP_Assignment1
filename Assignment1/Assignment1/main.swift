//
//  main.swift
//  Assignment1
//
//
//

import Foundation

var loop: Bool = true


repeat{
print("out of following which task would you like to run? \n 1. Rock Paper Scissor\n 2. Enum \n 3. Employee Student Manager\n 4. Quit")
    
    let choice: Int = Int(readLine()!)!


switch(choice){
case 1: print("welcome to Rock-Paper-Scissor game")
        rpsGame()
        
case 2: print("Welcome to Enum")
        enumFunction()
case 3: print("welcome to Employee Student Manager")
        
case 4: print("BYE! Have a nice day.")
        loop = false

default:
    print("please enter proper intput")
}

}while(loop)

func rpsGame(){
    let rpsLoop1: Bool = true
    var rpsLoop2: Bool = true
    let gameSet: Set<String> = ["rock","paper","scissor"]
    var player1: String?
    var comp: String?
    var player2: String?
    
    repeat{
    print("Welcome to rock-paper-scissor game. Please select option from below:\n 1. vs Comp\n 2. vs 2nd player\n 3. Quit")
    
    let opponent: Int = Int(readLine()!)!
    
    switch opponent{
    case 1: repeat{
            print("please enter your choice: rock/paper/scissor and Q for quit")
            player1 = readLine()!
            player1 = player1?.lowercased()
            if (player1 == "q") {
                print("Thank you")
                break
            }
            if !(player1 == "rock" || player1 == "scissor" || player1 == "paper"){
                print("please enter correct input")
                continue
            }
            comp = gameSet.randomElement()
            if(player1 == "rock" && comp == "paper"){
                print("You:\(player1!) computer:\(comp!)\n Hard luck! Computer won the game")
            }
            else if(player1 == "rock" && comp == "scissor"){
                print("You:\(player1!) computer:\(comp!)\n Congratulations! You won the game")
            }
            else if(player1 == "paper" && comp == "rock"){
                print("You:\(player1!) computer:\(comp!)\n Congratulations! You won the game")
            }
            else if(player1 == "paper" && comp == "scissor"){
                print("You:\(player1!) computer:\(comp!)\n Hard luck! Computer won the game")
            }
            else if(player1 == "scissor" && comp == "rock"){
                print("You:\(player1!) computer:\(comp!)\n Hard luck! Computer won the game")
            }
            else if(player1 == "scissor" && comp == "paper"){
                print("You:\(player1!) computer:\(comp!)\n Congratulations! You won the game")
            }
            else{
                print("You:\(player1!) computer:\(comp!)\n Match draw!")
            }
            player1 = ""
            comp = ""
            }while(rpsLoop1)
    case 2: repeat{
            print("1st player please enter your choice: rock/paper/scissor else press Q for quit")
            player1 = readLine()!
            player1 = player1?.lowercased()
            if (player1 == "q") {
                print("Thank you")
                break
            }
            if !(player1 == "rock" || player1 == "scissor" || player1 == "paper"){
                print("please enter correct input")
                continue
            }
            print("2nd player please enter your choice: rock/paper/scissor")
            player2 = readLine()!
            player2 = player2?.lowercased()
            if !(player2 == "rock" || player2 == "scissor" || player2 == "paper"){
                print("please enter correct input")
                continue
            }
                   
            if(player1 == "rock" && player2 == "paper"){
                print("player1:\(player1!) Player2:\(player2!)\n Player 2 won the game")
            }
            else if(player1 == "rock" && player2 == "scissor"){
                print("player1:\(player1!) Player2:\(player2!)\n Player 1 won the game")
            }
            else if(player1 == "paper" && player2 == "rock"){
                print("player1:\(player1!) Player2:\(player2!)\n Player 1 won the game")
            }
            else if(player1 == "paper" && player2 == "scissor"){
                print("player1:\(player1!) Player2:\(player2!)\n Player 2 won the game")
            }
            else if(player1 == "scissor" && player2 == "rock"){
                print("player1:\(player1!) Player2:\(player2!)\n Player 2 won the game")
            }
            else if(player1 == "scissor" && player2 == "paper"){
                print("player1:\(player1!) Player2:\(player2!)\n Player 1 won the game")
            }
            else{
                print("You:\(player1!) Player2:\(player2!)\n Match draw!")
            }
            }while(rpsLoop1)
    case 3: print("thank you!")
            rpsLoop2 = false
    default:
        print("please enter proper input")
    }
    }while(rpsLoop2)
}

func enumFunction(){
    
    enum SearchEngines: String, CaseIterable {
        case bing = "Bing"
        case yandex = "Yandex"
        case ccSearch = "CC Search"
        case swissCow = "SwissCow"
        case google = "Google"

    }
  
    for i in SearchEngines.allCases {
        print(i.rawValue)
    }
   
}
