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

    let fullNameLabel : (UILabel) = {
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
    
    let statusLabel : (UILabel) = {
        let subText = UILabel()
        subText.text = "Waiting for something..."
        subText.font = UIFont.systemFont(ofSize: 14 , weight: .regular) // размер и вес текста
        subText.textColor = .gray
        
        return subText
    }()

    
    let setStatusButton : (UIButton) = {
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
        
        self.addSubview(fullNameLabel)
        self.addSubview(avatarImageView)
        self.addSubview(statusLabel)
        self.addSubview(setStatusButton)
        
        // без этого констрейт не запустится
        
        self.fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        self.avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        self.statusLabel.translatesAutoresizingMaskIntoConstraints = false
        self.setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        
        // массив констрейтов, колхоз но сам
       [
        self.fullNameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
        self.fullNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        self.fullNameLabel.leadingAnchor.constraint(equalTo: self.avatarImageView.trailingAnchor, constant: 16),
        
        self.avatarImageView.heightAnchor.constraint(equalToConstant: 130),
        self.avatarImageView.widthAnchor.constraint(equalToConstant: 130),
        self.avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
        self.avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
        
        self.statusLabel.leadingAnchor.constraint(equalTo: self.avatarImageView.trailingAnchor, constant: 16),
        self.statusLabel.topAnchor.constraint(equalTo: self.fullNameLabel.bottomAnchor, constant: 50),
        
        self.setStatusButton.leadingAnchor.constraint(equalTo: leadingAnchor),
        self.setStatusButton.trailingAnchor.constraint(equalTo: trailingAnchor),
        self.setStatusButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
       
        //я не понял задания с кнопкной, тупа сделал новые координаты, но моя была шикарна
        //        self.setStatusButton.topAnchor.constraint(equalTo: self.avatarImageView.bottomAnchor, constant: 16),
//        self.setStatusButton.heightAnchor.constraint(equalToConstant: 50),
//        self.setStatusButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
//        self.setStatusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
//
       ].forEach{$0.isActive = true}
            
        
        
        
        
    }

    @objc func buttonPressed() {
        print(statusLabel.text ?? "Hello") //если есть текст то пишет из статуса если нету то хеллоу
        
    }

}




    
