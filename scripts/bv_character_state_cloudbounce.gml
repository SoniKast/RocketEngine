/// bv_character_state_cloudbounce()
//  Cloud bounce

     if(cloud_bounce == true)
     {
        animation_angle -= 6;
     }
   
     if(cloud_bounce == true && ground)
     {
        cloud_bounce = false;
     }
