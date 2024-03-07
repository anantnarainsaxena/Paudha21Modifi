import SwiftUI

struct CardStackView: View {
    @Binding var cards: [CardModel]
    @State private var currentIndex = 0
    @State private var offset: CGSize = .zero
    let cardWidth: CGFloat = 350
    let cardHeight: CGFloat = 150
    let horizontalSpacing: CGFloat = 20
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(cards.indices) { index in
                    VStack {
                        Text(cards[index].title)
                            .font(.system(size: 18))
                            .foregroundColor(Color.green)
                        
                        Text(cards[index].content)
                            .font(.system(size: 17))
                            .multilineTextAlignment(.leading)
                    }
                    .padding(10) // Add padding to separate content from card edges
                    .frame(width: cardWidth, height: cardHeight)
                    .background(Color.white) // Maintain card color
                    .cornerRadius(16)
                    .shadow(radius: 8)
                    .offset(y: CGFloat(index) * 10)
                    .zIndex(Double(index))
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                offset = value.translation
                            }
                            .onEnded { value in
                                let offsetThreshold = cardHeight / 2
                                
                                withAnimation {
                                    // Check if the drag offset is greater than half the card height
                                    if value.translation.height > offsetThreshold {
                                        currentIndex += 1
                                        let removedCard = cards.removeFirst()
                                        cards.append(removedCard)
                                    } else if value.translation.height < -offsetThreshold {
                                        currentIndex -= 1
                                        let removedCard = cards.removeLast()
                                        cards.insert(removedCard, at: 0)
                                    }
                                    
                                    offset = .zero
                                }
                            }
                    )
                }
                .padding()
            }
        }
    }
}
