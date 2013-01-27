#pragma strict

public var MonsterObject : GameObject;
public var fallingRockPrefab : GameObject;
public var rockNumber : int;
public var randomOffsetDistance : float;


private var monsterDistance : float;

//=========================

function Start () 
{

	//KillPlayer();
}

function Update () 
{
	monsterDistance = Vector3.Distance( transform.position, MonsterObject.transform.position);
	
	
	
	if( monsterDistance < 1.0 )
	{
		KillPlayer();
	}

}

//=========================

function KillPlayer ()
{
	
	Destroy( gameObject.GetComponent("FPSInputController") );
	Destroy( gameObject.GetComponent("MouseLook") );
	
	for ( var i : int = 0; i < rockNumber; i++ )
	{
		var randomOffset : Vector3 = Vector3( Random.Range(-randomOffsetDistance,randomOffsetDistance), Random.Range(-randomOffsetDistance,randomOffsetDistance), Random.Range(-randomOffsetDistance,randomOffsetDistance) );
		var spawnPos : Vector3 = transform.position + Vector3(0,4,0) + randomOffset;
		
		Instantiate(fallingRockPrefab, spawnPos, Quaternion.identity);
		
	}
	
}