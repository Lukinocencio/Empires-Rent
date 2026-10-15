# Empire's Rent - Sistema de E-Commerce
### Trabalho de Conclusão de Curso (TCC) - Ensino Médio Técnico em Informática

![PHP](https://img.shields.io/badge/PHP-7.4%20%7C%208.x-777BB4?style=flat-square&logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-8.x%20%7C%20MariaDB-4479A1?style=flat-square&logo=mysql&logoColor=white)
![Smarty](https://img.shields.io/badge/Template-Smarty%203-FF9900?style=flat-square)
![Bootstrap](https://img.shields.io/badge/Bootstrap-3.3-563D7C?style=flat-square&logo=bootstrap&logoColor=white)
![Status](https://img.shields.io/badge/Status-100%25%20Operacional-brightgreen?style=flat-square)

---

## 📌 Sobre o Projeto

O **Empire's Rent** é um sistema completo de comércio eletrônico e catálogo virtual desenvolvido como **Trabalho de Conclusão de Curso (TCC)** para obtenção do título de **Técnico em Informática integrado ao Ensino Médio**, desenvolvido por **Lucas Inocêncio**.

O projeto foi concebido para simular o ecossistema comercial de uma loja moderna, contemplando desde a experiência de compra do cliente (vitrine, busca, categorias, carrinho em sessão, cálculo de frete e finalização de pedidos) até a retaguarda operacional completa (gestão de estoque, produtos, upload de fotos, categorias, clientes e controle financeiro de pedidos).

---

## 🏗️ Arquitetura e Tecnologias

A aplicação segue o padrão de arquitetura **MVC (Model-View-Controller)** com separação rigorosa de responsabilidades:

* **Back-end**: PHP estruturado com Orientação a Objetos (compatível com PHP 7.4 e PHP 8.x).
* **Camada de Dados**: MySQL / MariaDB utilizando a extensão **PDO (PHP Data Objects)** com comandos preparados (*Prepared Statements*) para prevenção contra injeção SQL (*SQL Injection*).
* **Front-end & Templates**: Motor de templates **Smarty 3** (`SmartyBC`), separando totalmente a marcação HTML da lógica de negócio.
* **Interface & Estilo**: **Bootstrap 3**, fontes estilizadas, componentes responsivos e suporte cross-device.
* **Mídias & Imagens**: Processamento e redimensionamento dinâmico via **TimThumb** (`thumb.php`).
* **E-mails Transacionais**: Integração com **PHPMailer** para envio de confirmações de cadastro e pedidos via SMTP.
* **Autoloading**: Gestão de dependências e mapeamento de classes PSR via **Composer**.

---

## 🚀 Funcionalidades

### 🛒 Área Pública e do Cliente
- **Vitrine Dinâmica**: Listagem paginada de produtos com cálculo de parcelas e visualização rápida.
- **Filtro por Categorias**: Navegação segmentada com URLs amigáveis baseadas em *slugs*.
- **Página de Detalhes**: Exibição detalhada de especificações técnicas, dimensões, estoque e galeria de fotos.
- **Carrinho de Compras**: Gestão de itens em tempo real armazenados em sessão (`$_SESSION['PRO']`), com atualização e remoção dinâmica.
- **Cálculo de Frete**: Módulo de cotação de frete integrado para simulação de entrega.
- **Autenticação Segura**: Cadastro completo com validação de CPF único, endereço e senha criptografada.
- **Painel do Cliente ("Minha Conta")**: Histórico detalhado de pedidos, alteração de dados cadastrais, troca de senha e recuperação de acesso por e-mail.

### ⚙️ Painel Administrativo (`/adm`)
- **Autenticação Restrita**: Controle de sessão administrativa independente (`$_SESSION['ADM']`).
- **Gerenciamento de Produtos**: CRUD completo de produtos, controle de status (ativo/inativo), modelo, referência, peso, dimensões e estoque.
- **Galeria de Imagens**: Upload múltiplo de fotos complementares para produtos cadastrados.
- **Gerenciamento de Categorias**: Criação e edição com geração automática de *slugs*, além de proteção contra exclusão de categorias com produtos vinculados.
- **Controle de Clientes**: Consulta e edição das contas de clientes registradas no sistema.
- **Gestão de Pedidos**: Acompanhamento de vendas, status de pagamento, valor de frete e visualização individual dos itens de cada compra.

---

## 📁 Estrutura de Diretórios

```
c:/www/TCC_EM/
├── adm/                    # Módulo do Painel Administrativo
│   ├── controller/         # Controladores da área administrativa
│   ├── view/               # Templates Smarty (.tpl) do painel ADM
│   ├── .htaccess           # Regras de rewrite e proteção da área administrativa
│   ├── index.php           # Entrypoint do painel ADM
│   └── login.php           # Tela de autenticação do administrador
├── controller/             # Controladores da loja pública (MVC)
├── lib/                    # Bibliotecas, Composer e autoload
│   ├── composer/           # Autoloader e classmap
│   ├── phpmailer/          # Biblioteca PHPMailer
│   └── smarty/             # Motor de templates Smarty 3
├── media/                  # Arquivos de mídia estáticos
│   └── images/             # Imagens de produtos, banners e thumb.php
├── model/                  # Camada de regras de negócio e acesso ao banco (PDO)
│   ├── Categorias.class.php
│   ├── Clientes.class.php
│   ├── Conexao.class.php
│   ├── Config.class.php
│   ├── Pedidos.class.php
│   ├── Produtos.class.php
│   ├── User.class.php
│   └── ...
├── view/                   # Camada de apresentação pública
│   ├── compile/            # Templates compilados pelo Smarty (cache)
│   ├── images/             # Imagens fixas da interface (logos, ícones)
│   ├── tema/               # CSS, JS, fontes e Bootstrap
│   └── *.tpl               # Arquivos de template das páginas públicas
├── .htaccess               # Roteamento central via Apache mod_rewrite
├── banco_loja_tcc.sql      # Dump estruturado do banco de dados relacional
├── composer.json           # Manifesto de dependências do projeto
├── index.php               # Entrypoint principal da aplicação
└── README.md               # Documentação técnica do projeto
```

---

## 🛠️ Instalação e Execução Local

### Pré-requisitos
* **Servidor Web**: Apache 2.4+ com módulo `mod_rewrite` ativado.
* **Linguagem**: PHP 7.4 ou PHP 8.x (extensões `pdo_mysql`, `gd`, `mbstring`, `openssl`).
* **Banco de Dados**: MySQL 5.7+ ou MariaDB 10.4+.
* **Ambiente Recomendado**: WampServer, XAMPP ou Laragon.

### Passo 1: Obter o Código
Clone o repositório em seu diretório de servidores web (ex: `C:\www\TCC_EM`):
```bash
git clone https://github.com/Lukinocencio/Empires-Rent.git
```

### Passo 2: Configurar o VirtualHost / Alias no Apache
No WampServer, o projeto está mapeado no alias `/loja`. Caso utilize VirtualHost ou pasta direta no `www`:
* Crie a junção ou aponte a pasta no Apache:
  ```powershell
  New-Item -ItemType Junction -Path "D:\wamp64\www\loja" -Target "C:\www\TCC_EM"
  ```
* O site estará acessível em: `http://localhost/loja/`

### Passo 3: Importar o Banco de Dados
Importe o arquivo [`banco_loja_tcc.sql`](banco_loja_tcc.sql) no seu servidor MySQL:
```bash
mysql -u root -p < banco_loja_tcc.sql
```
O script criará o banco `loja_tcc` com todas as tabelas prefixadas com `qc_` e dados iniciais de demonstração (produtos, categorias, usuários e clientes).

### Passo 4: Verificar as Configurações
Confira o arquivo [`model/Config.class.php`](model/Config.class.php):
```php
const BD_HOST = "localhost";
const BD_USER = "root";
const BD_SENHA = "";
const BD_BANCO = "loja_tcc";
const BD_PREFIX = "qc_";
const SITE_URL = "http://localhost";
const SITE_PASTA = "loja";
```

---

## 🔐 Credenciais Padrão de Teste

| Perfil | E-mail | Senha | URL de Acesso |
| :--- | :--- | :--- | :--- |
| **Administrador** | `empiresrent@gmail.com` | `admin123` | `http://localhost/loja/adm/login.php` |
| **Admin Secundário** | `admin@empiresrent.com.br` | `admin123` | `http://localhost/loja/adm/login.php` |
| **Cliente de Teste** | `cliente@empiresrent.com.br` | `123456` | `http://localhost/loja/login` |

---

## 🔧 Correções e Melhorias Realizadas na Revisão Técnica

Durante o processo de revisão e auditoria do projeto, foram solucionadas as seguintes inconsistências históricas:
1. **Banco de Dados Relacional**: Construção completa do esquema DDL e DML (`banco_loja_tcc.sql`) contendo integridade referencial, dados de teste e categorização de produtos.
2. **Compatibilidade com Apache 2.4**: Atualização das diretivas legadas do Apache 2.2 (`Order deny,allow / Deny from All`) para a sintaxe moderna `<IfModule mod_authz_core.c> Require all denied </IfModule>` nos arquivos `.htaccess` e `adm/.htaccess`.
3. **Correção de Bug Crítico de Autenticação ADM**: Correção em `model/Login.class.php` onde a validação verificava `$_SESSION['ADMs']` com erro tipográfico no plural, impedindo qualquer acesso logado à administração.
4. **Implementação da Classe User**: Criação de `model/User.class.php` e inclusão no classmap do Composer para viabilizar a recuperação de senhas da área administrativa.
5. **Compatibilização com PHP 8.x**: Ajuste do tratamento de erros nos pontos de entrada para neutralizar advertências de propriedades dinâmicas legadas do Smarty sob PHP 8.2+.
6. **Padronização de Ativos Visuais**: Restauração dos logotipos do topo e do banner oficial da marca Empire's Rent.

---

## 👤 Autor

* **Lucas Inocêncio de França**
* Projeto desenvolvido como Trabalho de Conclusão de Curso (TCC) do **Ensino Médio Técnico em Informática**.
