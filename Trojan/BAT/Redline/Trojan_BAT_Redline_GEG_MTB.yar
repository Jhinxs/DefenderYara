
rule Trojan_BAT_Redline_GEG_MTB{
	meta:
		description = "Trojan:BAT/Redline.GEG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {4f 71 70 70 57 67 69 4f 77 51 56 33 33 38 47 49 62 30 } //1 OqppWgiOwQV338GIb0
		$a_01_1 = {72 77 6d 6a 67 42 78 36 33 4d } //1 rwmjgBx63M
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_3 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //1 CreateEncryptor
		$a_01_4 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //1 RijndaelManaged
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}