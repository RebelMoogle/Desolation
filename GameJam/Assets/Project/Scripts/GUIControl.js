#pragma strict

private var hit : RaycastHit;
private var ray : Ray;
 
function FixedUpdate () {

    if( Input.GetMouseButtonDown(0) ) {
    
        ray = Camera.main.ScreenPointToRay( Input.mousePosition );
        Debug.DrawLine( ray.origin, ray.direction * 10 );
        if( Physics.Raycast(ray.origin, ray.direction * 10, hit )){
        	
        	if( hit.transform.name == "gui_button_start" )
        	{
        		Debug.Log("Started Game!");
        		Application.LoadLevel("levelOne");
        	}

        }
        
    }
} 