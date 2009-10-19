! Name of package being compiled: Synch
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_Thread_InitializeScheduler
	.import	_P_Thread_Run
	.import	_P_Thread_PrintReadyList
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
	.import	_P_Thread_FatalError
	.import	_P_Thread_SetInterruptsTo
	.import	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! Externally visible functions in this package
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from this package
	.export	_P_Synch_Semaphore
	.export	_Method_P_Synch_Semaphore_1
	.export	_Method_P_Synch_Semaphore_2
	.export	_Method_P_Synch_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Synch_Mutex
	.export	_Method_P_Synch_Mutex_1
	.export	_Method_P_Synch_Mutex_2
	.export	_Method_P_Synch_Mutex_3
	.export	_Method_P_Synch_Mutex_4
! The following class and its methods are from this package
	.export	_P_Synch_Condition
	.export	_Method_P_Synch_Condition_1
	.export	_Method_P_Synch_Condition_2
	.export	_Method_P_Synch_Condition_3
	.export	_Method_P_Synch_Condition_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_Thread_readyList
	.import	_P_Thread_currentThread
	.import	_P_Thread_mainThread
	.import	_P_Thread_idleThread
	.import	_P_Thread_threadsToBeDestroyed
	.import	_P_Thread_currentInterruptStatus
! Global variables in this package
	.data
	.align
! String constants
_StringConst_10:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_9:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_8:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_7:
	.word	39			! length
	.ascii	"thread was not locked by currentThread."
	.align
_StringConst_6:
	.word	54			! length
	.ascii	"asked for lock to be released, but nothing was locked!"
	.align
_StringConst_5:
	.word	31			! length
	.ascii	"about to hold a held lock, eep!"
	.align
_StringConst_4:
	.word	32			! length
	.ascii	"Mutex created with waitCount < 0"
	.align
_StringConst_3:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_2:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_1:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Synch.c\0"
_packageName:
	.ascii	"Synch\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Synch_:
	.export	_CheckVersion_P_Synch_
	set	0xe4ed2ab7,r4		! myHashVal = -454219081
	cmp	r3,r4
	be	_Label_11
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_11:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_12
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_12
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_12
_Label_12:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Synch_Semaphore:
	.word	_Label_13
	jmp	_Method_P_Synch_Semaphore_1	! 4:	Init
	jmp	_Method_P_Synch_Semaphore_3	! 8:	Down
	jmp	_Method_P_Synch_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_13:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_14
	.word	_sourceFileName
	.word	5		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Synch_Semaphore
	.word	_P_System_Object
	.word	0
_Label_14:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_157:
	push	r0
	sub	r1,1,r1
	bne	_Label_157
	mov	33,r13		! source line 33
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_16		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_16
!	jmp	_Label_15
_Label_15:
! THEN...
	mov	35,r13		! source line 35
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_17 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_17  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	35,r13		! source line 35
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_16:
! ASSIGNMENT STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_19
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_20
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_21
	.word	12
	.word	4
	.word	_Label_22
	.word	-12
	.word	4
	.word	_Label_23
	.word	-16
	.word	4
	.word	0
_Label_19:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_20:
	.ascii	"Pself\0"
	.align
_Label_21:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_22:
	.byte	'?'
	.ascii	"_temp_18\0"
	.align
_Label_23:
	.byte	'?'
	.ascii	"_temp_17\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Synch_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_158:
	push	r0
	sub	r1,1,r1
	bne	_Label_158
	mov	43,r13		! source line 43
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_25		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_25
!	jmp	_Label_24
_Label_24:
! THEN...
	mov	49,r13		! source line 49
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_26 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_26  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_25:
! ASSIGNMENT STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_28		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_28
!	jmp	_Label_27
_Label_27:
! THEN...
	mov	53,r13		! source line 53
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0AS",r10
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
!   _temp_29 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_30 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_30 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_31 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_28:
! ASSIGNMENT STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	57,r13		! source line 57
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_32
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_33
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_34
	.word	-12
	.word	4
	.word	_Label_35
	.word	-16
	.word	4
	.word	_Label_36
	.word	-20
	.word	4
	.word	_Label_37
	.word	-24
	.word	4
	.word	_Label_38
	.word	-28
	.word	4
	.word	_Label_39
	.word	-32
	.word	4
	.word	0
_Label_32:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_33:
	.ascii	"Pself\0"
	.align
_Label_34:
	.byte	'?'
	.ascii	"_temp_31\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_30\0"
	.align
_Label_36:
	.byte	'?'
	.ascii	"_temp_29\0"
	.align
_Label_37:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_38:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_39:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Synch_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_159:
	push	r0
	sub	r1,1,r1
	bne	_Label_159
	mov	62,r13		! source line 62
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_41		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_41
!	jmp	_Label_40
_Label_40:
! THEN...
	mov	67,r13		! source line 67
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_42 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_42  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	67,r13		! source line 67
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_41:
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_44		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_44
!	jmp	_Label_43
_Label_43:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   _temp_45 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_44:
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_46
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_47
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_48
	.word	-12
	.word	4
	.word	_Label_49
	.word	-16
	.word	4
	.word	_Label_50
	.word	-20
	.word	4
	.word	0
_Label_46:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_47:
	.ascii	"Pself\0"
	.align
_Label_48:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_49:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_50:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Synch_Mutex:
	.word	_Label_51
	jmp	_Method_P_Synch_Mutex_1	! 4:	Init
	jmp	_Method_P_Synch_Mutex_2	! 8:	Lock
	jmp	_Method_P_Synch_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Synch_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_51:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_52
	.word	_sourceFileName
	.word	17		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Synch_Mutex
	.word	_P_System_Object
	.word	0
_Label_52:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_1,r1
	push	r1
	mov	3,r1
_Label_160:
	push	r0
	sub	r1,1,r1
	bne	_Label_160
	mov	101,r13		! source line 101
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0IF",r10
!   if waitCount >= 0 then goto _Label_54		(int)
	load	[r14+8],r1
	load	[r1+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_54
!	jmp	_Label_53
_Label_53:
! THEN...
	mov	104,r13		! source line 104
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_55 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_55  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_54:
! ASSIGNMENT STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0AS",r10
!   state = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,12,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0AS",r10
!   waitCount = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! RETURN STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_1:
	.word	_sourceFileName
	.word	_Label_57
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_58
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_59
	.word	-12
	.word	4
	.word	_Label_60
	.word	-16
	.word	4
	.word	0
_Label_57:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_58:
	.ascii	"Pself\0"
	.align
_Label_59:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_60:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Synch_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_2,r1
	push	r1
	mov	5,r1
_Label_161:
	push	r0
	sub	r1,1,r1
	bne	_Label_161
	mov	124,r13		! source line 124
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	129,r13		! source line 129
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! WHILE STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0WH",r10
_Label_61:
!   if state != 2 then goto _Label_63		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_63
!	jmp	_Label_62
_Label_62:
	mov	135,r13		! source line 135
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0SE",r10
!   _temp_64 = &waitingThreads
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0AS",r10
!   waitCount = waitCount + 1		(int)
	load	[r14+8],r1
	load	[r1+24],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	141,r13		! source line 141
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_61
_Label_63:
! IF STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0IF",r10
!   if intIsZero (heldBy) then goto _Label_66
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_Label_66
!	jmp	_Label_65
_Label_65:
! THEN...
	mov	157,r13		! source line 157
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_67 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_67  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	157,r13		! source line 157
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_66:
! ASSIGNMENT STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0AS",r10
!   state = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0AS",r10
!   heldBy = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_2:
	.word	_sourceFileName
	.word	_Label_68
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_69
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_70
	.word	-12
	.word	4
	.word	_Label_71
	.word	-16
	.word	4
	.word	_Label_72
	.word	-20
	.word	4
	.word	0
_Label_68:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_69:
	.ascii	"Pself\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_72:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Synch_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_3,r1
	push	r1
	mov	9,r1
_Label_162:
	push	r0
	sub	r1,1,r1
	bne	_Label_162
	mov	170,r13		! source line 170
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0IF",r10
!   if state != 1 then goto _Label_74		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_74
!	jmp	_Label_73
_Label_73:
! THEN...
	mov	178,r13		! source line 178
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_75 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_75  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_74:
! IF STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0IF",r10
!   if heldBy == _P_Thread_currentThread then goto _Label_77		(int)
	load	[r14+8],r1
	load	[r1+8],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_77
!	jmp	_Label_76
_Label_76:
! THEN...
	mov	188,r13		! source line 188
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_78 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_78  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	188,r13		! source line 188
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_77:
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   state = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! IF STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0IF",r10
!   if waitCount <= 0 then goto _Label_80		(int)
	load	[r14+8],r1
	load	[r1+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_80
!	jmp	_Label_79
_Label_79:
! THEN...
	mov	201,r13		! source line 201
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0AS",r10
!   waitCount = waitCount - 1		(int)
	load	[r14+8],r1
	load	[r1+24],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
	mov	202,r13		! source line 202
	mov	"\0\0SE",r10
!   _temp_81 = &waitingThreads
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_82 = nextThread + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_82 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0SE",r10
!   _temp_83 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_80:
! ASSIGNMENT STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	207,r13		! source line 207
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_3:
	.word	_sourceFileName
	.word	_Label_84
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_85
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_86
	.word	-12
	.word	4
	.word	_Label_87
	.word	-16
	.word	4
	.word	_Label_88
	.word	-20
	.word	4
	.word	_Label_89
	.word	-24
	.word	4
	.word	_Label_90
	.word	-28
	.word	4
	.word	_Label_91
	.word	-32
	.word	4
	.word	_Label_92
	.word	-36
	.word	4
	.word	0
_Label_84:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_85:
	.ascii	"Pself\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_91:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_92:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Synch_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_4,r1
	push	r1
	mov	213,r13		! source line 213
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0IF",r10
!   if state != 2 then goto _Label_94		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_94
!	jmp	_Label_95
_Label_95:
!   if heldBy != _P_Thread_currentThread then goto _Label_94		(int)
	load	[r14+8],r1
	load	[r1+8],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_94
!	jmp	_Label_93
_Label_93:
! THEN...
	mov	217,r13		! source line 217
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_94:
! RETURN STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_4:
	.word	_sourceFileName
	.word	_Label_96
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_97
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_96:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_97:
	.ascii	"Pself\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Synch_Condition:
	.word	_Label_98
	jmp	_Method_P_Synch_Condition_1	! 4:	Init
	jmp	_Method_P_Synch_Condition_2	! 8:	Wait
	jmp	_Method_P_Synch_Condition_3	! 12:	Signal
	jmp	_Method_P_Synch_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_98:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_99
	.word	_sourceFileName
	.word	31		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Synch_Condition
	.word	_P_System_Object
	.word	0
_Label_99:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_1,r1
	push	r1
	mov	1,r1
_Label_163:
	push	r0
	sub	r1,1,r1
	bne	_Label_163
	mov	261,r13		! source line 261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_1:
	.word	_sourceFileName
	.word	_Label_101
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_102
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_103
	.word	-12
	.word	4
	.word	0
_Label_101:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_102:
	.ascii	"Pself\0"
	.align
_Label_103:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Synch_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_2,r1
	push	r1
	mov	6,r1
_Label_164:
	push	r0
	sub	r1,1,r1
	bne	_Label_164
	mov	267,r13		! source line 267
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0IF",r10
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_106  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_106 then goto _Label_105 else goto _Label_104
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_104
	jmp	_Label_105
_Label_104:
! THEN...
	mov	271,r13		! source line 271
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_107 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_107  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_105:
! ASSIGNMENT STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0SE",r10
!   _temp_108 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_2:
	.word	_sourceFileName
	.word	_Label_109
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_110
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_111
	.word	12
	.word	4
	.word	_Label_112
	.word	-16
	.word	4
	.word	_Label_113
	.word	-20
	.word	4
	.word	_Label_114
	.word	-9
	.word	1
	.word	_Label_115
	.word	-24
	.word	4
	.word	0
_Label_109:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_110:
	.ascii	"Pself\0"
	.align
_Label_111:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_113:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_114:
	.byte	'C'
	.ascii	"_temp_106\0"
	.align
_Label_115:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Synch_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_3,r1
	push	r1
	mov	9,r1
_Label_165:
	push	r0
	sub	r1,1,r1
	bne	_Label_165
	mov	283,r13		! source line 283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0IF",r10
	mov	287,r13		! source line 287
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_118  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_118 then goto _Label_117 else goto _Label_116
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_116
	jmp	_Label_117
_Label_116:
! THEN...
	mov	288,r13		! source line 288
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_119 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_119  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	288,r13		! source line 288
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_117:
! ASSIGNMENT STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	290,r13		! source line 290
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0AS",r10
	mov	291,r13		! source line 291
	mov	"\0\0SE",r10
!   _temp_120 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_122		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_122
!	jmp	_Label_121
_Label_121:
! THEN...
	mov	293,r13		! source line 293
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_123 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_123 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0SE",r10
!   _temp_124 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_122:
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	296,r13		! source line 296
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_3:
	.word	_sourceFileName
	.word	_Label_125
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_126
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_127
	.word	12
	.word	4
	.word	_Label_128
	.word	-16
	.word	4
	.word	_Label_129
	.word	-20
	.word	4
	.word	_Label_130
	.word	-24
	.word	4
	.word	_Label_131
	.word	-28
	.word	4
	.word	_Label_132
	.word	-9
	.word	1
	.word	_Label_133
	.word	-32
	.word	4
	.word	_Label_134
	.word	-36
	.word	4
	.word	0
_Label_125:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_126:
	.ascii	"Pself\0"
	.align
_Label_127:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_124\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_132:
	.byte	'C'
	.ascii	"_temp_118\0"
	.align
_Label_133:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_134:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Synch_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_4,r1
	push	r1
	mov	9,r1
_Label_166:
	push	r0
	sub	r1,1,r1
	bne	_Label_166
	mov	301,r13		! source line 301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
	mov	305,r13		! source line 305
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_137  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_137 then goto _Label_136 else goto _Label_135
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_135
	jmp	_Label_136
_Label_135:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_138 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_138  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_136:
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	308,r13		! source line 308
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0WH",r10
_Label_139:
!	jmp	_Label_140
_Label_140:
	mov	309,r13		! source line 309
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0AS",r10
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_142 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_143
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_143
	jmp	_Label_144
_Label_143:
! THEN...
	mov	312,r13		! source line 312
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0BR",r10
	jmp	_Label_141
! END IF...
_Label_144:
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_145 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_145 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0SE",r10
!   _temp_146 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_139
_Label_141:
! ASSIGNMENT STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	317,r13		! source line 317
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_4:
	.word	_sourceFileName
	.word	_Label_147
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_148
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_149
	.word	12
	.word	4
	.word	_Label_150
	.word	-16
	.word	4
	.word	_Label_151
	.word	-20
	.word	4
	.word	_Label_152
	.word	-24
	.word	4
	.word	_Label_153
	.word	-28
	.word	4
	.word	_Label_154
	.word	-9
	.word	1
	.word	_Label_155
	.word	-32
	.word	4
	.word	_Label_156
	.word	-36
	.word	4
	.word	0
_Label_147:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_148:
	.ascii	"Pself\0"
	.align
_Label_149:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_154:
	.byte	'C'
	.ascii	"_temp_137\0"
	.align
_Label_155:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_156:
	.byte	'P'
	.ascii	"t\0"
	.align
