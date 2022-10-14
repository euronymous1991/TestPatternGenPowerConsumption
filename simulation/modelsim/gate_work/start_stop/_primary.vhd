library verilog;
use verilog.vl_types.all;
entity start_stop is
    port(
        inst111         : out    vl_logic;
        inst71          : out    vl_logic;
        inst231         : out    vl_logic;
        inst101         : out    vl_logic;
        inst61          : out    vl_logic;
        STOP            : in     vl_logic;
        START           : in     vl_logic;
        RESET           : in     vl_logic;
        CLOCK           : in     vl_logic;
        devpor          : in     vl_logic;
        devclrn         : in     vl_logic;
        devoe           : in     vl_logic
    );
end start_stop;
