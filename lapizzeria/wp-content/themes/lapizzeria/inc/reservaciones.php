<?php 

// Elimina una reservación
function lapizzeria_eliminar(){
	if(isset($_POST['tipo'])){
		if ($_POST['tipo'] == 'eliminar') {
			global $wpdb;
			$tabla = $wpdb->prefix . 'reservaciones';

			$id_registro = $_POST['id'];
			$resultado = $wpdb->delete($tabla, array('id' => $id_registro), array('%d'));
			
			if($resultado == 1){
				$respuesta = array(
					'respuesta' => 1,
					'id' => $id_registro
				);
			} else{
				$respuesta = array(
					'respuesta' => 'error',
					'id' => $id_registro
				);
			}

		}
	}
	
	//die();
	die(json_encode($respuesta));
}
add_action('wp_ajax_lapizzeria_eliminar','lapizzeria_eliminar');



// -- Guarda en la bd los datos del form
function lapizzeria_guardar(){

	if (isset($_POST['enviar']) && $_POST['oculto'] == "1"):

		if($_SERVER['REQUEST_METHOD'] == 'POST'){

			$captcha = $_POST['g-recaptcha-response'];

			// Campos que deben enviarse 
			$campos = array(
				'secret' => '6Lct55UUAAAAAHjoVxPNnZAw9NZ_n9i-JDEAhVEU',
				'response' => $captcha,
				'remoteip' => $_SERVER['REMOTE_ADDR']
			);

			// Iniciar sesión en CURL (También se puede usar file_get_contents)
			// CURL es usado para acceder en server remotos
			$ch = curl_init('https://www.google.com/recaptcha/api/siteverify');
			// Config ipciones de CURL
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($ch, CURLOPT_TIMEOUT, 15);

			// Genera una cadena codificada para la URL
			curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($campos) );

			// Obtener respuesta
			$respuesta = json_decode(curl_exec($ch));

			if($respuesta->success) {

				global $wpdb;

				
					// Limpiamos los campos de caracteres indeseados
					$nombre = sanitize_text_field( $_POST['nombre']);
					$fecha = sanitize_text_field( $_POST['fecha']);
					$correo = sanitize_text_field( $_POST['correo']);
					$telefono = sanitize_text_field( $_POST['telefono']);
					$mensaje = sanitize_text_field( $_POST['mensaje']);

					$tabla = $wpdb->prefix.'reservaciones';

					$datos = array(
						'nombre' 	=> $nombre,
						'fecha'		=> $fecha,
						'correo' 	=> $correo,
						'telefono' 	=> $telefono,
						'mensaje'	=> $mensaje
					);
					$formato = array(
						'%s',
						'%s',
						'%s',
						'%s',
						'%s' 
					);

					$wpdb->insert($tabla, $datos, $formato);

					// redirección luego de enviar
					$url = get_page_by_title('Reserva éxitosa');
					wp_redirect( get_permalink($url->ID));
					exit();
				
				}
		}

	endif;
}

add_action('init' , 'lapizzeria_guardar');