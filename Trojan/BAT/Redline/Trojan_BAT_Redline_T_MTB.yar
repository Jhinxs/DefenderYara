
rule Trojan_BAT_Redline_T_MTB{
	meta:
		description = "Trojan:BAT/Redline.T!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 72 01 00 00 70 6f ?? ?? ?? 0a 0a de 0a 07 2c 06 07 6f ?? ?? ?? 0a dc 28 ?? ?? ?? 0a 72 8a 00 00 70 28 ?? ?? ?? 0a 06 28 ?? ?? ?? 0a } //10
		$a_80_1 = {52 65 67 41 73 6d 2e 65 78 65 } //RegAsm.exe  1
	condition:
		((#a_03_0  & 1)*10+(#a_80_1  & 1)*1) >=11
 
}