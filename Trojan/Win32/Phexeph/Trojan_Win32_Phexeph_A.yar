
rule Trojan_Win32_Phexeph_A{
	meta:
		description = "Trojan:Win32/Phexeph.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {40 66 69 6c 65 5f 65 78 69 73 74 73 28 22 43 3a 2f 57 69 6e 64 6f 77 73 2f 73 79 73 74 65 6d 2f 22 2e 50 63 4e 61 6d 65 2e 22 2e 65 78 65 22 29 } //1 @file_exists("C:/Windows/system/".PcName.".exe")
		$a_01_1 = {43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 5c 52 75 6e 20 2f 76 20 41 64 6f 62 65 55 70 64 61 74 65 } //1 CurrentVersion\\Run /v AdobeUpdate
		$a_01_2 = {69 66 20 28 56 69 72 74 75 61 6c 42 78 20 3d 3d 22 41 4e 54 49 56 49 52 55 53 22 29 7b 65 78 69 74 3b 7d } //1 if (VirtualBx =="ANTIVIRUS"){exit;}
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}