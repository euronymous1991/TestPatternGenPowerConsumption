library verilog;
use verilog.vl_types.all;
entity testpat_tb is
    generic(
        osnr            : integer := 1;
        size            : integer := 12
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of osnr : constant is 1;
    attribute mti_svvh_generic_type of size : constant is 1;
end testpat_tb;
