 -- Crie uma tabela de clientes
CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Setor VARCHAR(50),
    Descricao VARCHAR(200)
);

-- Insira os perfis de clientes fictícios
INSERT INTO Clientes (Nome, Setor, Descricao)
VALUES
    ('TelComTechn', 'Telecomunicações', 'Empresa de telecomunicações em busca de operação ininterrupta.'),
    ('PowerGrid Solut', 'Energia Elétrica', 'Empresa de energia elétrica que busca segurança e confiabilidade.'),
    ('ManufaTech', 'Indústria Manufatureira', 'Empresa de manufatura buscando produção ininterrupta.'),
    ('HealthSolz Tech', 'Saúde', 'Organização de saúde que busca segurança de sistemas críticos.'),
    ('FinTech Trends', 'Setor Financeiro', 'Empresa financeira em busca de segurança em transações.');

-- Crie uma tabela de Eventos de Incidentes Críticos
CREATE TABLE IncidentesCriticos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    TipoIncidente VARCHAR(100),
    DataIncidente DATETIME,
    DescricaoIncidente VARCHAR(500),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- Insira eventos de incidentes críticos de exemplo
INSERT INTO IncidentesCriticos (ClienteID, TipoIncidente, DataIncidente, DescricaoIncidente)
VALUES
    (1, 'Falha na Rede', '2023-10-15 10:30:00', 'Interrupção inesperada nos serviços de telecomunicações.'),
    (2, 'Apagão', '2023-09-20 15:45:00', 'Interrupção de energia em uma grande área de atuação.'),
    (3, 'Falha na Linha de Produção', '2023-08-05 08:15:00', 'Paralisação da linha de produção devido a falha em máquina crucial.'),
    (4, 'Vazamento de Dados', '2023-07-12 14:20:00', 'Vazamento de informações de pacientes.'),
    (5, 'Fraude Financeira', '2023-06-03 12:00:00', 'Transações financeiras fraudulentas identificadas.');

-- Adicione índices para otimizar consultas
CREATE INDEX idx_ClienteID ON IncidentesCriticos (ClienteID);

-- Crie uma tabela para Alocação de Recursos de IA
CREATE TABLE AlocacaoRecursosAI (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataAlocacao DATETIME,
    RecursoAlocado VARCHAR(100),
    CustoAlocacao DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- Insira alocação de recursos
INSERT INTO AlocacaoRecursosAI (ClienteID, DataAlocacao, RecursoAlocado, CustoAlocacao)
VALUES
    (1, '2023-10-15 10:30:00', 'Sistema de Monitoramento de Rede', 5000.00),
    (2, '2023-09-20 15:45:00', 'IA para Detecção de Anomalias', 8000.00),
    (3, '2023-08-05 08:15:00', 'Robôs Industriais Autônomos', 6000.00),
    (4, '2023-07-12 14:20:00', 'Sistema de Segurança de Dados', 7500.00),
    (5, '2023-06-03 12:00:00', 'Detecção de Fraudes Financeiras', 7000.00);

-- Crie uma tabela para Monitoramento de Eficiência do Sistema
CREATE TABLE MonitoramentoSistema (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataMonitoramento DATETIME,
    Metrica VARCHAR(100),
    ValorMetrica DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- Insira métricas de monitoramento
INSERT INTO MonitoramentoSistema (ClienteID, DataMonitoramento, Metrica, ValorMetrica)
VALUES
    (1, '2023-10-15 10:30:00', 'Disponibilidade da Rede', 99.8),
    (2, '2023-09-20 15:45:00', 'Tempo Médio de Restauração', 3.5),
    (3, '2023-08-05 08:15:00', 'Eficiência da Produção', 96.7),
    (4, '2023-07-12 14:20:00', 'Segurança de Dados', 99.5),
    (5, '2023-06-03 12:00:00', 'Detecção de Fraudes', 98.2);

-- Crie uma tabela para Eventos de Incidentes Críticos
CREATE TABLE EventosIncidentesCriticos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    IncidenteID INT,
    TipoEvento VARCHAR(100),
    DataEvento DATETIME,
    DescricaoEvento VARCHAR(500),
    FOREIGN KEY (IncidenteID) REFERENCES IncidentesCriticos(ID)
);

-- Insira eventos relacionados a incidentes críticos
INSERT INTO EventosIncidentesCriticos (IncidenteID, TipoEvento, DataEvento, DescricaoEvento)
VALUES
    (1, 'Resolução', '2023-10-15 11:30:00', 'Equipe técnica resolve a falha na rede.'),
    (2, 'Restauração', '2023-09-21 10:00:00', 'Restauração de energia após o apagão.'),
    (3, 'Manutenção', '2023-08-06 09:00:00', 'Manutenção preventiva na linha de produção.'),
    (4, 'Investigação', '2023-07-13 09:30:00', 'Investigação do vazamento de dados em andamento.'),
    (5, 'Bloqueio de Transações', '2023-06-04 14:30:00', 'Detecção e bloqueio de transações fraudulentas.');

-- Crie uma tabela para Ações Tomadas
CREATE TABLE AcoesTomadas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    IncidenteID INT,
    DataAcao DATETIME,
    AcaoTomada VARCHAR(200),
    FOREIGN KEY (IncidenteID) REFERENCES IncidentesCriticos(ID)
);

-- Insira ações tomadas relacionadas a incidentes críticos
INSERT INTO AcoesTomadas (IncidenteID, DataAcao, AcaoTomada)
VALUES
    (1, '2023-10-15 11:30:00', 'Reconfiguração de equipamentos de rede.'),
    (2, '2023-09-21 10:00:00', 'Reparo de linhas de transmissão.'),
    (3, '2023-08-06 09:00:00', 'Substituição de peça defeituosa na máquina.'),
    (4, '2023-07-13 09:30:00', 'Análise de registros de acesso e identificação de falhas.'),
    (5, '2023-06-04 14:30:00', 'Bloqueio de transações suspeitas e notificação de clientes afetados.');
