// Autogenerated using stratification.
requires "x86-configuration.k"

module INCW-M16
  imports X86-CONFIGURATION

  context execinstr(incw:Opcode HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (incw:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 16) ~>
      execinstr (incw memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem16:MInt):MemLoadValue ~> execinstr (incw:Opcode memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              addMInt( Mem16, mi(16, 1)),
              MemOff,
              16
            )
          
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
"PF" |-> (#ifMInt (notBool (((((((eqMInt( extractMInt( addMInt( Mem16, mi(16, 1)), 15, 16), mi(1, 1)) xorBool eqMInt( extractMInt( addMInt( Mem16, mi(16, 1)), 14, 15), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( Mem16, mi(16, 1)), 13, 14), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( Mem16, mi(16, 1)), 12, 13), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( Mem16, mi(16, 1)), 11, 12), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( Mem16, mi(16, 1)), 10, 11), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( Mem16, mi(16, 1)), 9, 10), mi(1, 1))) xorBool eqMInt( extractMInt( addMInt( Mem16, mi(16, 1)), 8, 9), mi(1, 1)))) #then mi(1, 1) #else mi(1, 0) #fi)

"AF" |-> (#ifMInt eqMInt( extractMInt( Mem16, 12, 16), mi(4, 15)) #then mi(1, 1) #else mi(1, 0) #fi)

"ZF" |-> (#ifMInt eqMInt( addMInt( Mem16, mi(16, 1)), mi(16, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> extractMInt( addMInt( Mem16, mi(16, 1)), 0, 1)

"OF" |-> (#ifMInt ((notBool eqMInt( extractMInt( Mem16, 0, 1), mi(1, 1))) andBool eqMInt( extractMInt( Mem16, 1, 16), mi(15, 18446744073709551615))) #then mi(1, 1) #else mi(1, 0) #fi)
      )
    </regstate>
endmodule
