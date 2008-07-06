{-# OPTIONS -fvia-C #-}
changequote({{,}})dnl
module Data.Char.Properties.MiscData where
{
	import Data.Char.Properties.PrivateData;
	import Data.Word;
	import Prelude;


	-- Data

	getCombiningClass :: Char -> Word8;
define({{uchar}},{{ifelse({{$4}},{{0}},{{}},{{	getCombiningClass '\x$1' = $4;
}})}})dnl
include(DATAFILE)dnl
	getCombiningClass c = handleOmittedRange 0 getCombiningClass c;

	getDecimalDigit :: Char -> Maybe Word8;
define({{uchar}},{{ifelse({{$7}},{{}},{{}},{{	getDecimalDigit '\x$1' = Just $7;
}})}})dnl
include(DATAFILE)dnl
	getDecimalDigit c = handleOmittedRange Nothing getDecimalDigit c;

	getDigit :: Char -> Maybe Word8;
define({{uchar}},{{ifelse({{$8}},{{}},{{}},{{	getDigit '\x$1' = Just $8;
}})}})dnl
include(DATAFILE)dnl
	getDigit c = handleOmittedRange Nothing getDigit c;

	getNumber :: Char -> Maybe Rational;
define({{uchar}},{{ifelse({{$9}},{{}},{{}},{{	getNumber '\x$1' = Just ($9);
}})}})dnl
include(DATAFILE)dnl
	getNumber c = handleOmittedRange Nothing getNumber c;

	isMirrored :: Char -> Bool;
define({{uchar}},{{ifelse({{$10}},{{N}},{{}},{{	isMirrored '\x$1' = True;
}})}})dnl
include(DATAFILE)dnl
	isMirrored c = handleOmittedRange False isMirrored c;


	-- Properties
define({{propname_id}},{{{{is}}patsubst({{$1}},{{_}},{{}})}})dnl
define({{propbegin}},{{ifelse($1,{{}},{{}},{{
	propname_id($1) :: Char -> Bool;
}})}})dnl
define({{propend}},{{ifelse($1,{{}},{{}},{{	propname_id(curpropname) _ = False;
}})}})dnl
define({{curpropname}},{{}})dnl
define({{newprop}},{{ifelse($1,curpropname,{{}},{{propend(curpropname){{}}propbegin($1)}}){{}}define({{curpropname}},$1)}})dnl
define({{charprop}},{{newprop($1)ifelse({{$3}},{{}},{{	propname_id($1) '\x$2' = True;}},
{{	propname_id($1) i | (i >= '\x$2') && (i <= '\x$3') = True;}})}})dnl
include(PROPFILE)dnl
newprop({{}})dnl
}
