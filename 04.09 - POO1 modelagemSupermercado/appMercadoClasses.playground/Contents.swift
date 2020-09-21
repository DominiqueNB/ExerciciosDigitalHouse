import UIKit

// Classe: Produto
class Produto {
    //Atributos de Produto
    var nome: String
    var fabricante: String
    var preco: Double
    var porcentagemDesconto: Double
    var quantidadeDisponivel: Int
    var dataDeValidade: String
    
    //Inicializador de Produto
    init (nome: String, fabricante: String, preco: Double, porcentagemDesconto: Double, quantidadeDisponivel: Int, dataDeValidade: String) {
        self.nome = nome
        self.fabricante = fabricante
        self.preco = preco
        self.porcentagemDesconto = porcentagemDesconto
        self.quantidadeDisponivel = quantidadeDisponivel
        self.dataDeValidade = dataDeValidade
    }
    
    //Métodos de Produto
    func checarDisponibilidade(_ quantidadeDesejada: Int) -> Bool {
        if quantidadeDisponivel > quantidadeDesejada {
            return true
        } else {
            return false
        }
    }
    
    func calcularValorComDesconto() -> Double {
        if porcentagemDesconto > 0 {
            return preco - (preco * porcentagemDesconto)
        } else {
            return preco
        }
    }
    
    func reduzirEstoque(_ quantidadeDisponivel: Int, _ quantidadeDesejada: Int) -> Int {
        return quantidadeDisponivel - quantidadeDesejada
    }
    
    func checarValidade() {
        print("Checar com data default atual.")
    }
    
    func reporEstoque() {
        print("Atualizar ao receber dos fornecedores.")
    }
}
    
// Classe: Pessoa
class Pessoa {
    //Atributos de Pessoa
    var nome: String
    var idade: Double
    var cpf: Int
    var endereco: String
    var email: String
    var telefone: String
    
    //Inicializador de Pessoa
    init (nome: String, idade: Double, cpf: Int, endereco: String, email: String, telefone: String) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.endereco = endereco
        self.email = email
        self.telefone = telefone
    }
    
    //Métodos de Pessoa
    func cadastrarPessoa(){
        print("\(nome), \(idade), \(cpf), \(endereco), \(email), \(telefone)")
    }
    
    func atualizarCadastro(){
        print("Atualizar informações.")
    }
    
    func excluirCadastro(){
        print("Remover Dados")
    }
}
// Sub-(?)Classe: Pessoa Funcionario
class Funcionario: Pessoa {
    //Atributos de Funcionario
    var cargo: String
    var franquia: String
    var salario: Double
    
    //Inicializador de Pessoa Funcionario
    init (nome: String, idade: Double, cpf: Int, endereco: String, email: String, telefone: String, cargo: String, franquia: String, salario: Double) {
        self.cargo = cargo
        self.franquia = franquia
        self.salario = salario
        super.init(nome: nome, idade: idade, cpf: cpf, endereco: endereco, email: email, telefone: telefone)
    }
    
    //Métodos de Funcionario
    func receberSalario(_ dia: String) {
        print("Receber pagamento no dia \(dia).")
    }
    
    func definirTurno(_ turno: String) {
        print("Turno: \(turno)")
    }
    
    func definitFolga(_ data: String) {
        print("Folga: \(data)")
    }
    
    func organizarEstoque() {
        print("Semanalmente organizar estoque")
    }
}

// Sub-(?)Classe: Pessoa Cliente
class Cliente: Pessoa {
    //Atributos de Cliente
    var numeroDeCartao: String
    var codigoDaCompra: String
    var formaDePagamento: String
    
    //Inicializador de Cliente
    init (nome: String, idade: Double, cpf: Int, endereco: String, email: String, telefone: String, numeroDeCartao: String, codigoDaCompra: String, formaDePagamento: String) {
        self.numeroDeCartao = numeroDeCartao
        self.codigoDaCompra = codigoDaCompra
        self.formaDePagamento = formaDePagamento
        super.init(nome: nome, idade: idade, cpf: cpf, endereco: endereco, email: email, telefone: telefone)
    }
    
    //Métodos de Cliente
    func consultarProduto(_ produto: String) {
        print("Produto desejado: \(produto)")
    }
    
    func fazerPedido(_ numeroPedido: Int) {
        print("Pedido número: \(numeroPedido)")
    }
    
    func efetuarPagamento(_ metodo: String) {
        print("Metodo de pagamento: \(metodo)")
    }
}

//Testes
let pao = Produto(nome: "frances", fabricante: "própria", preco: 4.00, porcentagemDesconto: 0.2, quantidadeDisponivel: 20, dataDeValidade: "20/09/2020")
print(pao.calcularValorComDesconto())

