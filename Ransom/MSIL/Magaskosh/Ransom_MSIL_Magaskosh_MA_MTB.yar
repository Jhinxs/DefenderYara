
rule Ransom_MSIL_Magaskosh_MA_MTB{
	meta:
		description = "Ransom:MSIL/Magaskosh.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4d 61 67 61 73 46 69 6e 69 73 68 65 72 2e 70 64 62 } //1 MagasFinisher.pdb
		$a_01_1 = {4d 61 67 61 73 46 69 6e 69 73 68 65 72 2e 50 72 6f 70 65 72 74 69 65 73 } //1 MagasFinisher.Properties
		$a_01_2 = {63 65 36 65 61 66 37 63 2d 33 61 62 34 2d 34 31 30 35 2d 62 38 34 32 2d 39 66 63 33 65 61 33 66 66 39 61 61 } //1 ce6eaf7c-3ab4-4105-b842-9fc3ea3ff9aa
		$a_01_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}