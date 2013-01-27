using UnityEngine;
using System.Collections;

public class PlayerSounds : MonoBehaviour {

	public AudioSource playerStep;
	public AudioSource playerHeart;
	GameObject parentMonster;
	Vector3 oldPlayerPos;
	
	// Use this for initialization
	void Start () 
	{
		//movementSpeed = 0.1f;
		parentMonster = GameObject.Find("Monster");
		playerStep.loop = true;
		oldPlayerPos = new Vector3(0,0,0);
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
		
		if(!playerStep.isPlaying && Vector3.Distance(playerPos, oldPlayerPos) > 0)
		{
			playerStep.Play();
		}
		else if(playerStep.isPlaying && Mathf.Abs(playerPos.y - oldPlayerPos.y) > 0.01f)
			playerStep.Stop();
		
		oldPlayerPos = playerPos;
	}
}
