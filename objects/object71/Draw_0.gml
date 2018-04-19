/// @description Insert description here
// You can write your code in this editor

var m2 = matrix_build(0, 0, 0, 0, 0, 0, 1, 1, 1) ;
matrix_stack_push(m2);
matrix_set(matrix_world, matrix_stack_top());
matrix_stack_pop();