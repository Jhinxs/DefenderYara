
rule Spammer_BAT_Yabam_A{
	meta:
		description = "Spammer:BAT/Yabam.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {59 61 62 6d 43 6c 69 65 6e 74 } //1 YabmClient
		$a_01_1 = {55 00 30 00 39 00 47 00 56 00 46 00 64 00 42 00 55 00 6b 00 56 00 63 00 54 00 57 00 6c 00 6a 00 63 00 6d 00 39 00 7a 00 62 00 32 00 5a 00 30 00 58 00 46 00 64 00 70 00 62 00 6d 00 52 00 76 00 64 00 33 00 4e 00 63 00 51 00 33 00 56 00 79 00 63 00 6d 00 56 00 75 00 64 00 46 00 5a 00 6c 00 63 00 6e 00 4e 00 70 00 62 00 32 00 35 00 63 00 55 00 6e 00 56 00 75 00 } //1 U09GVFdBUkVcTWljcm9zb2Z0XFdpbmRvd3NcQ3VycmVudFZlcnNpb25cUnVu
		$a_01_2 = {7b 00 54 00 42 00 5f 00 4d 00 53 00 47 00 49 00 44 00 7d 00 } //1 {TB_MSGID}
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}