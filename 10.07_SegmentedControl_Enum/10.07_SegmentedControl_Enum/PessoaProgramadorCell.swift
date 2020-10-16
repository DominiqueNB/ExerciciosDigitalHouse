//
//  PessoaProgramadorCell.swift
//  10.07_SegmentedControl_Enum
//
//  Created by Dominique Nascimento Bezerra on 07/10/20.
//

import UIKit

class PessoaProgramadorCell: UITableViewCell {
    
    
    @IBOutlet weak var pessoaProgramadorCell: UIView!
    
    @IBOutlet weak var imageViewPessoaProgramador: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    func setupCellPessoa(pessoa: Pessoa) {
        imageViewPessoaProgramador.image = UIImage(named: pessoa.photo)
        labelName.text = pessoa.name
    }
    
    func setupCellProgramador(programador: Programador) {
        imageViewPessoaProgramador.image = UIImage(named: programador.photo)
        labelName.text = "\(programador.name)"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
