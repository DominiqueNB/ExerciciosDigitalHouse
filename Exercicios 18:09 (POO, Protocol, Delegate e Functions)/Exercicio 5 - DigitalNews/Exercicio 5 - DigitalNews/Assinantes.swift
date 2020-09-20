//
//  Assinantes.swift
//  Exercicio 5 - DigitalNews
//
//  Created by Alexandre Oliveira on 20/09/20.
//  Copyright © 2020 Dominique N Bezerra. All rights reserved.
//

//Para aumentar as vendas, a empresa MonroeStreetJournal quer implementar um novo serviço de assinaturas do jornal DigitalNews.
//O jornal pode ser assinado por pessoas ou empresas. Para as pessoas, precisamos modelar: nome, RG e o endereço de entrega do jornal.
//Já para as empresas, precisamos modelar: nome comercial, CNPJ e o número de funcionários.
//Todas as manhãs, quando o jornal é distribuído, a empresa MonroeStreetJournal quer avisar os clientes que os exemplares já estão disponíveis.
//Também queremos que, ao receber seu jornal, os assinantes mostrem uma mensagem na tela. As pessoas exibirão a mensagem "Muito obrigado, MonroeStreetJournal.
//Vocês são demais!", enquanto as empresas exibirão a mensagem "Agradecemos cordialmente o MonroeStreetJournal pela excelência dos serviços prestados."

import Foundation

class Assinantes: protocolNotificar {
    func notificar() {
        self.mensagem()
    }
        
    func mensagem() {
        print("Notificação")
    }
}
