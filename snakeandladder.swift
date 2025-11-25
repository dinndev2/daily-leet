class SnakesLadders {
    let tileSelectionPairs: [Int: Int]
    var playerCurrentTiles: [Int: Int]
    var currentPlayer: Int
    var finishTile: Int
    var winner: Int
    init() {
        self.playerCurrentTiles = [
            1: 0,
            2: 0
        ]
        self.currentPlayer = 1
        self.finishTile = 100
        self.winner = 0
        self.tileSelectionPairs = [
            2: 38,
            7: 14,
            8: 31,
            5: 26,
            28: 84,
            21: 42,
            36: 44,
            51: 67,
            71: 91,
            78: 98,
            87: 94,
            16: 6,
            49: 11,
            46: 25,
            62: 19,
            64: 60,
            74: 53,
            89: 68,
            92: 88,
            95: 75,
            99: 80
          ]
    }
    func play(_ die1: Int, _ die2: Int) -> String {
        // after we assign the final move we now ending the turn of the currentPlayer
        var nextTile = playerCurrentTiles[currentPlayer]! + die1 + die2
        if nextTile > 100 {
            let excess = (nextTile - 100)
            nextTile = 100
            nextTile -= excess
        }
        
        
        if let jump = tileSelectionPairs[nextTile] {
               nextTile = jump
           }
        
        playerCurrentTiles[currentPlayer] = nextTile
        
        
      
        // check if the current player tile is 100. if so, identify them as a winner
        if playerCurrentTiles[currentPlayer] == 100 {
            winner = currentPlayer
        }

        return messages(die1: die1, die2: die2)
        
    }
    
    func changePlayer(die1: Int, die2: Int) {
        if currentPlayer == 2 {
            currentPlayer = 1
        } else {
            currentPlayer = 2
        }
    }
  
    
    func messages (die1: Int, die2: Int) -> String {
        var message: String = ""
        if winner != 0 {
            message = "Player \(winner) Wins!"
        }
        if winner != 0 && currentPlayer != winner {
            message = "Game over!"
        }
        if winner == 0 {
            if let tile = playerCurrentTiles[currentPlayer] {
                message = "Player \(currentPlayer) is on square \(tile)"
            }
        }
        if die1 != die2 {
            changePlayer(die1: die1, die2: die2)
        }
        return message
    }
}