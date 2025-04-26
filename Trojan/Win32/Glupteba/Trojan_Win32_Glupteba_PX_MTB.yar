
rule Trojan_Win32_Glupteba_PX_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.PX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {c1 e9 05 89 [0-02] 8b [0-02] 01 [0-02] 83 [0-06] 90 18 8b [0-02] 33 [0-02] 89 [0-02] 8b [0-02] 33 [0-02] 89 [0-02] 8b [0-02] 29 [0-02] 8b [0-02] 2b [0-02] 89 [0-02] e9 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}