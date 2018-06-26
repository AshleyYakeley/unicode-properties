changequote({{,}})dnl
module Data.Char.Properties.BidiCategoryData (getBidiCategory) where
    {
    import Data.Char.Properties.BidiCategoryTypes;
    import Data.Char.Properties.PrivateData;
    import Data.Array;
    import Prelude;

    theList :: [(Char,BidiCategory)];
    theList =
        [
define({{uchar}},{{ifelse({{$5}},{{L}},{{}},{{        ('\x$1',Bidi$5),
}})}})dnl
include(DATAFILE)dnl
        ('\x10FFFF',BidiL)
        ];

    theArray :: Array Char BidiCategory;
    theArray = accumArray (\_ a -> a) BidiL ('\0','\x10FFFF') theList;

    getFromArray :: Char -> BidiCategory;
    getFromArray c = if (inRange ('\0','\x10FFFF') c)
     then theArray ! c
     else BidiL;

    getBidiCategory :: Char -> BidiCategory;
    getBidiCategory c = handleOmittedRange (getFromArray c) getFromArray c;
    }
