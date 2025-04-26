
rule Trojan_BAT_CobaltStrike_CSZ_MTB{
	meta:
		description = "Trojan:BAT/CobaltStrike.CSZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {08 07 08 9a 1f 10 28 19 00 00 0a 9c 08 17 58 0c 08 07 8e 69 fe 04 0d 09 2d } //1
		$a_01_1 = {56 00 69 00 72 00 74 00 75 00 61 00 6c 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 45 00 78 00 20 00 5b 00 53 00 65 00 74 00 20 00 74 00 6f 00 20 00 30 00 78 00 34 00 30 00 20 00 28 00 52 00 57 00 58 00 20 00 6d 00 6f 00 64 00 65 00 29 00 } //1 VirtualProtectEx [Set to 0x40 (RWX mode)
		$a_01_2 = {4e 00 61 00 74 00 69 00 76 00 65 00 50 00 61 00 79 00 6c 00 6f 00 61 00 64 00 5f 00 50 00 45 00 32 00 } //1 NativePayload_PE2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}