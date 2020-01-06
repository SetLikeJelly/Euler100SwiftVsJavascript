//Whoop whoop

func biggestPrimeFactor(of number:Int) {
//thank you wikipedia
    var numberRoot = Int(Double(number).squareRoot())
    func primeFactors(n: Int) -> Int {
        var n = n
        var factors = [Int]()
        for divisor in 2 ..< numberRoot {
            while n % divisor == 0 {
                factors.append(divisor)
                n /= divisor
            }
        }
        return factors.last!
    }
    primeFactors(n: number)
}
biggestPrimeFactor(of: 600851475143)
