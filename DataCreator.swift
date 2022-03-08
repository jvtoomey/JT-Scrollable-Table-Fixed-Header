
import Foundation

struct DataCreator {
    
    func generateDummyColumnHeaders (numCols: Int) -> [String] {
        
        var result:[String] = []
        
        for i in 1...numCols {
            let cellVal = "This is Col # \(i)"
            result.append(cellVal)
        }

        return result
    }
    
    func generateDummyRecs(numRows: Int, numCols: Int) -> [[String]] {
        
        var result:[[String]] = []
        
        for i in 1...numRows {
            var singleRow:[String] = []
            for j in 1...numCols {
                let cellVal = "\(i) - \(j)"
                singleRow.append(cellVal)
            }
            result.append(singleRow)
        }

        return result
    }
}
