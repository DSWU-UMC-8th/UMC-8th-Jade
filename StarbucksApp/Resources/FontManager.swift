import Foundation
import SwiftUI

extension Font {
    enum Pretend {
        case extraBold
        case bold
        case semibold
        case medium
        case regular
        case light
        
        var value: String {
            switch self {
            case .extraBold:
                return "Pretendard-ExtraBold"
            case .bold:
                return "Pretendard-Bold"
            case .semibold:
                return "Pretendard-SemiBold"
            case .medium:
                return "Pretendard-Medium"
            case .regular:
                return "Pretendard-Regular"
            case .light:
                return "Pretendard-Light"
            }
        }
        
        // 기본적인 폰트 크기를 설정하기 위한 메소드
        func size(_ size: CGFloat) -> Font {
            return .custom(self.value, size: size)
        }
    }
    
    // 특정 크기의 폰트를 반환하는 편의 메소드들
    static func mainText(type: Pretend, size: CGFloat) -> Font {
        return type.size(size)
    }
    
    static var mainTextBold20: Font {
        return .mainText(type: .bold, size: 20)
    }
    
    static var mainTextBold16: Font {
        return .mainText(type: .bold, size: 16)
    }
    
    static var mainTextBold24: Font {
        return .mainText(type: .bold, size: 24)
    }
    
    static var mainTextSemiBold12: Font {
        return .mainText(type: .semibold, size: 12)
    }
    
    static var mainTextSemiBold24: Font {
        return .mainText(type: .semibold, size: 24)
    }
    
    static var mainTextSemiBold18: Font {
        return .mainText(type: .semibold, size: 18)
    }
    
    static var mainTextSemiBold16: Font {
        return .mainText(type: .semibold, size: 16)
    }
    
    static var mainTextSemiBold14: Font {
        return .mainText(type: .semibold, size: 14)
    }
    
    static var mainTextMedium16: Font {
        return .mainText(type: .medium, size: 16)
    }
    
    static var mainTextRegular18: Font {
        return .mainText(type: .regular, size: 18)
    }
    
    static var mainTextRegular13: Font {
        return .mainText(type: .regular, size: 13)
    }
    
    static var mainTextRegular12: Font {
        return .mainText(type: .regular, size: 12)
    }
    
    static var mainTextRegular09: Font {
        return .mainText(type: .regular, size: 09)
    }
    
    static var mainTextLight14: Font {
        return .mainText(type: .light, size: 14)
    }
    
    static var mainTextExtraBold24: Font {
        return .mainText(type: .extraBold, size: 24)
    }
    
    static var mainTextSemiBold38: Font {
        return .mainText(type: .semibold, size: 38)
    }
    
    static var mainTextSemiBold13: Font {
        return .mainText(type: .semibold, size: 13)
    }
    
    static var mainTextRegular24: Font {
        return .mainText(type: .regular, size: 24)
    }
    
    static var mainTextRegular20: Font {
        return .mainText(type: .regular, size: 20)
    }
    
}
