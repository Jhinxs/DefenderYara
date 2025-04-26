
rule Trojan_BAT_DarkTortilla_C_MTB{
	meta:
		description = "Trojan:BAT/DarkTortilla.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {0d 08 17 8d ?? 00 00 01 25 16 09 28 ?? 00 00 0a 9d 6f } //2
		$a_01_1 = {00 00 0a b4 9c 11 07 17 d6 13 07 11 07 11 06 31 d5 } //2
		$a_01_2 = {48 74 74 70 57 65 62 52 65 71 75 65 73 74 } //1 HttpWebRequest
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1) >=5
 
}