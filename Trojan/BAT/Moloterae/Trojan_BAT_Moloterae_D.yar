
rule Trojan_BAT_Moloterae_D{
	meta:
		description = "Trojan:BAT/Moloterae.D,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {4c 41 53 54 6d 41 49 4e 5c 4e 41 54 54 4c 59 } //1 LASTmAIN\NATTLY
		$a_01_1 = {19 5c 00 77 00 75 00 64 00 70 00 70 00 74 00 65 00 2e 00 65 00 78 00 65 } //1 尙眀甀搀瀀瀀琀攀⸀攀砀攀
		$a_01_2 = {1b 5c 00 45 00 78 00 74 00 52 00 65 00 73 00 65 00 74 00 2e 00 65 00 78 00 65 } //1 尛䔀砀琀刀攀猀攀琀⸀攀砀攀
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}