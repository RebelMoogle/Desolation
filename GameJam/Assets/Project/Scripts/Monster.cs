using UnityEngine;
using System.Collections;

public class Monster : MonoBehaviour {

	public float movementSpeed = 0.1f;
	GameObject parentPlayer;
	
	// Use this for initialization
	void Start () 
	{
		//movementSpeed = 0.1f;
		parentPlayer = GameObject.Find("Player");
	}
	
	// Update is called once per frame
	void Update () 
	{
		Vector3 playerPos = parentPlayer.transform.position;
		//playerPos = new Vector3(playerPos.x, 0, playerPos.z);
		Vector3 monsterPos = transform.position;
		
		float distance = Vector3.Distance( playerPos, monsterPos);
		Vector3 movementDir = Vector3.Normalize(playerPos - monsterPos);
		movementDir = new Vector3(movementDir.x, 0, movementDir.z);
		transform.position = monsterPos + movementDir * movementSpeed * Time.deltaTime ;
		
	}
}
