
rule TrojanDownloader_Win32_CoinMiner_QD_bit{
	meta:
		description = "TrojanDownloader:Win32/CoinMiner.QD!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {61 74 74 72 69 62 20 2b 73 20 2b 68 20 2b 72 } //1 attrib +s +h +r
		$a_01_1 = {6e 65 74 2e 65 78 65 20 73 74 6f 70 } //1 net.exe stop
		$a_01_2 = {73 63 20 63 6f 6e 66 69 67 20 57 69 6e 64 6f 77 73 55 70 64 74 65 20 74 79 70 65 3d 20 6f 77 6e } //1 sc config WindowsUpdte type= own
		$a_01_3 = {68 74 74 70 3a 2f 2f 7a 7a 2e 38 32 38 32 2e 73 70 61 63 65 2f 6e 77 2f 73 73 2f } //1 http://zz.8282.space/nw/ss/
		$a_03_4 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 53 79 73 57 4f 57 36 34 [0-20] 74 78 74 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}