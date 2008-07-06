{-# OPTIONS -fvia-C #-}
changequote({{,}})dnl
module Data.Char.Properties.CaseData where
{
	import Data.Map;
	import Prelude;

	toUpperCase :: Char -> Char;
	toUpperCase c = findWithDefault c c theMap where
	{
		theMap :: Map Char Char;
		theMap = fromList theList;
		
		theList :: [(Char,Char)];
		theList =
		[
define({{uchar}},{{ifelse({{$13}},{{}},{{}},{{			('\x$1','\x$13'),
}})}})dnl
include(DATAFILE)dnl
			('\x0','\x0')	-- just to terminate list
		];
	};

	toLowerCase :: Char -> Char;
	toLowerCase c = findWithDefault c c theMap where
	{
		theMap :: Map Char Char;
		theMap = fromList theList;
		
		theList :: [(Char,Char)];
		theList =
		[
define({{uchar}},{{ifelse({{$14}},{{}},{{}},{{			('\x$1','\x$14'),
}})}})dnl
include(DATAFILE)dnl
			('\x0','\x0')	-- just to terminate list
		];
	};

	toTitleCase :: Char -> Char;
	toTitleCase c = findWithDefault c c theMap where
	{
		theMap :: Map Char Char;
		theMap = fromList theList;
		
		theList :: [(Char,Char)];
		theList =
		[
define({{uchar}},{{ifelse({{$15}},{{}},{{}},{{			('\x$1','\x$15'),
}})}})dnl
include(DATAFILE)dnl
			('\x0','\x0')	-- just to terminate list
		];
	};
}
