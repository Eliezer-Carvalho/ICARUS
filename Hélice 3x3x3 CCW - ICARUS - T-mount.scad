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


// Hélice de 3x3.5


propeller (3, 76.5, 8.35, 50.8, hublen  = 5, profilepoints = 30, fairing = 2.5, dir = 1, te_thickness = 3.5);




difference () {
    cylinder(h = 6, r = 4.25, $fn = 100);
     
    
    translate([0, 2.5, -0.5])
        cylinder(h = 7, r = 1, $fn = 50);
    ;
    
    translate([0, -2.5, -0.5])
        cylinder(h = 7, r = 1, $fn = 50);
    ;
    
    translate([0, 0, -0.5])  
        cylinder(h = 7, r = 0.75, $fn = 50);
};



