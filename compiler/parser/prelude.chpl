-- I/O

function write() {}
function writeln() {}
function read() {}

pragma "rename _chpl_tostring_boolean"
function _chpl_tostring(x : boolean, format : string) : string;

pragma "rename _chpl_tostring_integer"
function _chpl_tostring(x : integer, format : string) : string;

pragma "rename _chpl_tostring_float"
function _chpl_tostring(x : float, format : string) : string;

pragma "rename _chpl_tostring_complex"
function _chpl_tostring(x : complex, format : string) : string;

-- intrinsic type values

const false: boolean = 0;
const true: boolean = 1;


-- math

function sqrt(x: float): float {}
function abs(x: ?t): float {}  -- BLC: should be ": t"



-- boundary classes/functions

function wrap() {}


-- reductions

class reduction {
}

class sum {
}

class max {
}

class min {
}

class maxloc {
}

class minloc {
}


-- timers

class timer {
  function start();
  function stop();
  function read(): float;
}

-- memory tests (These tests will be moved to a module, once we have modules.)

function _chpl_memtest_printMemTable();
function _chpl_memtest_printMemStat();
function _chpl_memtest_resetMemStat();
function _chpl_memtest_allocAndFree();
function _chpl_memtest_freedMalloc();
function _chpl_memtest_freedWithoutMalloc();
function _chpl_memtest_reallocWithoutMalloc();
function _chpl_memtest_reallocZeroSize();
function _chpl_memtest_mallocOutOfMemory();
function _chpl_memtest_reallocOutOfMemory();
