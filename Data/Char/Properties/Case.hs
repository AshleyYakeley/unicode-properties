module Data.Char.Properties.Case
(
	module Data.Char.Properties.CaseData,
	module Data.Char.Properties.Case
) where
{
	import Data.Char.Properties.CaseData;
	import Data.Char.Properties.Misc;
	import Data.Char.Properties.GeneralCategory;
	import Prelude;

	isAlphabetic :: Char -> Bool;
	isAlphabetic c = (isOtherAlphabetic c) || (gcMajorClass (getGeneralCategory c) == ClLetter);

	isLowercase :: Char -> Bool;
	isLowercase c = (isOtherLowercase c) || (getGeneralCategory c == GcLl);

	isUppercase :: Char -> Bool;
	isUppercase c = (isOtherUppercase c) || (getGeneralCategory c == GcLu);

	isTitlecase :: Char -> Bool;
	isTitlecase c = getGeneralCategory c == GcLt;
}
