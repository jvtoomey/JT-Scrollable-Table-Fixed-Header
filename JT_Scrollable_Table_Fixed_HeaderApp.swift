
import SwiftUI

@main
struct JT_Scrollable_Table_Fixed_HeaderApp: App {
    var body: some Scene {
        WindowGroup {
            
            //Put dimensions in here
            //*****************************************
            let numRows = 20
            let numCols = 10
            //*****************************************

            let dataCreator = DataCreator()
            let fakeHeaders = dataCreator.generateDummyColumnHeaders(numCols: numCols)
            let fakeData = dataCreator.generateDummyRecs(numRows: numRows, numCols: numCols)
            ContentView(headers: fakeHeaders, recs: fakeData)
        }
    }
}
