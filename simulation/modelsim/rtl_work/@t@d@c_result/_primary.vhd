library verilog;
use verilog.vl_types.all;
entity TDC_result is
    generic(
        size_of_counters: integer := 8;
        size_of_TDC     : integer := 9;
        multiplier      : integer := 10;
        coef            : integer := 50
    );
    port(
        enable          : in     vl_logic;
        Fine_START      : in     vl_logic_vector;
        Fine_STOP       : in     vl_logic_vector;
        Coarse          : in     vl_logic_vector;
        TDC_value       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size_of_counters : constant is 1;
    attribute mti_svvh_generic_type of size_of_TDC : constant is 1;
    attribute mti_svvh_generic_type of multiplier : constant is 1;
    attribute mti_svvh_generic_type of coef : constant is 1;
end TDC_result;
