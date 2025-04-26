
rule Trojan_BAT_Scarsi_ABTN_MTB{
	meta:
		description = "Trojan:BAT/Scarsi.ABTN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {44 00 79 00 6e 00 2b 00 61 00 6d 00 2b 00 69 00 63 00 49 00 6e 00 76 00 2b 00 6f 00 6b 00 65 00 } //1 Dyn+am+icInv+oke
		$a_01_1 = {53 00 79 00 73 00 74 00 65 00 2b 00 6d 00 2e 00 52 00 65 00 66 00 6c 00 2b 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 41 00 73 00 2b 00 73 00 65 00 6d 00 62 00 6c 00 79 00 } //1 Syste+m.Refl+ection.As+sembly
		$a_01_2 = {47 00 65 00 2b 00 74 00 45 00 78 00 70 00 2b 00 6f 00 72 00 74 00 65 00 64 00 54 00 79 00 2b 00 70 00 65 00 73 00 } //1 Ge+tExp+ortedTy+pes
		$a_01_3 = {4c 00 6f 00 2b 00 61 00 64 00 } //1 Lo+ad
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}