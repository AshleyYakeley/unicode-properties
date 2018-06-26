changequote({{,}})dnl
module Data.Char.Properties.Derivation where
{
    import Data.Char.Properties.GeneralCategory;
    import Data.Char.Properties.MiscData;

    -- | Combining Grapheme Joiner character.
    ;
    isCGJ :: Char -> Bool;
    isCGJ '\x034F' = True;
    isCGJ _ = False;
define({{property}},{{
undefine({{PLUS}})dnl
undefine({{MINUS}})dnl
undefine({{PLUSCAT}})dnl
undefine({{MINUSCAT}})dnl
undefine({{PLUSALL}})dnl
define({{CODE}},patsubst(patsubst(patsubst(patsubst({{+}}translit({{$3}},{{ _}}),{{\+\([^-+]+\)}},{{{{PLUS}}(\1)}}),{{\-\([^-+]+\)}},{{{{MINUS}}(\1)}}),{{([A-Z][a-z])}},{{CAT\&}}),{{(\[0..10FFFF\])}},{{ALL\&}}))dnl
    -- | {{$2}}
    --
    -- {{$1}} = {{$3}}.
    ;
    is{{}}translit({{$1}},{{_}}) :: Char -> Bool;
    is{{}}translit({{$1}},{{_}}) c = case getGeneralCategory c of
    {
        -- Categories
define({{PLUS}},{{}})dnl
define({{MINUS}},{{}})dnl
define({{PLUSALL}},{{}})dnl
define({{PLUSCAT}},{{        }}Gc${{}}1 -> True;
)dnl
define({{MINUSCAT}},{{        }}Gc${{}}1 -> False;
)dnl
CODE{{}}dnl

        -- Properties
define({{PLUS}},{{        }}_ | is${{}}1 c -> True;
)dnl
define({{MINUS}},{{        }}_ | is${{}}1 c -> False;
)dnl
define({{PLUSALL}},{{}})dnl
define({{PLUSCAT}},{{}})dnl
define({{MINUSCAT}},{{}})dnl
CODE{{}}dnl

        -- Unspecified
define({{PLUS}},{{}})dnl
define({{MINUS}},{{}})dnl
define({{UNSPECIFIED}},{{False}})dnl
define({{PLUSALL}},{{define({{UNSPECIFIED}},{{True}})}})dnl
define({{PLUSCAT}},{{}})dnl
define({{MINUSCAT}},{{}})dnl
CODE{{}}dnl
        _ -> UNSPECIFIED;
    };
}})dnl
include(DATAFILE)dnl
}
