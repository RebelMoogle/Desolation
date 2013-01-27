using UnityEngine;
using System.Collections;

public class PlayerSounds : MonoBehaviour {

	public AudioSource playerStep;
	public AudioSource playerHeart;
	GameObject parentMonster;
	Vector3 oldPlayerPos;
	float distanceTraveled;
	
	public float stepdistance = 5.0f; //C# doesn't have macros :( SADPANDA
	
	// Use this for initialization
	void Start () 
	{
		//movementSpeed = 0.1f;
		parentMonster = GameObject.Find("Monster");
		playerStep.loop = false;
		oldPlayerPos = new Vector3(0,0,0);
		distanceTraveled = 0.0f;
	}
	
	// Update is called once per frame
	void Update () 
	{
		Vector3 monsterPos = parentMonster.transform.position;
		monsterPos = new Vector3(monsterPos.x,  0, monsterPos.z);
		Vector3 playerPos = transform.position;
		
		float distance = Vector3.Distance( monsterPos, playerPos);
	
		if(distance < 100.0f)
		{
			if(!playerHeart.isPlaying)
				playerHeart.Play();
				
			playerHeart.volume = (1 - distance/100);	
			//this is just a comment
		}
		else 
			playerHeart.Stop();
		
		distanceTraveled += Vector3.Distance(playerPos, oldPlayerPos);
		
		if(distanceTraveled >= stepdistance)
		{
			playerStep.Play();
			distanceTraveled = 0.0f;
		}
		else if(playerStep.isPlaying && Mathf.Abs(playerPos.y - oldPlayerPos.y) > 0.01f)
		{
			playerStep.Stop();
			distanceTraveled = 0.0f;
		}
		
		oldPlayerPos = playerPos;
	}
}
