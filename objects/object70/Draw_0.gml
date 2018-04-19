
xR+= xRadd
yR+=yRadd
zR+=zRadd
var size = speed/10
var m1 = matrix_build(x, y, 0, xR, yR, zR, size, size, size);
//var m2 = matrix_build(0, 0, 0, 0, 0, 0, 1, 1, 1) ;
matrix_stack_push(m1);
//matrix_stack_push(m2);
matrix_set(matrix_world, matrix_stack_top());
draw_sprite(sprite_index, 0, 0, 0);
//matrix_stack_pop();
matrix_stack_pop();
