import SwiftUI

struct LoginView: View {
    @State private var isLogged = false // Add a state variable for navigation

    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.9686, green: 0.8824, blue: 0.8431)
                    .ignoresSafeArea()
                Image("plantHang")
                    .offset(x: 200, y: -150)

                Image("groundPlant")
                    .resizable()
                    .scaledToFit()
                    .offset(x: -120, y: 250)

                VStack {
                    Spacer()

                    VStack(spacing: 20) {
                        Text("Login")
                            .font(.title)
                            .foregroundColor(.black.opacity(0.7))

                        TextField("Username", text: .constant(""))
                            .padding()
                            .background(Color.white)
                            .cornerRadius(200.0)

                        SecureField("Password", text: .constant(""))
                            .padding()
                            .background(Color.white)
                            .cornerRadius(200.0)

                        Button(action: {
                            // Add your login authentication logic here
                            // For demonstration purposes, set isLogged to true
                            isLogged = true
                        }) {
                            Text("Login")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding()
                                .frame(width: 220, height: 50)
                                .background(Color(red: 0.9686, green: 0.8824, blue: 0.8431))
                                .cornerRadius(10.0)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .stroke(Color( red: 0.2, green: 0.2, blue: 0.2).opacity(0.4), lineWidth: 2)
                                )
                        }

                        HStack(spacing: 20) {
                            LogoButton(imageName: "GoogleLogo") {
                                openURL("https://accounts.google.com")
                            }

                            LogoButton(imageName: "appleLogo") {
                                openURL("https://appleid.apple.com")
                            }

                            LogoButton(imageName: "FacebookLogo") {
                                openURL("https://www.facebook.com")
                            }
                        }
                        .padding(.top, 20)

                        HStack(spacing: 0) {
                            Text("Don't have an account? ")
                                .foregroundColor(.blue)
                                .font(.body)

                            Text("Sign in")
                                .underline()  // Add underline to the text
                                .foregroundColor(.blue)
                                .font(.body)
                        }
                        .onTapGesture {
                            // Handle tap on "Sign in" here
                            // You can navigate to the sign-in view or perform any action
                            print("Sign in tapped")
                        }
                    }
                    .padding()
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(60.0)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .shadow(color: Color.brown.opacity(0.3), radius: 10, x: 0, y: 5)
                }
                Spacer()
            }
            
            .background(NavigationLink(destination: PaudhaTabView(), isActive: $isLogged) {
                EmptyView()
            })
        }.navigationBarBackButtonHidden(true)
    }
}


struct LogoButton: View {
    var imageName: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(imageName)
                .resizable()
                .frame(width: 40, height: 40)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

func openURL(_ urlString: String) {
    if let url = URL(string: urlString) {
        UIApplication.shared.open(url)
    }
}

