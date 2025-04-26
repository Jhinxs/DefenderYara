
rule Trojan_BAT_AsyncRat_NEAW_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.NEAW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 "
		
	strings :
		$a_01_0 = {00 04 06 7e 43 00 00 04 06 91 20 d0 03 00 00 59 d2 9c 00 06 17 58 0a 06 7e 43 00 00 04 8e 69 fe 04 0b 07 2d d7 } //5
		$a_01_1 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 44 00 61 00 74 00 61 00 } //2 DownloadData
		$a_01_2 = {73 00 63 00 6f 00 72 00 64 00 61 00 } //2 scorda
		$a_01_3 = {41 00 6a 00 6f 00 75 00 74 00 65 00 72 00 20 00 75 00 6e 00 20 00 73 00 74 00 61 00 67 00 69 00 61 00 69 00 72 00 65 00 } //2 Ajouter un stagiaire
		$a_01_4 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 41 00 73 00 73 00 65 00 6d 00 62 00 6c 00 79 00 } //2 System.Reflection.Assembly
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2) >=13
 
}