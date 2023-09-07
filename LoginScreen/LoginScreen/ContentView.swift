import SwiftUI

struct ContentView: View {
    @State private var edEmail = ""
    @State private var edPassword = ""
    @State private var isOn = false
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                VStack(alignment: .leading) {
                    Text("Crie sua conta")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    VStack(alignment: .leading) {
                        Text("E-mail")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.secondary)
                        HStack {
                            TextField("", text: $edEmail)
                                .frame(height: 50)
                        }
                        .border(Color.black, width: 3)
                        .cornerRadius(10)
                    }.padding(.top)
         
                    VStack(alignment: .leading) {
                        HStack{
                            Text("Senha")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)
                            Spacer()
                            Button(action: {
                                
                            }) {
                                Text("Recuperar senha")
                            }
                        }
                        HStack {
                            SecureField("", text: $edPassword)
                                .font(.headline)
                                .frame(height: 50)
                            Spacer()
                            Button(action: {
                                
                            }) {
                                Image(systemName: "eye")
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                        }
                        .border(Color.black, width: 3)
                        .cornerRadius(10)
                    }.padding(.top)
                    Toggle(isOn: $isOn) {
                        Text("Lembrar minha senha")
                    }
         
                    Button(action: {
                        
                    }) {
                        Text("Criar conta")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }.padding(.top)
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image(systemName: "applelogo")
                                .foregroundColor(Color.black)
                            
                            Text("Continuar com Apple")
                                .font(.headline)
                                .fontWeight(.bold)
                                .padding()
                            
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .border(Color.black, width: 5)
                        .cornerRadius(10)
                    }.padding(.top)
                    
                    HStack {
                        Spacer()
                        Text("Já possui uma conta?")
                            .font(.headline)
                            .foregroundColor(.secondary)

                        Button(action: {

                        }) {
                            Text("Entre")
                                .fontWeight(.bold)
                        }
                        Spacer()
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                .padding()
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
