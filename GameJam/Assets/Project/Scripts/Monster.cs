using UnityEngine;
using System.Collections;

public class Monster : MonoBehaviour {

	public AudioSource monsterStep;
	public float stepDistance;
	public float maxStepPitch;
	public float musicDistance;
	public AudioSource monsterMusic;
	public float movementSpeed = 0.1f;
	GameObject parentPlayer;
	
	// Use this for initialization
	void Start () 
	{
		//movementSpeed = 0.1f;
		parentPlayer = GameObject.Find("Player");
		monsterStep.loop = true;
		
		stepDistance = 30.0f;
		maxStepPitch = 2.5f;
		musicDistance = 10.0f;
	}
	
	// Update is called once per frame
	void Update () 
	{
		Vector3 playerPos = parentPlayer.transform.position;
		playerPos = new Vector3(playerPos.x,  3, playerPos.z);
		Vector3 monsterPos = new Vector3(transform.position.x, 3, transform.position.z);
		
		float distance = Vector3.Distance( playerPos, monsterPos);
		Vector3 movementDir = Vector3.Normalize(playerPos - monsterPos);
		transform.position = monsterPos + movementDir * movementSpeed * Time.deltaTime ;
	
		//music
		if(distance < musicDistance)
		{
			if(!monsterMusic.isPlaying)
				monsterMusic.Play();
			
			//monsterMusic.volume = (1 - distance/50);
		}
		else
			monsterMusic.Stop();
		
		if(distance < stepDistance)
		{
			
			if(!monsterStep.isPlaying)
				monsterStep.Play();
				
			monsterStep.volume = (1 - distance / stepDistance);
			monsterStep.pitch  = (1 - distance / stepDistance) * maxStepPitch;
			
			//this is just a comment
			
		}
		else
			monsterStep.Stop();
		
	}
	
	
}
