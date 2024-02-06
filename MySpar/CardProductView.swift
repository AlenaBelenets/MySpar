//
//  CardProductView.swift
//  MySpar
//
//  Created by Alena Belenets on 31.01.2024.
//

import SwiftUI

struct CardProductView: View {

    var body: some View {
        NavigationView {
            
            TabView {
                
                ScrollView {
                    
                    HStack {
                        Text("Цена по карте")
                            .foregroundColor(.white)
                            .padding(7)
                            .background (
                                RoundedRectangle(cornerRadius: 7)
                                    .fill(Color.green)
                            )
                            .padding(.leading, 6)
                        Spacer()
                    }
                    
                    Image("ImageOfLipa")
                        .resizable()
                        .frame(width: 300, height: 250)
                    
                    ratingAndPromotions
                    
                    Text("Добавка \"Липа\" к чаю 200 г")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.trailing, 80)
                    
                    HStack() {
                        Image("ImageFlag")
                            .resizable()
                            .frame(width: 40,height: 40)
                        Text("Испания, Риоха")
                            .opacity(0.7)
                        Spacer()
                    }.padding(.bottom, 10)
                    
                    mainCharacteristics
                    HStack {
                        Text("Отзывы")
                            .font(.headline)
                            .fontWeight(.heavy)
                        Spacer()
                        Text("Все 152")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.green)
                    }.padding()
                    ScrollView(.horizontal) {
                        HStack {
                            productReviews
                            productReviews
                        }
                    }
                    VStack(spacing: 25) {
                        Text("Оставить отзыв")
                            .foregroundColor(.green)
                            .font(.headline)
                            .fontWeight(.heavy)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.green, lineWidth: 5)
                            )
                            .cornerRadius(50)
                        
                        Picker(selection: .constant(0), label: Text("Picker")) {
                            Text("Шт").tag(0)
                            Text("Кг").tag(1)
                        }
                        .pickerStyle(.segmented)
                        .frame(maxWidth: .infinity)
                    }
                    
                    HStack {
                        VStack {
                            HStack {
                                Text("55.9")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                Text("₽⁄кг")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                            }
                            Text("199.0")
                                .font(.system(size: 12))
                                .strikethrough()
                                .opacity(0.5)
                            
                        }
                        Stepper(value: .constant(1), in: 1...10) {
                            
                        }
                    }
                    
                }.padding()
                
                    .tabItem {
                        Image("Image")
                            .foregroundColor(.green)
                        Text("Главная")
                    }
                
                
                Text("Каталог")
                    .tabItem {
                        Image(systemName: "circle.grid.2x2")
                        Text("Каталог")
                    }
                Text("Корзина")
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Корзина")
                    }
                
                Text("Профиль")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Профиль")
                    }
                
            }
            .accentColor(.green)
        }


        }

        private var ratingAndPromotions: some View {
            HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text("4.1")
                Text("| 19 отзывов")
                    .opacity(0.5)
                Spacer()
                Image("ImageSale")
            }
        }

        private var mainCharacteristics: some
        View {
            VStack(alignment: .leading, spacing: 10) {
                Text("Описание")
                    .font(.headline)
                    .fontWeight(.heavy)
                    .opacity(0.65)

                Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.")
                    .fontWeight(.medium)
                    .opacity(0.65)
                Text("Основные характеристики")
                    .font(.headline)
                    .fontWeight(.heavy)
                    .opacity(0.65)

                HStack() {
                    Text("Производство")
                        .font(.subheadline)
                    Spacer()
                    Text("……………")
                        .opacity(0.5)
                    Spacer()
                    Text("Россия, Краснодарский край")
                        .font(.subheadline)
                        .multilineTextAlignment(.trailing)
                }
                HStack() {
                    Text("Энергетическая ценность, ккал/100 г")
                        .font(.subheadline)
                    Spacer()
                    Text("……………………")
                        .opacity(0.5)
                    Spacer()
                    Text("25 ккал,105  кДж")
                        .font(.subheadline)
                        .multilineTextAlignment(.trailing)
                }
                HStack() {
                    Text("Жиры/100 г")
                        .font(.subheadline)
                    Spacer()
                    Text("……………………………………………")
                        .opacity(0.5)
                    Spacer()
                    Text("0,1 г")
                        .font(.subheadline)
                        .multilineTextAlignment(.trailing)
                }
                HStack() {
                    Text("Белки/100 г")
                        .font(.subheadline)
                    Spacer()
                    Text("……………………………………………")
                        .opacity(0.5)
                    Spacer()
                    Text("1,3 г")
                        .font(.subheadline)
                        .multilineTextAlignment(.trailing)
                }
                HStack() {
                    Text("Углеводы/100 г")
                        .font(.subheadline)
                    Spacer()
                    Text("………………………………………")
                        .opacity(0.5)
                    Spacer()
                    Text("3,3 г")
                        .font(.subheadline)
                        .multilineTextAlignment(.trailing)
                }

                Text("Все характеристики")
                    .font(.headline)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.green)
                    .padding(.top, 16)
            }
        }

        private var productReviews: some View {
            HStack(spacing: 15) {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Александр В.")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text("7 мая 2021")
                        .font(.caption)
                        .opacity(0.5)
                    HStack {
                        ForEach(0..<4) { _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                        Image(systemName: "star")
                            .foregroundColor(.gray)
                    }.padding(.bottom,  6)

                    Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                        .font(.caption)
                        .opacity(0.6)

                }.padding()

                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .shadow(color: .gray, radius: 3, x: 0, y: 3)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.clear, lineWidth: 1))
                    )
                    .frame(width: UIScreen.main.bounds.width * 0.6)
                    .padding(.vertical, 10)


            }.navigationBarTitle("", displayMode: .inline)

                .navigationBarItems(leading:
                                        Button(action: {}) {
                    Image(systemName: "arrow.left")
                }, trailing:
                                        HStack {
                    Button(action: {}) {
                        Image(systemName: "doc.plaintext")
                    }
                    Button(action: {}) {
                        Image(systemName: "square.and.arrow.up")
                    }
                    Button(action: {}) {
                        Image(systemName: "heart")
                    }
                })
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardProductView()
    }
}
