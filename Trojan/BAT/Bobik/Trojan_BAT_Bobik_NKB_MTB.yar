
rule Trojan_BAT_Bobik_NKB_MTB{
	meta:
		description = "Trojan:BAT/Bobik.NKB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {72 49 00 00 70 28 ?? ?? 00 0a 0a 06 0b 72 ?? ?? 00 70 07 28 ?? ?? 00 0a 28 ?? ?? 00 0a 26 73 ?? ?? 00 0a 0c 08 72 ?? ?? 00 70 72 ?? ?? 00 70 73 ?? ?? 00 0a 6f ?? ?? 00 0a 00 07 6f ?? ?? 00 0a 18 fe 02 16 fe 01 0d 09 2d 1f 00 08 72 ?? ?? 00 70 07 28 ?? ?? 00 0a 72 ?? ?? 00 70 07 28 ?? ?? 00 0a 6f ?? ?? 00 0a } //5
		$a_01_1 = {67 75 69 64 2e 63 6d 64 2e 65 78 65 } //1 guid.cmd.exe
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}