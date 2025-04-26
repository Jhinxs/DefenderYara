
rule Trojan_Win32_CryptInject_S_MSR{
	meta:
		description = "Trojan:Win32/CryptInject.S!MSR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {65 79 79 62 63 2e 63 6f 6d 2f 66 6f 72 75 6d 64 69 73 70 6c 61 79 2e 70 68 70 3f 66 69 64 3d 31 37 2f 6d 65 6d 63 70 2e 70 68 70 2f 69 70 2e 61 73 70 2f 74 69 6d 65 2e 61 73 70 2f 67 6f 6e 67 67 61 6f 2e 74 78 74 2f 65 63 2d 75 73 65 72 36 2e 70 68 70 2f 65 63 2d 62 64 2e 70 68 70 2f 65 63 2d 6a 68 2e 70 68 70 } //1 eyybc.com/forumdisplay.php?fid=17/memcp.php/ip.asp/time.asp/gonggao.txt/ec-user6.php/ec-bd.php/ec-jh.php
		$a_01_1 = {5f 45 4c 5f 48 69 64 65 4f 77 6e 65 72 } //1 _EL_HideOwner
		$a_01_2 = {43 00 3a 00 5c 00 54 00 6f 00 6d 00 61 00 74 00 6f 00 5c 00 53 00 65 00 74 00 75 00 70 00 2e 00 74 00 6f 00 } //1 C:\Tomato\Setup.to
		$a_01_3 = {5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //1 \shell\open\command
		$a_01_4 = {30 43 32 38 44 34 32 37 31 42 39 31 46 33 34 30 43 34 31 37 37 46 33 36 43 30 45 44 30 37 42 42 } //1 0C28D4271B91F340C4177F36C0ED07BB
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}