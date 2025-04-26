
rule Trojan_Win32_Gepys_MR_MTB{
	meta:
		description = "Trojan:Win32/Gepys.MR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {33 75 f0 33 75 ?? 03 45 ?? f7 f3 31 d6 89 15 ?? ?? ?? ?? 31 ce 03 75 ?? e9 } //1
		$a_00_1 = {28 63 74 73 5c 70 72 6f 67 73 5c 53 79 73 50 72 6f 67 5c 77 6f 72 6b 5c 72 6d 5c 74 65 6d 70 6c 61 74 65 73 5c 65 78 65 5c 72 75 6e 69 6e 6d 65 6d 32 2e 65 78 65 } //1 (cts\progs\SysProg\work\rm\templates\exe\runinmem2.exe
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}