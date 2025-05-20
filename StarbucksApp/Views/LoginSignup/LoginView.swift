import SwiftUI

struct LoginView: View {
    
    // 로그인 정보 바인딩을 위한 변수 추가
    @State private var id: String = ""
    @State private var pwd: String = ""
    
    // 텍스트 필드 밑줄 색을 관리하는 상태 추가
    @FocusState private var isIdFocused: Bool
    @FocusState private var isPwdFocused: Bool
    
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    @AppStorage("email") private var savedEmail: String = ""
    @AppStorage("password") private var savedPassword: String = ""
    
    @State private var showLoginError = false
    @State private var navigateToHome = false
    
    var body: some View {
        NavigationStack() {
            VStack(spacing: 0) {
                // 상단 Title 부분
                Group {
                    VStack {
                        Image("starbucks_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 95, height: 95)
                            .frame(maxWidth: .infinity, alignment: .leading) // 왼쪽 정렬
                        
                        Text("안녕하세요.")
                            .font(.mainTextExtraBold24)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("스타벅스입니다.")
                            .font(.mainTextExtraBold24)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("회원 서비스 이용을 위해 로그인해주세요")
                            .font(.mainTextMedium16)
                            .foregroundStyle(Color("gray01"))
                            .frame(maxWidth: .infinity, alignment: .leading) // 왼쪽 정렬
                            .padding(.top, 10)
                    }
                    .padding(.top, 100)
                    .padding(.bottom, 50)
                }
                
                // 아이디 입력 및 비밀번호 입력 부분
                Group {
                    VStack(spacing: 12) {
                        TextField("아이디", text: $id)
                            .font(.mainTextRegular13)
                            .focused($isIdFocused)
                        
                        Rectangle()
                            .frame(height: 1)
                            .foregroundStyle(isIdFocused ? Color("green01") : Color("gray03"))
                        
                        SecureField("비밀번호", text: $pwd)
                            .font(.mainTextRegular13)
                            .focused($isPwdFocused)
                        
                        Rectangle()
                            .frame(height: 1)
                            .foregroundStyle(isPwdFocused ? Color("green01") : Color("gray03"))
                    }
                }
                
                // 로그인 부분
                Group {
                    VStack(spacing: 5) {
                        HStack {
                            Button(action: {
                                print("저장된 이메일: \(savedEmail)")
                                print("저장된 비밀번호: \(savedPassword)")
                                print("입력된 이메일: \(id)")
                                print("입력된 비밀번호: \(pwd)")
                                
                                if id == savedEmail && pwd == savedPassword {
                                    print("✅ 로그인 성공")
                                    isLoggedIn = true
                                    navigateToHome = true
                                } else {
                                    print("❌ 로그인 실패")
                                    showLoginError = true
                                }
                            }) {
                                Image("login_button")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 370, height: 46)
                            }
                            .padding(.bottom, 20)
                            
                            // 로그인 실패 알림
                            .alert("로그인 실패", isPresented: $showLoginError) {
                                Button("확인", role: .cancel) { }
                             } message: {
                                 Text("아이디 또는 비밀번호가 일치하지 않습니다.")
                             }

                             // 로그인 성공 후 TapView로 이동
                             .navigationDestination(isPresented: $navigateToHome) {
                                 MainTabView()
                            }
                        }
                        
                        NavigationLink(destination: SignupView()) {
                            Text("이메일로 회원가입하기")
                                .font(.mainTextRegular12)
                                .underline()
                                .foregroundStyle(Color("gray04"))
                                .padding(.bottom, 20)
                            
                        }
                        
                        HStack {
                            Button(action: {
                            }) {
                                Image("kakao_login")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 306, height: 45)
                            }
                            .padding(.bottom, 1)
                        }
                        
                        HStack {
                            Button(action: {
                            }) {
                                Image("apple_login")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 306, height: 45)
                            }
                        }
                    }
                    .padding(.top, 15)
                }
            }
        .padding(.horizontal, 16)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
