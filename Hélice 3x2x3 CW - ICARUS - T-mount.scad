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


// Hélice de 3x2


propeller (3, 76.5, 9, 63.5, hublen  = 3.15, profilepoints = 40, fairing = 2.5, dir = 1, te_thickness = 3, angle_sweep = 0.3);




difference () {
    cylinder(h = 4, r = 4.75, $fn = 100);
     
    translate([0, 2.75, -0.5])
        cylinder(h = 7, r = 1.25, $fn = 50);
    
    translate([0, -2.75, -0.5])
        cylinder(h = 7, r = 1.25, $fn = 50);
    
    translate([0, 0, -0.5])  
        cylinder(h = 7, r = 1, $fn = 50);
    
    translate([0, 0, -1])
        cylinder(h = 3.5, r = 3.75, $fn = 100);
};



