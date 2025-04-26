
rule TrojanSpy_AndroidOS_Androrat_B_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Androrat.B!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {4c 63 6f 6d 2f [0-08] 2f 61 70 70 63 6f 64 65 2f 61 70 70 63 6f 64 65 2f 4d 61 69 6e 41 63 74 69 76 69 74 79 } //2
		$a_01_1 = {4c 63 6f 6d 2f 63 68 61 67 61 6c 6c 2f 73 63 72 65 65 6e 73 68 6f 74 } //1 Lcom/chagall/screenshot
		$a_01_2 = {63 61 6d 76 64 6f 3d 63 61 6d 76 64 6f } //1 camvdo=camvdo
		$a_00_3 = {73 6d 73 4d 6f 6e 69 74 65 72 } //1 smsMoniter
		$a_01_4 = {4c 63 6f 6d 2f 63 68 61 67 61 6c 6c 2f 6e 6f 74 69 66 69 63 61 74 69 6f 6e 6c 69 73 74 65 6e } //1 Lcom/chagall/notificationlisten
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}