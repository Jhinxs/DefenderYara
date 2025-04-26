
rule Trojan_Win32_Gleishug_C{
	meta:
		description = "Trojan:Win32/Gleishug.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {73 63 68 74 61 73 6b 73 20 2f 63 72 65 61 74 65 20 2f 73 63 20 6d 69 6e 75 74 65 20 2f 6d 6f 20 36 30 20 2f 74 6e 20 22 55 70 64 61 74 65 72 22 20 2f 74 72 20 22 5c 22 } //1 schtasks /create /sc minute /mo 60 /tn "Updater" /tr "\"
		$a_01_1 = {55 70 64 61 74 65 5c 73 65 75 70 64 2e 65 78 65 5c 22 22 20 2f 72 75 20 22 53 79 73 74 65 6d 22 } //1 Update\seupd.exe\"" /ru "System"
		$a_01_2 = {64 6f 77 6e 6c 6f 61 64 5f 71 75 69 65 74 } //1 download_quiet
		$a_01_3 = {5c 61 61 61 61 2e 74 78 74 } //1 \aaaa.txt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}