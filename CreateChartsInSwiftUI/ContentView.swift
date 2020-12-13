//
//  ContentView.swift
//  CreateChartsInSwiftUI
//
//  Created by ramil on 13.12.2020.
//

import SwiftUI
import SwiftUICharts

struct ChartViews: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            LineChartView(data: [11, 32, 4, 5, 8, 9, 23], title: "Line Chart")
                .padding()
            
            BarChartView(data: ChartData(values: [
                ("Jan", 12),
                ("Feb", 2),
                ("Mar", 6),
                ("Apr", 9),
                ("May", 10),
                ("Jun", 2),
            ]), title: "Bar Chart")
            .padding()
            
            PieChartView(data: [23, 42, 12, 5, 6, 13], title: "Pie Chart")
                .padding()
        }
    }
}

struct LineViews: View {
    var body: some View {
        ScrollView {
            LineView(data: [12, 10, 9, 23, 4, 9, 13, 5, 19, 8])
                .padding()
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            ChartViews()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Menu")
                }
            LineViews()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Order")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
