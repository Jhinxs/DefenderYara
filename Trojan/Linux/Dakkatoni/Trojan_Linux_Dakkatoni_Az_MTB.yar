
rule Trojan_Linux_Dakkatoni_Az_MTB{
	meta:
		description = "Trojan:Linux/Dakkatoni.Az!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {2f 64 72 75 70 61 6c 2f 5f 75 2e 6a 70 67 7c 73 68 } //1 /drupal/_u.jpg|sh
		$a_02_1 = {73 6c 65 65 70 20 33 3b 20 69 66 20 21 20 70 73 20 61 75 78 20 7c 20 67 72 65 70 20 2d 76 20 27 67 72 65 70 27 20 7c 20 67 72 65 70 20 2d 71 20 27 2f 73 62 69 6e 2f 61 74 6e 64 27 3b 20 74 68 65 6e 20 77 67 65 74 20 2d 4f 20 2d 20 ?? ?? ?? ?? 3a 2f 2f [0-03] 2e [0-03] 2e [0-03] 2e [0-03] 2f 64 72 75 70 61 6c 2f 5f 75 2e 73 68 7c 73 68 } //1
		$a_00_2 = {2f 74 6d 70 2f 2e 6d 69 6e 65 } //1 /tmp/.mine
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}