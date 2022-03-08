
import SwiftUI

struct ContentView: View {

    @State var headers:[String]?
    @State var recs:[[String]]?

    var body: some View {
        
        GeometryReader {geometry in
            ScrollView(.horizontal) {
            //the 0 spacing remove the gap between the table header and the table rows
            VStack (spacing: 0) {
                ZStack (alignment: .leading) {
                    Color(uiColor: .systemBlue)
                    
                    HStack {
                        
                        ForEach(headers!, id: \.self) {hdr in
                                Text(hdr)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 150)
                                if (hdr != headers!.last) {
                                    //this is the line between the cells
                                    Rectangle()
                                        .fill(Color.white)
                                        .frame(width: 2)
                                }
                        }

                    } //HStack
                } //ZStack
                .frame(height: geometry.size.height * 0.1)
                .padding(.leading, 14)
                
                List {
                    ForEach(recs!, id: \.self) {rec in
                        HStack {
                            ForEach(rec, id: \.self) {item in
                                    Text(item)
                                    .frame(width: 150)
                                    if (item != rec.last) {
                                        Rectangle()
                                            .fill(Color.gray)
                                            .frame(width: 2)
                                    }
                            }
                        }
                        //this removes the top and bottom insets so the vertical divider grid lines meet.
                        .listRowInsets(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 14))
                    }
                }
                //you need to this lop off the margins on the left so the columns line up
                .listStyle(.plain)
                
            } //VStack
            } //ScrollView
            
        } //GeometryReader
    } //body
    
    
} //struct
