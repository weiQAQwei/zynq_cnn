; ModuleID = 'D:/vitis/projects_learning/hls_cnn/hls_component/hls_component/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_cnn_top_ir(i16* noalias nocapture nonnull readonly "maxi" %input, i16* noalias nocapture nonnull "maxi" %output, [1 x [3 x [3 x i16]]]* noalias nonnull "fpga.decayed.dim.hint"="32" "maxi" %conv1_weights, i16* noalias nonnull "fpga.decayed.dim.hint"="32" "maxi" %conv1_bias, [32 x [3 x [3 x i16]]]* noalias nonnull "fpga.decayed.dim.hint"="32" "maxi" %conv2_weights, i16* noalias nonnull "fpga.decayed.dim.hint"="32" "maxi" %conv2_bias, [32 x [3 x [3 x i16]]]* noalias nonnull "fpga.decayed.dim.hint"="32" "maxi" %conv3_weights, i16* noalias nonnull "fpga.decayed.dim.hint"="32" "maxi" %conv3_bias) local_unnamed_addr #0 {
entry:
  %0 = bitcast i16* %input to [256 x i16]*
  %input_copy = alloca [256 x i16], align 512
  %1 = bitcast i16* %output to [512 x i16]*
  %output_copy = alloca [512 x i16], align 512
  %2 = bitcast [1 x [3 x [3 x i16]]]* %conv1_weights to [32 x [1 x [3 x [3 x i16]]]]*
  %conv1_weights_copy = alloca [32 x [1 x [3 x [3 x i16]]]], align 512
  %3 = bitcast i16* %conv1_bias to [32 x i16]*
  %conv1_bias_copy = alloca [32 x i16], align 512
  %4 = bitcast [32 x [3 x [3 x i16]]]* %conv2_weights to [32 x [32 x [3 x [3 x i16]]]]*
  %5 = call i8* @malloc(i64 18432)
  %conv2_weights_copy = bitcast i8* %5 to [32 x [32 x [3 x [3 x i16]]]]*
  %6 = bitcast i16* %conv2_bias to [32 x i16]*
  %conv2_bias_copy = alloca [32 x i16], align 512
  %7 = bitcast [32 x [3 x [3 x i16]]]* %conv3_weights to [32 x [32 x [3 x [3 x i16]]]]*
  %8 = call i8* @malloc(i64 18432)
  %conv3_weights_copy = bitcast i8* %8 to [32 x [32 x [3 x [3 x i16]]]]*
  %9 = bitcast i16* %conv3_bias to [32 x i16]*
  %conv3_bias_copy = alloca [32 x i16], align 512
  call fastcc void @copy_in([256 x i16]* nonnull %0, [256 x i16]* nonnull align 512 %input_copy, [512 x i16]* nonnull %1, [512 x i16]* nonnull align 512 %output_copy, [32 x [1 x [3 x [3 x i16]]]]* nonnull %2, [32 x [1 x [3 x [3 x i16]]]]* nonnull align 512 %conv1_weights_copy, [32 x i16]* nonnull %3, [32 x i16]* nonnull align 512 %conv1_bias_copy, [32 x [32 x [3 x [3 x i16]]]]* nonnull %4, [32 x [32 x [3 x [3 x i16]]]]* %conv2_weights_copy, [32 x i16]* nonnull %6, [32 x i16]* nonnull align 512 %conv2_bias_copy, [32 x [32 x [3 x [3 x i16]]]]* nonnull %7, [32 x [32 x [3 x [3 x i16]]]]* %conv3_weights_copy, [32 x i16]* nonnull %9, [32 x i16]* nonnull align 512 %conv3_bias_copy)
  call void @apatb_cnn_top_hw([256 x i16]* %input_copy, [512 x i16]* %output_copy, [32 x [1 x [3 x [3 x i16]]]]* %conv1_weights_copy, [32 x i16]* %conv1_bias_copy, [32 x [32 x [3 x [3 x i16]]]]* %conv2_weights_copy, [32 x i16]* %conv2_bias_copy, [32 x [32 x [3 x [3 x i16]]]]* %conv3_weights_copy, [32 x i16]* %conv3_bias_copy)
  call void @copy_back([256 x i16]* %0, [256 x i16]* %input_copy, [512 x i16]* %1, [512 x i16]* %output_copy, [32 x [1 x [3 x [3 x i16]]]]* %2, [32 x [1 x [3 x [3 x i16]]]]* %conv1_weights_copy, [32 x i16]* %3, [32 x i16]* %conv1_bias_copy, [32 x [32 x [3 x [3 x i16]]]]* %4, [32 x [32 x [3 x [3 x i16]]]]* %conv2_weights_copy, [32 x i16]* %6, [32 x i16]* %conv2_bias_copy, [32 x [32 x [3 x [3 x i16]]]]* %7, [32 x [32 x [3 x [3 x i16]]]]* %conv3_weights_copy, [32 x i16]* %9, [32 x i16]* %conv3_bias_copy)
  tail call void @free(i8* %5)
  tail call void @free(i8* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([256 x i16]* readonly, [256 x i16]* align 512, [512 x i16]* readonly, [512 x i16]* align 512, [32 x [1 x [3 x [3 x i16]]]]* readonly, [32 x [1 x [3 x [3 x i16]]]]* align 512, [32 x i16]* readonly, [32 x i16]* align 512, [32 x [32 x [3 x [3 x i16]]]]* readonly, [32 x [32 x [3 x [3 x i16]]]]*, [32 x i16]* readonly, [32 x i16]* align 512, [32 x [32 x [3 x [3 x i16]]]]* readonly, [32 x [32 x [3 x [3 x i16]]]]*, [32 x i16]* readonly, [32 x i16]* align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256i16([256 x i16]* align 512 %1, [256 x i16]* %0)
  call fastcc void @onebyonecpy_hls.p0a512i16([512 x i16]* align 512 %3, [512 x i16]* %2)
  call fastcc void @onebyonecpy_hls.p0a32a1a3a3i16([32 x [1 x [3 x [3 x i16]]]]* align 512 %5, [32 x [1 x [3 x [3 x i16]]]]* %4)
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* align 512 %7, [32 x i16]* %6)
  call fastcc void @onebyonecpy_hls.p0a32a32a3a3i16([32 x [32 x [3 x [3 x i16]]]]* %9, [32 x [32 x [3 x [3 x i16]]]]* %8)
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* align 512 %11, [32 x i16]* %10)
  call fastcc void @onebyonecpy_hls.p0a32a32a3a3i16([32 x [32 x [3 x [3 x i16]]]]* %13, [32 x [32 x [3 x [3 x i16]]]]* %12)
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* align 512 %15, [32 x i16]* %14)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a256i16([256 x i16]* align 512 %dst, [256 x i16]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [256 x i16]* %dst, null
  %1 = icmp eq [256 x i16]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a256i16([256 x i16]* nonnull %dst, [256 x i16]* nonnull %src, i64 256)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a256i16([256 x i16]* %dst, [256 x i16]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x i16]* %src, null
  %1 = icmp eq [256 x i16]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [256 x i16], [256 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [256 x i16], [256 x i16]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i16, i16* %src.addr, align 2
  store i16 %3, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a512i16([512 x i16]* align 512 %dst, [512 x i16]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [512 x i16]* %dst, null
  %1 = icmp eq [512 x i16]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a512i16([512 x i16]* nonnull %dst, [512 x i16]* nonnull %src, i64 512)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a512i16([512 x i16]* %dst, [512 x i16]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [512 x i16]* %src, null
  %1 = icmp eq [512 x i16]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [512 x i16], [512 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [512 x i16], [512 x i16]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i16, i16* %src.addr, align 2
  store i16 %3, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a32a1a3a3i16([32 x [1 x [3 x [3 x i16]]]]* align 512 %dst, [32 x [1 x [3 x [3 x i16]]]]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [32 x [1 x [3 x [3 x i16]]]]* %dst, null
  %1 = icmp eq [32 x [1 x [3 x [3 x i16]]]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a32a1a3a3i16([32 x [1 x [3 x [3 x i16]]]]* nonnull %dst, [32 x [1 x [3 x [3 x i16]]]]* nonnull %src, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a32a1a3a3i16([32 x [1 x [3 x [3 x i16]]]]* %dst, [32 x [1 x [3 x [3 x i16]]]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [32 x [1 x [3 x [3 x i16]]]]* %src, null
  %1 = icmp eq [32 x [1 x [3 x [3 x i16]]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x [1 x [3 x [3 x i16]]]], [32 x [1 x [3 x [3 x i16]]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [32 x [1 x [3 x [3 x i16]]]], [32 x [1 x [3 x [3 x i16]]]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a1a3a3i16([1 x [3 x [3 x i16]]]* %dst.addr, [1 x [3 x [3 x i16]]]* %src.addr, i64 1)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1a3a3i16([1 x [3 x [3 x i16]]]* %dst, [1 x [3 x [3 x i16]]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1 x [3 x [3 x i16]]]* %src, null
  %1 = icmp eq [1 x [3 x [3 x i16]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1 x [3 x [3 x i16]]], [1 x [3 x [3 x i16]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1 x [3 x [3 x i16]]], [1 x [3 x [3 x i16]]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a3a3i16([3 x [3 x i16]]* %dst.addr, [3 x [3 x i16]]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3a3i16([3 x [3 x i16]]* %dst, [3 x [3 x i16]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x [3 x i16]]* %src, null
  %1 = icmp eq [3 x [3 x i16]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x [3 x i16]], [3 x [3 x i16]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x [3 x i16]], [3 x [3 x i16]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a3i16([3 x i16]* %dst.addr, [3 x i16]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i16([3 x i16]* %dst, [3 x i16]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x i16]* %src, null
  %1 = icmp eq [3 x i16]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x i16], [3 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x i16], [3 x i16]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i16, i16* %src.addr, align 2
  store i16 %3, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* align 512 %dst, [32 x i16]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [32 x i16]* %dst, null
  %1 = icmp eq [32 x i16]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a32i16([32 x i16]* nonnull %dst, [32 x i16]* nonnull %src, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a32i16([32 x i16]* %dst, [32 x i16]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [32 x i16]* %src, null
  %1 = icmp eq [32 x i16]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x i16], [32 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [32 x i16], [32 x i16]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i16, i16* %src.addr, align 2
  store i16 %3, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a32a32a3a3i16([32 x [32 x [3 x [3 x i16]]]]* %dst, [32 x [32 x [3 x [3 x i16]]]]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [32 x [32 x [3 x [3 x i16]]]]* %dst, null
  %1 = icmp eq [32 x [32 x [3 x [3 x i16]]]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a32a32a3a3i16([32 x [32 x [3 x [3 x i16]]]]* nonnull %dst, [32 x [32 x [3 x [3 x i16]]]]* nonnull %src, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a32a32a3a3i16([32 x [32 x [3 x [3 x i16]]]]* %dst, [32 x [32 x [3 x [3 x i16]]]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [32 x [32 x [3 x [3 x i16]]]]* %src, null
  %1 = icmp eq [32 x [32 x [3 x [3 x i16]]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x [32 x [3 x [3 x i16]]]], [32 x [32 x [3 x [3 x i16]]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [32 x [32 x [3 x [3 x i16]]]], [32 x [32 x [3 x [3 x i16]]]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a32a3a3i16([32 x [3 x [3 x i16]]]* %dst.addr, [32 x [3 x [3 x i16]]]* %src.addr, i64 32)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a32a3a3i16([32 x [3 x [3 x i16]]]* %dst, [32 x [3 x [3 x i16]]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [32 x [3 x [3 x i16]]]* %src, null
  %1 = icmp eq [32 x [3 x [3 x i16]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x [3 x [3 x i16]]], [32 x [3 x [3 x i16]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [32 x [3 x [3 x i16]]], [32 x [3 x [3 x i16]]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a3a3i16([3 x [3 x i16]]* %dst.addr, [3 x [3 x i16]]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([256 x i16]*, [256 x i16]* readonly align 512, [512 x i16]*, [512 x i16]* readonly align 512, [32 x [1 x [3 x [3 x i16]]]]*, [32 x [1 x [3 x [3 x i16]]]]* readonly align 512, [32 x i16]*, [32 x i16]* readonly align 512, [32 x [32 x [3 x [3 x i16]]]]*, [32 x [32 x [3 x [3 x i16]]]]* readonly, [32 x i16]*, [32 x i16]* readonly align 512, [32 x [32 x [3 x [3 x i16]]]]*, [32 x [32 x [3 x [3 x i16]]]]* readonly, [32 x i16]*, [32 x i16]* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256i16([256 x i16]* %0, [256 x i16]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a512i16([512 x i16]* %2, [512 x i16]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a32a1a3a3i16([32 x [1 x [3 x [3 x i16]]]]* %4, [32 x [1 x [3 x [3 x i16]]]]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* %6, [32 x i16]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a32a32a3a3i16([32 x [32 x [3 x [3 x i16]]]]* %8, [32 x [32 x [3 x [3 x i16]]]]* %9)
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* %10, [32 x i16]* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0a32a32a3a3i16([32 x [32 x [3 x [3 x i16]]]]* %12, [32 x [32 x [3 x [3 x i16]]]]* %13)
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* %14, [32 x i16]* align 512 %15)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

declare void @apatb_cnn_top_hw([256 x i16]*, [512 x i16]*, [32 x [1 x [3 x [3 x i16]]]]*, [32 x i16]*, [32 x [32 x [3 x [3 x i16]]]]*, [32 x i16]*, [32 x [32 x [3 x [3 x i16]]]]*, [32 x i16]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([256 x i16]*, [256 x i16]* readonly align 512, [512 x i16]*, [512 x i16]* readonly align 512, [32 x [1 x [3 x [3 x i16]]]]*, [32 x [1 x [3 x [3 x i16]]]]* readonly align 512, [32 x i16]*, [32 x i16]* readonly align 512, [32 x [32 x [3 x [3 x i16]]]]*, [32 x [32 x [3 x [3 x i16]]]]* readonly, [32 x i16]*, [32 x i16]* readonly align 512, [32 x [32 x [3 x [3 x i16]]]]*, [32 x [32 x [3 x [3 x i16]]]]* readonly, [32 x i16]*, [32 x i16]* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a512i16([512 x i16]* %2, [512 x i16]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a32a1a3a3i16([32 x [1 x [3 x [3 x i16]]]]* %4, [32 x [1 x [3 x [3 x i16]]]]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* %6, [32 x i16]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a32a32a3a3i16([32 x [32 x [3 x [3 x i16]]]]* %8, [32 x [32 x [3 x [3 x i16]]]]* %9)
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* %10, [32 x i16]* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0a32a32a3a3i16([32 x [32 x [3 x [3 x i16]]]]* %12, [32 x [32 x [3 x [3 x i16]]]]* %13)
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* %14, [32 x i16]* align 512 %15)
  ret void
}

declare void @cnn_top_hw_stub(i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull, [1 x [3 x [3 x i16]]]* noalias nonnull, i16* noalias nonnull, [32 x [3 x [3 x i16]]]* noalias nonnull, i16* noalias nonnull, [32 x [3 x [3 x i16]]]* noalias nonnull, i16* noalias nonnull)

define void @cnn_top_hw_stub_wrapper([256 x i16]*, [512 x i16]*, [32 x [1 x [3 x [3 x i16]]]]*, [32 x i16]*, [32 x [32 x [3 x [3 x i16]]]]*, [32 x i16]*, [32 x [32 x [3 x [3 x i16]]]]*, [32 x i16]*) #5 {
entry:
  call void @copy_out([256 x i16]* null, [256 x i16]* %0, [512 x i16]* null, [512 x i16]* %1, [32 x [1 x [3 x [3 x i16]]]]* null, [32 x [1 x [3 x [3 x i16]]]]* %2, [32 x i16]* null, [32 x i16]* %3, [32 x [32 x [3 x [3 x i16]]]]* null, [32 x [32 x [3 x [3 x i16]]]]* %4, [32 x i16]* null, [32 x i16]* %5, [32 x [32 x [3 x [3 x i16]]]]* null, [32 x [32 x [3 x [3 x i16]]]]* %6, [32 x i16]* null, [32 x i16]* %7)
  %8 = bitcast [256 x i16]* %0 to i16*
  %9 = bitcast [512 x i16]* %1 to i16*
  %10 = bitcast [32 x [1 x [3 x [3 x i16]]]]* %2 to [1 x [3 x [3 x i16]]]*
  %11 = bitcast [32 x i16]* %3 to i16*
  %12 = bitcast [32 x [32 x [3 x [3 x i16]]]]* %4 to [32 x [3 x [3 x i16]]]*
  %13 = bitcast [32 x i16]* %5 to i16*
  %14 = bitcast [32 x [32 x [3 x [3 x i16]]]]* %6 to [32 x [3 x [3 x i16]]]*
  %15 = bitcast [32 x i16]* %7 to i16*
  call void @cnn_top_hw_stub(i16* %8, i16* %9, [1 x [3 x [3 x i16]]]* %10, i16* %11, [32 x [3 x [3 x i16]]]* %12, i16* %13, [32 x [3 x [3 x i16]]]* %14, i16* %15)
  call void @copy_in([256 x i16]* null, [256 x i16]* %0, [512 x i16]* null, [512 x i16]* %1, [32 x [1 x [3 x [3 x i16]]]]* null, [32 x [1 x [3 x [3 x i16]]]]* %2, [32 x i16]* null, [32 x i16]* %3, [32 x [32 x [3 x [3 x i16]]]]* null, [32 x [32 x [3 x [3 x i16]]]]* %4, [32 x i16]* null, [32 x i16]* %5, [32 x [32 x [3 x [3 x i16]]]]* null, [32 x [32 x [3 x [3 x i16]]]]* %6, [32 x i16]* null, [32 x i16]* %7)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
