-- Tabela de Departamentos
CREATE TABLE Departamentos (
    ID_Departamento INT PRIMARY KEY IDENTITY(1,1),
    Nome_Departamento VARCHAR(100) UNIQUE NOT NULL
);

-- Tabela de Cargos
CREATE TABLE Cargos (
    ID_Cargo INT PRIMARY KEY IDENTITY(1,1),
    Nome_Cargo VARCHAR(100) UNIQUE NOT NULL
);

-- Tabela de Funcionários
CREATE TABLE Funcionarios (
    ID_Funcionario INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(255) NOT NULL,
    ID_Departamento INT NOT NULL,
    ID_Cargo INT NOT NULL,
    Endereco VARCHAR(255),
    Numero_Telefone VARCHAR(20),
    Email VARCHAR(100) UNIQUE,
    FOREIGN KEY (ID_Departamento) REFERENCES Departamentos(ID_Departamento),
    FOREIGN KEY (ID_Cargo) REFERENCES Cargos(ID_Cargo)
);