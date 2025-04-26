
rule Ransom_Win32_Filecoder_G_MTB{
	meta:
		description = "Ransom:Win32/Filecoder.G!MTB,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 43 72 79 70 74 6f 67 72 61 70 68 79 } //1 System.Security.Cryptography
		$a_01_1 = {50 00 6c 00 61 00 79 00 65 00 72 00 20 00 6c 00 6f 00 67 00 69 00 6e 00 } //1 Player login
		$a_01_2 = {6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 } //1 localhost
		$a_01_3 = {53 00 45 00 52 00 56 00 45 00 52 00 3d 00 } //1 SERVER=
		$a_01_4 = {3b 00 44 00 41 00 54 00 41 00 42 00 41 00 53 00 45 00 3d 00 } //1 ;DATABASE=
		$a_01_5 = {3b 00 50 00 41 00 53 00 53 00 57 00 4f 00 52 00 44 00 3d 00 } //1 ;PASSWORD=
		$a_01_6 = {67 65 74 5f 46 72 75 63 4b 72 62 4e 77 45 51 5a 7a 57 72 74 6c 41 57 64 73 58 44 } //1 get_FrucKrbNwEQZzWrtlAWdsXD
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}