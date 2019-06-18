// REQUIRED_ARGS: -o- -H -Hf${RESULTS_DIR}/compilable/testheaderudamodule.di
// PERMUTE_ARGS:
// POST_SCRIPT: compilable/extra-files/header-postscript.sh

@(1, UDA(2))
module testheaderudamodule;

struct UDA
{
    int a;
}

void main() {}

<<<<<<< HEAD
void foo(@(1) int bar, @UDA(2) string bebe);
=======
void foo(@(1) int bar, @UDA(2) string bebe) {}
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
