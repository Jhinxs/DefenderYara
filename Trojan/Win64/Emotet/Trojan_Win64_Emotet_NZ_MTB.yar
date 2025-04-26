
rule Trojan_Win64_Emotet_NZ_MTB{
	meta:
		description = "Trojan:Win64/Emotet.NZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {99 83 e2 0f 03 c2 83 e0 0f 2b c2 48 63 c8 48 8b 05 c5 82 00 00 0f b6 04 08 44 33 c0 8b 05 } //1
		$a_01_1 = {33 3c 61 2a 44 63 55 32 52 55 6f 4f 28 48 79 00 57 6d 54 41 79 44 42 72 6b 6f 53 53 } //1 㰳⩡捄㉕啒佯䠨y浗䅔䑹牂潫卓
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}