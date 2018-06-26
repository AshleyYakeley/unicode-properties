changequote({{,}})dnl
module Data.Char.Properties.CaseData where
{
    import Data.Map;
    import Prelude;

    -- | Convert the character to a single uppercase character, if it exists
    ;
    toUpperCase1 :: Char -> Char;
    toUpperCase1 c = findWithDefault c c theMap where
    {
        theMap :: Map Char Char;
        theMap = fromList theList;

        theList :: [(Char,Char)];
        theList =
        [
define({{uchar}},{{ifelse({{$13}},{{}},{{}},{{          ('\x$1','\x$13'),
}})}})dnl
include(DATAFILE)dnl
            ('\x0','\x0')   -- just to terminate list
        ];
    };

    -- | Convert the character to a single lowercase character, if it exists
    ;
    toLowerCase1 :: Char -> Char;
    toLowerCase1 c = findWithDefault c c theMap where
    {
        theMap :: Map Char Char;
        theMap = fromList theList;

        theList :: [(Char,Char)];
        theList =
        [
define({{uchar}},{{ifelse({{$14}},{{}},{{}},{{          ('\x$1','\x$14'),
}})}})dnl
include(DATAFILE)dnl
            ('\x0','\x0')   -- just to terminate list
        ];
    };

    -- | Convert the character to a single titlecase character, if it exists
    ;
    toTitleCase1 :: Char -> Char;
    toTitleCase1 c = findWithDefault c c theMap where
    {
        theMap :: Map Char Char;
        theMap = fromList theList;

        theList :: [(Char,Char)];
        theList =
        [
define({{uchar}},{{ifelse({{$15}},{{}},{{}},{{          ('\x$1','\x$15'),
}})}})dnl
include(DATAFILE)dnl
            ('\x0','\x0')   -- just to terminate list
        ];
    };
}
