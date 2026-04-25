use <elliptical_propblade.scad>


/* A função propeller() tem os seguintes valores:

-> blades - Número de pás
-> propdia - Diâmetro da hélice
-> hubdia - Diâmetro do cilindro que insere a hélice no motor
-> bladepitch - Valor do pitch em mm
-> maxchordfrac - Largura da pá
-> hublen - Comprimento do cubo de suporte da hélice
-> elenfrac - Largura final da pá
-> dir - 1 CW ou -1 CCW 
-> centerline - Define qual a orientação do airfoil
-> angle_sweep - Curva da pá
-> te_thickness - Espessura da Hélice
-> fairing - Espessamento gradual da raiz da pá

*/


// Hélice de 5x5.5


propeller (3, 127, 8, 139.7, hublen  = 5, profilepoints = 30, fairing = 2);




difference () {
    cylinder(h = 6, r = 4, $fn = 100);

    
    translate([0, 0, -0.5])  
        cylinder(h = 7, r = 2, $fn = 50);
};