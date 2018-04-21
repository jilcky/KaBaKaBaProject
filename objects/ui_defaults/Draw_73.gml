if uiAniDrawGlow
{
                CurFading += uiFadingSpeed;
                if CurFading > max(0.6,uiGlowing) { CurFading=max(0.6,uiGlowing); uiFadingSpeed *= -1;}
                else if CurFading < 0.1 { CurFading=0.1; uiFadingSpeed *= -1;}          
                draw_set_alpha(CurFading);
               gpu_set_blendmode(bm_add);
                draw_ellipse_color(x, y, x+Sprite_Width, y+Sprite_Height, c_white, c_black, false);
               gpu_set_blendmode(bm_normal); 
                draw_set_alpha(uiAlpha);
}       

       

