import UIKit

func nbMonths(_ startPriceOld: Int, _ startPriceNew: Int, _ savingPerMonth: Int, _ percentLossByMonth: Double) -> (Int, Int) {
    var count = 1
    var oldCarDepreciationValue = 0.0
    var newCarDepreciationValue = 0.0
    var newCarPrice:Double = Double(startPriceNew)
    var oldCarPrice:Double = Double(startPriceOld)
    var saving = savingPerMonth
    var remaingBalance = 0.0
    var depPercent = percentLossByMonth

    guard startPriceOld < startPriceNew else{
        return (count - 1, startPriceOld - startPriceNew)
    }

    while Int(remaingBalance) < Int(newCarPrice) {
        oldCarDepreciationValue = abs((oldCarPrice * depPercent / 100) - oldCarPrice)
        newCarDepreciationValue = abs((newCarPrice * depPercent / 100) - newCarPrice)
        remaingBalance = Double(saving) + oldCarDepreciationValue
        saving += savingPerMonth
        newCarPrice = newCarDepreciationValue
        oldCarPrice = oldCarDepreciationValue
        count += 1
        if count.isMultiple(of: 2){
            depPercent += 0.5
        }
    }
    return (count - 1, Int((remaingBalance - newCarDepreciationValue).rounded()))
}

print(nbMonths(7500, 32000, 300, 1.55))
nbMonths(12000, 8000, 1000, 1.5)
nbMonths(8000, 8000, 1000, 1.5)
