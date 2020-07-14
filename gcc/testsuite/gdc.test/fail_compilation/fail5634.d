/*
TEST_OUTPUT:
----
<<<<<<< HEAD
<<<<<<< HEAD
fail_compilation/fail5634.d(9): Error: function `D main()` conflicts with previous declaration at fail_compilation/fail5634.d(8)
---
=======
fail_compilation/fail5634.d(9): Error: only one `main`$?:windows=, `WinMain`, or `DllMain`$ allowed. Previously found `main` at fail_compilation/fail5634.d(8)
----
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
=======
fail_compilation/fail5634.d(9): Error: function `D main()` conflicts with previous declaration at fail_compilation/fail5634.d(8)
---
>>>>>>> 3ebd2877d6d... Import dmd v2.094.0: dmd 3a55c54a8, druntime 67958c0f, phobos f85ca8dbe
*/

void main() { }
void main() { }
