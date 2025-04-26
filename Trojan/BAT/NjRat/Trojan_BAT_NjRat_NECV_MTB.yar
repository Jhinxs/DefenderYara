
rule Trojan_BAT_NjRat_NECV_MTB{
	meta:
		description = "Trojan:BAT/NjRat.NECV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_01_0 = {47 7a 52 75 6c 65 72 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //3 GzRuler.Form1.resources
		$a_01_1 = {57 61 6a 55 53 70 52 48 43 35 47 45 4e 37 42 34 35 72 } //3 WajUSpRHC5GEN7B45r
		$a_01_2 = {2e 00 4e 00 45 00 54 00 20 00 52 00 65 00 61 00 63 00 74 00 6f 00 72 00 } //2 .NET Reactor
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_4 = {52 53 41 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 RSACryptoServiceProvider
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=10
 
}