
rule Trojan_Win64_Angosay_D_dll{
	meta:
		description = "Trojan:Win64/Angosay.D!dll,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_01_0 = {56 50 4a 71 6b 64 32 53 6e 30 75 50 53 6d 55 35 42 4d 38 4c 77 67 5c 45 78 74 72 61 63 74 65 64 42 75 6e 64 6c 65 5c 52 54 4d 5f 49 6d 61 67 65 4d 6f 64 52 65 63 5f 31 2e 31 2e 35 2e 30 5f 78 36 34 5c 52 54 4d 5f 49 6d 61 67 65 4d 6f 64 52 65 63 2e 70 64 62 } //1 VPJqkd2Sn0uPSmU5BM8Lwg\ExtractedBundle\RTM_ImageModRec_1.1.5.0_x64\RTM_ImageModRec.pdb
		$a_01_1 = {56 00 50 00 4a 00 71 00 6b 00 64 00 32 00 53 00 6e 00 30 00 75 00 50 00 53 00 6d 00 55 00 35 00 42 00 4d 00 38 00 4c 00 77 00 67 00 5c 00 45 00 78 00 74 00 72 00 61 00 63 00 74 00 65 00 64 00 42 00 75 00 6e 00 64 00 6c 00 65 00 5c 00 52 00 54 00 4d 00 5f 00 49 00 6d 00 61 00 67 00 65 00 4d 00 6f 00 64 00 52 00 65 00 63 00 5f 00 31 00 2e 00 31 00 2e 00 35 00 2e 00 30 00 5f 00 78 00 36 00 34 00 5c 00 52 00 54 00 4d 00 5f 00 49 00 6d 00 61 00 67 00 65 00 4d 00 6f 00 64 00 52 00 65 00 63 00 2e 00 70 00 64 00 62 00 } //1 VPJqkd2Sn0uPSmU5BM8Lwg\ExtractedBundle\RTM_ImageModRec_1.1.5.0_x64\RTM_ImageModRec.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}