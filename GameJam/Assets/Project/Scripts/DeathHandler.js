#pragma strict


public var fallingRockPrefab : GameObject;
public var rockNumber : int;
public var randomOffsetDistance : float;
public var deathDistance : float;

private var playerIsAlive : boolean = true;

private var monsterDistance : float;
private var MonsterObject : GameObject;

private var mouseLookX : MouseLook;
private var mouseLookY : MouseLook;
private var playerControl : CharacterMotor;

//=========================

function Start () 
{

	//by charlie to find monster object at start automatically
	MonsterObject = GameObject.Find("Monster");
	//KillPlayer();
	
	playerControl = GetComponent( CharacterMotor );
	mouseLookX = GameObject.Find("Main Camera").GetComponent( MouseLook );
	mouseLookY = GetComponentInChildren( MouseLook );
}

function Update () 
{
	monsterDistance = Vector3.Distance( transform.position, MonsterObject.transform.position);

	if( monsterDistance < deathDistance && playerIsAlive )
	{
		KillPlayer();
	}

}

//=========================

function KillPlayer ()
{
	playerIsAlive = false;
	playerControl.canControl = false;
	
	mouseLookX.sensitivityX = 0;
	mouseLookX.sensitivityY = 0;
	mouseLookY.sensitivityX = 0;
	mouseLookY.sensitivityY = 0;
	
	for ( var i : int = 0; i < rockNumber; i++ )
	{
		var randomOffset : Vector3 = Vector3( Random.Range(-randomOffsetDistance,randomOffsetDistance), Random.Range(-randomOffsetDistance,randomOffsetDistance), Random.Range(-randomOffsetDistance,randomOffsetDistance) );
		var spawnPos : Vector3 = transform.position + Vector3(0,4,0) + randomOffset;
		
		Instantiate(fallingRockPrefab, spawnPos, Quaternion.identity);
		
	}
	
}