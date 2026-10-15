<?php 

$smarty = new Template();
$categorias = new Categorias();

$categorias->GetCategorias();

if(isset($_POST['cate_nova'])){
    $cate_nome = $_POST['cate_nome'];
    if($categorias->Inserir($cate_nome)){
        echo '<div class ="alert alert-success"> Categoria Criada com Sucesso !</div>';
        Rotas::Redirecionar(1, Rotas::pag_CategoriasADM());
    }
}

if(isset($_POST['cate_editar'])){
    $cate_id = $_POST['cate_id'];
    $cate_nome = $_POST['cate_nome'];
    if($categorias->Editar($cate_id, $cate_nome)){
        echo '<div class ="alert alert-success"> Salvo com Sucesso !</div>';
        Rotas::Redirecionar(1, Rotas::pag_CategoriasADM());
    }
}

if(isset($_POST['cate_apagar'])){
    $cate_id = $_POST['cate_id'];
    if($categorias->Apagar($cate_id)){
        echo '<div class ="alert alert-success"> Deletada com Sucesso !</div>';
        Rotas::Redirecionar(1, Rotas::pag_CategoriasADM());
    }
}

$smarty->assign('CATEGORIAS', $categorias->GetItens());

$smarty->display('adm_categorias.tpl');

?>
