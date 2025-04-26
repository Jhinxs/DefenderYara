
rule Backdoor_BAT_Androm_GNW_MTB{
	meta:
		description = "Backdoor:BAT/Androm.GNW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_03_0 = {0b 07 18 6f ?? ?? ?? 0a 00 07 18 6f ?? ?? ?? 0a 00 07 03 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a 00 07 6f ?? ?? ?? 0a 0c 28 ?? ?? ?? 0a 08 06 16 06 8e 69 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0d 2b 00 09 2a } //10
		$a_80_1 = {70 6f 2d 70 72 6f 6a 2e 65 78 65 } //po-proj.exe  1
	condition:
		((#a_03_0  & 1)*10+(#a_80_1  & 1)*1) >=11
 
}