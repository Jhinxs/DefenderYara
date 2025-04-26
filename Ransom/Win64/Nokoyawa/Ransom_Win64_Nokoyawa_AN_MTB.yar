
rule Ransom_Win64_Nokoyawa_AN_MTB{
	meta:
		description = "Ransom:Win64/Nokoyawa.AN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {45 4e 43 52 59 50 54 5f 4e 45 54 57 4f 52 4b } //1 ENCRYPT_NETWORK
		$a_01_1 = {4c 4f 41 44 5f 48 49 44 44 45 4e 5f 44 52 49 56 45 53 } //1 LOAD_HIDDEN_DRIVES
		$a_01_2 = {44 45 4c 45 54 45 5f 53 48 41 44 4f 57 } //1 DELETE_SHADOW
		$a_01_3 = {6e 00 6f 00 6b 00 6f 00 6e 00 6f 00 6b 00 6f 00 } //1 nokonoko
		$a_01_4 = {53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5c 00 53 00 61 00 66 00 65 00 42 00 6f 00 6f 00 74 00 5c 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 5c 00 6e 00 6f 00 6b 00 6f 00 6e 00 6f 00 6b 00 6f 00 } //1 SYSTEM\CurrentControlSet\Control\SafeBoot\Network\nokonoko
		$a_01_5 = {2f 00 73 00 65 00 74 00 20 00 7b 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 7d 00 20 00 73 00 61 00 66 00 65 00 62 00 6f 00 6f 00 74 00 20 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 } //1 /set {default} safeboot network
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}