# Diretrizes para Agentes de IA (AGENTS.md)

Este documento contém as diretrizes e instruções técnicas essenciais para qualquer agente que opere no repositório **TCC - Empire's Rent (Ensino Médio Técnico em Informática)**.

---

## 1. Visão Geral da Arquitetura
* **Linguagem**: PHP (compatível com PHP 7.4 e PHP 8.x).
* **Padrão de Projeto**: MVC desacoplado em camadas (`controller/`, `model/`, `view/` e painel administrativo em `adm/`).
* **Template Engine**: Smarty 3 (`SmartyBC` para suporte a blocos legados `{php}`).
* **Banco de Dados**: MySQL / MariaDB via PDO (`Conexao.class.php`), database padrão `loja_tcc`, prefixo de tabelas `qc_`.
* **Roteamento**: Rewrite via `.htaccess` apontando para `index.php?pag=$1` e resolvido estaticamente em `Rotas::get_Pagina()`.

---

## 2. Regras Estritas de Desenvolvimento
1. **Regra de Compatibilidade de Ambiente**:
   - Manter compatibilidade com Apache 2.4+ (`<Files *.tpl>` deve usar `<IfModule mod_authz_core.c> Require all denied </IfModule>`).
   - Entrypoints (`index.php`, `adm/index.php`, `adm/login.php`) devem preservar o tratamento de `error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);` para manter execução transparente no PHP 8.2+.
2. **Autoloading de Classes**:
   - Mapeadas via `composer.json` e `lib/composer/autoload_classmap.php`. Qualquer nova classe em `model/` deve ser registrada no classmap.
3. **Padrão de Autenticação**:
   - Cliente: `$_SESSION['CLI']`
   - Administrador: `$_SESSION['ADM']`
4. **Mensagens de Commit e Versionamento**:
   - Todas as mensagens de commit devem ser escritas em português formal, com acentuação correta.
   - Todo arquivo deve ser salvo em UTF-8 sem BOM.

---

## 3. Validação e Testes Obrigatórios
Antes de concluir qualquer alteração de código, execute os seguintes testes via PowerShell:
```powershell
# 1. Teste de rotas públicas
Invoke-WebRequest -Uri "http://localhost/loja/" -UseBasicParsing
Invoke-WebRequest -Uri "http://localhost/loja/produtos" -UseBasicParsing

# 2. Teste de login e rotas administrativas
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$loginBody = @{ txt_email = "empiresrent@gmail.com"; txt_senha = "admin123"; txt_logar = "1" }
Invoke-WebRequest -Uri "http://localhost/loja/adm/login.php" -Method Post -Body $loginBody -WebSession $session -UseBasicParsing
Invoke-WebRequest -Uri "http://localhost/loja/adm/adm_produtos" -WebSession $session -UseBasicParsing
```
Todas as requisições devem retornar HTTP `200 OK` sem erros ou alertas de cabeçalho.
