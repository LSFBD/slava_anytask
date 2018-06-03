
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Xml
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Security
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:0:0
}
.assembly 'детский дом'
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- Следующий настраиваемый атрибут добавлен автоматически, не следует отменять преобразование в комментарий -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 36 2E 31 01   // ,Version=v4.6.1.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
                                                                                                        61 6D 65 77 6F 72 6B 20 34 2E 36 2E 31 )          // amework 4.6.1
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module 'детский дом.dll'
// MVID: {E8C31293-92A5-4E2F-9E5C-2782CCCA74E6}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x032A0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit Verificator.LicenseDto
       extends [mscorlib]System.Object
{
  .field private string '<LicenseeName>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [mscorlib]System.DateTime '<ValidUntil>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [mscorlib]System.Collections.Generic.List`1<string> '<AllowedFeatures>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance string 
          get_LicenseeName() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Verificator.LicenseDto::'<LicenseeName>k__BackingField'
    IL_0006:  ret
  } // end of method LicenseDto::get_LicenseeName

  .method public hidebysig specialname instance void 
          set_LicenseeName(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Verificator.LicenseDto::'<LicenseeName>k__BackingField'
    IL_0007:  ret
  } // end of method LicenseDto::set_LicenseeName

  .method public hidebysig specialname instance valuetype [mscorlib]System.DateTime 
          get_ValidUntil() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [mscorlib]System.DateTime Verificator.LicenseDto::'<ValidUntil>k__BackingField'
    IL_0006:  ret
  } // end of method LicenseDto::get_ValidUntil

  .method public hidebysig specialname instance void 
          set_ValidUntil(valuetype [mscorlib]System.DateTime 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [mscorlib]System.DateTime Verificator.LicenseDto::'<ValidUntil>k__BackingField'
    IL_0007:  ret
  } // end of method LicenseDto::set_ValidUntil

  .method public hidebysig specialname instance class [mscorlib]System.Collections.Generic.List`1<string> 
          get_AllowedFeatures() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<string> Verificator.LicenseDto::'<AllowedFeatures>k__BackingField'
    IL_0006:  ret
  } // end of method LicenseDto::get_AllowedFeatures

  .method public hidebysig specialname instance void 
          set_AllowedFeatures(class [mscorlib]System.Collections.Generic.List`1<string> 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [mscorlib]System.Collections.Generic.List`1<string> Verificator.LicenseDto::'<AllowedFeatures>k__BackingField'
    IL_0007:  ret
  } // end of method LicenseDto::set_AllowedFeatures

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method LicenseDto::.ctor

  .property instance string LicenseeName()
  {
    .get instance string Verificator.LicenseDto::get_LicenseeName()
    .set instance void Verificator.LicenseDto::set_LicenseeName(string)
  } // end of property LicenseDto::LicenseeName
  .property instance valuetype [mscorlib]System.DateTime
          ValidUntil()
  {
    .get instance valuetype [mscorlib]System.DateTime Verificator.LicenseDto::get_ValidUntil()
    .set instance void Verificator.LicenseDto::set_ValidUntil(valuetype [mscorlib]System.DateTime)
  } // end of property LicenseDto::ValidUntil
  .property instance class [mscorlib]System.Collections.Generic.List`1<string>
          AllowedFeatures()
  {
    .get instance class [mscorlib]System.Collections.Generic.List`1<string> Verificator.LicenseDto::get_AllowedFeatures()
    .set instance void Verificator.LicenseDto::set_AllowedFeatures(class [mscorlib]System.Collections.Generic.List`1<string>)
  } // end of property LicenseDto::AllowedFeatures
} // end of class Verificator.LicenseDto

.class public auto ansi beforefieldinit Verificator.OpenLicense
       extends [mscorlib]System.Object
{
  .field private bool '<HasLicense>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<License>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [mscorlib]System.DateTime '<ValidUntil>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [mscorlib]System.Collections.Generic.List`1<string> '<enablesdFeatures>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<secretKey>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<publicKey>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance bool 
          get_HasLicense() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Verificator.OpenLicense::'<HasLicense>k__BackingField'
    IL_0006:  ret
  } // end of method OpenLicense::get_HasLicense

  .method private hidebysig specialname instance void 
          set_HasLicense(bool 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Verificator.OpenLicense::'<HasLicense>k__BackingField'
    IL_0007:  ret
  } // end of method OpenLicense::set_HasLicense

  .method public hidebysig specialname instance string 
          get_License() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Verificator.OpenLicense::'<License>k__BackingField'
    IL_0006:  ret
  } // end of method OpenLicense::get_License

  .method private hidebysig specialname instance void 
          set_License(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Verificator.OpenLicense::'<License>k__BackingField'
    IL_0007:  ret
  } // end of method OpenLicense::set_License

  .method public hidebysig specialname instance valuetype [mscorlib]System.DateTime 
          get_ValidUntil() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [mscorlib]System.DateTime Verificator.OpenLicense::'<ValidUntil>k__BackingField'
    IL_0006:  ret
  } // end of method OpenLicense::get_ValidUntil

  .method private hidebysig specialname instance void 
          set_ValidUntil(valuetype [mscorlib]System.DateTime 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [mscorlib]System.DateTime Verificator.OpenLicense::'<ValidUntil>k__BackingField'
    IL_0007:  ret
  } // end of method OpenLicense::set_ValidUntil

  .method public hidebysig specialname instance class [mscorlib]System.Collections.Generic.List`1<string> 
          get_enablesdFeatures() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<string> Verificator.OpenLicense::'<enablesdFeatures>k__BackingField'
    IL_0006:  ret
  } // end of method OpenLicense::get_enablesdFeatures

  .method private hidebysig specialname instance void 
          set_enablesdFeatures(class [mscorlib]System.Collections.Generic.List`1<string> 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [mscorlib]System.Collections.Generic.List`1<string> Verificator.OpenLicense::'<enablesdFeatures>k__BackingField'
    IL_0007:  ret
  } // end of method OpenLicense::set_enablesdFeatures

  .method public hidebysig specialname instance string 
          get_secretKey() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Verificator.OpenLicense::'<secretKey>k__BackingField'
    IL_0006:  ret
  } // end of method OpenLicense::get_secretKey

  .method public hidebysig specialname instance void 
          set_secretKey(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Verificator.OpenLicense::'<secretKey>k__BackingField'
    IL_0007:  ret
  } // end of method OpenLicense::set_secretKey

  .method public hidebysig specialname instance string 
          get_publicKey() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Verificator.OpenLicense::'<publicKey>k__BackingField'
    IL_0006:  ret
  } // end of method OpenLicense::get_publicKey

  .method public hidebysig specialname instance void 
          set_publicKey(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Verificator.OpenLicense::'<publicKey>k__BackingField'
    IL_0007:  ret
  } // end of method OpenLicense::set_publicKey

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Размер кода:       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  call       instance void Verificator.OpenLicense::GenerateNewKeyPair()
    IL_000c:  ret
  } // end of method OpenLicense::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string SecretKey) cil managed
  {
    // Размер кода:       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void Verificator.OpenLicense::set_secretKey(string)
    IL_000d:  ret
  } // end of method OpenLicense::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string SecretKey,
                               string PublicKey) cil managed
  {
    // Размер кода:       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void Verificator.OpenLicense::set_secretKey(string)
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  call       instance void Verificator.OpenLicense::set_publicKey(string)
    IL_0014:  ret
  } // end of method OpenLicense::.ctor

  .method private hidebysig instance void 
          GenerateNewKeyPair() cil managed
  {
    // Размер кода:       77 (0x4d)
    .maxstack  3
    .locals init ([0] class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider rsaCsp)
    IL_0000:  newobj     instance void [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider::.ctor()
    IL_0005:  stloc.0
    .try
    {
      IL_0006:  ldarg.0
      IL_0007:  ldloc.0
      IL_0008:  ldc.i4.1
      IL_0009:  callvirt   instance string [mscorlib]System.Security.Cryptography.AsymmetricAlgorithm::ToXmlString(bool)
      IL_000e:  call       instance void Verificator.OpenLicense::set_secretKey(string)
      IL_0013:  ldarg.0
      IL_0014:  ldloc.0
      IL_0015:  ldc.i4.0
      IL_0016:  callvirt   instance string [mscorlib]System.Security.Cryptography.AsymmetricAlgorithm::ToXmlString(bool)
      IL_001b:  call       instance void Verificator.OpenLicense::set_publicKey(string)
      IL_0020:  ldstr      "private.xml"
      IL_0025:  ldarg.0
      IL_0026:  call       instance string Verificator.OpenLicense::get_secretKey()
      IL_002b:  call       void [mscorlib]System.IO.File::WriteAllText(string,
                                                                       string)
      IL_0030:  ldstr      "public.xml"
      IL_0035:  ldarg.0
      IL_0036:  call       instance string Verificator.OpenLicense::get_publicKey()
      IL_003b:  call       void [mscorlib]System.IO.File::WriteAllText(string,
                                                                       string)
      IL_0040:  leave.s    IL_004c

    }  // end .try
    finally
    {
      IL_0042:  ldloc.0
      IL_0043:  brfalse.s  IL_004b

      IL_0045:  ldloc.0
      IL_0046:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_004b:  endfinally
    }  // end handler
    IL_004c:  ret
  } // end of method OpenLicense::GenerateNewKeyPair

  .method public hidebysig static void  SignXml(class [System.Xml]System.Xml.XmlDocument xmlDoc,
                                                class [mscorlib]System.Security.Cryptography.RSA Key) cil managed
  {
    // Размер кода:       111 (0x6f)
    .maxstack  4
    .locals init ([0] class [System.Security]System.Security.Cryptography.Xml.Reference reference,
             [1] class [System.Security]System.Security.Cryptography.Xml.XmlDsigEnvelopedSignatureTransform env,
             [2] class [System.Xml]System.Xml.XmlElement xmlDigitalSignature)
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_000e

    IL_0003:  ldstr      "xmlDoc"
    IL_0008:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_000d:  throw

    IL_000e:  ldarg.1
    IL_000f:  brtrue.s   IL_001c

    IL_0011:  ldstr      "Key"
    IL_0016:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_001b:  throw

    IL_001c:  ldarg.0
    IL_001d:  newobj     instance void [System.Security]System.Security.Cryptography.Xml.SignedXml::.ctor(class [System.Xml]System.Xml.XmlDocument)
    IL_0022:  dup
    IL_0023:  ldarg.1
    IL_0024:  callvirt   instance void [System.Security]System.Security.Cryptography.Xml.SignedXml::set_SigningKey(class [mscorlib]System.Security.Cryptography.AsymmetricAlgorithm)
    IL_0029:  newobj     instance void [System.Security]System.Security.Cryptography.Xml.Reference::.ctor()
    IL_002e:  stloc.0
    IL_002f:  ldloc.0
    IL_0030:  ldstr      ""
    IL_0035:  callvirt   instance void [System.Security]System.Security.Cryptography.Xml.Reference::set_Uri(string)
    IL_003a:  newobj     instance void [System.Security]System.Security.Cryptography.Xml.XmlDsigEnvelopedSignatureTransform::.ctor()
    IL_003f:  stloc.1
    IL_0040:  ldloc.0
    IL_0041:  ldloc.1
    IL_0042:  callvirt   instance void [System.Security]System.Security.Cryptography.Xml.Reference::AddTransform(class [System.Security]System.Security.Cryptography.Xml.Transform)
    IL_0047:  dup
    IL_0048:  ldloc.0
    IL_0049:  callvirt   instance void [System.Security]System.Security.Cryptography.Xml.SignedXml::AddReference(class [System.Security]System.Security.Cryptography.Xml.Reference)
    IL_004e:  dup
    IL_004f:  callvirt   instance void [System.Security]System.Security.Cryptography.Xml.SignedXml::ComputeSignature()
    IL_0054:  callvirt   instance class [System.Xml]System.Xml.XmlElement [System.Security]System.Security.Cryptography.Xml.SignedXml::GetXml()
    IL_0059:  stloc.2
    IL_005a:  ldarg.0
    IL_005b:  callvirt   instance class [System.Xml]System.Xml.XmlElement [System.Xml]System.Xml.XmlDocument::get_DocumentElement()
    IL_0060:  ldarg.0
    IL_0061:  ldloc.2
    IL_0062:  ldc.i4.1
    IL_0063:  callvirt   instance class [System.Xml]System.Xml.XmlNode [System.Xml]System.Xml.XmlDocument::ImportNode(class [System.Xml]System.Xml.XmlNode,
                                                                                                                      bool)
    IL_0068:  callvirt   instance class [System.Xml]System.Xml.XmlNode [System.Xml]System.Xml.XmlNode::AppendChild(class [System.Xml]System.Xml.XmlNode)
    IL_006d:  pop
    IL_006e:  ret
  } // end of method OpenLicense::SignXml

  .method public hidebysig instance void 
          CreateLicenseFile(class Verificator.LicenseDto dto,
                            string fileName) cil managed
  {
    // Размер кода:       89 (0x59)
    .maxstack  4
    .locals init ([0] class [mscorlib]System.IO.MemoryStream ms,
             [1] class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider rsaKey)
    IL_0000:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldtoken    Verificator.LicenseDto
    IL_000b:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0010:  newobj     instance void [System.Xml]System.Xml.Serialization.XmlSerializer::.ctor(class [mscorlib]System.Type)
    IL_0015:  ldloc.0
    IL_0016:  ldarg.1
    IL_0017:  call       instance void [System.Xml]System.Xml.Serialization.XmlSerializer::Serialize(class [mscorlib]System.IO.Stream,
                                                                                                     object)
    IL_001c:  newobj     instance void [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider::.ctor()
    IL_0021:  stloc.1
    IL_0022:  ldloc.1
    IL_0023:  ldarg.0
    IL_0024:  call       instance string Verificator.OpenLicense::get_secretKey()
    IL_0029:  callvirt   instance void [mscorlib]System.Security.Cryptography.AsymmetricAlgorithm::FromXmlString(string)
    IL_002e:  newobj     instance void [System.Xml]System.Xml.XmlDocument::.ctor()
    IL_0033:  dup
    IL_0034:  ldc.i4.1
    IL_0035:  callvirt   instance void [System.Xml]System.Xml.XmlDocument::set_PreserveWhitespace(bool)
    IL_003a:  ldloc.0
    IL_003b:  ldc.i4.0
    IL_003c:  conv.i8
    IL_003d:  ldc.i4.0
    IL_003e:  callvirt   instance int64 [mscorlib]System.IO.Stream::Seek(int64,
                                                                         valuetype [mscorlib]System.IO.SeekOrigin)
    IL_0043:  pop
    IL_0044:  dup
    IL_0045:  ldloc.0
    IL_0046:  callvirt   instance void [System.Xml]System.Xml.XmlDocument::Load(class [mscorlib]System.IO.Stream)
    IL_004b:  dup
    IL_004c:  ldloc.1
    IL_004d:  call       void Verificator.OpenLicense::SignXml(class [System.Xml]System.Xml.XmlDocument,
                                                               class [mscorlib]System.Security.Cryptography.RSA)
    IL_0052:  ldarg.2
    IL_0053:  callvirt   instance void [System.Xml]System.Xml.XmlDocument::Save(string)
    IL_0058:  ret
  } // end of method OpenLicense::CreateLicenseFile

  .method public hidebysig static bool  VerifyXml(class [System.Xml]System.Xml.XmlDocument Doc,
                                                  class [mscorlib]System.Security.Cryptography.RSA Key) cil managed
  {
    // Размер кода:       95 (0x5f)
    .maxstack  3
    .locals init ([0] class [System.Security]System.Security.Cryptography.Xml.SignedXml signedXml,
             [1] class [System.Xml]System.Xml.XmlNodeList nodeList)
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_000e

    IL_0003:  ldstr      "Doc"
    IL_0008:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_000d:  throw

    IL_000e:  ldarg.1
    IL_000f:  brtrue.s   IL_001c

    IL_0011:  ldstr      "Key"
    IL_0016:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_001b:  throw

    IL_001c:  ldarg.0
    IL_001d:  newobj     instance void [System.Security]System.Security.Cryptography.Xml.SignedXml::.ctor(class [System.Xml]System.Xml.XmlDocument)
    IL_0022:  stloc.0
    IL_0023:  ldarg.0
    IL_0024:  ldstr      "Signature"
    IL_0029:  callvirt   instance class [System.Xml]System.Xml.XmlNodeList [System.Xml]System.Xml.XmlDocument::GetElementsByTagName(string)
    IL_002e:  stloc.1
    IL_002f:  ldloc.1
    IL_0030:  callvirt   instance int32 [System.Xml]System.Xml.XmlNodeList::get_Count()
    IL_0035:  ldc.i4.0
    IL_0036:  bgt.s      IL_003a

    IL_0038:  ldc.i4.0
    IL_0039:  ret

    IL_003a:  ldloc.1
    IL_003b:  callvirt   instance int32 [System.Xml]System.Xml.XmlNodeList::get_Count()
    IL_0040:  ldc.i4.2
    IL_0041:  blt.s      IL_0045

    IL_0043:  ldc.i4.0
    IL_0044:  ret

    IL_0045:  ldloc.0
    IL_0046:  ldloc.1
    IL_0047:  ldc.i4.0
    IL_0048:  callvirt   instance class [System.Xml]System.Xml.XmlNode [System.Xml]System.Xml.XmlNodeList::get_ItemOf(int32)
    IL_004d:  castclass  [System.Xml]System.Xml.XmlElement
    IL_0052:  callvirt   instance void [System.Security]System.Security.Cryptography.Xml.SignedXml::LoadXml(class [System.Xml]System.Xml.XmlElement)
    IL_0057:  ldloc.0
    IL_0058:  ldarg.1
    IL_0059:  callvirt   instance bool [System.Security]System.Security.Cryptography.Xml.SignedXml::CheckSignature(class [mscorlib]System.Security.Cryptography.AsymmetricAlgorithm)
    IL_005e:  ret
  } // end of method OpenLicense::VerifyXml

  .method public hidebysig instance bool 
          TryLoadLicense(string fileName) cil managed
  {
   .maxstack 1
	.locals init ([0] bool V_0)
	IL_0000: nop

	IL_0001: ldc.i4.1

	IL_0002: stloc.0

	IL_0003: br.s IL_0005

	IL_0005: ldloc.0

	IL_0006: ret
  } // end of method OpenLicense::TryLoadLicense

  .property instance bool HasLicense()
  {
    .get instance bool Verificator.OpenLicense::get_HasLicense()
    .set instance void Verificator.OpenLicense::set_HasLicense(bool)
  } // end of property OpenLicense::HasLicense
  .property instance string License()
  {
    .get instance string Verificator.OpenLicense::get_License()
    .set instance void Verificator.OpenLicense::set_License(string)
  } // end of property OpenLicense::License
  .property instance valuetype [mscorlib]System.DateTime
          ValidUntil()
  {
    .get instance valuetype [mscorlib]System.DateTime Verificator.OpenLicense::get_ValidUntil()
    .set instance void Verificator.OpenLicense::set_ValidUntil(valuetype [mscorlib]System.DateTime)
  } // end of property OpenLicense::ValidUntil
  .property instance class [mscorlib]System.Collections.Generic.List`1<string>
          enablesdFeatures()
  {
    .get instance class [mscorlib]System.Collections.Generic.List`1<string> Verificator.OpenLicense::get_enablesdFeatures()
    .set instance void Verificator.OpenLicense::set_enablesdFeatures(class [mscorlib]System.Collections.Generic.List`1<string>)
  } // end of property OpenLicense::enablesdFeatures
  .property instance string secretKey()
  {
    .get instance string Verificator.OpenLicense::get_secretKey()
    .set instance void Verificator.OpenLicense::set_secretKey(string)
  } // end of property OpenLicense::secretKey
  .property instance string publicKey()
  {
    .get instance string Verificator.OpenLicense::get_publicKey()
    .set instance void Verificator.OpenLicense::set_publicKey(string)
  } // end of property OpenLicense::publicKey
} // end of class Verificator.OpenLicense

.class public auto ansi beforefieldinit 'Детский_дом'.Children
       extends [mscorlib]System.Object
{
  .field private string '<FullName>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [mscorlib]System.DateTime '<BithDate>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<ID>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [mscorlib]System.DateTime '<BeginDate>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<Reason>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance string 
          get_FullName() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string 'Детский_дом'.Children::'<FullName>k__BackingField'
    IL_0006:  ret
  } // end of method Children::get_FullName

  .method public hidebysig specialname instance void 
          set_FullName(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string 'Детский_дом'.Children::'<FullName>k__BackingField'
    IL_0007:  ret
  } // end of method Children::set_FullName

  .method public hidebysig specialname instance valuetype [mscorlib]System.DateTime 
          get_BithDate() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [mscorlib]System.DateTime 'Детский_дом'.Children::'<BithDate>k__BackingField'
    IL_0006:  ret
  } // end of method Children::get_BithDate

  .method public hidebysig specialname instance void 
          set_BithDate(valuetype [mscorlib]System.DateTime 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [mscorlib]System.DateTime 'Детский_дом'.Children::'<BithDate>k__BackingField'
    IL_0007:  ret
  } // end of method Children::set_BithDate

  .method public hidebysig specialname instance int32 
          get_ID() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 'Детский_дом'.Children::'<ID>k__BackingField'
    IL_0006:  ret
  } // end of method Children::get_ID

  .method public hidebysig specialname instance void 
          set_ID(int32 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 'Детский_дом'.Children::'<ID>k__BackingField'
    IL_0007:  ret
  } // end of method Children::set_ID

  .method public hidebysig specialname instance valuetype [mscorlib]System.DateTime 
          get_BeginDate() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [mscorlib]System.DateTime 'Детский_дом'.Children::'<BeginDate>k__BackingField'
    IL_0006:  ret
  } // end of method Children::get_BeginDate

  .method public hidebysig specialname instance void 
          set_BeginDate(valuetype [mscorlib]System.DateTime 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [mscorlib]System.DateTime 'Детский_дом'.Children::'<BeginDate>k__BackingField'
    IL_0007:  ret
  } // end of method Children::set_BeginDate

  .method public hidebysig specialname instance string 
          get_Reason() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string 'Детский_дом'.Children::'<Reason>k__BackingField'
    IL_0006:  ret
  } // end of method Children::get_Reason

  .method public hidebysig specialname instance void 
          set_Reason(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string 'Детский_дом'.Children::'<Reason>k__BackingField'
    IL_0007:  ret
  } // end of method Children::set_Reason

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Размер кода:       58 (0x3a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldstr      ""
    IL_000c:  call       instance void 'Детский_дом'.Children::set_FullName(string)
    IL_0011:  ldarg.0
    IL_0012:  ldstr      bytearray (3D 04 35 04 20 00 3E 04 41 04 42 04 30 04 3B 04   // =.5. .>.A.B.0.;.
                                    3E 04 41 04 4C 04 20 00 31 04 3B 04 38 04 37 04   // >.A.L. .1.;.8.7.
                                    3A 04 38 04 45 04 )                               // :.8.E.
    IL_0017:  call       instance void 'Детский_дом'.Children::set_Reason(string)
    IL_001c:  ldarg.0
    IL_001d:  call       valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::get_Now()
    IL_0022:  call       instance void 'Детский_дом'.Children::set_BeginDate(valuetype [mscorlib]System.DateTime)
    IL_0027:  ldarg.0
    IL_0028:  ldc.i4     0x7d1
    IL_002d:  ldc.i4.1
    IL_002e:  ldc.i4.1
    IL_002f:  newobj     instance void [mscorlib]System.DateTime::.ctor(int32,
                                                                        int32,
                                                                        int32)
    IL_0034:  call       instance void 'Детский_дом'.Children::set_BithDate(valuetype [mscorlib]System.DateTime)
    IL_0039:  ret
  } // end of method Children::.ctor

  .property instance string FullName()
  {
    .get instance string 'Детский_дом'.Children::get_FullName()
    .set instance void 'Детский_дом'.Children::set_FullName(string)
  } // end of property Children::FullName
  .property instance valuetype [mscorlib]System.DateTime
          BithDate()
  {
    .get instance valuetype [mscorlib]System.DateTime 'Детский_дом'.Children::get_BithDate()
    .set instance void 'Детский_дом'.Children::set_BithDate(valuetype [mscorlib]System.DateTime)
  } // end of property Children::BithDate
  .property instance int32 ID()
  {
    .get instance int32 'Детский_дом'.Children::get_ID()
    .set instance void 'Детский_дом'.Children::set_ID(int32)
  } // end of property Children::ID
  .property instance valuetype [mscorlib]System.DateTime
          BeginDate()
  {
    .get instance valuetype [mscorlib]System.DateTime 'Детский_дом'.Children::get_BeginDate()
    .set instance void 'Детский_дом'.Children::set_BeginDate(valuetype [mscorlib]System.DateTime)
  } // end of property Children::BeginDate
  .property instance string Reason()
  {
    .get instance string 'Детский_дом'.Children::get_Reason()
    .set instance void 'Детский_дом'.Children::set_Reason(string)
  } // end of property Children::Reason
} // end of class 'Детский_дом'.Children


// =============================================================

// *********** ДИЗАССЕМБЛИРОВАНИЕ ЗАВЕРШЕНО ***********************
// ВНИМАНИЕ: создан файл ресурсов Win32 D:\github\slava_anytask\ilasm\детский дом.res
