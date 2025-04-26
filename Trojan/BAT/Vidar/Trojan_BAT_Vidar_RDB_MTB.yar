
rule Trojan_BAT_Vidar_RDB_MTB{
	meta:
		description = "Trojan:BAT/Vidar.RDB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {5f 11 0c 11 0f 1f 0f 5f 95 11 05 25 1a 58 13 05 4b 61 20 ?? ?? ?? ?? 58 9e 11 17 } //2
		$a_01_1 = {11 05 25 4b 11 0c 11 0f 1f 0f 5f 95 61 54 } //2
		$a_01_2 = {64 36 37 32 65 66 30 64 2d 39 35 62 32 2d 34 34 39 30 2d 38 39 62 38 2d 37 38 39 61 39 33 39 64 66 61 64 32 } //1 d672ef0d-95b2-4490-89b8-789a939dfad2
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1) >=5
 
}