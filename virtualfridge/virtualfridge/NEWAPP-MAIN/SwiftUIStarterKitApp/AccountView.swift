

import SwiftUI

struct AccountView: View {
    @State var notificationToggle: Bool = false
    @State var locationUsage: Bool = false
    @State var username: String = "James"
    @State var selectedCurrency: Int = 0
    @State var currencyArray: [String] = ["$ US Dollar", "£ GBP", "€ Euro"]
    
    @State var selectedPaymentMethod: Int = 1
    @State var paymentMethodArray: [String] = ["Paypal", "Credit/Debit Card", "Bitcoin"]
    
    @State var searchText = ""
    
    
    let names = ["Chicken Soup", "Lasagna", "Shrimp Fried Rice", "Oreo Milkshake"]
    
    var body: some View {
        
        // struct ContentView: View {
            

            // var body: some View {
//        if #available(iOS 16.0, *) {
//            NavigationStack {
//                Text("Searching for \(searchText)")
//                    .navigationTitle("Recipe Finder")
//            }
//            .searchable(text: $searchText)
        // } else {
            // Fallback on earlier versions
        // }
            // }
        // }
        
        
        
        
        // struct ContentView: View {
            
            // @State private var searchText = ""

            // var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                List {
                    ForEach(searchResults, id: \.self) { name in
                        NavigationLink {
                            Text(name)
                        } label: {
                            Text(name)
                        }
                    }
                }
                .navigationTitle("Recipe Finder")
            }
            .searchable(text: $searchText) {
                ForEach(searchResults, id: \.self) { result in
                    Text("\(result)").searchCompletion(result)
                }
            }
        } else {
            // Fallback on earlier versions
        }
            // }

            
        
        
        
        // }
        
        
        
        
        
        
        
//        GeometryReader { g in
//            VStack {
//                Image("italy")
//                    .resizable()
//                    .frame(width: 100, height: 100)
//                    .background(Color.yellow)
//                    .clipShape(Circle())
//                    .padding(.bottom, 10)
//                Text("John Appleseed")
//                    .font(.system(size: 20))
//                    
//                Form {
//                    
//                    Section(header: Text("Payment Settings")) {
//                        Picker(selection: self.$selectedCurrency, label: Text("Currency")) {
//                                         ForEach(0 ..< self.currencyArray.count) {
//                                                  Text(self.currencyArray[$0]).tag($0)
//                                            }
//                        }
//                        
//                        Picker(selection: self.$selectedPaymentMethod, label: Text("Payment Method")) {
//                                  ForEach(0 ..< self.paymentMethodArray.count) {
//                                       Text(self.paymentMethodArray[$0]).tag($0)
//                                     }
//                        }
//                        Button(action: {
//                            print("Button tapped")
//                            
//                        }) {
//                            
//                            if (self.paymentMethodArray[self.selectedPaymentMethod]) == "Credit/Debit Card" {
//                                Text("Add a Credit/Debit Card to your account")
//                                
//                            } else {
//                                Text("Connect \(self.paymentMethodArray[self.selectedPaymentMethod]) to your account")
//                            }
//                        }
//
//                    }
//                    Section(header: Text("Personal Information")) {
//                       NavigationLink(destination: Text("Profile Info")) {
//                            Text("Profile Information")
//                        }
//                       
//                        NavigationLink(destination: Text("Billing Info")) {
//                            Text("Billing Information")
//                        }
//                    }
//                    
//                    Section(footer: Text("Allow push notifications to get latest travel and equipment deals")) {
//                        Toggle(isOn: self.$locationUsage) {
//                              Text("Location Usage")
//                        }
//                        Toggle(isOn: self.$notificationToggle) {
//                            Text("Notifications")
//                        }
//                    }
//                        
//            }.background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
//            .navigationBarTitle("Settings")
//         }
//        }
    }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
 }

