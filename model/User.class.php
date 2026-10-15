<?php 

class User extends Conexao {

    function __construct(){
        parent::__construct();
    }

    /**
     * Verifica se existe um usuário com o e-mail informado
     * @param string $email
     * @return int Quantidade de registros encontrados
     */
    function GetUserEmail($email){
        $query = "SELECT * FROM {$this->prefix}user WHERE user_email = :email";
        $params = array(':email' => $email);
        $this->ExecuteSQL($query, $params);
        return $this->TotalDados();
    }

    /**
     * Altera a senha do usuário administrativo
     * @param string $senha Senha em texto plano que será criptografada em MD5
     * @param string $email E-mail do usuário
     * @return bool
     */
    function AlterarSenha($senha, $email){
        $query = "UPDATE {$this->prefix}user SET user_pw = :senha WHERE user_email = :email";
        $params = array(
            ':senha' => md5($senha),
            ':email' => $email
        );
        return $this->ExecuteSQL($query, $params);
    }
}
