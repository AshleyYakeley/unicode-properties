changequote({{,}})dnl
module Data.Char.Properties.DecompositionData (getDecomposition) where
{
	import Data.Char.Properties.DecompositionTypes;
	import Data.Char.Properties.PrivateData;
	import Data.Array;
	import Prelude;

	theList :: [(Char,Decomposition)];
	theList =
		[
define({{capfirst}},{{patsubst({{$1}},{{^\(.\)}},{{translit({{\1}},{{a-z}},{{A-Z}})}})}})dnl
define({{charlist}},{{patsubst({{$1}},{{ }},{{','\\x}})}})dnl
define({{charlistpart}},{{patsubst({{$1}},{{<.*> }},{{}})}})dnl
define({{typepart}},{{ifelse(substr({{$1}},0,1),{{<}},regexp({{$1}},{{<\(.*\)>}},{{\1}}),{{canonical}})}})dnl
define({{decomp}},{{DC{{}}capfirst(typepart({{$1}})) ['\x{{}}charlist(charlistpart({{$1}}))']}})dnl
define({{uchar}},{{ifelse({{$6}},{{}},{{}},{{		('\x$1',MkDecomposition decomp($6)),
}})}})dnl
include(DATAFILE)dnl
		('\x10FFFF',NoDecomposition)
		];

	theArray :: Array Char Decomposition;
	theArray = accumArray (\_ a -> a) NoDecomposition ('\0','\x10FFFF') theList;

	getFromArray :: Char -> Decomposition;
	getFromArray c = if (inRange ('\0','\x10FFFF') c)
	 then theArray ! c
	 else NoDecomposition;

	getDecomposition :: Char -> Decomposition;
	getDecomposition c = handleOmittedRange (getFromArray c) getFromArray c;
}
