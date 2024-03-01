//
//  SearchView.swift
//  PaudhaUI
//
//  Created by Anant Narain on 16/01/24.
//


import SwiftUI

struct Plant1: Identifiable {
    let id = UUID()
    let title: String
    let info: String
    let imageName: String
}

struct SearchView: View {
    @State var searchText = ""
    
    // Example plant data
    let plants: [Plant1] = [
        Plant1(title: "Rose", info: "Beautiful flower often given as a symbol of love.", imageName: "rose"),
        Plant1(title: "Lily", info: "Elegant flower with a pleasant fragrance.", imageName: "lily"),
        Plant1(title: "Sunflower", info: "Bright and cheerful flower that follows the sun.", imageName: "sunflower"),
        Plant1(title: "Sunflower", info: "Bright and cheerful flower that follows the sun.", imageName: "sunflower"),
            Plant1(title: "Hibiscus", info: "Colorful tropical flower with large, showy blooms.", imageName: "hibiscus"),
            Plant1(title: "Jasmine", info: "Fragrant flower often used in perfumes and teas.", imageName: "jasmine"),
            Plant1(title: "Lotus", info: "Sacred flower symbolizing purity and enlightenment.", imageName: "lotus"),
            Plant1(title: "Orchids", info: "Elegant and exotic flowers available in a variety of colors and patterns.", imageName: "orchids"),
        Plant1(title: "Bougainvillea", info: "Vibrant flowering plant with colorful bracts.", imageName: "bougainvillea"),
        Plant1(title: "Marigold", info: "Colorful flower often used in festive decorations and garlands.", imageName: "marigold"),
            Plant1(title: "Pansy", info: "Delicate flower with a wide range of colors and distinctive 'faces'.", imageName: "pansy"),
            Plant1(title: "Dahlia", info: "Showy flower known for its variety of colors, shapes, and sizes.", imageName: "dahlia"),
            Plant1(title: "Water Lily", info: "Elegant aquatic plant with floating leaves and vibrant blooms.", imageName: "waterlily"),
            Plant1(title: "Frangipani", info: "Fragrant tropical flower with waxy petals and a variety of colors.", imageName: "frangipani"),
            Plant1(title: "Zinnia", info: "Colorful annual flower that attracts butterflies and other pollinators.", imageName: "zinnia"),
            Plant1(title: "Crepe Jasmine", info: "Fragrant flowering plant with white, star-shaped blooms.", imageName: "crepejasmine"),
            Plant1(title: "Arabian Jasmine", info: "Fragrant flower often used in perfumes, teas, and religious ceremonies.", imageName: "arabianjasmine"),
            Plant1(title: "Night Jasmine", info: "Fragrant flower that blooms at night, filling the air with its sweet scent.", imageName: "nightjasmine"),
            Plant1(title: "Oleander", info: "Hardy flowering shrub known for its showy clusters of flowers.", imageName: "oleander"),
            Plant1(title: "Chrysanthemums", info: "Colorful flowers often associated with autumn and festive occasions.", imageName: "chrysanthemums"),
            Plant1(title: "Tuberose", info: "Fragrant flower known for its intense, sweet scent often used in perfumes.", imageName: "tuberose"),
            Plant1(title: "Parijat", info: "Fragrant flower with white petals and an orange center, known for its mythological significance.", imageName: "parijat"),
            Plant1(title: "Brahmakamala", info: "Rare and exotic flower with large, white petals and a strong, sweet scent.", imageName: "brahmakamala"),
            Plant1(title: "Common Jasmine", info: "Fragrant flower with white petals often used in teas and perfumes.", imageName: "commonjasmine"),
            Plant1(title: "White Shankapushpi", info: "Small white flower with medicinal properties, used in traditional Ayurvedic medicine.", imageName: "whiteshankapushpi"),
        Plant1(title: "Peacock Flower", info: "Colorful flower with red, orange, and yellow blooms resembling the feathers of a peacock.", imageName: "peacockflower"),
        Plant1(title: "Aloe Vera", info: "Succulent plant known for its medicinal properties and gel-filled leaves.", imageName: "aloevera"),
            Plant1(title: "Money Plant", info: "Popular indoor plant with heart-shaped leaves, believed to bring prosperity and good luck.", imageName: "moneyplant"),
            Plant1(title: "Ferns", info: "Group of non-flowering plants with delicate, feathery leaves and varied shapes and sizes.", imageName: "ferns"),
            Plant1(title: "Calocasia", info: "Also known as elephant ear plant, recognized for its large, heart-shaped leaves.", imageName: "calocasia"),
            Plant1(title: "Strelitzia", info: "Commonly called the bird of paradise plant, known for its vibrant, bird-like flowers and banana-like leaves.", imageName: "strelitzia"),
            Plant1(title: "Money Tree", info: "Believed to bring good luck, prosperity, and positive energy, often grown with braided trunks and large, round leaves.", imageName: "moneytree"),
            Plant1(title: "Philodendron", info: "Popular genus of flowering plants in the Araceae family, characterized by their heart-shaped leaves and ease of care.", imageName: "philodendron"),
            Plant1(title: "Chinese Evergreen", info: "Low-maintenance plant with striking variegated foliage, tolerant of low light and indoor conditions.", imageName: "chineseevergreen"),
            Plant1(title: "Spider Plant", info: "Easy-to-grow plant with long, arching leaves and small white flowers, often grown in hanging baskets.", imageName: "spiderplant"),
            Plant1(title: "String of Pearls", info: "Succulent vine with trailing stems adorned with small, bead-like leaves resembling pearls.", imageName: "stringofpearls"),
            Plant1(title: "Staghorn Fern", info: "Distinctive fern with unique fronds resembling the antlers of a stag, often mounted on boards or hung in baskets.", imageName: "staghornfern"),
            Plant1(title: "Orchid", info: "Exotic and diverse family of flowering plants, prized for their beautiful and long-lasting blooms in a wide range of colors and patterns.", imageName: "orchid"),
            Plant1(title: "Peace Lily", info: "Popular indoor plant with glossy green leaves and elegant white flowers, known for its air-purifying qualities.", imageName: "peacelily"),
            Plant1(title: "Monstera Deliciosa", info: "Iconic tropical plant with large, glossy leaves and unique perforations, adding a bold and exotic touch to any space.", imageName: "monstera"),
            Plant1(title: "Asparagus Fern", info: "Graceful and airy fern with delicate, feathery foliage, often grown as a hanging plant or in containers.", imageName: "asparagusfern")
        
        
        
        
    ]
    
    var filteredPlants: [Plant1] {
        if searchText.isEmpty {
            return plants
        } else {
            return plants.filter { $0.title.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(filteredPlants) { plant in
                        NavigationLink(destination: PlantDetailView1(plant: plant)) {
                            PlantCardView(plant: plant)
                        }
                    }
                }
                .padding()
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(red: 0.9686, green: 0.8824, blue: 0.8431), Color(red: 240/255.0, green: 255/255.0, blue: 241/255.0)]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing
                )
            )
            .searchable(text: $searchText)
            .navigationTitle("Search for Plants")
        }
    }
}

struct PlantCardView: View {
    let plant: Plant1
    
    var body: some View {
        HStack(spacing: 15) {
            Image(plant.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .shadow(radius: 5)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(plant.title)
                    .font(.headline)
                Text(plant.info)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image(systemName: "arrow.right")
                .foregroundColor(.blue)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct PlantDetailView1: View {
    let plant: Plant1
    
    var body: some View {
        VStack {
            Image(plant.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 200)
                .cornerRadius(10)
                .padding()
            
            Text(plant.title)
                .font(.title)
                .padding()
            
            Text(plant.info)
                .font(.body)
                .multilineTextAlignment(.leading)
                .padding()
            
            Spacer()
        }
        .navigationBarTitle("Plant Details", displayMode: .inline)
    }
}


#Preview {
    SearchView()
}
