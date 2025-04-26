
rule Trojan_Win64_UslKeylogger_A_MTB{
	meta:
		description = "Trojan:Win64/UslKeylogger.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b 45 64 ff c0 89 45 64 81 7d 64 be 00 00 00 7f ?? 8b 4d 64 ff 15 ?? ?? ?? ?? 98 3d 01 80 ff ff 75 ?? 0f b6 4d 64 e8 7d } //2
		$a_03_1 = {48 63 85 d4 00 00 00 48 8d 0d 83 e5 fe ff 0f b6 84 01 74 1c 01 00 8b 84 81 34 1c 01 00 48 03 c1 ff ?? 4c 8d 05 ?? ?? 00 00 48 8d 15 ?? ?? 00 00 48 8b 4d 08 e8 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=2
 
}