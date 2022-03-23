//
//  ProfileHeaderView.swift
//  Navigation_version99
//
//  Created by Pavel Nebogatov on 07.03.2022.
//



// комменты прописал на будующее чтобы не забыть!!

import UIKit

class ProfileHeaderView: UIView {
        
    let avatarImageView : (UIImageView) = {
        let imageView = UIImageView()
         // размеры если делать w & h =300 то радиус 150 для круга
        imageView.image = UIImage(named: "boris") // название картинки через ассест
        imageView.layer.cornerRadius = 65// закругление
        imageView.contentMode = .scaleAspectFill // не понял но так делают
        imageView.clipsToBounds = true // чтобы изображение не выходило за пред круга
        imageView.layer.borderColor = UIColor.white.cgColor //цвет рамки
        imageView.layer.borderWidth = 3  // радиус рамки
        
        return imageView
    }()

    let mainTextView : (UILabel) = {
        let text = UILabel()
        text.frame = CGRect(x: 170,
                            y: 27,
                            width: 200,
                            height: 50)
        text.text = "Snoop DoG"
        text.font = UIFont.boldSystemFont(ofSize: 18)
        text.textColor = .black
        
        return text
    }()
    
    let subTextView : (UILabel) = {
        let subText = UILabel()
        subText.text = "Waiting for something..."
        subText.font = UIFont.systemFont(ofSize: 14 , weight: .regular) // размер и вес текста
        subText.textColor = .gray
        
        return subText
    }()

    
    let myButton : (UIButton) = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Show status", for: .normal)
        button.layer.cornerRadius = 16 // ставил 4 не закругляет по тупой логике умножил 4 на 4 и поставил результат= итог шикарное закругление
        button.layer.masksToBounds = false // Обязательно для кнопочки! если хотим тень
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor // тень только так!!!
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        return button
    }()
    



    
    // чтобы мои вьюшки показывались их надо прописать в методе как addSubvies!!!
    
    // если нужно высчитывать отступы , то делается это все внутри функции лейаут сабвью  через сиджирект, а если числа уже есть то внутри вью!!

    
    open override func layoutSubviews() {
        super.layoutSubviews()
        self.addSubview(mainTextView)
        
        self.addSubview(avatarImageView)
        avatarImageView.frame = CGRect(
            x: 16,
            y: 16,
            width: 130,
            height: 130)
       
        self.addSubview(subTextView)
        subTextView.frame = CGRect(
                            x: 170,
                            y: self.avatarImageView.frame.maxY - 50 , // я сделал 16+ 34 но до конца не понял как , но уверен это правда, если я прав скажите почему, на языке крутится почему , а объяснить не могу, потому что по логике вещей я видел картину так  maxY - 18 ( 18 это разница расстояния до кнопки) но ничего не выходило
                            width: 200,
                            height: 50)
        
        self.addSubview(myButton)
        myButton.frame = CGRect(
            x: 16 ,
            y: self.avatarImageView.frame.maxY + 16, // сначала я сделал эту строчку , после делал фрейм в сабтекст
            width: self.frame.width - 32,
            height: 50)
       
    }

    @objc func buttonPressed() {
        print(subTextView.text ?? "Hello") //если есть текст то пишет из статуса если нету то хеллоу
        
    }

}




    
