/// @description Insert description here
// You can write your code in this editor

if (!delivered) { // Solo si no ha recibido un periódico antes
    with (obj_confidence_manager) {
        confidence_score += 100;
    }
    delivered = true; // Marcar esta casa como entregada
}
instance_destroy(other); // Destruir el periódico


