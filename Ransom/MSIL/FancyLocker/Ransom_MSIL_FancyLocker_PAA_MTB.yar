
rule Ransom_MSIL_FancyLocker_PAA_MTB{
	meta:
		description = "Ransom:MSIL/FancyLocker.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {52 61 6e 73 6f 6d 77 61 72 65 } //1 Ransomware
		$a_01_1 = {5c 00 52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 46 00 61 00 6e 00 63 00 79 00 4c 00 65 00 61 00 6b 00 73 00 2e 00 74 00 78 00 74 00 } //1 \README.FancyLeaks.txt
		$a_01_2 = {68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 21 00 } //1 have been encrypted!
		$a_01_3 = {46 00 61 00 6e 00 63 00 79 00 4c 00 6f 00 63 00 6b 00 65 00 72 00 } //1 FancyLocker
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}