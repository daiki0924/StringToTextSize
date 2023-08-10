//
//  String+Extension.swift
//  StringToTextSize
//
//  Created by Daiki Kobayashi on 2023/08/10.
//

import UIKit

extension String {
    /// 文字列からサイズを取得する
    /// - Parameter font: フォント
    func toTextSize(font: UIFont) -> CGSize {
        return self.size(withAttributes: [.font: font])
    }
}
