<?php
$usuario = "root";
$senha = "usbw";
$host = "localhost";
$banco = "atividade";
try{
	$conexao = new PDO('mysql:host='. $host . ':3307;dbname='.$banco,$usuario,$senha);
	}catch(PDOException $e){
		echo "Erro:" . $e->getMessage();
	}
if(isset($_POST['cadastrar'])){
	$nome = $_POST['nome'];
	$idade = $_POST['idade'];
	$genero = $_POST['genero'];

			try{
			$sql = "INSERT INTO atividade_banco(nome,idade,genero)
				VALUES(?,?,?)";
				$stmt = $conexao->prepare($sql);
				$stmt->bindParam(1,$nome);
				$stmt->bindParam(2,$idade);
				$stmt->bindParam(3,$genero);
				$rs= $stmt->execute();
				if($rs)
				{
					echo "<script>alert('Cadastrado com Sucesso!');</script>";				
				}else{
					echo "<script>alert('Erro');</script>";

				}
			}catch(PDOException $e){
				print "Erro:" . $e->getMessage();
				}
	}
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Atividade DS II</title>
<link href="estilo.css" rel="stylesheet" type="text/css">
</head>

<body>
<form action="#" method="post">
<fieldset>
	<label>Nome:</label><br>
    <input type="text" name="nome" ><p>
    
    <label>Idade:</label><br>
    <input type="text" name="idade" size="3"><p>
    
    <label>Gênero</label><br>
	<select name="genero">
    <option></option>
    <option value="F">Feminino</option>
    <option value="M">Masculino</option>
    </select>
    <p>
<p><input type="submit" name="cadastrar" value="Cadastrar">
</fieldset>
</form>
</body>
</html>