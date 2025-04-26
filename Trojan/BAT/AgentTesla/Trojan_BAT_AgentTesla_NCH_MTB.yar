
rule Trojan_BAT_AgentTesla_NCH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NCH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 00 20 ?? ?? ?? 00 8d ?? ?? ?? 01 0c 00 00 73 ?? ?? ?? 0a 0d 00 00 07 08 16 20 ?? ?? ?? 00 6f ?? ?? ?? 0a 13 04 11 04 16 fe 02 13 05 11 05 2c 0d 00 09 08 16 11 04 6f ?? ?? ?? 0a 00 00 00 11 04 16 fe 02 13 06 11 06 2d } //1
		$a_01_1 = {37 33 62 63 39 35 37 2d 38 35 30 31 2d 34 34 61 64 2d 39 36 36 36 2d 39 34 39 38 31 33 62 37 65 66 31 } //1 73bc957-8501-44ad-9666-949813b7ef1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}