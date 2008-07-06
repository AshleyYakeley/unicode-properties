changequote({{,}})dnl
module Data.Char.Properties.PrivateData where
{
	import Prelude;

	handleOmittedRange :: a -> (Char -> a) -> Char -> a;
	handleOmittedRange def _ c | (c < '\x3400') = def;	-- optimisiation, catch about 99.9% of cases for non-CJK text
define({{horEntry}},{{	handleOmittedRange _ f c | (c > '\x$1') && (c <= '\x$2') = f '\x$1';
}})dnl
horEntry(3400,4DB5)dnl		CJK Ideographs Extension A
horEntry(4E00,9FA5)dnl		CJK Ideographs
horEntry(AC00,D7A3)dnl		Hangul Syllables
horEntry(D800,DB7F)dnl		Non-Private Use High Surrogates
horEntry(DB80,DBFF)dnl		Private Use High Surrogates
horEntry(DC00,DFFF)dnl		Low Surrogates
horEntry(E000,F8FF)dnl		The Private Use Area
horEntry(20000,2A6D6)dnl	CJK Ideographs Extension B
horEntry(F0000,FFFFD)dnl	Plane 15 Private Use Area
horEntry(100000,10FFFD)dnl	Plane 16 Private Use Area
undefine({{horEntry}})dnl
	handleOmittedRange def _ _ = def; 
}
