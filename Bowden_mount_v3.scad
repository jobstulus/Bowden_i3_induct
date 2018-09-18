import("Bowden_mount_v2.stl", convexity=10);


$fn =100;
// Adding 18mm inductive sensor mount
//color("red")
//rotate([0,0,0])translate([-30,-20,0])cube([26,5,26]);


module rounded(edge,width,heigth){
    TRANSLATION = width/2-edge;
    hull(){
    translate([TRANSLATION,TRANSLATION,0])cylinder(heigth,edge,edge);
    translate([-TRANSLATION,TRANSLATION,0])cylinder(heigth,edge,edge);
    translate([-TRANSLATION,-TRANSLATION,0])cylinder(heigth,edge,edge);
    translate([TRANSLATION,-TRANSLATION,0])cylinder(heigth,edge,edge);
    }
    
}
color("red")
difference(){
    translate([-35,-20,32/2])rotate([-90,0,0])rounded(5, 32, 8);
    translate([-35,-30,32/2])rotate([-90,0,0])cylinder(50,18/2,18/2);
}