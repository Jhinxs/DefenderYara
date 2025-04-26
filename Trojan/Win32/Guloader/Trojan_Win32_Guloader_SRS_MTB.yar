
rule Trojan_Win32_Guloader_SRS_MTB{
	meta:
		description = "Trojan:Win32/Guloader.SRS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {4d 61 74 72 69 6b 65 6c 64 69 72 65 6b 74 6f 72 61 74 65 72 73 2e 69 6e 69 } //1 Matrikeldirektoraters.ini
		$a_01_1 = {4d 72 6b 6c 61 67 64 65 73 2e 55 6e 61 } //1 Mrklagdes.Una
		$a_01_2 = {42 61 72 68 6f 76 65 64 65 74 31 35 30 } //1 Barhovedet150
		$a_01_3 = {53 6b 62 6e 65 74 69 6d 65 6e 73 } //1 Skbnetimens
		$a_01_4 = {53 74 6a 66 6f 72 68 6f 6c 64 73 } //1 Stjforholds
		$a_01_5 = {53 74 65 72 73 65 72 6e 65 73 2e 66 72 61 } //1 Stersernes.fra
		$a_01_6 = {5c 55 6e 63 6f 6c 6f 75 72 61 62 6c 65 73 5c 44 72 75 65 6c 69 67 68 65 64 2e 53 61 6d } //1 \Uncolourables\Druelighed.Sam
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}