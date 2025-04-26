
rule Trojan_Win32_Scar_Q{
	meta:
		description = "Trojan:Win32/Scar.Q,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {b8 0c 6b 00 00 bb 02 00 00 00 53 50 6a 00 e8 ?? ?? ?? ?? 85 c0 } //1
		$a_00_1 = {81 ec 00 22 00 00 89 65 fc b9 00 22 00 00 8b 7d fc fc f3 a4 } //1
		$a_00_2 = {05 01 01 01 01 51 8a c8 d3 c0 59 51 8a c8 d3 c0 59 } //1
		$a_00_3 = {43 00 6f 00 6e 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 20 00 63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 } //1 Conclusion control
		$a_00_4 = {46 00 6f 00 75 00 6e 00 64 00 65 00 64 00 20 00 69 00 74 00 65 00 6d 00 73 00 3a 00 } //1 Founded items:
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}