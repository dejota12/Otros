<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrapValidator.min.js"></script>

<title>Registra Producto</title>
</head>

<body>
<div class="container">
<h2>Registra Producto</h2>
	<form action="" id="id_form"> 
			 
			<div class="form-group">
				<label class="control-label" for="CodProducto">Codigo Producto</label>
				<input class="form-control" type="text" id="idCodProducto" name="CodProducto" placeholder="Ingrese Codigo de Producto">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_apellido">Descripcion</label>
				<input class="form-control" type="text" id="idDescripcion" name="Descripcion" placeholder="Ingrese Producto">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_edad">Precio</label>
				<input class="form-control" type="text" id="idPrecio" name="Precio" placeholder="Ingrese Precio">
			</div>
			<div class="form-group">
				<label class="control-label" for="idUnidad">Unidad</label>
				<select  class="form-control">
					  <option value="volvo">Paquete</option>
					  <option value="saab">Unidades</option>
					  <option value="mercedes">Kilos</option>					 
				</select>
			</div>
            <div class="form-group">
				<label class="control-label" for="idCantidad">Cantidad</label>
				<input class="form-control" type="text" id="idPrecio" name="Cantidad" placeholder="Ingrese Cantidad">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_edad">FechaCompra</label>
				<input class="form-control" type="date" id="idFechaCompra" name="FechaCompra" placeholder="Ingrese Fecha Compra">
			</div>
			 <div class="form-group">
				<button type="submit" class="btn btn-primary" >Crea Producto</button>
			</div>

	</form>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $('#id_form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	CodProducto: {
                validators: {
                    notEmpty: {
                        message: 'Campo obligatorio'
                    }
                }
            },
        	Descripcion: {
                validators: {
                    notEmpty: {
                        message: 'Campo obligatorio'
                    }
                }
            },
			FechaCompra: {
                validators: {
                    notEmpty: {
                        message: 'Campo obligatorio'
                    }
                }
            },
			FechaExpiracion: {
                validators: {
                    notEmpty: {
                        message: 'Campo obligatorio'
                    }
                }
            },
        	Cantidad: {
                validators: {
                    notEmpty: {
                        message: 'La cantidad es un campo obligatorio'
                    },
		            greaterThan: {
		                value: 1,
		                inclusive: true,
		                message: 'Debe ingresa mas de un producto'
		            }
                }
            },      
			Precio: {
                validators: {
                    notEmpty: {
                        message: 'La cantidad es un campo obligatorio'
                    },
		            greaterThan: {
		                value: 0.1,
		                inclusive: true,
		                message: 'Debe ingresa mas de un producto'
		            }
                }
            }, 
        }   
    });

    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#id_form').bootstrapValidator('validate');
    });
});
</script>

</body>
</html>




