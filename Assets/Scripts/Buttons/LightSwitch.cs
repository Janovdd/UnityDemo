using UnityEngine;
using System.Collections;

public class LightSwitch : MonoBehaviour
{
    public Material light;
    public GameObject textO;
    public GameObject textC;

    void Start()
    {
        textC.SetActive(false);
        textO.SetActive(false);
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.tag == "Player")
        {
            textC.SetActive(true);
            textO.SetActive(true);
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (col.gameObject.tag == "Player")
        {
            textO.SetActive(false);
            textC.SetActive(false);
        }
    }

    void OnTriggerStay(Collider col)
    {
        if (col.gameObject.tag == "Player")
        {
            if (Input.GetKey(KeyCode.E))
            {
                light.DisableKeyword("_EMISSION");
            }
            
        }
    }
}