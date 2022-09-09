//
//  ViewController.swift
//  Proyecto
//
//  Created by Alumno on 9/6/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var reproductor : AVAudioPlayer?
    var reproductorFondo : AVAudioPlayer?
    var url_musica : URL?
    var url_tierra : URL?
    var url_marte : URL?
    var url_jupiter : URL?
    var url_saturno : URL?
    
    @IBOutlet weak var lblSelect: UILabel!
    @IBOutlet weak var imgSaturno: UIImageView!
    @IBOutlet weak var imgEarth: UIImageView!
    @IBOutlet weak var imgPlanetOn: UIImageView!
    @IBOutlet weak var imgMars: UIImageView!
    @IBOutlet weak var imgJupiter: UIImageView!

    var secuenciaEarth : [UIImage] = []
    var secuenciaSaturno : [UIImage] = []
    var secuenciaJupiter : [UIImage] = []
    var secuenciaMars : [UIImage] = []
    var secuenciaPlanetOn : [UIImage] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Configurar la sesion de reproduccion
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setActive(true)
        }catch let error{
            print(error.localizedDescription)
        }
        //Obtener URL Audio
        url_musica = Bundle.main.url(forResource: "MUSICA", withExtension: "mp3")
        url_marte = Bundle.main.url(forResource: "MARTE", withExtension: "mp3")
        url_tierra = Bundle.main.url(forResource: "TIERRA", withExtension: "mp3")
        url_jupiter = Bundle.main.url(forResource: "JUPITER", withExtension: "mp3")
        url_saturno = Bundle.main.url(forResource: "SATURNO", withExtension: "mp3")
        
        do{
            reproductorFondo = try AVAudioPlayer(contentsOf:
                url_musica!, fileTypeHint: AVFileType.mp3.rawValue)
            reproductorFondo?.volume = 0.5
            reproductorFondo?.play()
        } catch let error{
            print(error.localizedDescription)
        }
        
        for i in 1...10{
            let imagen = UIImage(named: "TIERRANO\(i)")
            secuenciaEarth.append(imagen!)
        }
        imgEarth.animationImages = secuenciaEarth
        imgEarth.animationDuration = 1.0
        imgEarth.startAnimating()
        for i in 1...10{
            let imagen = UIImage(named: "MARTENO\(i)")
            secuenciaMars.append(imagen!)
        }
        imgMars.animationImages = secuenciaMars
        imgMars.animationDuration = 1.0
        imgMars.startAnimating()
        for i in 1...10{
            let imagen = UIImage(named: "SATURNONO\(i)")
            secuenciaSaturno.append(imagen!)
        }
        imgSaturno.animationImages = secuenciaSaturno
        imgSaturno.animationDuration = 1.0
        imgSaturno.startAnimating()
        for i in 1...10{
            let imagen = UIImage(named: "JUPITERNO\(i)")
            secuenciaJupiter.append(imagen!)
        }
        imgJupiter.animationImages = secuenciaJupiter
        imgJupiter.animationDuration = 1.0
        imgJupiter.startAnimating()
        
    }
        

    @IBAction func doTapEarth(_ sender: Any) {
        lblSelect.text = "Earth"
        do{
            reproductor = try AVAudioPlayer(contentsOf:
                url_tierra!, fileTypeHint: AVFileType.mp3.rawValue)
            reproductor?.play()
        } catch let error{
            print(error.localizedDescription)
        }
        secuenciaPlanetOn = []
        for i in 1...10{
            let imagen = UIImage(named: "TIERRA\(i)")
            secuenciaPlanetOn.append(imagen!)
        }
        
        imgPlanetOn.animationImages = secuenciaPlanetOn
        imgPlanetOn.animationDuration = 1.0
        imgPlanetOn.startAnimating()
    }
    @IBAction func doTapMars(_ sender: Any) {
        lblSelect.text = "Mars"
        do{
            reproductor = try AVAudioPlayer(contentsOf:
                url_marte!, fileTypeHint: AVFileType.mp3.rawValue)
            reproductor?.play()
        } catch let error{
            print(error.localizedDescription)
        }
        secuenciaPlanetOn = []
        for i in 1...10{
            let imagen = UIImage(named: "MARTE\(i)")
            secuenciaPlanetOn.append(imagen!)
        }
        
        imgPlanetOn.animationImages = secuenciaPlanetOn
        imgPlanetOn.animationDuration = 1.0
        imgPlanetOn.startAnimating()
    }
    @IBAction func doTapJupiter(_ sender: Any) {
        lblSelect.text = "Jupiter"
        do{
            reproductor = try AVAudioPlayer(contentsOf:
                url_jupiter!, fileTypeHint: AVFileType.mp3.rawValue)
            reproductor?.play()
        } catch let error{
            print(error.localizedDescription)
        }
        secuenciaPlanetOn = []
        for i in 1...10{
            let imagen = UIImage(named: "JUPITER\(i)")
            secuenciaPlanetOn.append(imagen!)
        }
        
        imgPlanetOn.animationImages = secuenciaPlanetOn
        imgPlanetOn.animationDuration = 1.0
        imgPlanetOn.startAnimating()
    }
    @IBAction func doTapSaturn(_ sender: Any) {
        lblSelect.text = "Saturn"
        do{
            reproductor = try AVAudioPlayer(contentsOf:
                url_saturno!, fileTypeHint: AVFileType.mp3.rawValue)
            reproductor?.play()
        } catch let error{
            print(error.localizedDescription)
        }
        secuenciaPlanetOn = []
        for i in 1...10{
            let imagen = UIImage(named: "SATURNO\(i)")
            secuenciaPlanetOn.append(imagen!)
        }
        
        imgPlanetOn.animationImages = secuenciaPlanetOn
        imgPlanetOn.animationDuration = 1.0
        imgPlanetOn.startAnimating()
    }
    
    
}

