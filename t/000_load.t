use strict;
use Test::LoadAllModules;
use Test::More;

BEGIN {
    all_uses_ok(
        search_path => "Bundle::Takuji",
        except => [],
    );
}


diag "Testing Bundle::Takuji/$Bundle::Takuji::VERSION";
