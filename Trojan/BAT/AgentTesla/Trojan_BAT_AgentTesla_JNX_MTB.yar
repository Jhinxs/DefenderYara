
rule Trojan_BAT_AgentTesla_JNX_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JNX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 09 06 09 18 d8 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a 9c 09 17 d6 0d 09 08 31 e4 } //1
		$a_01_1 = {24 37 36 39 62 37 35 33 63 2d 34 33 36 65 2d 34 35 38 38 2d 61 36 61 38 2d 38 39 65 61 36 61 63 30 34 61 36 65 } //1 $769b753c-436e-4588-a6a8-89ea6ac04a6e
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}