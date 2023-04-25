//
//  ModificarUsuario.swift
//  ProyectoFinal1
//
//  Created by Valeria Baeza on 20/04/23.
//

import Cocoa

class ModificarUsuario: NSViewController {

    @IBOutlet weak var vc: ViewController!

    @IBOutlet weak var txtNombre: NSTextField!
    @IBOutlet weak var txtApellidoPaterno: NSTextField!
    @IBOutlet weak var txtApellidoMaterno: NSTextField!
    @IBOutlet weak var txtEmail: NSTextField!
    @IBOutlet weak var txtTelefono: NSTextField!
    @IBOutlet weak var txtGenero: NSTextField!
    @IBOutlet weak var txtRol: NSTextField!
    
    @IBOutlet weak var btnActualizar: NSButton!
    
    var flag:Bool = true
    var position:Int = 0
    var idDeUsuarioRecibido:Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("id usuario recibido",idDeUsuarioRecibido)
        btnActualizar.isEnabled = flag
        
        let usuarioActual = vc.usuarioLog
        idDeUsuarioRecibido = vc.idUsuarioActual
        
        print("nombre usuario mandado:",vc.usuarioLog[idDeUsuarioRecibido].nombre)
        
        if flag{
            txtNombre.stringValue = vc.usuarioLog[position].nombre
            txtApellidoPaterno.stringValue=vc.usuarioLog[position].apellidoPaterno
            txtApellidoMaterno.stringValue = vc.usuarioLog[position].apellidoMaterno
            txtEmail.stringValue=vc.usuarioLog[position].email
            txtTelefono.stringValue = vc.usuarioLog[position].telefono
            txtGenero.stringValue=vc.usuarioLog[position].genero
            txtRol.stringValue = vc.usuarioLog[position].rol
        }
    }
    
    @IBAction func actualizarUsuario(_ sender: NSButton) {
        vc.usuarioLog[idDeUsuarioRecibido].nombre = txtNombre.stringValue
        vc.usuarioLog[idDeUsuarioRecibido].apellidoMaterno = txtApellidoMaterno.stringValue
        vc.usuarioLog[idDeUsuarioRecibido].apellidoPaterno = txtApellidoPaterno.stringValue
        vc.usuarioLog[idDeUsuarioRecibido].email = txtEmail.stringValue
        vc.usuarioLog[idDeUsuarioRecibido].telefono = txtTelefono.stringValue
        vc.usuarioLog[idDeUsuarioRecibido].genero = txtGenero.stringValue
        vc.usuarioLog[idDeUsuarioRecibido].rol = txtRol.stringValue
    }
    
    
}
