
rule Trojan_Win32_DCRat_D_MTB{
	meta:
		description = "Trojan:Win32/DCRat.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {32 cb 52 5a c1 f2 ?? d0 c9 f6 d9 80 c1 ?? 80 f1 ?? 32 d9 c1 ca ?? 02 d2 0f be c2 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}