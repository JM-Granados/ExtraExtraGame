// Speed to the right
if (!global.monster) {
    hspeed = global.bottle_speed;
} else {
    hspeed = -global.bottle_speed;  
}

image_xscale = 0.08;
image_yscale = 0.08;

// Random angular velocity (change this if you want a fixed rotation speed)
image_angle = 0;
image_speed = 0; // we’ll control angle manually
angle_speed = irandom_range(5, 10); // degrees per frame
