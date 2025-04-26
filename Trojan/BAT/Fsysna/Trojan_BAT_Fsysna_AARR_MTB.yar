
rule Trojan_BAT_Fsysna_AARR_MTB{
	meta:
		description = "Trojan:BAT/Fsysna.AARR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {72 37 01 00 70 6f ?? 00 00 0a 0a 06 73 ?? 00 00 06 0b 07 03 6f ?? 00 00 06 0c 07 73 ?? 00 00 06 0d 09 6f ?? 00 00 06 00 08 13 04 2b 00 11 04 2a } //4
		$a_01_1 = {45 00 47 00 41 00 2b 00 75 00 53 00 51 00 30 00 4d 00 6a 00 41 00 70 00 30 00 6b 00 67 00 79 00 6a 00 4d 00 44 00 71 00 31 00 53 00 68 00 30 00 36 00 54 00 33 00 38 00 31 00 77 00 50 00 46 00 70 00 6d 00 50 00 6e 00 65 00 69 00 4e 00 46 00 38 00 4b 00 4d 00 3d 00 } //1 EGA+uSQ0MjAp0kgyjMDq1Sh06T381wPFpmPneiNF8KM=
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}