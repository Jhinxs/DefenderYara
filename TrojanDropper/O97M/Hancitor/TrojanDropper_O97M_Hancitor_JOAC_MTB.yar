
rule TrojanDropper_O97M_Hancitor_JOAC_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.JOAC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {70 6f 69 64 64 73 20 3d 20 6d 67 66 20 26 20 75 68 6a 6b 6e 62 20 26 20 22 22 20 26 20 77 65 72 73 20 26 20 6d 66 64 20 26 20 71 77 65 64 73 20 26 20 75 67 66 63 } //1 poidds = mgf & uhjknb & "" & wers & mfd & qweds & ugfc
		$a_01_1 = {43 61 6c 6c 20 62 76 78 66 63 73 64 28 6c 6b 6c 63 29 } //1 Call bvxfcsd(lklc)
		$a_01_2 = {43 61 6c 6c 20 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 68 64 68 64 64 28 4c 65 66 74 28 75 75 75 75 63 2c 20 6e 74 67 73 29 20 26 20 74 69 6e 69 29 } //1 Call ThisDocument.hdhdd(Left(uuuuc, ntgs) & tini)
		$a_01_3 = {43 61 6c 6c 20 70 70 70 78 28 66 64 73 20 26 20 22 7a 6f 22 20 26 20 22 72 22 20 26 20 22 6f 22 20 26 20 66 64 73 61 20 26 20 76 73 73 66 73 29 } //1 Call pppx(fds & "zo" & "r" & "o" & fdsa & vssfs)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}