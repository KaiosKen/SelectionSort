

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
import Foundation

func SelectionSort(array: [Int])
{
    var trueStatement = true
    var p = 0
    var swap = 0
    var swapTotal = 0
    var unsortedArray = array
    var sortedArray : [Int] = array
    let arrayCount = array.count-1
    while !unsortedArray.isEmpty
    {
       // print(unsortedArray)
        print("Pass:  \(p), Swaps: \(swap)/\(swapTotal), Array: \(sortedArray)")
        if let result = unsortedArray.min()
        {
            let unsortedResultIndex = unsortedArray.firstIndex(of: result)
            let resultIndex = sortedArray.firstIndex(of: result)
            var resultIndex2 : Int = 0
            var swapReady = false
            for x in 0...arrayCount {
                if result <= sortedArray[x] && !swapReady {
                    resultIndex2 = x
                    swapReady = true
                }
            }   
            sortedArray.swapAt(resultIndex!, resultIndex2)
            swapTotal += 1
            unsortedArray.remove(at: unsortedResultIndex!)
            p += 1
            if trueStatement {
                swap += 1
                trueStatement = false
            }           
        }
        else
        {
            //array is empty. no minimum element.
        }
    }     
}
SelectionSort(array: unsortedIntegers)
