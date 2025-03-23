import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(spacing: 0) {
            // 상단 Title 부분
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
            .padding(.bottom, 100)
            
            // 아이디 입력 및 비밀번호 입력 부분
            VStack(spacing: 12) {
                Text("아이디")
                    .font(.mainTextRegular13)
                    .foregroundStyle(Color("black01"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Divider()
                
                Text("비밀번호")
                    .font(.mainTextRegular13)
                    .foregroundStyle(Color("black01"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Divider()
            }
            
            // 로그인 부분
            VStack(spacing: 5) {
                HStack {
                    Button(action: {
                    }) {
                        Image("login_button")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 370, height: 46)
                    }
                    .padding(.bottom, 35)
                }
                
                Text("이메일로 회원가입하기")
                    .font(.mainTextRegular12)
                    .underline()
                    .foregroundStyle(Color("gray04"))
                    .padding(.bottom, 20)

                HStack  {
                    Button(action: {
                    }) {
                        Image("kakao_login")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 306, height: 45)
                    }
                    .padding(.bottom, 10)
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
        .padding(.leading, 16)
        .padding(.trailing, 16)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
