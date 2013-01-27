#pragma strict

public var MonsterObject : GameObject;

public var musicSource1 : AudioSource;
public var musicSource2 : AudioSource;

public var heartbeatSource : AudioSource;

public var minHeartDist : float;
public var musicChangeDist : float;

private var monsterDist : float;

//===============================

function Start () {
	
	musicSource1.volume = 1.0;
	musicSource1.loop = true;

	musicSource2.volume = 0.0;
	musicSource2.loop = true;

}

//===============================

function ChangeMusic ( waitTime : float, stepNum : int, a : boolean ) 
{
//	var a : boolean;
	
//	if( musicSource1.volume == 1.0 )
//	{
//		a = true;
//	}
//	else
//	{
//		a = false;
//	}
	
	for ( var i : int = 1; i < (stepNum+1); i++ )
	{
		
		var percentage : float = i * (1.0 /  stepNum);
		
		if( a )
		{
			// transition from music1 to music 2
			musicSource1.volume = Mathf.Lerp(1.0, 0.0, percentage);
			musicSource2.volume = Mathf.Lerp(0.0, 1.0, percentage);
		}
		else
		{
			// transition from music 2 to music 1
			musicSource1.volume = Mathf.Lerp(0.0, 1.0, percentage);
			musicSource2.volume = Mathf.Lerp(1.0, 0.0, percentage);
		}
		
		var timer = Time.timeSinceLevelLoad + waitTime;
    	while ( Time.timeSinceLevelLoad < timer ) {
        	yield;
    	}
		
	}
}

function HeartBeat ()
{
	
	if ( monsterDist <= minHeartDist )
	{
		
		// Play heartbeat sound at a speed relative to distance
		
	}
	
	
	
}

function ProximitySounds ()
{
	
	if ( monsterDist < musicChangeDist && musicSource1.isPlaying == false )
	{
		musicSource1.Play();
		musicSource2.Play();
		ChangeMusic(0.3, 150, true);
		
//		yield WaitForSeconds(5.0); // Wait for Changemusic to do its thing..
		
	}	
	else
	{
	
		if( musicSource1.volume != 1.0 && musicSource1.isPlaying )
		{
			ChangeMusic(0.05, 500, false);
//			yield WaitForSeconds(5.0); // Wait for Changemusic to do its thing..
		}
		else
		{
			musicSource1.Stop();
			musicSource2.Stop();
		}
		
	}
	
	
}

//===============================

function Update ()
{
	
	monsterDist = Vector3.Distance( transform.position, MonsterObject.transform.position );
	
	ProximitySounds();
	
	
	
}









