BEGIN {sent=0;
received=0;
}
{
	if($1=="s" && $4=="AGT")
	{sent++;}
	else if($1=="r" && $4=="AGT")
	{received++;
		}
	}
	END{
	
		printf " Paquets envoyés: %d", sent;
		printf " \n Paquets reçus: %d" , received;
		printf " \n Taux de pertes= %.2f " , (sent/received)*100;
	}
