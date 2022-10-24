import Foundation
import Swift

var randomWords : [String] = []

// Read the contents of the specified file
do {
    //This do-catch program puts a txt file into an array and seperates it into multiple values
    let data = try String(contentsOfFile:"random-10e4b.txt", encoding: String.Encoding.utf8)
    randomWords = data.components(separatedBy: "\n")
    randomWords.removeLast()
} catch let err as NSError {
    // do something with Error
    print(err)

}
func SelectionSort(array: [String])
{
    
    var swapTotal = 0
    var unsortedArray = array
    var sortedArray : [String] = array
    let arrayCount = array.count-1
    while !unsortedArray.isEmpty
    {
  //      print(unsortedArray)
  //     print("Pass:  \(p), Swaps: \(swap)/\(swapTotal), Array: \(sortedArray)")
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
           //  print(swapTotal)
            unsortedArray.remove(at: unsortedResultIndex!)
           
           
        }
        else
        {
            //array is empty. no minimum element.
        }
    }     
}
SelectionSort(array: randomWords)
