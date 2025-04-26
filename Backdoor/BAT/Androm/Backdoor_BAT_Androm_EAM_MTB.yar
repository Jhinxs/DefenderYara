
rule Backdoor_BAT_Androm_EAM_MTB{
	meta:
		description = "Backdoor:BAT/Androm.EAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 01 2a 00 72 01 02 00 70 28 ?? 00 00 06 18 3a ?? 00 00 00 26 38 00 00 00 00 28 ?? 00 00 0a 11 00 6f ?? 00 00 0a 28 ?? 00 00 0a 28 ?? 00 00 06 1a 3a ?? 00 00 00 26 38 00 00 00 00 dd ?? ff ff ff 13 00 38 00 00 00 00 38 } //3
		$a_01_1 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 65 00 72 00 76 00 65 00 72 00 2e 00 64 00 75 00 63 00 6b 00 64 00 6e 00 73 00 2e 00 6f 00 72 00 67 00 2f 00 53 00 79 00 73 00 74 00 65 00 6d 00 45 00 6e 00 76 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 4e 00 65 00 77 00 69 00 74 00 65 00 72 00 5f 00 42 00 64 00 67 00 64 00 77 00 66 00 73 00 77 00 2e 00 70 00 6e 00 67 00 } //2 downloadserver.duckdns.org/SystemEnv/uploads/Newiter_Bdgdwfsw.png
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*2) >=5
 
}