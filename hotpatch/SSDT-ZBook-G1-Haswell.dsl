// SSDT for ZBook G1 (Haswell)

DefinitionBlock ("", "SSDT", 2, "hack", "zbg1h", 0)
{
    #include "include/standard_PS2K.asl"
    Include("include/layout17_HDEF.asl")
    Include("include/layout17_HDAU.asl")
}
//EOF
