using UnityEngine;

public class DusmanAI : MonoBehaviour
{
    public Transform hedef; // Takip edilecek hedef (oyuncu) belirtilir.

    void Update()
    {
        // Düşmanı hedefe doğru hareket ettir.
        transform.position = Vector3.MoveTowards(transform.position, hedef.position, Time.deltaTime * 3.0f);

        // Düşmanın hedefe dönük bakmasını sağla.
        transform.LookAt(hedef);
    }
}
