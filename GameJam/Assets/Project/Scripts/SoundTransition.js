#pragma strict

public var audioSource1 : AudioSource;
public var audioSource2 : AudioSource;

// Time to wait before repeating the loop.
public var waitTime : float;

// Number of times to loop.
public var stepNum : int;



//===============================

function Start () {
		
	audioSource1.volume = 1.0;
	audioSource1.loop = true;
	audioSource1.Play();

	audioSource2.volume = 0.0;
	audioSource2.loop = true;
	audioSource2.Play();



	ChangeMusic();
	
}

//===============================

function ChangeMusic () 
{
	var a : boolean;
	
	if( audioSource1.volume == 1.0 )
	{
		a = true;
	}
	else
	{
		a = false;
	}
	
	for ( var i : int = 1; i < (stepNum+1); i++ )
	{
		
		var percentage : float = i * (1.0 /  stepNum);
		
		if( a )
		{
			audioSource1.volume = Mathf.Lerp(1.0, 0.0, percentage);
			audioSource2.volume = Mathf.Lerp(0.0, 1.0, percentage);
		}
		else
		{
			audioSource1.volume = Mathf.Lerp(0.0, 1.0, percentage);
			audioSource2.volume = Mathf.Lerp(1.0, 0.0, percentage);
		}
		
		var timer = Time.timeSinceLevelLoad + waitTime;
    	while ( Time.timeSinceLevelLoad < timer ) {
        	yield;
    	}
		
	}
	

	
}