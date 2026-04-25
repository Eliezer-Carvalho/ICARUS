use <elliptical_propblade.scad>


/* A função propeller() tem os seguintes valores:

https://www.printables.com/model/159163-elliptical-blade-naca-airfoil-propeller-library
-> blades - Número de pás
-> propdia - Diâmetro da hélice
-> hubdia - Diâmetro do cilindro que insere a hélice no motor
-> bladepitch - Valor do pitch em mm
-> maxchordfrac - Largura da pá
-> hublen - Comprimento do cubo de suporte da hélice
-> elenfrac - Largura final da pá
-> dir - CW ou CCW
-> centerline - Define qual a orientação do airfoil
-> angle_sweep - Curva da pá
-> te_thickness - Espessura da Hélice
-> fairing - Espessamento gradual da raiz da pá

*/


// Hélice de 2x2.5


propeller (3, 50.8, 5, 63.5, hublen  = 5, profilepoints = 30, fairing = 2, dir = 1);




difference () {
    cylinder(h = 6, r = 2.5, $fn = 100);

    
    translate([0, 0, -0.5])  
        cylinder(h = 7, r = 1.5, $fn = 50);
};