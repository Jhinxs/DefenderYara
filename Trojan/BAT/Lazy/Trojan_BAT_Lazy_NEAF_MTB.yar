
rule Trojan_BAT_Lazy_NEAF_MTB{
	meta:
		description = "Trojan:BAT/Lazy.NEAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 03 00 00 "
		
	strings :
		$a_01_0 = {73 57 00 00 0a 7e 19 00 00 04 28 6a 00 00 0a 28 6b 00 00 0a 6f 6c 00 00 0a 7e 85 00 00 04 25 2d 17 } //10
		$a_01_1 = {66 00 75 00 63 00 6b 00 5f 00 79 00 6f 00 75 00 5f 00 6d 00 6f 00 6d 00 } //2 fuck_you_mom
		$a_01_2 = {55 00 30 00 56 00 4d 00 52 00 55 00 4e 00 55 00 49 00 43 00 6f 00 67 00 52 00 6c 00 4a 00 50 00 54 00 53 00 42 00 42 00 62 00 6e 00 52 00 70 00 64 00 6d 00 6c 00 79 00 64 00 58 00 4e 00 51 00 63 00 6d 00 39 00 6b 00 64 00 57 00 4e 00 30 00 } //2 U0VMRUNUICogRlJPTSBBbnRpdmlydXNQcm9kdWN0
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=14
 
}