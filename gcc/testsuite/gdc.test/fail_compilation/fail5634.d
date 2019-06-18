/*
TEST_OUTPUT:
----
<<<<<<< HEAD
fail_compilation/fail5634.d(9): Error: function `D main()` conflicts with previous declaration at fail_compilation/fail5634.d(8)
---
=======
fail_compilation/fail5634.d(9): Error: only one `main`$?:windows=, `WinMain`, or `DllMain`$ allowed. Previously found `main` at fail_compilation/fail5634.d(8)
----
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
*/

void main() { }
void main() { }
