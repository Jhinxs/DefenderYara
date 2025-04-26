
rule Trojan_BAT_ClipBanker_VI_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.VI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {76 6d 77 61 72 65 74 72 61 79 } //1 vmwaretray
		$a_81_1 = {53 62 69 65 43 74 72 6c } //1 SbieCtrl
		$a_81_2 = {4f 6e 43 6c 69 70 62 6f 61 72 64 43 68 61 6e 67 65 } //1 OnClipboardChange
		$a_81_3 = {53 65 74 43 6c 69 70 62 6f 61 72 64 56 69 65 77 65 72 } //1 SetClipboardViewer
		$a_81_4 = {4d 49 49 43 58 51 49 42 41 41 4b 42 67 51 44 62 } //1 MIICXQIBAAKBgQDb
		$a_81_5 = {67 59 41 66 78 4f 77 77 69 } //1 gYAfxOwwi
		$a_81_6 = {6e 42 72 64 54 68 75 57 68 74 44 48 51 4e 67 } //1 nBrdThuWhtDHQNg
		$a_81_7 = {57 67 49 42 41 41 4b 42 67 48 } //1 WgIBAAKBgH
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}