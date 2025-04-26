
rule Trojan_BAT_Remcos_KEND_MTB{
	meta:
		description = "Trojan:BAT/Remcos.KEND!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0b 00 00 "
		
	strings :
		$a_81_0 = {63 61 6c 69 6e 61 2d 63 72 61 63 6b 2e 73 74 6f 72 65 2f 6c 6f 61 64 65 72 2f 75 70 6c 6f 61 64 73 2f 73 65 72 76 69 63 65 73 5f 56 78 6e 77 66 69 77 63 2e 62 6d 70 } //10 calina-crack.store/loader/uploads/services_Vxnwfiwc.bmp
		$a_81_1 = {39 31 2e 32 34 33 2e 34 34 2e 31 34 32 2f 61 72 78 2d 37 37 37 4f 66 64 64 73 5f 53 75 61 64 6f 63 66 71 2e 70 6e 67 } //10 91.243.44.142/arx-777Ofdds_Suadocfq.png
		$a_81_2 = {75 70 6c 6f 6f 64 65 72 2e 6e 65 74 2f 69 6d 67 2f 69 6d 61 67 65 2f 34 38 2f 30 65 64 61 33 63 38 33 34 35 32 66 34 30 63 62 33 62 34 62 61 30 31 39 36 35 61 33 35 34 33 33 2f 46 6b 6e 65 64 2e 6a 70 67 } //10 uplooder.net/img/image/48/0eda3c83452f40cb3b4ba01965a35433/Fkned.jpg
		$a_81_3 = {76 6b 63 67 72 6f 75 70 73 2e 63 6f 6d 2f 6c 6f 61 64 65 72 2f 75 70 6c 6f 61 64 73 2f 51 75 6f 74 65 5f 57 64 6d 61 68 67 63 73 2e 6a 70 67 } //10 vkcgroups.com/loader/uploads/Quote_Wdmahgcs.jpg
		$a_81_4 = {78 2e 72 75 6e 65 2d 73 70 65 63 74 72 61 6c 73 2e 63 6f 6d 2f 6c 6f 61 64 65 72 2f 75 70 6c 6f 61 64 73 2f 47 78 76 47 68 6a 4b 6d 5f 47 78 76 77 61 6e 6c 61 2e 6a 70 67 } //10 x.rune-spectrals.com/loader/uploads/GxvGhjKm_Gxvwanla.jpg
		$a_81_5 = {39 31 2e 32 34 33 2e 34 34 2e 31 34 32 2f 70 6c 2d 55 6b 78 61 6d 6c 69 79 67 5f 57 71 78 62 63 66 74 69 2e 70 6e 67 } //10 91.243.44.142/pl-Ukxamliyg_Wqxbcfti.png
		$a_81_6 = {47 65 74 52 65 73 70 6f 6e 73 65 53 74 72 65 61 6d } //1 GetResponseStream
		$a_81_7 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_81_8 = {47 65 74 54 79 70 65 } //1 GetType
		$a_81_9 = {52 65 61 64 42 79 74 65 73 } //1 ReadBytes
		$a_81_10 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
	condition:
		((#a_81_0  & 1)*10+(#a_81_1  & 1)*10+(#a_81_2  & 1)*10+(#a_81_3  & 1)*10+(#a_81_4  & 1)*10+(#a_81_5  & 1)*10+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1) >=15
 
}