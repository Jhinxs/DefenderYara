
rule Trojan_BAT_Polazert_M_MTB{
	meta:
		description = "Trojan:BAT/Polazert.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 "
		
	strings :
		$a_81_0 = {64 65 69 6d 6f 73 2e 64 6c 6c } //3 deimos.dll
		$a_81_1 = {48 74 74 70 57 65 62 52 65 73 70 6f 6e 73 65 } //3 HttpWebResponse
		$a_81_2 = {48 74 74 70 53 74 61 74 75 73 43 6f 64 65 } //3 HttpStatusCode
		$a_81_3 = {52 61 6e 64 6f 6d 4e 75 6d 62 65 72 47 65 6e 65 72 61 74 6f 72 } //3 RandomNumberGenerator
		$a_81_4 = {6d 6a 45 64 4c 31 45 33 4b 6d 53 6c 72 6b 57 78 } //3 mjEdL1E3KmSlrkWx
		$a_81_5 = {52 53 41 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //3 RSACryptoServiceProvider
		$a_81_6 = {49 6a 6d 57 30 7a 76 57 6a 67 4b 49 51 4e 52 46 62 5a 6b 67 } //3 IjmW0zvWjgKIQNRFbZkg
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*3) >=21
 
}