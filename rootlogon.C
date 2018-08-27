{
   // configure AstroUtilities 
   TString AstroPath = gSystem->Getenv("ASTROTOOLS");
   gROOT->ProcessLine(Form(".x %s/tools/util/LibsPersoAstroRootLogon.C+", AstroPath.Data()));

   // loading GSL libraries
   gSystem->Load("/usr/lib/x86_64-linux-gnu/libgsl.so");
   gSystem->Load("/usr/lib/x86_64-linux-gnu/libgslcblas.so");

   // configure kinematic libraries
   TString path = gSystem->Getenv("LIBSPERSO");
   gROOT->ProcessLine(Form(".x %s/Kinematics/LibsPersoKinematicsRootLogon.C+", path.Data()));
   gROOT->ProcessLine(Form(".x %s/LibsPersoRootLogon.C+", path.Data()));

   // test
}
