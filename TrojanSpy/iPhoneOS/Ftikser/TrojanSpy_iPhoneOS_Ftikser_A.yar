
rule TrojanSpy_iPhoneOS_Ftikser_A{
	meta:
		description = "TrojanSpy:iPhoneOS/Ftikser.A,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {66 75 63 6b 5f 69 70 68 6f 6e 65 } //1 fuck_iphone
		$a_03_1 = {78 73 73 65 72 2e 63 6f 6d [0-10] 38 30 [0-10] 25 40 3a 25 40 2f 43 68 65 63 6b 4c 69 62 72 61 72 79 2e 61 73 70 78 } //1
		$a_03_2 = {48 74 74 70 46 75 6e 4d 61 69 6e [0-10] 77 72 69 74 65 54 6f 46 69 6c 65 3a 61 74 6f 6d 69 63 61 6c 6c 79 } //1
		$a_01_3 = {2f 62 69 6e 2f 25 40 00 44 6f 77 6e 6c 6f 61 64 69 6e 67 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule TrojanSpy_iPhoneOS_Ftikser_A_2{
	meta:
		description = "TrojanSpy:iPhoneOS/Ftikser.A,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {40 3a 25 40 2f 54 61 72 67 65 74 43 6f 6e 6e 65 63 74 2e 61 73 70 78 3f 74 70 6e 3d 25 40 26 74 49 4d 45 49 3d 25 40 26 74 49 4d 53 49 3d 25 40 26 74 64 76 3d 25 40 26 74 6f 76 3d 25 40 26 } //1 @:%@/TargetConnect.aspx?tpn=%@&tIMEI=%@&tIMSI=%@&tdv=%@&tov=%@&
		$a_01_1 = {25 40 3a 25 40 2f 54 61 72 67 65 74 55 70 6c 6f 61 64 47 70 73 2e 61 73 70 78 3f 26 74 6d 61 63 3d 25 40 26 4a 5a 3d 25 40 } //1 %@:%@/TargetUploadGps.aspx?&tmac=%@&JZ=%@
		$a_01_2 = {43 6f 6e 74 65 6e 74 2d 44 69 73 70 6f 73 69 74 69 6f 6e 3a 20 66 6f 72 6d 2d 64 61 74 61 3b 20 } //1 Content-Disposition: form-data; 
		$a_03_3 = {52 75 6e 43 6f 6d 6d 61 6e 64 3a [0-05] 53 65 6e 64 53 4d 53 3a [0-05] 43 61 6c 6c 54 65 6c 3a [0-05] 47 65 74 47 70 73 3a [0-05] 47 65 74 57 65 69 58 69 6e 3a [0-05] 47 65 74 4b 65 79 43 68 61 69 6e } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}