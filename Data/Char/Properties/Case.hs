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

	-- | Returns true if the general category is L, or is \"other alphabetic\".
	;
	isAlphabetic :: Char -> Bool;
	isAlphabetic c = (isOtherAlphabetic c) || (gcMajorClass (getGeneralCategory c) == ClLetter);

	-- | Returns true if the general category is Ll, or is \"other lowercase\".
	;
	isLowercase :: Char -> Bool;
	isLowercase c = (isOtherLowercase c) || (getGeneralCategory c == GcLl);

	-- | Returns true if the general category is Lu, or is \"other uppercase\".
	;
	isUppercase :: Char -> Bool;
	isUppercase c = (isOtherUppercase c) || (getGeneralCategory c == GcLu);

	-- | Returns true if the general category is Lt.
	;
	isTitlecase :: Char -> Bool;
	isTitlecase c = getGeneralCategory c == GcLt;
}
