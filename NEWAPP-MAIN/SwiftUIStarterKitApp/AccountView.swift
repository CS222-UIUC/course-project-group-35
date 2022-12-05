

import SwiftUI

struct AccountView: View {
    
    @State var searchText = ""
    
    let names = ["Chicken Soup", "Lasagna", "Shrimp Fried Rice", "Chocolate Oreo Cookie Crust"]
    let imgView = UIImageView()
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                List {
                    ForEach(searchResults, id: \.self) { name in
                        NavigationLink {
//                            VStack {
//                                Image(name)
//                                    .renderingMode(.original)
//                                    .resizable()
//                                    .frame(width: 300, height: 300)
//                                    .padding(.trailing, 10)
//                                    .padding(.leading, 10)
//                                Text(name)
//
//                            }
//                                .frame(height: 100)
//                                .padding(.top, 10)
                            
                            
                            
                            
                            // struct ShopNewProductViews: View {
                                // var activityResources: ActivityResource
                            
                                // var body: some View {
                            ScrollView {
                                
                            
                                    GeometryReader { g in
                                        ZStack {
                                            VStack (alignment: .leading){
                                                Image(name)
                                                    .renderingMode(.original)
                                                    .resizable()
                                                    .frame(width: 300, height: 300)
                                                    .padding(.trailing, 10)
                                                    .padding(.leading, 50)
                                                Text(name).frame(maxWidth: .infinity, alignment: .center)
                                                .bold()
                                                // Text(name)
                                                // Text("BITCH")
                                                
//                                                    .padding(.top, 18)
//                                                    .padding(.leading, 18)
//                                                    .font(.system(size: 20, weight: .bold, design: Font.Design.default))
//                                                    .foregroundColor(Color.black)
//                                                Text(self.activityResources.resourceDescription)
//                                                    .padding(.leading, 18)
//                                                    .padding(.trailing, 18)
//                                                    .font(.system(size: 14))
//                                                    .foregroundColor(Color.black)
                            
                            
//                                                ScrollView (.horizontal, showsIndicators: false) {
//                                                    HStack (spacing: 10) {
//
//                                                        ForEach(self.activityResources.resources, id: \.id) { item in
//                                                            ActivityResourceItems(resourceItems: item)
//                                                                                .frame(width: 150, height: 200)
//                                                        }
//
//                                                    }.padding(.leading, 18)
//                                                    .padding(.trailing, 18)
//                                                        .padding(.top, 25)
//                                                }
                            
                                                 Spacer()
                                            }
                                            }
//                                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
//                                            .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
//                                            .cornerRadius(10)
                            
                                        }
                                    }
                                // }
                            
                            
                            
                            
                            // content page push\
                            //Create image view simply like this.
                            
                            // imgView.frame = CGRect(x: 200, y: 200, width: 200, height: 200)
                            // imgView.image = UIImage(named: "yourimagename")//Assign image to ImageView
                            // imgView.imgViewCorners()
                            
                            // imgView.addSubview(imgView)//Add image to our view

                            //Add image view properties like this(This is one of the way to add properties).
//                            extension UIImageView {
//                                //If you want only round corners
//                                func imgViewCorners() {
//                                    layer.cornerRadius = 10
//                                    layer.borderWidth = 1.0
//                                    layer.masksToBounds = true
//                                }
//                            }
                            
                            // Text(name)
                            
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
        }
    }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
 }

