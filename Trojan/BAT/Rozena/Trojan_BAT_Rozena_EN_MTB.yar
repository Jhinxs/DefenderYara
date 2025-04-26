
rule Trojan_BAT_Rozena_EN_MTB{
	meta:
		description = "Trojan:BAT/Rozena.EN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {64 38 62 37 66 37 61 36 5c 33 62 66 66 37 64 62 37 5c 41 70 70 5f 57 65 62 5f 69 30 67 78 6f 61 33 31 2e 70 64 62 } //1 d8b7f7a6\3bff7db7\App_Web_i0gxoa31.pdb
		$a_01_1 = {2f 00 43 00 6c 00 6f 00 75 00 64 00 46 00 6c 00 6f 00 77 00 2f 00 54 00 65 00 6d 00 70 00 46 00 69 00 6c 00 65 00 2f 00 61 00 73 00 70 00 78 00 77 00 65 00 62 00 2e 00 61 00 73 00 70 00 78 00 } //1 /CloudFlow/TempFile/aspxweb.aspx
		$a_01_2 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //1 CreateEncryptor
		$a_01_3 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 ToBase64String
		$a_01_4 = {48 74 74 70 53 65 73 73 69 6f 6e 53 74 61 74 65 } //1 HttpSessionState
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}