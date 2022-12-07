

import SwiftUI

struct Ingredients {
    let dish:String
    let ings = ["4 tablespoons extra-virgin olive oil"]
}

struct AccountView: View {
    
    @State var searchText = ""
    
    let names = ["Chicken Soup", "Lasagna", "Shrimp Fried Rice", "Chocolate Oreo Cookie Crust", "Pasta",
                 "Sous Vide Smoked Beef Chuck", "Fruitcakecake Ice Cream", "Thai Dried Chili Dipping Sauce", "Lentil and Chestnut Soup", "Grill Roasted Carrots", "Confetti Cookies"]
    
    
    let ing = ["4 tablespoons extra-virgin olive oil"]
//    struct Dish {
//        var name: String
//        var ingredients: [ing]
//    }
    
    
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
                                
                            
                                    // GeometryReader { g in
//                                        ScrollView {
//                                            Text("HELLO")
//                                            Text("HELLO")
//                                            Text("HELLO")
//                                            Text("HELLO")
//                                            Text("HELLO")
//                                        }
                                        ZStack {
                                            VStack (alignment: .leading) {
                                                Image(name)
                                                    .renderingMode(.original)
                                                    .resizable()
                                                    .frame(width: 300, height: 300)
                                                    .padding(.trailing, 10)
                                                    .padding(.leading, 50)
                                                Text(name).frame(maxWidth: .infinity, alignment: .center)
                                                .bold()
                                                // .padding(.bottom, 1000)
                                                // Text(name)
                                            VStack (alignment: .leading) {
                                                Text("Ingredients").frame(maxWidth: .infinity, alignment: .center)
                                                .bold()
                                                .padding(.top, 50
                                                )
                                                // Text(ing[0])
                                                Text("- 7 ounces chocolate cookie crumbs, homemade or store-bought, traditional or gluten-free, see notes (about 1 2/3 cups; 195g)").padding(.top, 10)
                                                Text("- 4 ounces unsalted butter, melted (about 1/2 cup; 113g)").padding(.top, 10)
                                                Text("- Pinch of salt").padding(.top, 10)
//                                                Text("- 1 teaspoon dried oregano").padding(.top, 10)
//                                                Text("- 1/2 teaspoon red chile flakes").padding(.top, 10)
//                                                Text("- 1/2 cup dry white wine").padding(.top, 10)
//                                                Text("- 2 (28-ounce) cans whole peeled tomatoes").padding(.top, 10)
//                                                Text("- Kosher salt").padding(.top, 10)
                                            }
                                                
                                                VStack(alignment: .leading) {
                                                    Text("Directions").frame(maxWidth: .infinity, alignment: .center)
                                                    .bold()
                                                    .padding(.top, 50
                                                    )
                                                    
                                                    Text("1. Combine the cookie crumbs with melted butter and a pinch of salt in a medium bowl, folding with a flexible spatula until the crumbs are fully moistened.").padding(.top, 10)
                                                    Text("2. Scrape into a 9-inch pie plate, then compress into an even layer with a flat-bottomed drinking glass or measuring cup, or by hand.").padding(.top, 10)
                                                    Text("3. Keep pressing until the crumbs are in a compact, even layer across the bottom and sides of the pan. Use as directed in your recipe of choice.").padding(.top, 10)
                                                    // Text("4. ")
                                                    
                                                }
                                                
                                                
                                                
                                                // Text("pound hearty short pasta, such as ziti or penne rigate")
                                                
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
                            
                                                 // Spacer()
                                            }
                                            // .padding(.bottom, 10000)
                                            }
//                                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
//                                            .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
//                                            .cornerRadius(10)
                            
                                        // }
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


struct test {
//    var resourceItems: ActivityResourcesItem
//    var body: some View {
//        GeometryReader { g in
//            ZStack{
//                Image("\(self.resourceItems.resourceImage)")
//                .resizable()
//                .opacity(0.8)
//                .aspectRatio(contentMode: .fill)
//                .background(Color.black)
//                VStack(alignment: .center) {
//
//                    Text(self.resourceItems.resourceName)
//                        .font(.system(size: 16, weight: .bold, design: Font.Design.default))
//                        .frame(width: 150)
//                        .foregroundColor(Color.white)
//                        .multilineTextAlignment(.center)
//                }
//
//            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
//            .cornerRadius(10)
//        }
//    }
}

