<!DOCTYPE html>

<html>
    <head>
        <title>{$TITULO_SITE}</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="{$GET_TEMA}/tema/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="{$GET_TEMA}/tema/contatos/contatos.css" rel="stylesheet" type="text/css"/>
        <script src="{$GET_TEMA}/tema/js/jquery-2.2.1.min.js" type="text/javascript"></script>
        <script src="{$GET_TEMA}/tema/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="{$GET_TEMA}/tema/contatos/contatos.js" type="text/javascript"></script>
        <!-- meu aquivo pessoal de CSS-->
        <link href="{$GET_TEMA}/tema/css/tema.css" rel="stylesheet" type="text/css"/>
     <!-- HTML5 shim e Respond.js para suporte no IE8 de elementos HTML5 e media queries -->
    <!-- ALERTA: Respond.js não funciona se você visualizar uma página file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    </head>
    <body>
        
        <!-- começa  o container geral -->
        <div class="container-fluid">
            
            <!-- começa a div topo -->
            <div class="row" id="topo">
                <div class="container">
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <a href="{$GET_SITE_HOME}">
                            <img src="{$GET_TEMA}/images/logo.svg" alt="{$TITULO_SITE}" class="logo-topo">
                        </a>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 text-right topo-usuario">
                        {if $LOGADO == true}
                            <span class="user-greeting">Olá: <b>{$USER}</b></span>
                            <a href="{$PAG_LOGOFF}" class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-log-out"></i> Sair </a> 
                        {else}
                            <a href="{$PAG_MINHACONTA}" class="btn btn-default btn-sm topo-btn-login"><i class="glyphicon glyphicon-user"></i> Minha Conta / Entrar</a>
                        {/if}
                    </div>  
                </div> 
            </div><!-- fim da div topo -->
            
            <!-- começa a barra MENU-->
            <div class="row" id="barra-menu">
                
                <!--começa navBAR-->
                <nav class="navbar navbar-inverse">
                    
                    <!-- container navBAr-->
                    <div class="container">
                        <!-- header da navbar-->
                        <div class="navbar-header">
                           <!-- botao que mostra e esconde a navbar--> 
                           <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                               <span class="sr-only">Toggle navigation</span>
                               <span class="icon-bar"></span>
                               <span class="icon-bar"></span>
                               <span class="icon-bar"></span>
                           </button>
                        
                        </div><!--fim header navbar-->  
                        
                        <div class="collapse navbar-collapse" id="navbar">
                            <ul class="nav navbar-nav">
                                <li><a href="{$GET_SITE_HOME}"><i class="glyphicon glyphicon-home"></i> Home </a> </li>


                                 <li><a href="{$PAG_PRODUTOS}"><i class="glyphicon glyphicon-tag"></i> Produtos </a> </li>
                               
                                <li><a href="{$PAG_MINHACONTA}"><i class="glyphicon glyphicon-user"></i> Minha Conta </a> </li>
                                <li><a href="{$PAG_CARRINHO}"><i class="glyphicon glyphicon-shopping-cart"></i> Carrinho </a> </li>
                                <li><a href="{$PAG_CONTATO}" ><i class="glyphicon glyphicon-envelope"></i> Contato </a> </li>
                                
                                
                               
                                
                            </ul>
                            

                            <form class="navbar-form navbar-right" role="search">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Digite para buscar" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Buscar</button>
                            </form>
                            
                         </div><!-- fim navbar collapse-->   


                    </div> <!--fim container navBar-->
                    
                </nav><!-- fim da navBar-->   
                
                
                
                
                
            </div> <!-- fim barra menu--> 
            
            <!-- começa DIV conteudo-->
            <div class="row" id="conteudo">
            
            <div class="container"> 
              
                <!-- coluna da esquerda -->
                <div class="col-xs-12 col-sm-4 col-md-3" id="lateral">
                    
                <div class="list-group painel-categorias">
                    <span class="list-group-item active"><i class="glyphicon glyphicon-th-list"></i> Categorias</span>

                     <a href="{$PAG_PRODUTOS}" class="list-group-item"><span class="glyphicon glyphicon-menu-right"></span> Todos os Produtos</a> 

                    {foreach from=$CATEGORIAS item=C}
                    
                    <a href="{$C.cate_link}" class="list-group-item"><span class="glyphicon glyphicon-menu-right"></span> {$C.cate_nome}</a> 
                    
                    {/foreach}
                    
                </div><!--fim da list group-->              
                              
                </div> <!-- finm coluna esquerda -->  
                
                <!-- coluna direita CONTEUDO CENTRAL -->
                <div class="col-xs-12 col-sm-8 col-md-9" id="conteudo-principal">
                    
                    <ul class="breadcrumb">
                        <li><a href="{$GET_SITE_HOME}"><i class="glyphicon glyphicon-home"></i> Home </a></li>
                        <li><a href="{$PAG_PRODUTOS}"> Produtos </a></li>
                        <li class="active"> Vitrine </li>
                    </ul>   
                    <!-- fim do menu breadcrumb-->             
                    
                  {php}

                  Rotas::get_Pagina();
                  //var_dump(Rotas::$pag);
                  {/php}
                    
                </div>  <!--fim coluna direita-->  
            
            </div>   
                
            </div><!-- fim DIV conteudo-->
            
            <!-- começa div rodape -->
            <div class="row" id="rodape">
                <div class="container text-center">
                    <h4>{$TITULO_SITE}</h4>
                    <p>Sistema de E-Commerce &amp; Locação — Trabalho de Conclusão de Curso (TCC)</p>
                    <p class="text-muted"><small>Desenvolvido por Lucas Inocêncio de França — TCC Apresentado em: {$DATA_TCC}</small></p>
                </div>
            </div><!-- fim div rodape-->
            
            
            
           </div> <!-- fim do container geral -->
        
        
        
        
    </body>
</html>
