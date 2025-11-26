{ callPackage' }:
{
  py-slvs = callPackage' ./py-slvs { };
  termtables = callPackage' ./termtables { };
}
