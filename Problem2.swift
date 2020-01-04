//must spend more time naming things

func fibonacci() {
    var sequence = [1, 2] , i = 2
    while sequence.last! < 4000000 {
        sequence.append(sequence[i-1]+sequence[i-2])
        i += 1
    }
//Perhaps a repeat loop is worth exploring
    sequence.popLast()
    let even = sequence.filter { $0 % 2 == 0 }
    let sum = even.reduce(0, +)
    print(sum)
}

fibonacci()
