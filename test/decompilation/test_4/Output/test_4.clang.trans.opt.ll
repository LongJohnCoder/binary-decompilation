; ModuleID = 'Output/test_4.clang.trans.opt.bc'
source_filename = "Output/test_4.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [88 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x200 = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noreturn
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %_RSP_ptr_.i = alloca i8*, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_2.i = alloca [256 x i8], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.i.0..sroa_cast = bitcast i8** %_RSP_ptr_.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 256
  store i8* %_local_stack_end_ptr_.i, i8** %_RSP_ptr_.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %3 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %4 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %5 = bitcast i64* %R12.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %7 = bitcast i64* %R14.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %9 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %10 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %12 = bitcast x86_fp80* %11 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %12, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %13 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %14 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %15 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %28 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %29 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %36 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %37 = bitcast i8* %36 to i64*
  %38 = load i64, i64* %37, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %39 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %40 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %41 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %42 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %43 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %44 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %45 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %60 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %61 = load <2 x i64>, <2 x i64>* %60, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 248
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3.i, i64* %_allin_new_bt_.i, align 8
  %62 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %62, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_3.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 232
  %63 = bitcast i8* %_new_gep_3.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %63, align 8
  %_new_gep_7.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 216
  %64 = bitcast i8* %_new_gep_7.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %64, align 8
  %_new_gep_9.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 208
  %_allin_new_bt_10.i = bitcast i8* %_new_gep_9.i to i64*
  store i64 %2, i64* %_allin_new_bt_10.i, align 8, !mcsema_real_eip !3
  %_new_gep_11.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 8
  %_trans_p2i_.i = ptrtoint i8* %_new_gep_11.i to i64
  %_trans_p2i_12.i = ptrtoint i8* %_new_gep_9.i to i64
  %_trans_xor_.i = xor i64 %_trans_p2i_.i, %_trans_p2i_12.i
  %65 = and i64 %_trans_xor_.i, 16, !mcsema_real_eip !4
  %66 = icmp ne i64 %65, 0, !mcsema_real_eip !4
  %_trans_trunc_.i = trunc i64 %_trans_p2i_.i to i8
  %67 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_.i), !mcsema_real_eip !4
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  %_trans_icmp_ne_17.i = icmp ne i8* %_new_gep_9.i, inttoptr (i64 200 to i8*)
  %_trans_xor_19.i = and i64 %_trans_xor_.i, %_trans_p2i_12.i
  %70 = icmp slt i64 %_trans_xor_19.i, 0
  store volatile i8* %_new_gep_11.i, i8** %_RSP_ptr_.i, align 8
  %_new_gep_21.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 104
  %71 = ptrtoint i8* %_new_gep_21.i to i64
  %_new_gep_23.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 152
  %72 = ptrtoint i8* %_new_gep_23.i to i64
  %_new_gep_26.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 204
  %73 = bitcast i8* %_new_gep_26.i to i32*
  store i32 0, i32* %73, align 4, !mcsema_real_eip !5
  %_new_gep_29.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 200
  %74 = trunc i64 %4 to i32, !mcsema_real_eip !6
  %75 = bitcast i8* %_new_gep_29.i to i32*
  store i32 %74, i32* %75, align 8, !mcsema_real_eip !6
  %_new_gep_32.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 192
  %_allin_new_bt_33.i = bitcast i8* %_new_gep_32.i to i64*
  store i64 %3, i64* %_allin_new_bt_33.i, align 8, !mcsema_real_eip !7
  %_new_gep_35.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 100
  %76 = bitcast i8* %_new_gep_35.i to i32*
  store i32 300, i32* %76, align 4, !mcsema_real_eip !8
  %_new_gep_41.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 80
  %77 = bitcast i8* %_new_gep_41.i to <2 x i64>*
  store <2 x i64> <i64 40, i64 add (i64 ptrtoint (%0* @data_0x200 to i64), i64 48)>, <2 x i64>* %77, align 8
  %_new_gep_44.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 76
  %78 = bitcast i8* %_new_gep_44.i to i32*
  store i32 100, i32* %78, align 4, !mcsema_real_eip !9
  %_new_gep_47.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 72
  %79 = bitcast i8* %_new_gep_47.i to i32*
  store i32 200, i32* %79, align 8, !mcsema_real_eip !10
  %_new_gep_50.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 64
  %_allin_new_bt_51.i = bitcast i8* %_new_gep_50.i to i64*
  store i64 %72, i64* %_allin_new_bt_51.i, align 8, !mcsema_real_eip !11
  %_new_gep_53.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 60
  %80 = bitcast i8* %_new_gep_53.i to i32*
  store i32 400, i32* %80, align 4, !mcsema_real_eip !12
  %_new_gep_56.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 56
  %81 = bitcast i8* %_new_gep_56.i to i32*
  store i32 500, i32* %81, align 8, !mcsema_real_eip !13
  %_new_gep_59.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 52
  %82 = bitcast i8* %_new_gep_59.i to i32*
  store i32 600, i32* %82, align 4, !mcsema_real_eip !14
  %_new_gep_62.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 48
  %83 = bitcast i8* %_new_gep_62.i to i32*
  store i32 10, i32* %83, align 8, !mcsema_real_eip !15
  %_new_gep_65.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 40
  %_allin_new_bt_66.i = bitcast i8* %_new_gep_65.i to i64*
  store i64 %71, i64* %_allin_new_bt_66.i, align 8, !mcsema_real_eip !16
  %84 = tail call x86_64_sysvcc i64 @memcpy(i64 %72, i64 ptrtoint (%0* @data_0x200 to i64), i64 40), !mcsema_real_eip !17
  %85 = tail call x86_64_sysvcc i64 @memcpy(i64 %71, i64 add (i64 ptrtoint (%0* @data_0x200 to i64), i64 48), i64 40), !mcsema_real_eip !18
  %86 = bitcast i8* %_new_gep_11.i to i32*
  store i32 10, i32* %86, align 8, !mcsema_real_eip !19
  %_new_gep_99.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 16
  %_allin_new_bt_100.i = bitcast i8* %_new_gep_99.i to i64*
  store i64 %72, i64* %_allin_new_bt_100.i, align 8, !mcsema_real_eip !20
  %_new_gep_102.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 24
  %87 = bitcast i8* %_new_gep_102.i to i32*
  store i32 10, i32* %87, align 8, !mcsema_real_eip !21
  %_new_gep_108.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 32
  %_allin_new_bt_109.i = bitcast i8* %_new_gep_108.i to i64*
  store i64 %71, i64* %_allin_new_bt_109.i, align 8, !mcsema_real_eip !22
  %_new_gep_111.i = getelementptr inbounds [256 x i8], [256 x i8]* %_local_stack_start_ptr_2.i, i64 0, i64 0
  %_allin_new_bt_112.i = bitcast [256 x i8]* %_local_stack_start_ptr_2.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_112.i, align 8, !mcsema_real_eip !23
  store volatile i8* %_new_gep_111.i, i8** %_RSP_ptr_.i, align 8
  store i64 %85, i64* %RAX.i, align 8, !mcsema_real_eip !23
  store i64 %72, i64* %RBX.i, align 8, !mcsema_real_eip !23
  %88 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %88, align 8
  %89 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 200, i64 100>, <2 x i64>* %89, align 8
  %_new_ptr2int_114.i = ptrtoint [256 x i8]* %_local_stack_start_ptr_2.i to i64
  store volatile i64 %_new_ptr2int_114.i, i64* %RSP.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1156.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1156.i, i64* %RBP.i, align 8
  %90 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %90, align 8
  %91 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> <i64 600, i64 10>, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> <i64 40, i64 ptrtoint (%0* @data_0x200 to i64)>, <2 x i64>* %92, align 8
  store i64 %71, i64* %R14.i, align 8, !mcsema_real_eip !23
  store i64 add (i64 ptrtoint (%0* @data_0x200 to i64), i64 48), i64* %R15.i, align 8, !mcsema_real_eip !23
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !23
  store i1 %_trans_icmp_ne_17.i, i1* %CF.i, align 1, !mcsema_real_eip !23
  store i1 %69, i1* %PF.i, align 1, !mcsema_real_eip !23
  store i1 %66, i1* %AF.i, align 1, !mcsema_real_eip !23
  store i1 false, i1* %ZF.i, align 1, !mcsema_real_eip !23
  store i1 true, i1* %SF.i, align 1, !mcsema_real_eip !23
  store i1 %70, i1* %OF.i, align 1, !mcsema_real_eip !23
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !23
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !23
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !23
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !23
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !23
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !23
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !23
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !23
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !23
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !23
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !23
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !23
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !23
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !23
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !23
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !23
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !23
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !23
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !23
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !23
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !23
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !23
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !23
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !23
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !23
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !23
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !23
  store i11 %43, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !23
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !23
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !23
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !23
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !23
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !23
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !23
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !23
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !23
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !23
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !23
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !23
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !23
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !23
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !23
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !23
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !23
  %93 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %61, <2 x i64>* %93, align 1
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 160}
!3 = !{i64 172}
!4 = !{i64 173}
!5 = !{i64 260}
!6 = !{i64 267}
!7 = !{i64 270}
!8 = !{i64 283}
!9 = !{i64 306}
!10 = !{i64 312}
!11 = !{i64 318}
!12 = !{i64 325}
!13 = !{i64 332}
!14 = !{i64 339}
!15 = !{i64 346}
!16 = !{i64 353}
!17 = !{i64 360}
!18 = !{i64 389}
!19 = !{i64 432}
!20 = !{i64 446}
!21 = !{i64 451}
!22 = !{i64 466}
!23 = !{i64 471}
