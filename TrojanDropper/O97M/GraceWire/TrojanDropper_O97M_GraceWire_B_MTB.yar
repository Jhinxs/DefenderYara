
rule TrojanDropper_O97M_GraceWire_B_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.B!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2b 20 22 2e 64 22 20 2b 20 22 6c 6c 22 } //1 + ".d" + "ll"
		$a_03_1 = {3d 20 55 73 65 72 46 6f 72 6d ?? 2e 54 65 78 74 42 6f 78 ?? 2e 54 61 67 20 ?? 20 22 5c [0-20] 22 20 2b 20 22 2e 78 6c } //1
		$a_01_2 = {4b 69 6c 6c 41 72 72 61 79 20 5a 69 70 46 6f 6c 64 65 72 20 26 20 22 5c 6f 6c 65 22 20 2b 20 22 4f 62 6a 22 20 2b 20 22 65 63 74 2a 2e 62 69 6e 22 } //1 KillArray ZipFolder & "\ole" + "Obj" + "ect*.bin"
		$a_01_3 = {2e 49 74 65 6d 28 22 78 6c 5c 65 6d 62 65 64 } //1 .Item("xl\embed
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}