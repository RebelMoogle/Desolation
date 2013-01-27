using UnityEngine;
using System.Collections;

public class Monster : MonoBehaviour {

	public AudioSource monsterStep;
	public AudioSource monsterMusic;
	public float movementSpeed = 0.1f;
	GameObject parentPlayer;
	
	// Use this for initialization
	void Start () 
	{
		//movementSpeed = 0.1f;
		parentPlayer = GameObject.Find("Player");
		monsterStep.loop = true;
	}
	
	// Update is called once per frame
	void Update () 
	{
		Vector3 playerPos = parentPlayer.transform.position;
		playerPos = new Vector3(playerPos.x,  0, playerPos.z);
		Vector3 monsterPos = transform.position;
		
		float distance = Vector3.Distance( playerPos, monsterPos);
		Vector3 movementDir = Vector3.Normalize(playerPos - monsterPos);
		transform.position = monsterPos + movementDir * movementSpeed * Time.deltaTime ;
	
		//music
		if(distance < 10.0f)
		{
			if(!monsterMusic.isPlaying)
				monsterMusic.Play();
			
			//monsterMusic.volume = (1 - distance/50);
		}
		else
			monsterMusic.Stop();
		
		if(distance < 30.0f)
		{
			
			if(!monsterStep.isPlaying)
				monsterStep.Play();
				
			monsterStep.volume = (1 - distance / 30);
			monsterStep.pitch  = (1 - distance / 30) * 2.5f;
			
			//this is just a comment
			
		}
		else
			monsterStep.Stop();
		
	}
	
	
}
