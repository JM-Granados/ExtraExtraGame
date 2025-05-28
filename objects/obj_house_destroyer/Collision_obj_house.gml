/// @description Insert description here
// You can write your code in this editor

// Verificar si la casa fue destruida sin entregar periódico
if (!other.delivered && !other.destroyed) {
    with (obj_confidence_manager) {
        confidence_score -= 100;
        confidence_score = max(confidence_score, 0); // Evitar valores negativos
    }
    other.destroyed = true; // Marcar como destruida
}


instance_destroy(other)

