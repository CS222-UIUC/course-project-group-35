


import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            NavigationView {
                ActivitiesContentView(activtiesData: Activities(data: ActivitiesMockStore.activityData, items: ActivitiesMockStore.activities))
            }
            .tag(0)
            .tabItem {
                Image("profile-glyph-icon")
                    .resizable()
                Text("Home")
            }
            
            NavigationView {
                ActivitiesCartView(ShoppingCartItemsData: ActivitiesCart(data: ActivitiesMockStore.shoppingCartData))
            }
            .tag(1)
            .tabItem {
                Image("shopping-cart-icon")
                Text("Inventory")
            }
            
            NavigationView {
                     AccountView()
                  }
                   .tag(2)
                    .tabItem {
                    Image("search-icon-glyph2")
                            .resizable()
                    Text("Search")
                }
        }
    }
}



