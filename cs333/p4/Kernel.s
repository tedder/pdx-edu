! Name of package being compiled: Kernel
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
	.import	_P_System_PrintMemory
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
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
	.align
! String constants
_StringConst_133:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_132:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_131:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_129:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_126:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_123:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_120:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_119:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_118:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_117:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_116:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_114:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_113:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_112:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_111:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_110:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_109:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_108:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_107:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_106:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_105:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_104:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_103:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_102:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_101:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_100:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_99:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_98:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_97:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_96:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_95:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_94:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_93:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_92:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_91:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_90:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_89:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_88:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_87:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_86:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_85:
	.word	14			! length
	.ascii	"have threads.\n"
	.align
_StringConst_84:
	.word	8			! length
	.ascii	"thread 9"
	.align
_StringConst_83:
	.word	8			! length
	.ascii	"thread 8"
	.align
_StringConst_82:
	.word	8			! length
	.ascii	"thread 7"
	.align
_StringConst_81:
	.word	8			! length
	.ascii	"thread 6"
	.align
_StringConst_80:
	.word	8			! length
	.ascii	"thread 5"
	.align
_StringConst_79:
	.word	8			! length
	.ascii	"thread 4"
	.align
_StringConst_78:
	.word	8			! length
	.ascii	"thread 3"
	.align
_StringConst_77:
	.word	8			! length
	.ascii	"thread 2"
	.align
_StringConst_76:
	.word	8			! length
	.ascii	"thread 1"
	.align
_StringConst_75:
	.word	8			! length
	.ascii	"thread 0"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_73:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_72:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_71:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_70:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_67:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_66:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_65:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_64:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_61:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_60:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_59:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_58:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_57:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_56:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_55:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_54:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_53:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_51:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_49:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_48:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_47:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_45:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0xf6c2a22c,r4		! myHashVal = -155016660
	cmp	r3,r4
	be	_Label_138
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
_Label_138:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_139
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_139
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_139
_Label_139:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1643:
	push	r0
	sub	r1,1,r1
	bne	_Label_1643
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_140 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_140  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1644:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1644
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_144 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_145 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_144  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_146 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_147 = _temp_146 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_147 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1645:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1645
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_149 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_150 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_149  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_151 = _function_137_IdleFunction
	set	_function_137_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_152 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_151  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_153
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_154
	.word	-12
	.word	4
	.word	_Label_155
	.word	-16
	.word	4
	.word	_Label_156
	.word	-20
	.word	4
	.word	_Label_157
	.word	-24
	.word	4
	.word	_Label_158
	.word	-28
	.word	4
	.word	_Label_159
	.word	-32
	.word	4
	.word	_Label_160
	.word	-36
	.word	4
	.word	_Label_161
	.word	-40
	.word	4
	.word	_Label_162
	.word	-44
	.word	4
	.word	_Label_163
	.word	-48
	.word	4
	.word	_Label_164
	.word	-52
	.word	4
	.word	_Label_165
	.word	-56
	.word	4
	.word	_Label_166
	.word	-60
	.word	4
	.word	0
_Label_153:
	.ascii	"InitializeScheduler\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_137_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_137_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1646:
	push	r0
	sub	r1,1,r1
	bne	_Label_1646
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_167:
!	jmp	_Label_168
_Label_168:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_172 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_170 else goto _Label_171
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_171
	jmp	_Label_170
_Label_170:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_173
_Label_171:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_173:
! END WHILE...
	jmp	_Label_167
_Label_169:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_137_IdleFunction:
	.word	_sourceFileName
	.word	_Label_174
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_175
	.word	8
	.word	4
	.word	_Label_176
	.word	-12
	.word	4
	.word	_Label_177
	.word	-16
	.word	4
	.word	0
_Label_174:
	.ascii	"IdleFunction\0"
	.align
_Label_175:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_177:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1647:
	push	r0
	sub	r1,1,r1
	bne	_Label_1647
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_180 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_180 ) then goto _Label_179		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_179
!	jmp	_Label_178
_Label_178:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_182 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_182 [0 ] into _temp_183
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_181 = _temp_183		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_181  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_179:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_184 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_184 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_185:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_189 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_188  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_188 then goto _Label_187 else goto _Label_186
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_186
	jmp	_Label_187
_Label_186:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_190 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_191 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_185
_Label_187:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_194 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_194 ) then goto _Label_193		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_193
!	jmp	_Label_192
_Label_192:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_196 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_196 [0 ] into _temp_197
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_195 = _temp_197		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_195  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_199 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_198 = *_temp_199  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_198) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_200 = _temp_198 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_193:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_201
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_202
	.word	8
	.word	4
	.word	_Label_203
	.word	-16
	.word	4
	.word	_Label_204
	.word	-20
	.word	4
	.word	_Label_205
	.word	-24
	.word	4
	.word	_Label_206
	.word	-28
	.word	4
	.word	_Label_207
	.word	-32
	.word	4
	.word	_Label_208
	.word	-36
	.word	4
	.word	_Label_209
	.word	-40
	.word	4
	.word	_Label_210
	.word	-44
	.word	4
	.word	_Label_211
	.word	-48
	.word	4
	.word	_Label_212
	.word	-52
	.word	4
	.word	_Label_213
	.word	-9
	.word	1
	.word	_Label_214
	.word	-56
	.word	4
	.word	_Label_215
	.word	-60
	.word	4
	.word	_Label_216
	.word	-64
	.word	4
	.word	_Label_217
	.word	-68
	.word	4
	.word	_Label_218
	.word	-72
	.word	4
	.word	_Label_219
	.word	-76
	.word	4
	.word	_Label_220
	.word	-80
	.word	4
	.word	0
_Label_201:
	.ascii	"Run\0"
	.align
_Label_202:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_213:
	.byte	'C'
	.ascii	"_temp_188\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_219:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_220:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1648:
	push	r0
	sub	r1,1,r1
	bne	_Label_1648
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_221 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_221  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_222 = _function_136_ThreadPrintShort
	set	_function_136_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_223 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_222  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_224
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_225
	.word	-12
	.word	4
	.word	_Label_226
	.word	-16
	.word	4
	.word	_Label_227
	.word	-20
	.word	4
	.word	_Label_228
	.word	-24
	.word	4
	.word	0
_Label_224:
	.ascii	"PrintReadyList\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_228:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1649:
	push	r0
	sub	r1,1,r1
	bne	_Label_1649
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_229 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_229  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_231 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_230 = *_temp_231  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_230  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_232 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_232  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_233
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_234
	.word	-12
	.word	4
	.word	_Label_235
	.word	-16
	.word	4
	.word	_Label_236
	.word	-20
	.word	4
	.word	_Label_237
	.word	-24
	.word	4
	.word	_Label_238
	.word	-28
	.word	4
	.word	_Label_239
	.word	-32
	.word	4
	.word	0
_Label_233:
	.ascii	"ThreadStartMain\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_238:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_239:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1650:
	push	r0
	sub	r1,1,r1
	bne	_Label_1650
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_240 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_241 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_241  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_242
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_243
	.word	-12
	.word	4
	.word	_Label_244
	.word	-16
	.word	4
	.word	_Label_245
	.word	-20
	.word	4
	.word	0
_Label_242:
	.ascii	"ThreadFinish\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_245:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1651:
	push	r0
	sub	r1,1,r1
	bne	_Label_1651
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_246 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_246  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_248		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_248
!	jmp	_Label_247
_Label_247:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_249 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_249  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_251 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_250 = *_temp_251  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_250  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_248:
! CALL STATEMENT...
!   _temp_252 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_252  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_253 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_253  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_254 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_254  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_255
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_256
	.word	8
	.word	4
	.word	_Label_257
	.word	-12
	.word	4
	.word	_Label_258
	.word	-16
	.word	4
	.word	_Label_259
	.word	-20
	.word	4
	.word	_Label_260
	.word	-24
	.word	4
	.word	_Label_261
	.word	-28
	.word	4
	.word	_Label_262
	.word	-32
	.word	4
	.word	_Label_263
	.word	-36
	.word	4
	.word	_Label_264
	.word	-40
	.word	4
	.word	0
_Label_255:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_256:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_264:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1652:
	push	r0
	sub	r1,1,r1
	bne	_Label_1652
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_266		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_266
!	jmp	_Label_265
_Label_265:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_267
_Label_266:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_267:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_268
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_269
	.word	8
	.word	4
	.word	_Label_270
	.word	-12
	.word	4
	.word	0
_Label_268:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_269:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_270:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_136_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_136_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1653:
	push	r0
	sub	r1,1,r1
	bne	_Label_1653
	mov	640,r13		! source line 640
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_274		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_274
!   _temp_273 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_275
_Label_274:
!   _temp_273 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_275:
!   if _temp_273 then goto _Label_272 else goto _Label_271
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_271
	jmp	_Label_272
_Label_271:
! THEN...
	mov	649,r13		! source line 649
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_276 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_276  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_272:
! CALL STATEMENT...
!   _temp_277 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_278 = *_temp_279  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_278  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_280 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	655,r13		! source line 655
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_289 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_288 = *_temp_289  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_283
	cmp	r1,2
	be	_Label_284
	cmp	r1,3
	be	_Label_285
	cmp	r1,4
	be	_Label_286
	cmp	r1,5
	be	_Label_287
	jmp	_Label_281
! CASE 1...
_Label_283:
! CALL STATEMENT...
!   _temp_290 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0BR",r10
	jmp	_Label_282
! CASE 2...
_Label_284:
! CALL STATEMENT...
!   _temp_291 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0BR",r10
	jmp	_Label_282
! CASE 3...
_Label_285:
! CALL STATEMENT...
!   _temp_292 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0BR",r10
	jmp	_Label_282
! CASE 4...
_Label_286:
! CALL STATEMENT...
!   _temp_293 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0BR",r10
	jmp	_Label_282
! CASE 5...
_Label_287:
! CALL STATEMENT...
!   _temp_294 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0BR",r10
	jmp	_Label_282
! DEFAULT CASE...
_Label_281:
! CALL STATEMENT...
!   _temp_295 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	672,r13		! source line 672
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_282:
! CALL STATEMENT...
!   _temp_296 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_297 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_298 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_298  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_136_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_299
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_300
	.word	8
	.word	4
	.word	_Label_301
	.word	-16
	.word	4
	.word	_Label_302
	.word	-20
	.word	4
	.word	_Label_303
	.word	-24
	.word	4
	.word	_Label_304
	.word	-28
	.word	4
	.word	_Label_305
	.word	-32
	.word	4
	.word	_Label_306
	.word	-36
	.word	4
	.word	_Label_307
	.word	-40
	.word	4
	.word	_Label_308
	.word	-44
	.word	4
	.word	_Label_309
	.word	-48
	.word	4
	.word	_Label_310
	.word	-52
	.word	4
	.word	_Label_311
	.word	-56
	.word	4
	.word	_Label_312
	.word	-60
	.word	4
	.word	_Label_313
	.word	-64
	.word	4
	.word	_Label_314
	.word	-68
	.word	4
	.word	_Label_315
	.word	-72
	.word	4
	.word	_Label_316
	.word	-76
	.word	4
	.word	_Label_317
	.word	-9
	.word	1
	.word	_Label_318
	.word	-80
	.word	4
	.word	0
_Label_299:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_300:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_317:
	.byte	'C'
	.ascii	"_temp_273\0"
	.align
_Label_318:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_135_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_135_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1654:
	push	r0
	sub	r1,1,r1
	bne	_Label_1654
	mov	987,r13		! source line 987
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_319 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	991,r13		! source line 991
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	992,r13		! source line 992
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_135_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_320
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_321
	.word	8
	.word	4
	.word	_Label_322
	.word	-12
	.word	4
	.word	0
_Label_320:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_321:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1655:
	push	r0
	sub	r1,1,r1
	bne	_Label_1655
	mov	997,r13		! source line 997
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_323 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1003,r13		! source line 1003
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_324
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_325
	.word	8
	.word	4
	.word	_Label_326
	.word	-12
	.word	4
	.word	0
_Label_324:
	.ascii	"ProcessFinish\0"
	.align
_Label_325:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1656:
	push	r0
	sub	r1,1,r1
	bne	_Label_1656
	mov	1456,r13		! source line 1456
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_327
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_327:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_1657:
	push	r0
	sub	r1,1,r1
	bne	_Label_1657
	mov	1474,r13		! source line 1474
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_328 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1484,r13		! source line 1484
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_329
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_330
	.word	-12
	.word	4
	.word	0
_Label_329:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1496,r13		! source line 1496
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_331
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_331:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1658:
	push	r0
	sub	r1,1,r1
	bne	_Label_1658
	mov	1510,r13		! source line 1510
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_332 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1517,r13		! source line 1517
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_333
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_334
	.word	-12
	.word	4
	.word	0
_Label_333:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1659:
	push	r0
	sub	r1,1,r1
	bne	_Label_1659
	mov	1522,r13		! source line 1522
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_335 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1529,r13		! source line 1529
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_336
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_337
	.word	-12
	.word	4
	.word	0
_Label_336:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1660:
	push	r0
	sub	r1,1,r1
	bne	_Label_1660
	mov	1534,r13		! source line 1534
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_338 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1541,r13		! source line 1541
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_339
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_340
	.word	-12
	.word	4
	.word	0
_Label_339:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1661:
	push	r0
	sub	r1,1,r1
	bne	_Label_1661
	mov	1546,r13		! source line 1546
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_341 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1553,r13		! source line 1553
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_342
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_343
	.word	-12
	.word	4
	.word	0
_Label_342:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1662:
	push	r0
	sub	r1,1,r1
	bne	_Label_1662
	mov	1558,r13		! source line 1558
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_344 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1565,r13		! source line 1565
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_345
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_346
	.word	-12
	.word	4
	.word	0
_Label_345:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1663:
	push	r0
	sub	r1,1,r1
	bne	_Label_1663
	mov	1570,r13		! source line 1570
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1576,r13		! source line 1576
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_347 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1577,r13		! source line 1577
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_348
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_349
	.word	-12
	.word	4
	.word	0
_Label_348:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1664:
	push	r0
	sub	r1,1,r1
	bne	_Label_1664
	mov	1582,r13		! source line 1582
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_350 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1589,r13		! source line 1589
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_351
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_352
	.word	-12
	.word	4
	.word	0
_Label_351:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_134_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_134_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1665:
	push	r0
	sub	r1,1,r1
	bne	_Label_1665
	mov	1594,r13		! source line 1594
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_353 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1599,r13		! source line 1599
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1600,r13		! source line 1600
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_354 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1601,r13		! source line 1601
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1604,r13		! source line 1604
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_358 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_357 = *_temp_358  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_357 == 0 then goto _Label_356		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_356
!	jmp	_Label_355
_Label_355:
! THEN...
	mov	1605,r13		! source line 1605
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_360 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_359 = *_temp_360  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_359) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_361
_Label_356:
! ELSE...
	mov	1607,r13		! source line 1607
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_362 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1607,r13		! source line 1607
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_361:
! SEND STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1615,r13		! source line 1615
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_134_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_363
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_364
	.word	8
	.word	4
	.word	_Label_365
	.word	-12
	.word	4
	.word	_Label_366
	.word	-16
	.word	4
	.word	_Label_367
	.word	-20
	.word	4
	.word	_Label_368
	.word	-24
	.word	4
	.word	_Label_369
	.word	-28
	.word	4
	.word	_Label_370
	.word	-32
	.word	4
	.word	_Label_371
	.word	-36
	.word	4
	.word	0
_Label_363:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_364:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1666:
	push	r0
	sub	r1,1,r1
	bne	_Label_1666
	mov	1620,r13		! source line 1620
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1641,r13		! source line 1641
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1667
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_372
_Label_1667:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_372
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_372
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_386,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_386:
	jmp	_Label_378	! 1:	
	jmp	_Label_385	! 2:	
	jmp	_Label_375	! 3:	
	jmp	_Label_374	! 4:	
	jmp	_Label_377	! 5:	
	jmp	_Label_376	! 6:	
	jmp	_Label_379	! 7:	
	jmp	_Label_380	! 8:	
	jmp	_Label_381	! 9:	
	jmp	_Label_382	! 10:	
	jmp	_Label_383	! 11:	
	jmp	_Label_384	! 12:	
! CASE 4...
_Label_374:
! RETURN STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0RE",r10
!   Call the function
	mov	1643,r13		! source line 1643
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_387  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_387  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_375:
! CALL STATEMENT...
!   Call the function
	mov	1645,r13		! source line 1645
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_376:
! RETURN STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1648,r13		! source line 1648
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_388  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_388  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_377:
! RETURN STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1650,r13		! source line 1650
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_389  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_389  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_378:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1652,r13		! source line 1652
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_379:
! RETURN STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1655,r13		! source line 1655
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_390  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_390  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_380:
! RETURN STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1657,r13		! source line 1657
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_391  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_391  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_381:
! RETURN STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1659,r13		! source line 1659
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_392  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_392  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_382:
! RETURN STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1661,r13		! source line 1661
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_393  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_393  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_383:
! RETURN STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1663,r13		! source line 1663
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_394  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_394  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_384:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1665,r13		! source line 1665
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_385:
! CALL STATEMENT...
!   Call the function
	mov	1668,r13		! source line 1668
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_372:
! CALL STATEMENT...
!   _temp_395 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1671,r13		! source line 1671
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1672,r13		! source line 1672
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1673,r13		! source line 1673
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_396 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1674,r13		! source line 1674
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_373:
! RETURN STATEMENT...
	mov	1676,r13		! source line 1676
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_397
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_398
	.word	8
	.word	4
	.word	_Label_399
	.word	12
	.word	4
	.word	_Label_400
	.word	16
	.word	4
	.word	_Label_401
	.word	20
	.word	4
	.word	_Label_402
	.word	24
	.word	4
	.word	_Label_403
	.word	-12
	.word	4
	.word	_Label_404
	.word	-16
	.word	4
	.word	_Label_405
	.word	-20
	.word	4
	.word	_Label_406
	.word	-24
	.word	4
	.word	_Label_407
	.word	-28
	.word	4
	.word	_Label_408
	.word	-32
	.word	4
	.word	_Label_409
	.word	-36
	.word	4
	.word	_Label_410
	.word	-40
	.word	4
	.word	_Label_411
	.word	-44
	.word	4
	.word	_Label_412
	.word	-48
	.word	4
	.word	0
_Label_397:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_398:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_399:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_400:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_401:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_402:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1681,r13		! source line 1681
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_413
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_414
	.word	8
	.word	4
	.word	0
_Label_413:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_414:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1687,r13		! source line 1687
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_415
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_415:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1693,r13		! source line 1693
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_416
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_416:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1699,r13		! source line 1699
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_417
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_417:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1706,r13		! source line 1706
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_418
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_419
	.word	8
	.word	4
	.word	0
_Label_418:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1713,r13		! source line 1713
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_420
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_421
	.word	8
	.word	4
	.word	0
_Label_420:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_421:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1720,r13		! source line 1720
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1722,r13		! source line 1722
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_422
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_423
	.word	8
	.word	4
	.word	0
_Label_422:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_423:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1727,r13		! source line 1727
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1729,r13		! source line 1729
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_424
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_425
	.word	8
	.word	4
	.word	0
_Label_424:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_425:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1734,r13		! source line 1734
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1736,r13		! source line 1736
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_426
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_427
	.word	8
	.word	4
	.word	_Label_428
	.word	12
	.word	4
	.word	_Label_429
	.word	16
	.word	4
	.word	0
_Label_426:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_427:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_428:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_429:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1741,r13		! source line 1741
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_430
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_431
	.word	8
	.word	4
	.word	_Label_432
	.word	12
	.word	4
	.word	_Label_433
	.word	16
	.word	4
	.word	0
_Label_430:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_431:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_432:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_433:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1748,r13		! source line 1748
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_434
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_435
	.word	8
	.word	4
	.word	_Label_436
	.word	12
	.word	4
	.word	0
_Label_434:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_435:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_436:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1755,r13		! source line 1755
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1755,r13		! source line 1755
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_437
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_438
	.word	8
	.word	4
	.word	0
_Label_437:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_438:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_439
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_439:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_440
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_440:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1668:
	push	r0
	sub	r1,1,r1
	bne	_Label_1668
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_442		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_442
!	jmp	_Label_441
_Label_441:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_443 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_442:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
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
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_445
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_446
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_447
	.word	12
	.word	4
	.word	_Label_448
	.word	-12
	.word	4
	.word	_Label_449
	.word	-16
	.word	4
	.word	0
_Label_445:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_446:
	.ascii	"Pself\0"
	.align
_Label_447:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1669:
	push	r0
	sub	r1,1,r1
	bne	_Label_1669
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_451		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_451
!	jmp	_Label_450
_Label_450:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_452 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_452  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_451:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
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
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_454		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_454
!	jmp	_Label_453
_Label_453:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_455 = &waitingThreads
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
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_456 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_456 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_457 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
_Label_454:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_458
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_459
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_460
	.word	-12
	.word	4
	.word	_Label_461
	.word	-16
	.word	4
	.word	_Label_462
	.word	-20
	.word	4
	.word	_Label_463
	.word	-24
	.word	4
	.word	_Label_464
	.word	-28
	.word	4
	.word	_Label_465
	.word	-32
	.word	4
	.word	0
_Label_458:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_459:
	.ascii	"Pself\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_464:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_465:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1670:
	push	r0
	sub	r1,1,r1
	bne	_Label_1670
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_467		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_467
!	jmp	_Label_466
_Label_466:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_468 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_468  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_467:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
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
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_470		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_470
!	jmp	_Label_469
_Label_469:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_471 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_470:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_472
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_473
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_474
	.word	-12
	.word	4
	.word	_Label_475
	.word	-16
	.word	4
	.word	_Label_476
	.word	-20
	.word	4
	.word	0
_Label_472:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_473:
	.ascii	"Pself\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_476:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_477
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_477:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_478
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_478:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1671:
	push	r0
	sub	r1,1,r1
	bne	_Label_1671
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
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
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_480
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_481
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_482
	.word	-12
	.word	4
	.word	0
_Label_480:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_481:
	.ascii	"Pself\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1672:
	push	r0
	sub	r1,1,r1
	bne	_Label_1672
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_484		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_484
!	jmp	_Label_483
_Label_483:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_485 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_485  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_484:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_489		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_489
!   _temp_488 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_490
_Label_489:
!   _temp_488 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_490:
!   if _temp_488 then goto _Label_487 else goto _Label_486
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_486
	jmp	_Label_487
_Label_486:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_491
_Label_487:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_492 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_491:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_493
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_494
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_495
	.word	-16
	.word	4
	.word	_Label_496
	.word	-9
	.word	1
	.word	_Label_497
	.word	-20
	.word	4
	.word	_Label_498
	.word	-24
	.word	4
	.word	0
_Label_493:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_494:
	.ascii	"Pself\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_496:
	.byte	'C'
	.ascii	"_temp_488\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_498:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1673:
	push	r0
	sub	r1,1,r1
	bne	_Label_1673
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_500		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_500
!	jmp	_Label_499
_Label_499:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_501 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_500:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_502 = &waitingThreads
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
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_504		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_504
!	jmp	_Label_503
_Label_503:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_505 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_505 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_506 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_507
_Label_504:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_507:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_508
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_509
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_510
	.word	-12
	.word	4
	.word	_Label_511
	.word	-16
	.word	4
	.word	_Label_512
	.word	-20
	.word	4
	.word	_Label_513
	.word	-24
	.word	4
	.word	_Label_514
	.word	-28
	.word	4
	.word	_Label_515
	.word	-32
	.word	4
	.word	0
_Label_508:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_509:
	.ascii	"Pself\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_514:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_515:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1674:
	push	r0
	sub	r1,1,r1
	bne	_Label_1674
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_518		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_518
!	jmp	_Label_517
_Label_517:
!   _temp_516 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_519
_Label_518:
!   _temp_516 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_519:
!   ReturnResult: _temp_516  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_520
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_521
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_522
	.word	-9
	.word	1
	.word	0
_Label_520:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_521:
	.ascii	"Pself\0"
	.align
_Label_522:
	.byte	'C'
	.ascii	"_temp_516\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_523
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_523:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_524
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_524:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_1675:
	push	r0
	sub	r1,1,r1
	bne	_Label_1675
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
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
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_526
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_527
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_528
	.word	-12
	.word	4
	.word	0
_Label_526:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_527:
	.ascii	"Pself\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1676:
	push	r0
	sub	r1,1,r1
	bne	_Label_1676
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
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
!   Retrieve Result: targetName=_temp_531  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_531 then goto _Label_530 else goto _Label_529
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_529
	jmp	_Label_530
_Label_529:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_532 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_530:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
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
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_533 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
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
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_534
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_535
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_536
	.word	12
	.word	4
	.word	_Label_537
	.word	-16
	.word	4
	.word	_Label_538
	.word	-20
	.word	4
	.word	_Label_539
	.word	-9
	.word	1
	.word	_Label_540
	.word	-24
	.word	4
	.word	0
_Label_534:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_535:
	.ascii	"Pself\0"
	.align
_Label_536:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_539:
	.byte	'C'
	.ascii	"_temp_531\0"
	.align
_Label_540:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_1677:
	push	r0
	sub	r1,1,r1
	bne	_Label_1677
	mov	402,r13		! source line 402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
	mov	406,r13		! source line 406
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
!   Retrieve Result: targetName=_temp_543  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_543 then goto _Label_542 else goto _Label_541
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_541
	jmp	_Label_542
_Label_541:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_544 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_544  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	407,r13		! source line 407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_542:
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_545 = &waitingThreads
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
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_547		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_547
!	jmp	_Label_546
_Label_546:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_548 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_548 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_549 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
_Label_547:
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_550
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_551
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_552
	.word	12
	.word	4
	.word	_Label_553
	.word	-16
	.word	4
	.word	_Label_554
	.word	-20
	.word	4
	.word	_Label_555
	.word	-24
	.word	4
	.word	_Label_556
	.word	-28
	.word	4
	.word	_Label_557
	.word	-9
	.word	1
	.word	_Label_558
	.word	-32
	.word	4
	.word	_Label_559
	.word	-36
	.word	4
	.word	0
_Label_550:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_551:
	.ascii	"Pself\0"
	.align
_Label_552:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_557:
	.byte	'C'
	.ascii	"_temp_543\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_559:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1678:
	push	r0
	sub	r1,1,r1
	bne	_Label_1678
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
	mov	424,r13		! source line 424
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
!   Retrieve Result: targetName=_temp_562  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_562 then goto _Label_561 else goto _Label_560
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_560
	jmp	_Label_561
_Label_560:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_563 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_563  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	425,r13		! source line 425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_561:
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0WH",r10
_Label_564:
!	jmp	_Label_565
_Label_565:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_567 = &waitingThreads
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
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_568
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_568
	jmp	_Label_569
_Label_568:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_566
! END IF...
_Label_569:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_570 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_570 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_571 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
	jmp	_Label_564
_Label_566:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_572
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_573
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_574
	.word	12
	.word	4
	.word	_Label_575
	.word	-16
	.word	4
	.word	_Label_576
	.word	-20
	.word	4
	.word	_Label_577
	.word	-24
	.word	4
	.word	_Label_578
	.word	-28
	.word	4
	.word	_Label_579
	.word	-9
	.word	1
	.word	_Label_580
	.word	-32
	.word	4
	.word	_Label_581
	.word	-36
	.word	4
	.word	0
_Label_572:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_573:
	.ascii	"Pself\0"
	.align
_Label_574:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_579:
	.byte	'C'
	.ascii	"_temp_562\0"
	.align
_Label_580:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_581:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_582
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_582:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_583
	.word	_sourceFileName
	.word	164		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_583:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1679:
	push	r0
	sub	r1,1,r1
	bne	_Label_1679
	mov	447,r13		! source line 447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   _temp_584 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_584) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_584 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_585 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_585 [0 ] into _temp_586
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_586 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_587 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_587 [999 ] into _temp_588
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_588 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_589 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_589 [999 ] into _temp_590
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_590		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_591 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_593 = &_temp_592
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_593 = _temp_593 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_595:
!   Data Move: *_temp_593 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_593 = _temp_593 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_594 = _temp_594 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_594) then goto _Label_595
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_595
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_596 = &_temp_592
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1680
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1680:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_591 = *_temp_596  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1681:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1681
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_597 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_599 = &_temp_598
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_599 = _temp_599 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_601:
!   Data Move: *_temp_599 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_599 = _temp_599 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_600 = _temp_600 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_600) then goto _Label_601
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_601
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_602 = &_temp_598
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1682
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1682:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_597 = *_temp_602  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1683:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1683
! RETURN STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_603
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_605
	.word	12
	.word	4
	.word	_Label_606
	.word	-12
	.word	4
	.word	_Label_607
	.word	-16
	.word	4
	.word	_Label_608
	.word	-20
	.word	4
	.word	_Label_609
	.word	-84
	.word	64
	.word	_Label_610
	.word	-88
	.word	4
	.word	_Label_611
	.word	-92
	.word	4
	.word	_Label_612
	.word	-96
	.word	4
	.word	_Label_613
	.word	-100
	.word	4
	.word	_Label_614
	.word	-156
	.word	56
	.word	_Label_615
	.word	-160
	.word	4
	.word	_Label_616
	.word	-164
	.word	4
	.word	_Label_617
	.word	-168
	.word	4
	.word	_Label_618
	.word	-172
	.word	4
	.word	_Label_619
	.word	-176
	.word	4
	.word	_Label_620
	.word	-180
	.word	4
	.word	_Label_621
	.word	-184
	.word	4
	.word	_Label_622
	.word	-188
	.word	4
	.word	0
_Label_603:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_604:
	.ascii	"Pself\0"
	.align
_Label_605:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1684:
	push	r0
	sub	r1,1,r1
	bne	_Label_1684
	mov	466,r13		! source line 466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_623  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_625 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_624  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_626
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_627
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_628
	.word	12
	.word	4
	.word	_Label_629
	.word	16
	.word	4
	.word	_Label_630
	.word	-12
	.word	4
	.word	_Label_631
	.word	-16
	.word	4
	.word	_Label_632
	.word	-20
	.word	4
	.word	_Label_633
	.word	-24
	.word	4
	.word	_Label_634
	.word	-28
	.word	4
	.word	0
_Label_626:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_627:
	.ascii	"Pself\0"
	.align
_Label_628:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_629:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_633:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_634:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1685:
	push	r0
	sub	r1,1,r1
	bne	_Label_1685
	mov	490,r13		! source line 490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_637 == _P_Kernel_currentThread then goto _Label_636		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_636
!	jmp	_Label_635
_Label_635:
! THEN...
	mov	507,r13		! source line 507
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_638 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_638  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	507,r13		! source line 507
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_636:
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0AS",r10
	mov	513,r13		! source line 513
	mov	"\0\0SE",r10
!   _temp_639 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_641		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_641
!	jmp	_Label_640
_Label_640:
! THEN...
	mov	518,r13		! source line 518
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_643		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_643
!	jmp	_Label_642
_Label_642:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_644 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_644  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	519,r13		! source line 519
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_643:
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_646 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_645  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	523,r13		! source line 523
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_641:
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_647
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_648
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_649
	.word	-12
	.word	4
	.word	_Label_650
	.word	-16
	.word	4
	.word	_Label_651
	.word	-20
	.word	4
	.word	_Label_652
	.word	-24
	.word	4
	.word	_Label_653
	.word	-28
	.word	4
	.word	_Label_654
	.word	-32
	.word	4
	.word	_Label_655
	.word	-36
	.word	4
	.word	_Label_656
	.word	-40
	.word	4
	.word	_Label_657
	.word	-44
	.word	4
	.word	0
_Label_647:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_648:
	.ascii	"Pself\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_655:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_656:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_657:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1686:
	push	r0
	sub	r1,1,r1
	bne	_Label_1686
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_659		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_659
!	jmp	_Label_658
_Label_658:
! THEN...
	mov	543,r13		! source line 543
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_660 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_660  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	543,r13		! source line 543
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_659:
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_663 == _P_Kernel_currentThread then goto _Label_662		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_662
!	jmp	_Label_661
_Label_661:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_664 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_664  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	547,r13		! source line 547
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_662:
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
	mov	553,r13		! source line 553
	mov	"\0\0SE",r10
!   _temp_665 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_666
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_666
	jmp	_Label_667
_Label_666:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_668 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_668  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	555,r13		! source line 555
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_667:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	557,r13		! source line 557
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_669
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_670
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_671
	.word	-12
	.word	4
	.word	_Label_672
	.word	-16
	.word	4
	.word	_Label_673
	.word	-20
	.word	4
	.word	_Label_674
	.word	-24
	.word	4
	.word	_Label_675
	.word	-28
	.word	4
	.word	_Label_676
	.word	-32
	.word	4
	.word	0
_Label_669:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_670:
	.ascii	"Pself\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_676:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1687:
	push	r0
	sub	r1,1,r1
	bne	_Label_1687
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0IF",r10
!   _temp_680 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_680 [0 ] into _temp_681
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_679 = *_temp_681  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_679 == 606348324 then goto _Label_678		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_678
!	jmp	_Label_677
_Label_677:
! THEN...
	mov	569,r13		! source line 569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_682 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_682  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	569,r13		! source line 569
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_683
_Label_678:
! ELSE...
	mov	570,r13		! source line 570
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_687 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_687 [999 ] into _temp_688
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_686 = *_temp_688  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_686 == 606348324 then goto _Label_685		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_685
!	jmp	_Label_684
_Label_684:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_689 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	571,r13		! source line 571
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_685:
! END IF...
_Label_683:
! RETURN STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_690
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_692
	.word	-12
	.word	4
	.word	_Label_693
	.word	-16
	.word	4
	.word	_Label_694
	.word	-20
	.word	4
	.word	_Label_695
	.word	-24
	.word	4
	.word	_Label_696
	.word	-28
	.word	4
	.word	_Label_697
	.word	-32
	.word	4
	.word	_Label_698
	.word	-36
	.word	4
	.word	_Label_699
	.word	-40
	.word	4
	.word	0
_Label_690:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_691:
	.ascii	"Pself\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1688:
	push	r0
	sub	r1,1,r1
	bne	_Label_1688
	mov	577,r13		! source line 577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	583,r13		! source line 583
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_700 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_701 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_703 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_704 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_709 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_710 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_709  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_705:
!   Perform the FOR-LOOP termination test
!   if i > _temp_710 then goto _Label_708		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_708
_Label_706:
	mov	590,r13		! source line 590
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_711 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_712 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_713 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_715 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_715 [i ] into _temp_716
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_714 = *_temp_716  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_717 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_719 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_719 [i ] into _temp_720
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_718 = *_temp_720  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_721 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_721  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_707:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_705
! END FOR
_Label_708:
! CALL STATEMENT...
!   _temp_722 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-116]
!   _temp_723 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_722  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_723  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_724 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-108]
!   _temp_726 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_726 [0 ] into _temp_727
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_725 = _temp_727		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_725  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	601,r13		! source line 601
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_730
	cmp	r1,2
	be	_Label_731
	cmp	r1,3
	be	_Label_732
	cmp	r1,4
	be	_Label_733
	cmp	r1,5
	be	_Label_734
	jmp	_Label_728
! CASE 1...
_Label_730:
! CALL STATEMENT...
!   _temp_735 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0BR",r10
	jmp	_Label_729
! CASE 2...
_Label_731:
! CALL STATEMENT...
!   _temp_736 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0BR",r10
	jmp	_Label_729
! CASE 3...
_Label_732:
! CALL STATEMENT...
!   _temp_737 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0BR",r10
	jmp	_Label_729
! CASE 4...
_Label_733:
! CALL STATEMENT...
!   _temp_738 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_729
! CASE 5...
_Label_734:
! CALL STATEMENT...
!   _temp_739 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0BR",r10
	jmp	_Label_729
! DEFAULT CASE...
_Label_728:
! CALL STATEMENT...
!   _temp_740 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	618,r13		! source line 618
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_729:
! CALL STATEMENT...
!   _temp_741 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_742 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_747 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_748 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_747  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_743:
!   Perform the FOR-LOOP termination test
!   if i > _temp_748 then goto _Label_746		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_746
_Label_744:
	mov	624,r13		! source line 624
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_749 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_750 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_751 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_753 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_753 [i ] into _temp_754
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_752 = *_temp_754  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_755 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_757 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_757 [i ] into _temp_758
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_756 = *_temp_758  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_759 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_745:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_743
! END FOR
_Label_746:
! ASSIGNMENT STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_760
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_761
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_762
	.word	-12
	.word	4
	.word	_Label_763
	.word	-16
	.word	4
	.word	_Label_764
	.word	-20
	.word	4
	.word	_Label_765
	.word	-24
	.word	4
	.word	_Label_766
	.word	-28
	.word	4
	.word	_Label_767
	.word	-32
	.word	4
	.word	_Label_768
	.word	-36
	.word	4
	.word	_Label_769
	.word	-40
	.word	4
	.word	_Label_770
	.word	-44
	.word	4
	.word	_Label_771
	.word	-48
	.word	4
	.word	_Label_772
	.word	-52
	.word	4
	.word	_Label_773
	.word	-56
	.word	4
	.word	_Label_774
	.word	-60
	.word	4
	.word	_Label_775
	.word	-64
	.word	4
	.word	_Label_776
	.word	-68
	.word	4
	.word	_Label_777
	.word	-72
	.word	4
	.word	_Label_778
	.word	-76
	.word	4
	.word	_Label_779
	.word	-80
	.word	4
	.word	_Label_780
	.word	-84
	.word	4
	.word	_Label_781
	.word	-88
	.word	4
	.word	_Label_782
	.word	-92
	.word	4
	.word	_Label_783
	.word	-96
	.word	4
	.word	_Label_784
	.word	-100
	.word	4
	.word	_Label_785
	.word	-104
	.word	4
	.word	_Label_786
	.word	-108
	.word	4
	.word	_Label_787
	.word	-112
	.word	4
	.word	_Label_788
	.word	-116
	.word	4
	.word	_Label_789
	.word	-120
	.word	4
	.word	_Label_790
	.word	-124
	.word	4
	.word	_Label_791
	.word	-128
	.word	4
	.word	_Label_792
	.word	-132
	.word	4
	.word	_Label_793
	.word	-136
	.word	4
	.word	_Label_794
	.word	-140
	.word	4
	.word	_Label_795
	.word	-144
	.word	4
	.word	_Label_796
	.word	-148
	.word	4
	.word	_Label_797
	.word	-152
	.word	4
	.word	_Label_798
	.word	-156
	.word	4
	.word	_Label_799
	.word	-160
	.word	4
	.word	_Label_800
	.word	-164
	.word	4
	.word	_Label_801
	.word	-168
	.word	4
	.word	_Label_802
	.word	-172
	.word	4
	.word	_Label_803
	.word	-176
	.word	4
	.word	_Label_804
	.word	-180
	.word	4
	.word	_Label_805
	.word	-184
	.word	4
	.word	_Label_806
	.word	-188
	.word	4
	.word	_Label_807
	.word	-192
	.word	4
	.word	_Label_808
	.word	-196
	.word	4
	.word	0
_Label_760:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_761:
	.ascii	"Pself\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_807:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_808:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_809
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_809:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_810
	.word	_sourceFileName
	.word	191		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_810:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11506,r1
_Label_1689:
	push	r0
	sub	r1,1,r1
	bne	_Label_1689
	mov	688,r13		! source line 688
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! i
!   i = 0		(4 bytes)
	mov	0,r1
	set	-46024,r2
	store	r1,[r14+r2]
! CALL STATEMENT...
!   _temp_811 = _StringConst_74
	set	_StringConst_74,r1
	set	-46020,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
	set	-46020,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0AS",r10
!   _temp_812 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_814 = &_temp_813
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-4368]
!   _temp_814 = _temp_814 + 4
	load	[r14+-4368],r1
	add	r1,4,r1
	store	r1,[r14+-4368]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_816 = zeros  (sizeInBytes=4164)
	add	r14,-4360,r4
	mov	1041,r3
_Label_1690:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1690
!   _temp_816 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4360]
	mov	10,r1
	store	r1,[r14+-4364]
_Label_818:
!   Data Move: *_temp_814 = _temp_816  (sizeInBytes=4164)
	add	r14,-4360,r5
	load	[r14+-4368],r4
	mov	1041,r3
_Label_1691:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1691
!   _temp_814 = _temp_814 + 4164
	load	[r14+-4368],r1
	add	r1,4164,r1
	store	r1,[r14+-4368]
!   _temp_815 = _temp_815 + -1
	load	[r14+-4364],r1
	add	r1,-1,r1
	store	r1,[r14+-4364]
!   if intNotZero (_temp_815) then goto _Label_818
	load	[r14+-4364],r1
	cmp	r1,r0
	bne	_Label_818
!   Initialize the array size...
	mov	10,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   _temp_819 = &_temp_813
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-192]
!   make sure array has size 10
	set	-46016,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1692
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1692:
!   make sure array has size 10
	load	[r14+-192],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_812 = *_temp_819  (sizeInBytes=41644)
	load	[r14+-192],r5
	set	-46016,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1693:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1693
! SEND STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0SE",r10
!   _temp_820 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-188]
!   _temp_821 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-184]
!   Move address of _temp_821 [0 ] into _temp_822
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_820  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0SE",r10
!   _temp_823 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-176]
!   _temp_824 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-172]
!   Move address of _temp_824 [1 ] into _temp_825
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_823  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_826 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-164]
!   _temp_827 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_827 [2 ] into _temp_828
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_826  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0SE",r10
!   _temp_829 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-152]
!   _temp_830 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_830 [3 ] into _temp_831
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_829  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0SE",r10
!   _temp_832 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-140]
!   _temp_833 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_833 [4 ] into _temp_834
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_832  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0SE",r10
!   _temp_835 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-128]
!   _temp_836 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_836 [5 ] into _temp_837
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_835  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0SE",r10
!   _temp_838 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-116]
!   _temp_839 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_839 [6 ] into _temp_840
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_838  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0SE",r10
!   _temp_841 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-104]
!   _temp_842 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_842 [7 ] into _temp_843
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_841  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0SE",r10
!   _temp_844 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-92]
!   _temp_845 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_845 [8 ] into _temp_846
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_844  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0SE",r10
!   _temp_847 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-80]
!   _temp_848 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_848 [9 ] into _temp_849
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_847  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_850 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	721,r13		! source line 721
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_856 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_857 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_856  (sizeInBytes=4)
	load	[r14+-60],r1
	set	-46024,r2
	store	r1,[r14+r2]
_Label_852:
!   Perform the FOR-LOOP termination test
!   if i > _temp_857 then goto _Label_855		
	set	-46024,r1
	load	[r14+r1],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_855
_Label_853:
	mov	725,r13		! source line 725
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0AS",r10
!   _temp_858 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_858 [i ] into _temp_859
!     make sure index expr is >= 0
	set	-46024,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   _temp_860 = _temp_859 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_860 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_862 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_862 [i ] into _temp_863
!     make sure index expr is >= 0
	set	-46024,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_861 = _temp_863		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_864 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_861  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_854:
!   i = i + 1
	set	-46024,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46024,r2
	store	r1,[r14+r2]
	jmp	_Label_852
! END FOR
_Label_855:
! ASSIGNMENT STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadCheck = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadCheck = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0SE",r10
!   _temp_866 = &threadCheck
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   threadFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0SE",r10
!   _temp_868 = &threadFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0RE",r10
	set	46028,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_869
	.word	4		! total size of parameters
	.word	46024		! frame size = 46024
	.word	_Label_870
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_871
	.word	-12
	.word	4
	.word	_Label_872
	.word	-16
	.word	4
	.word	_Label_873
	.word	-20
	.word	4
	.word	_Label_874
	.word	-24
	.word	4
	.word	_Label_875
	.word	-28
	.word	4
	.word	_Label_876
	.word	-32
	.word	4
	.word	_Label_877
	.word	-36
	.word	4
	.word	_Label_878
	.word	-40
	.word	4
	.word	_Label_879
	.word	-44
	.word	4
	.word	_Label_880
	.word	-48
	.word	4
	.word	_Label_881
	.word	-52
	.word	4
	.word	_Label_882
	.word	-56
	.word	4
	.word	_Label_883
	.word	-60
	.word	4
	.word	_Label_884
	.word	-64
	.word	4
	.word	_Label_885
	.word	-68
	.word	4
	.word	_Label_886
	.word	-72
	.word	4
	.word	_Label_887
	.word	-76
	.word	4
	.word	_Label_888
	.word	-80
	.word	4
	.word	_Label_889
	.word	-84
	.word	4
	.word	_Label_890
	.word	-88
	.word	4
	.word	_Label_891
	.word	-92
	.word	4
	.word	_Label_892
	.word	-96
	.word	4
	.word	_Label_893
	.word	-100
	.word	4
	.word	_Label_894
	.word	-104
	.word	4
	.word	_Label_895
	.word	-108
	.word	4
	.word	_Label_896
	.word	-112
	.word	4
	.word	_Label_897
	.word	-116
	.word	4
	.word	_Label_898
	.word	-120
	.word	4
	.word	_Label_899
	.word	-124
	.word	4
	.word	_Label_900
	.word	-128
	.word	4
	.word	_Label_901
	.word	-132
	.word	4
	.word	_Label_902
	.word	-136
	.word	4
	.word	_Label_903
	.word	-140
	.word	4
	.word	_Label_904
	.word	-144
	.word	4
	.word	_Label_905
	.word	-148
	.word	4
	.word	_Label_906
	.word	-152
	.word	4
	.word	_Label_907
	.word	-156
	.word	4
	.word	_Label_908
	.word	-160
	.word	4
	.word	_Label_909
	.word	-164
	.word	4
	.word	_Label_910
	.word	-168
	.word	4
	.word	_Label_911
	.word	-172
	.word	4
	.word	_Label_912
	.word	-176
	.word	4
	.word	_Label_913
	.word	-180
	.word	4
	.word	_Label_914
	.word	-184
	.word	4
	.word	_Label_915
	.word	-188
	.word	4
	.word	_Label_916
	.word	-192
	.word	4
	.word	_Label_917
	.word	-196
	.word	4
	.word	_Label_918
	.word	-4360
	.word	4164
	.word	_Label_919
	.word	-4364
	.word	4
	.word	_Label_920
	.word	-4368
	.word	4
	.word	_Label_921
	.word	-46012
	.word	41644
	.word	_Label_922
	.word	-46016
	.word	4
	.word	_Label_923
	.word	-46020
	.word	4
	.word	_Label_924
	.word	-46024
	.word	4
	.word	0
_Label_869:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_870:
	.ascii	"Pself\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_924:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_1694:
	push	r0
	sub	r1,1,r1
	bne	_Label_1694
	mov	741,r13		! source line 741
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	748,r13		! source line 748
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_925 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_925  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_930 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_931 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_930  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_926:
!   Perform the FOR-LOOP termination test
!   if i > _temp_931 then goto _Label_929		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_929
_Label_927:
	mov	750,r13		! source line 750
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_932 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_932  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	751,r13		! source line 751
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	752,r13		! source line 752
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_933 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_933  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	753,r13		! source line 753
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_935 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_935 [i ] into _temp_936
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_934 = _temp_936		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_934  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	754,r13		! source line 754
	mov	"\0\0CA",r10
	call	_function_136_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_928:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_926
! END FOR
_Label_929:
! CALL STATEMENT...
!   _temp_937 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_937  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	756,r13		! source line 756
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0SE",r10
!   _temp_938 = _function_135_PrintObjectAddr
	set	_function_135_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_939 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_938  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	759,r13		! source line 759
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_940
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_941
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_942
	.word	-12
	.word	4
	.word	_Label_943
	.word	-16
	.word	4
	.word	_Label_944
	.word	-20
	.word	4
	.word	_Label_945
	.word	-24
	.word	4
	.word	_Label_946
	.word	-28
	.word	4
	.word	_Label_947
	.word	-32
	.word	4
	.word	_Label_948
	.word	-36
	.word	4
	.word	_Label_949
	.word	-40
	.word	4
	.word	_Label_950
	.word	-44
	.word	4
	.word	_Label_951
	.word	-48
	.word	4
	.word	_Label_952
	.word	-52
	.word	4
	.word	_Label_953
	.word	-56
	.word	4
	.word	_Label_954
	.word	-60
	.word	4
	.word	0
_Label_940:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_941:
	.ascii	"Pself\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_953:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_954:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	13,r1
_Label_1695:
	push	r0
	sub	r1,1,r1
	bne	_Label_1695
	mov	764,r13		! source line 764
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0SE",r10
!   _temp_955 = &threadCheck
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0IF",r10
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_958 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-44]
!   Send message IsEmpty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_956 else goto _Label_957
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_957
	jmp	_Label_956
_Label_956:
! THEN...
	mov	776,r13		! source line 776
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0WH",r10
_Label_959:
!   if currThread == 0 then goto _Label_963		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_963
!   _temp_962 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_964
_Label_963:
!   _temp_962 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_964:
!   if _temp_962 then goto _Label_961 else goto _Label_960
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_960
	jmp	_Label_961
_Label_960:
	mov	776,r13		! source line 776
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0IF",r10
	mov	777,r13		! source line 777
	mov	"\0\0SE",r10
!   _temp_967 = &threadCheck
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message IsHeldByCurrentThread
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_965 else goto _Label_966
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_966
	jmp	_Label_965
_Label_965:
! THEN...
	mov	778,r13		! source line 778
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	778,r13		! source line 778
	mov	"\0\0AS",r10
	mov	778,r13		! source line 778
	mov	"\0\0SE",r10
!   _temp_968 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Remove
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=currThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! END IF...
_Label_966:
! IF STATEMENT...
	mov	781,r13		! source line 781
	mov	"\0\0IF",r10
!   if currThread == 0 then goto _Label_972		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_972
!   _temp_971 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_973
_Label_972:
!   _temp_971 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_973:
!   if _temp_971 then goto _Label_970 else goto _Label_969
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_969
	jmp	_Label_970
_Label_969:
! THEN...
	mov	783,r13		! source line 783
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0SE",r10
!   _temp_974 = &threadCheck
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_975 = &threadFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_974  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_970:
! END WHILE...
	jmp	_Label_959
_Label_961:
	jmp	_Label_976
_Label_957:
! ELSE...
	mov	788,r13		! source line 788
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0AS",r10
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_977 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=currThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! END IF...
_Label_976:
! ASSIGNMENT STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0AS",r10
!   if intIsZero (currThread) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_978 = currThread + 76
	load	[r14+-52],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_978 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0SE",r10
!   _temp_979 = &threadCheck
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	801,r13		! source line 801
	mov	"\0\0RE",r10
!   ReturnResult: currThread  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_980
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_981
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_982
	.word	-16
	.word	4
	.word	_Label_983
	.word	-20
	.word	4
	.word	_Label_984
	.word	-24
	.word	4
	.word	_Label_985
	.word	-28
	.word	4
	.word	_Label_986
	.word	-32
	.word	4
	.word	_Label_987
	.word	-9
	.word	1
	.word	_Label_988
	.word	-36
	.word	4
	.word	_Label_989
	.word	-40
	.word	4
	.word	_Label_990
	.word	-10
	.word	1
	.word	_Label_991
	.word	-44
	.word	4
	.word	_Label_992
	.word	-48
	.word	4
	.word	_Label_993
	.word	-52
	.word	4
	.word	0
_Label_980:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_981:
	.ascii	"Pself\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_987:
	.byte	'C'
	.ascii	"_temp_971\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_990:
	.byte	'C'
	.ascii	"_temp_962\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_993:
	.byte	'P'
	.ascii	"currThread\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_1696:
	push	r0
	sub	r1,1,r1
	bne	_Label_1696
	mov	806,r13		! source line 806
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0SE",r10
!   _temp_994 = &threadCheck
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_995 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_995 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0SE",r10
!   _temp_996 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   _temp_997 = &threadCheck
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_998 = &threadFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_997  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0SE",r10
!   _temp_999 = &threadCheck
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1000
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1001
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1002
	.word	12
	.word	4
	.word	_Label_1003
	.word	-12
	.word	4
	.word	_Label_1004
	.word	-16
	.word	4
	.word	_Label_1005
	.word	-20
	.word	4
	.word	_Label_1006
	.word	-24
	.word	4
	.word	_Label_1007
	.word	-28
	.word	4
	.word	_Label_1008
	.word	-32
	.word	4
	.word	0
_Label_1000:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1001:
	.ascii	"Pself\0"
	.align
_Label_1002:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1009
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1009:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1010
	.word	_sourceFileName
	.word	212		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1010:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1697:
	push	r0
	sub	r1,1,r1
	bne	_Label_1697
	mov	838,r13		! source line 838
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1698:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1698
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0SE",r10
!   _temp_1012 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1013
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1014
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1015
	.word	-12
	.word	4
	.word	_Label_1016
	.word	-16
	.word	4
	.word	0
_Label_1013:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1014:
	.ascii	"Pself\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_1699:
	push	r0
	sub	r1,1,r1
	bne	_Label_1699
	mov	852,r13		! source line 852
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1017) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0SE",r10
!   _temp_1018 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1019 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1019  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CA",r10
	call	_function_136_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1020
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1021
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1022
	.word	-12
	.word	4
	.word	_Label_1023
	.word	-16
	.word	4
	.word	_Label_1024
	.word	-20
	.word	4
	.word	0
_Label_1020:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1021:
	.ascii	"Pself\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1700:
	push	r0
	sub	r1,1,r1
	bne	_Label_1700
	mov	875,r13		! source line 875
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1025 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1027 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1028 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1028  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1030		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1030
!	jmp	_Label_1029
_Label_1029:
! THEN...
	mov	885,r13		! source line 885
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1031 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	885,r13		! source line 885
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1032
_Label_1030:
! ELSE...
	mov	886,r13		! source line 886
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1034		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1034
!	jmp	_Label_1033
_Label_1033:
! THEN...
	mov	887,r13		! source line 887
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1035 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1035  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	887,r13		! source line 887
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1036
_Label_1034:
! ELSE...
	mov	888,r13		! source line 888
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1038		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1038
!	jmp	_Label_1037
_Label_1037:
! THEN...
	mov	889,r13		! source line 889
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1039 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1039  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	889,r13		! source line 889
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1040
_Label_1038:
! ELSE...
	mov	891,r13		! source line 891
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1041 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	891,r13		! source line 891
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1040:
! END IF...
_Label_1036:
! END IF...
_Label_1032:
! CALL STATEMENT...
!   _temp_1042 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	893,r13		! source line 893
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	894,r13		! source line 894
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1043 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1043  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	895,r13		! source line 895
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	897,r13		! source line 897
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1044
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1045
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1046
	.word	-12
	.word	4
	.word	_Label_1047
	.word	-16
	.word	4
	.word	_Label_1048
	.word	-20
	.word	4
	.word	_Label_1049
	.word	-24
	.word	4
	.word	_Label_1050
	.word	-28
	.word	4
	.word	_Label_1051
	.word	-32
	.word	4
	.word	_Label_1052
	.word	-36
	.word	4
	.word	_Label_1053
	.word	-40
	.word	4
	.word	_Label_1054
	.word	-44
	.word	4
	.word	_Label_1055
	.word	-48
	.word	4
	.word	0
_Label_1044:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1045:
	.ascii	"Pself\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1056
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1056:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1057
	.word	_sourceFileName
	.word	232		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1057:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	908,r13		! source line 908
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1058
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1059
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_1058:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1059:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1701:
	push	r0
	sub	r1,1,r1
	bne	_Label_1701
	mov	918,r13		! source line 918
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1060 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1065 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1066 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1065  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1061:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1066 then goto _Label_1064		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1064
_Label_1062:
	mov	927,r13		! source line 927
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1067 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1068 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1068  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_1069 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1069 [i ] into _temp_1070
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1063:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1061
! END FOR
_Label_1064:
! CALL STATEMENT...
!   _temp_1071 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1071  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0SE",r10
!   _temp_1072 = _function_135_PrintObjectAddr
	set	_function_135_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1073 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1072  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1074
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1075
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1076
	.word	-12
	.word	4
	.word	_Label_1077
	.word	-16
	.word	4
	.word	_Label_1078
	.word	-20
	.word	4
	.word	_Label_1079
	.word	-24
	.word	4
	.word	_Label_1080
	.word	-28
	.word	4
	.word	_Label_1081
	.word	-32
	.word	4
	.word	_Label_1082
	.word	-36
	.word	4
	.word	_Label_1083
	.word	-40
	.word	4
	.word	_Label_1084
	.word	-44
	.word	4
	.word	_Label_1085
	.word	-48
	.word	4
	.word	_Label_1086
	.word	-52
	.word	4
	.word	_Label_1087
	.word	-56
	.word	4
	.word	0
_Label_1074:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1075:
	.ascii	"Pself\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1086:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1087:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1702:
	push	r0
	sub	r1,1,r1
	bne	_Label_1702
	mov	941,r13		! source line 941
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1088 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1088  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1093 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1094 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1093  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1089:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1094 then goto _Label_1092		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1092
_Label_1090:
	mov	950,r13		! source line 950
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1095 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1095  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1096 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1096 [i ] into _temp_1097
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1091:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1089
! END FOR
_Label_1092:
! CALL STATEMENT...
!   _temp_1098 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1098  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1099 = _function_135_PrintObjectAddr
	set	_function_135_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1100 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1099  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	957,r13		! source line 957
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	958,r13		! source line 958
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1101
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1102
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1103
	.word	-12
	.word	4
	.word	_Label_1104
	.word	-16
	.word	4
	.word	_Label_1105
	.word	-20
	.word	4
	.word	_Label_1106
	.word	-24
	.word	4
	.word	_Label_1107
	.word	-28
	.word	4
	.word	_Label_1108
	.word	-32
	.word	4
	.word	_Label_1109
	.word	-36
	.word	4
	.word	_Label_1110
	.word	-40
	.word	4
	.word	_Label_1111
	.word	-44
	.word	4
	.word	_Label_1112
	.word	-48
	.word	4
	.word	_Label_1113
	.word	-52
	.word	4
	.word	0
_Label_1101:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1102:
	.ascii	"Pself\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1112:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1113:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	963,r13		! source line 963
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1114
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1115
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_1114:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1115:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	974,r13		! source line 974
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1116
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1117
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1118
	.word	12
	.word	4
	.word	0
_Label_1116:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1117:
	.ascii	"Pself\0"
	.align
_Label_1118:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1119
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1119:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1120
	.word	_sourceFileName
	.word	255		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1120:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_1703:
	push	r0
	sub	r1,1,r1
	bne	_Label_1703
	mov	1012,r13		! source line 1012
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1121 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1121  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1018,r13		! source line 1018
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1020,r13		! source line 1020
	mov	"\0\0SE",r10
!   _temp_1123 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_1125 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0SE",r10
!   _temp_1127 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1132 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1133 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1132  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1128:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1133 then goto _Label_1131		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1131
_Label_1129:
	mov	1031,r13		! source line 1031
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1034,r13		! source line 1034
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1136 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1136) then goto _Label_1135
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1135
!	jmp	_Label_1134
_Label_1134:
! THEN...
	mov	1035,r13		! source line 1035
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1137 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1035,r13		! source line 1035
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1135:
!   Increment the FOR-LOOP index variable and jump back
_Label_1130:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1128
! END FOR
_Label_1131:
! RETURN STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1138
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1139
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1140
	.word	-12
	.word	4
	.word	_Label_1141
	.word	-16
	.word	4
	.word	_Label_1142
	.word	-20
	.word	4
	.word	_Label_1143
	.word	-24
	.word	4
	.word	_Label_1144
	.word	-28
	.word	4
	.word	_Label_1145
	.word	-32
	.word	4
	.word	_Label_1146
	.word	-36
	.word	4
	.word	_Label_1147
	.word	-40
	.word	4
	.word	_Label_1148
	.word	-44
	.word	4
	.word	_Label_1149
	.word	-48
	.word	4
	.word	_Label_1150
	.word	-52
	.word	4
	.word	_Label_1151
	.word	-56
	.word	4
	.word	0
_Label_1138:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1139:
	.ascii	"Pself\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1151:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1704:
	push	r0
	sub	r1,1,r1
	bne	_Label_1704
	mov	1042,r13		! source line 1042
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0SE",r10
!   _temp_1152 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1153 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1153  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1047,r13		! source line 1047
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1154 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1154  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1048,r13		! source line 1048
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1155 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1155  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1049,r13		! source line 1049
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0SE",r10
!   _temp_1156 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   _temp_1157 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1158
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1159
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1160
	.word	-12
	.word	4
	.word	_Label_1161
	.word	-16
	.word	4
	.word	_Label_1162
	.word	-20
	.word	4
	.word	_Label_1163
	.word	-24
	.word	4
	.word	_Label_1164
	.word	-28
	.word	4
	.word	_Label_1165
	.word	-32
	.word	4
	.word	0
_Label_1158:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1159:
	.ascii	"Pself\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_1705:
	push	r0
	sub	r1,1,r1
	bne	_Label_1705
	mov	1056,r13		! source line 1056
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1166 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0WH",r10
_Label_1167:
!   if numberFreeFrames >= 1 then goto _Label_1169		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1169
!	jmp	_Label_1168
_Label_1168:
	mov	1067,r13		! source line 1067
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0SE",r10
!   _temp_1170 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1171 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1170  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1167
_Label_1169:
! ASSIGNMENT STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0AS",r10
	mov	1072,r13		! source line 1072
	mov	"\0\0SE",r10
!   _temp_1172 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0SE",r10
!   _temp_1173 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0AS",r10
!   _temp_1174 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1174		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1081,r13		! source line 1081
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1175
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1176
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1177
	.word	-12
	.word	4
	.word	_Label_1178
	.word	-16
	.word	4
	.word	_Label_1179
	.word	-20
	.word	4
	.word	_Label_1180
	.word	-24
	.word	4
	.word	_Label_1181
	.word	-28
	.word	4
	.word	_Label_1182
	.word	-32
	.word	4
	.word	_Label_1183
	.word	-36
	.word	4
	.word	_Label_1184
	.word	-40
	.word	4
	.word	0
_Label_1175:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1176:
	.ascii	"Pself\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1183:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1184:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	1086,r13		! source line 1086
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1185
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1186
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1187
	.word	12
	.word	4
	.word	_Label_1188
	.word	16
	.word	4
	.word	0
_Label_1185:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1186:
	.ascii	"Pself\0"
	.align
_Label_1187:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1188:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	1092,r13		! source line 1092
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1189
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1190
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1191
	.word	12
	.word	4
	.word	0
_Label_1189:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1190:
	.ascii	"Pself\0"
	.align
_Label_1191:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1192
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1192:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1193
	.word	_sourceFileName
	.word	274		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1193:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1706:
	push	r0
	sub	r1,1,r1
	bne	_Label_1706
	mov	1104,r13		! source line 1104
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1108,r13		! source line 1108
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0AS",r10
!   _temp_1194 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1196 = &_temp_1195
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1196 = _temp_1196 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1198:
!   Data Move: *_temp_1196 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1196 = _temp_1196 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1197 = _temp_1197 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1197) then goto _Label_1198
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1198
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1199 = &_temp_1195
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1707
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1707:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1194 = *_temp_1199  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1708:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1708
! RETURN STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1200
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1201
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1202
	.word	-12
	.word	4
	.word	_Label_1203
	.word	-16
	.word	4
	.word	_Label_1204
	.word	-20
	.word	4
	.word	_Label_1205
	.word	-104
	.word	84
	.word	_Label_1206
	.word	-108
	.word	4
	.word	0
_Label_1200:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1201:
	.ascii	"Pself\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1709:
	push	r0
	sub	r1,1,r1
	bne	_Label_1709
	mov	1114,r13		! source line 1114
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1207 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1207  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1119,r13		! source line 1119
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1208 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1208  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1120,r13		! source line 1120
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1213 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1214 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1213  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1209:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1214 then goto _Label_1212		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1212
_Label_1210:
	mov	1121,r13		! source line 1121
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1215 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1215  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1122,r13		! source line 1122
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1217 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1217 [i ] into _temp_1218
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1216 = _temp_1218		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1219 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1124,r13		! source line 1124
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1221 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1221 [i ] into _temp_1222
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1220 = *_temp_1222  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1223 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1223  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1126,r13		! source line 1126
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1224 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1224  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1225 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1225  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1128,r13		! source line 1128
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1227) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1226  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1226  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1129,r13		! source line 1129
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1228 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1130,r13		! source line 1130
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0IF",r10
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1232) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1231  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1231) then goto _Label_1230
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1230
!	jmp	_Label_1229
_Label_1229:
! THEN...
	mov	1132,r13		! source line 1132
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1234) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1233  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1233  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1132,r13		! source line 1132
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1235
_Label_1230:
! ELSE...
	mov	1134,r13		! source line 1134
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1236 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1236  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1134,r13		! source line 1134
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1235:
! CALL STATEMENT...
!   _temp_1237 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1237  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1136,r13		! source line 1136
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0IF",r10
	mov	1137,r13		! source line 1137
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1240) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1238 else goto _Label_1239
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1239
	jmp	_Label_1238
_Label_1238:
! THEN...
	mov	1138,r13		! source line 1138
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1241 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1241  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1138,r13		! source line 1138
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1242
_Label_1239:
! ELSE...
	mov	1140,r13		! source line 1140
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1243 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1243  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1140,r13		! source line 1140
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1242:
! CALL STATEMENT...
!   _temp_1244 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1244  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1142,r13		! source line 1142
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0IF",r10
	mov	1143,r13		! source line 1143
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1247) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1245 else goto _Label_1246
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1246
	jmp	_Label_1245
_Label_1245:
! THEN...
	mov	1144,r13		! source line 1144
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1248 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1248  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1144,r13		! source line 1144
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1249
_Label_1246:
! ELSE...
	mov	1146,r13		! source line 1146
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1250 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1250  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1146,r13		! source line 1146
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1249:
! CALL STATEMENT...
!   _temp_1251 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1251  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1148,r13		! source line 1148
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0IF",r10
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1254) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1252 else goto _Label_1253
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1253
	jmp	_Label_1252
_Label_1252:
! THEN...
	mov	1150,r13		! source line 1150
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1255 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1255  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1150,r13		! source line 1150
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1256
_Label_1253:
! ELSE...
	mov	1152,r13		! source line 1152
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1257 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1257  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1152,r13		! source line 1152
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1256:
! CALL STATEMENT...
!   _temp_1258 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1258  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1154,r13		! source line 1154
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0IF",r10
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1261) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1259 else goto _Label_1260
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1260
	jmp	_Label_1259
_Label_1259:
! THEN...
	mov	1156,r13		! source line 1156
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1262 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1262  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1156,r13		! source line 1156
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1263
_Label_1260:
! ELSE...
	mov	1158,r13		! source line 1158
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1264 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1264  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1158,r13		! source line 1158
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1263:
! CALL STATEMENT...
!   Call the function
	mov	1160,r13		! source line 1160
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1211:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1209
! END FOR
_Label_1212:
! RETURN STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1265
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1266
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1267
	.word	-12
	.word	4
	.word	_Label_1268
	.word	-16
	.word	4
	.word	_Label_1269
	.word	-20
	.word	4
	.word	_Label_1270
	.word	-24
	.word	4
	.word	_Label_1271
	.word	-28
	.word	4
	.word	_Label_1272
	.word	-32
	.word	4
	.word	_Label_1273
	.word	-36
	.word	4
	.word	_Label_1274
	.word	-40
	.word	4
	.word	_Label_1275
	.word	-44
	.word	4
	.word	_Label_1276
	.word	-48
	.word	4
	.word	_Label_1277
	.word	-52
	.word	4
	.word	_Label_1278
	.word	-56
	.word	4
	.word	_Label_1279
	.word	-60
	.word	4
	.word	_Label_1280
	.word	-64
	.word	4
	.word	_Label_1281
	.word	-68
	.word	4
	.word	_Label_1282
	.word	-72
	.word	4
	.word	_Label_1283
	.word	-76
	.word	4
	.word	_Label_1284
	.word	-80
	.word	4
	.word	_Label_1285
	.word	-84
	.word	4
	.word	_Label_1286
	.word	-88
	.word	4
	.word	_Label_1287
	.word	-92
	.word	4
	.word	_Label_1288
	.word	-96
	.word	4
	.word	_Label_1289
	.word	-100
	.word	4
	.word	_Label_1290
	.word	-104
	.word	4
	.word	_Label_1291
	.word	-108
	.word	4
	.word	_Label_1292
	.word	-112
	.word	4
	.word	_Label_1293
	.word	-116
	.word	4
	.word	_Label_1294
	.word	-120
	.word	4
	.word	_Label_1295
	.word	-124
	.word	4
	.word	_Label_1296
	.word	-128
	.word	4
	.word	_Label_1297
	.word	-132
	.word	4
	.word	_Label_1298
	.word	-136
	.word	4
	.word	_Label_1299
	.word	-140
	.word	4
	.word	_Label_1300
	.word	-144
	.word	4
	.word	_Label_1301
	.word	-148
	.word	4
	.word	_Label_1302
	.word	-152
	.word	4
	.word	_Label_1303
	.word	-156
	.word	4
	.word	_Label_1304
	.word	-160
	.word	4
	.word	_Label_1305
	.word	-164
	.word	4
	.word	_Label_1306
	.word	-168
	.word	4
	.word	0
_Label_1265:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1266:
	.ascii	"Pself\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1306:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1710:
	push	r0
	sub	r1,1,r1
	bne	_Label_1710
	mov	1166,r13		! source line 1166
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0RE",r10
!   _temp_1309 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1309 [entry ] into _temp_1310
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1308 = *_temp_1310  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1307 = _temp_1308 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1307  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1311
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1312
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1313
	.word	12
	.word	4
	.word	_Label_1314
	.word	-12
	.word	4
	.word	_Label_1315
	.word	-16
	.word	4
	.word	_Label_1316
	.word	-20
	.word	4
	.word	_Label_1317
	.word	-24
	.word	4
	.word	0
_Label_1311:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1312:
	.ascii	"Pself\0"
	.align
_Label_1313:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1711:
	push	r0
	sub	r1,1,r1
	bne	_Label_1711
	mov	1176,r13		! source line 1176
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0RE",r10
!   _temp_1320 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1320 [entry ] into _temp_1321
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1319 = *_temp_1321  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1318 = _temp_1319 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1318  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1322
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1323
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1324
	.word	12
	.word	4
	.word	_Label_1325
	.word	-12
	.word	4
	.word	_Label_1326
	.word	-16
	.word	4
	.word	_Label_1327
	.word	-20
	.word	4
	.word	_Label_1328
	.word	-24
	.word	4
	.word	0
_Label_1322:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1323:
	.ascii	"Pself\0"
	.align
_Label_1324:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1712:
	push	r0
	sub	r1,1,r1
	bne	_Label_1712
	mov	1185,r13		! source line 1185
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0AS",r10
!   _temp_1329 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1329 [entry ] into _temp_1330
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1334 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1334 [entry ] into _temp_1335
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1333 = *_temp_1335  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1332 = _temp_1333 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1331 = _temp_1332 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1330 = _temp_1331  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1336
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1337
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1338
	.word	12
	.word	4
	.word	_Label_1339
	.word	16
	.word	4
	.word	_Label_1340
	.word	-12
	.word	4
	.word	_Label_1341
	.word	-16
	.word	4
	.word	_Label_1342
	.word	-20
	.word	4
	.word	_Label_1343
	.word	-24
	.word	4
	.word	_Label_1344
	.word	-28
	.word	4
	.word	_Label_1345
	.word	-32
	.word	4
	.word	_Label_1346
	.word	-36
	.word	4
	.word	0
_Label_1336:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1337:
	.ascii	"Pself\0"
	.align
_Label_1338:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1339:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1713:
	push	r0
	sub	r1,1,r1
	bne	_Label_1713
	mov	1195,r13		! source line 1195
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1199,r13		! source line 1199
	mov	"\0\0RE",r10
!   _temp_1350 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1350 [entry ] into _temp_1351
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1349 = *_temp_1351  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1348 = _temp_1349 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1348) then goto _Label_1352
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1352
!   _temp_1347 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1353
_Label_1352:
!   _temp_1347 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1353:
!   ReturnResult: _temp_1347  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1354
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1355
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1356
	.word	12
	.word	4
	.word	_Label_1357
	.word	-16
	.word	4
	.word	_Label_1358
	.word	-20
	.word	4
	.word	_Label_1359
	.word	-24
	.word	4
	.word	_Label_1360
	.word	-28
	.word	4
	.word	_Label_1361
	.word	-9
	.word	1
	.word	0
_Label_1354:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1355:
	.ascii	"Pself\0"
	.align
_Label_1356:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1361:
	.byte	'C'
	.ascii	"_temp_1347\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1714:
	push	r0
	sub	r1,1,r1
	bne	_Label_1714
	mov	1204,r13		! source line 1204
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0RE",r10
!   _temp_1365 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1365 [entry ] into _temp_1366
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1364 = *_temp_1366  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1363 = _temp_1364 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1363) then goto _Label_1367
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1367
!   _temp_1362 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1368
_Label_1367:
!   _temp_1362 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1368:
!   ReturnResult: _temp_1362  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1369
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1370
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1371
	.word	12
	.word	4
	.word	_Label_1372
	.word	-16
	.word	4
	.word	_Label_1373
	.word	-20
	.word	4
	.word	_Label_1374
	.word	-24
	.word	4
	.word	_Label_1375
	.word	-28
	.word	4
	.word	_Label_1376
	.word	-9
	.word	1
	.word	0
_Label_1369:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1370:
	.ascii	"Pself\0"
	.align
_Label_1371:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1376:
	.byte	'C'
	.ascii	"_temp_1362\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1715:
	push	r0
	sub	r1,1,r1
	bne	_Label_1715
	mov	1213,r13		! source line 1213
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0RE",r10
!   _temp_1380 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1380 [entry ] into _temp_1381
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1379 = *_temp_1381  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1378 = _temp_1379 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1378) then goto _Label_1382
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1382
!   _temp_1377 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1383
_Label_1382:
!   _temp_1377 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1383:
!   ReturnResult: _temp_1377  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1384
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1385
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1386
	.word	12
	.word	4
	.word	_Label_1387
	.word	-16
	.word	4
	.word	_Label_1388
	.word	-20
	.word	4
	.word	_Label_1389
	.word	-24
	.word	4
	.word	_Label_1390
	.word	-28
	.word	4
	.word	_Label_1391
	.word	-9
	.word	1
	.word	0
_Label_1384:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1385:
	.ascii	"Pself\0"
	.align
_Label_1386:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1391:
	.byte	'C'
	.ascii	"_temp_1377\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1716:
	push	r0
	sub	r1,1,r1
	bne	_Label_1716
	mov	1222,r13		! source line 1222
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0RE",r10
!   _temp_1395 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1395 [entry ] into _temp_1396
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1394 = *_temp_1396  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1393 = _temp_1394 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1393) then goto _Label_1397
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1397
!   _temp_1392 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1398
_Label_1397:
!   _temp_1392 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1398:
!   ReturnResult: _temp_1392  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1399
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1400
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1401
	.word	12
	.word	4
	.word	_Label_1402
	.word	-16
	.word	4
	.word	_Label_1403
	.word	-20
	.word	4
	.word	_Label_1404
	.word	-24
	.word	4
	.word	_Label_1405
	.word	-28
	.word	4
	.word	_Label_1406
	.word	-9
	.word	1
	.word	0
_Label_1399:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1400:
	.ascii	"Pself\0"
	.align
_Label_1401:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1406:
	.byte	'C'
	.ascii	"_temp_1392\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1717:
	push	r0
	sub	r1,1,r1
	bne	_Label_1717
	mov	1231,r13		! source line 1231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0AS",r10
!   _temp_1407 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1407 [entry ] into _temp_1408
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1411 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1411 [entry ] into _temp_1412
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1410 = *_temp_1412  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1409 = _temp_1410 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1408 = _temp_1409  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1413
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1414
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1415
	.word	12
	.word	4
	.word	_Label_1416
	.word	-12
	.word	4
	.word	_Label_1417
	.word	-16
	.word	4
	.word	_Label_1418
	.word	-20
	.word	4
	.word	_Label_1419
	.word	-24
	.word	4
	.word	_Label_1420
	.word	-28
	.word	4
	.word	_Label_1421
	.word	-32
	.word	4
	.word	0
_Label_1413:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1414:
	.ascii	"Pself\0"
	.align
_Label_1415:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1718:
	push	r0
	sub	r1,1,r1
	bne	_Label_1718
	mov	1240,r13		! source line 1240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0AS",r10
!   _temp_1422 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1422 [entry ] into _temp_1423
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1426 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1426 [entry ] into _temp_1427
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1425 = *_temp_1427  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1424 = _temp_1425 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1423 = _temp_1424  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1428
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1429
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1430
	.word	12
	.word	4
	.word	_Label_1431
	.word	-12
	.word	4
	.word	_Label_1432
	.word	-16
	.word	4
	.word	_Label_1433
	.word	-20
	.word	4
	.word	_Label_1434
	.word	-24
	.word	4
	.word	_Label_1435
	.word	-28
	.word	4
	.word	_Label_1436
	.word	-32
	.word	4
	.word	0
_Label_1428:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1429:
	.ascii	"Pself\0"
	.align
_Label_1430:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1719:
	push	r0
	sub	r1,1,r1
	bne	_Label_1719
	mov	1249,r13		! source line 1249
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0AS",r10
!   _temp_1437 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1437 [entry ] into _temp_1438
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1441 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1441 [entry ] into _temp_1442
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1440 = *_temp_1442  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1439 = _temp_1440 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1438 = _temp_1439  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1443
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1444
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1445
	.word	12
	.word	4
	.word	_Label_1446
	.word	-12
	.word	4
	.word	_Label_1447
	.word	-16
	.word	4
	.word	_Label_1448
	.word	-20
	.word	4
	.word	_Label_1449
	.word	-24
	.word	4
	.word	_Label_1450
	.word	-28
	.word	4
	.word	_Label_1451
	.word	-32
	.word	4
	.word	0
_Label_1443:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1444:
	.ascii	"Pself\0"
	.align
_Label_1445:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1720:
	push	r0
	sub	r1,1,r1
	bne	_Label_1720
	mov	1258,r13		! source line 1258
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0AS",r10
!   _temp_1452 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1452 [entry ] into _temp_1453
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1456 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1456 [entry ] into _temp_1457
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1455 = *_temp_1457  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1454 = _temp_1455 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1453 = _temp_1454  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1458
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1459
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1460
	.word	12
	.word	4
	.word	_Label_1461
	.word	-12
	.word	4
	.word	_Label_1462
	.word	-16
	.word	4
	.word	_Label_1463
	.word	-20
	.word	4
	.word	_Label_1464
	.word	-24
	.word	4
	.word	_Label_1465
	.word	-28
	.word	4
	.word	_Label_1466
	.word	-32
	.word	4
	.word	0
_Label_1458:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1459:
	.ascii	"Pself\0"
	.align
_Label_1460:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1721:
	push	r0
	sub	r1,1,r1
	bne	_Label_1721
	mov	1267,r13		! source line 1267
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0AS",r10
!   _temp_1467 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1467 [entry ] into _temp_1468
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1471 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1471 [entry ] into _temp_1472
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1470 = *_temp_1472  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1469 = _temp_1470 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1468 = _temp_1469  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1473
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1474
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1475
	.word	12
	.word	4
	.word	_Label_1476
	.word	-12
	.word	4
	.word	_Label_1477
	.word	-16
	.word	4
	.word	_Label_1478
	.word	-20
	.word	4
	.word	_Label_1479
	.word	-24
	.word	4
	.word	_Label_1480
	.word	-28
	.word	4
	.word	_Label_1481
	.word	-32
	.word	4
	.word	0
_Label_1473:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1474:
	.ascii	"Pself\0"
	.align
_Label_1475:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1722:
	push	r0
	sub	r1,1,r1
	bne	_Label_1722
	mov	1276,r13		! source line 1276
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0AS",r10
!   _temp_1482 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1482 [entry ] into _temp_1483
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1486 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1486 [entry ] into _temp_1487
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1485 = *_temp_1487  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1484 = _temp_1485 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1483 = _temp_1484  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1488
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1489
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1490
	.word	12
	.word	4
	.word	_Label_1491
	.word	-12
	.word	4
	.word	_Label_1492
	.word	-16
	.word	4
	.word	_Label_1493
	.word	-20
	.word	4
	.word	_Label_1494
	.word	-24
	.word	4
	.word	_Label_1495
	.word	-28
	.word	4
	.word	_Label_1496
	.word	-32
	.word	4
	.word	0
_Label_1488:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1489:
	.ascii	"Pself\0"
	.align
_Label_1490:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1723:
	push	r0
	sub	r1,1,r1
	bne	_Label_1723
	mov	1285,r13		! source line 1285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0AS",r10
!   _temp_1497 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1497 [entry ] into _temp_1498
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1501 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1501 [entry ] into _temp_1502
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1500 = *_temp_1502  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1499 = _temp_1500 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1498 = _temp_1499  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1503
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1504
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1505
	.word	12
	.word	4
	.word	_Label_1506
	.word	-12
	.word	4
	.word	_Label_1507
	.word	-16
	.word	4
	.word	_Label_1508
	.word	-20
	.word	4
	.word	_Label_1509
	.word	-24
	.word	4
	.word	_Label_1510
	.word	-28
	.word	4
	.word	_Label_1511
	.word	-32
	.word	4
	.word	0
_Label_1503:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1504:
	.ascii	"Pself\0"
	.align
_Label_1505:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1724:
	push	r0
	sub	r1,1,r1
	bne	_Label_1724
	mov	1294,r13		! source line 1294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0AS",r10
!   _temp_1512 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1512 [entry ] into _temp_1513
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1516 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1516 [entry ] into _temp_1517
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1515 = *_temp_1517  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1514 = _temp_1515 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1513 = _temp_1514  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1518
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1519
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1520
	.word	12
	.word	4
	.word	_Label_1521
	.word	-12
	.word	4
	.word	_Label_1522
	.word	-16
	.word	4
	.word	_Label_1523
	.word	-20
	.word	4
	.word	_Label_1524
	.word	-24
	.word	4
	.word	_Label_1525
	.word	-28
	.word	4
	.word	_Label_1526
	.word	-32
	.word	4
	.word	0
_Label_1518:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1519:
	.ascii	"Pself\0"
	.align
_Label_1520:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1725:
	push	r0
	sub	r1,1,r1
	bne	_Label_1725
	mov	1303,r13		! source line 1303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1528 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1528 [0 ] into _temp_1529
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1527 = _temp_1529		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1530 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1527  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1530  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1309,r13		! source line 1309
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1531
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1532
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1533
	.word	-12
	.word	4
	.word	_Label_1534
	.word	-16
	.word	4
	.word	_Label_1535
	.word	-20
	.word	4
	.word	_Label_1536
	.word	-24
	.word	4
	.word	0
_Label_1531:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1532:
	.ascii	"Pself\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1726:
	push	r0
	sub	r1,1,r1
	bne	_Label_1726
	mov	1314,r13		! source line 1314
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1537
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1537
	jmp	_Label_1538
_Label_1537:
! THEN...
	mov	1330,r13		! source line 1330
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1539
_Label_1538:
! ELSE...
	mov	1331,r13		! source line 1331
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1541		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1541
!	jmp	_Label_1540
_Label_1540:
! THEN...
	mov	1332,r13		! source line 1332
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1541:
! END IF...
_Label_1539:
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1335,r13		! source line 1335
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0WH",r10
_Label_1542:
!	jmp	_Label_1543
_Label_1543:
	mov	1338,r13		! source line 1338
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1546		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1546
!	jmp	_Label_1545
_Label_1545:
! THEN...
	mov	1340,r13		! source line 1340
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1547 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1547  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1340,r13		! source line 1340
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1546:
! IF STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0IF",r10
	mov	1343,r13		! source line 1343
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1551) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1550  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1550 then goto _Label_1549 else goto _Label_1548
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1548
	jmp	_Label_1549
_Label_1548:
! THEN...
	mov	1344,r13		! source line 1344
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1552 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1552  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1344,r13		! source line 1344
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1549:
! ASSIGNMENT STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0AS",r10
	mov	1347,r13		! source line 1347
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1554) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1553 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1349,r13		! source line 1349
	mov	"\0\0WH",r10
_Label_1555:
!   if offset >= 8192 then goto _Label_1557		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1557
!	jmp	_Label_1556
_Label_1556:
	mov	1349,r13		! source line 1349
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1558 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1558  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1353,r13		! source line 1353
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1356,r13		! source line 1356
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1560		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1560
!	jmp	_Label_1559
_Label_1559:
! THEN...
	mov	1358,r13		! source line 1358
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1560:
! END WHILE...
	jmp	_Label_1555
_Label_1557:
! ASSIGNMENT STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1542
_Label_1544:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1561
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1562
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1563
	.word	12
	.word	4
	.word	_Label_1564
	.word	16
	.word	4
	.word	_Label_1565
	.word	20
	.word	4
	.word	_Label_1566
	.word	-9
	.word	1
	.word	_Label_1567
	.word	-16
	.word	4
	.word	_Label_1568
	.word	-20
	.word	4
	.word	_Label_1569
	.word	-24
	.word	4
	.word	_Label_1570
	.word	-28
	.word	4
	.word	_Label_1571
	.word	-10
	.word	1
	.word	_Label_1572
	.word	-32
	.word	4
	.word	_Label_1573
	.word	-36
	.word	4
	.word	_Label_1574
	.word	-40
	.word	4
	.word	_Label_1575
	.word	-44
	.word	4
	.word	_Label_1576
	.word	-48
	.word	4
	.word	0
_Label_1561:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1562:
	.ascii	"Pself\0"
	.align
_Label_1563:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1564:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1565:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1566:
	.byte	'C'
	.ascii	"_temp_1558\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1571:
	.byte	'C'
	.ascii	"_temp_1550\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1573:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1574:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1575:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1576:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1727:
	push	r0
	sub	r1,1,r1
	bne	_Label_1727
	mov	1368,r13		! source line 1368
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1577
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1577
	jmp	_Label_1578
_Label_1577:
! THEN...
	mov	1380,r13		! source line 1380
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1579
_Label_1578:
! ELSE...
	mov	1381,r13		! source line 1381
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1581		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1581
!	jmp	_Label_1580
_Label_1580:
! THEN...
	mov	1382,r13		! source line 1382
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1581:
! END IF...
_Label_1579:
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0WH",r10
_Label_1582:
!	jmp	_Label_1583
_Label_1583:
	mov	1386,r13		! source line 1386
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1588		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1588
	jmp	_Label_1585
_Label_1588:
	mov	1388,r13		! source line 1388
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1590) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1589  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1589 then goto _Label_1587 else goto _Label_1585
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1585
	jmp	_Label_1587
_Label_1587:
	mov	1389,r13		! source line 1389
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1592) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1591  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1591 then goto _Label_1586 else goto _Label_1585
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1585
	jmp	_Label_1586
_Label_1585:
! THEN...
	mov	1390,r13		! source line 1390
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1586:
! ASSIGNMENT STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0AS",r10
	mov	1392,r13		! source line 1392
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1594) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1593  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1593 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0WH",r10
_Label_1595:
!   if offset >= 8192 then goto _Label_1597		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1597
!	jmp	_Label_1596
_Label_1596:
	mov	1393,r13		! source line 1393
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1598 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1598  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1600		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1600
!	jmp	_Label_1599
_Label_1599:
! THEN...
	mov	1400,r13		! source line 1400
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1400,r13		! source line 1400
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1600:
! END WHILE...
	jmp	_Label_1595
_Label_1597:
! ASSIGNMENT STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1582
_Label_1584:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1601
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1602
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1603
	.word	12
	.word	4
	.word	_Label_1604
	.word	16
	.word	4
	.word	_Label_1605
	.word	20
	.word	4
	.word	_Label_1606
	.word	-9
	.word	1
	.word	_Label_1607
	.word	-16
	.word	4
	.word	_Label_1608
	.word	-20
	.word	4
	.word	_Label_1609
	.word	-24
	.word	4
	.word	_Label_1610
	.word	-10
	.word	1
	.word	_Label_1611
	.word	-28
	.word	4
	.word	_Label_1612
	.word	-11
	.word	1
	.word	_Label_1613
	.word	-32
	.word	4
	.word	_Label_1614
	.word	-36
	.word	4
	.word	_Label_1615
	.word	-40
	.word	4
	.word	_Label_1616
	.word	-44
	.word	4
	.word	0
_Label_1601:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1602:
	.ascii	"Pself\0"
	.align
_Label_1603:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1604:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1605:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1606:
	.byte	'C'
	.ascii	"_temp_1598\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1610:
	.byte	'C'
	.ascii	"_temp_1591\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1612:
	.byte	'C'
	.ascii	"_temp_1589\0"
	.align
_Label_1613:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1614:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1615:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1616:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1728:
	push	r0
	sub	r1,1,r1
	bne	_Label_1728
	mov	1410,r13		! source line 1410
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0IF",r10
	mov	1434,r13		! source line 1434
	mov	"\0\0SE",r10
!   _temp_1620 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1621) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1620  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1619  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1619 >= 4 then goto _Label_1618		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1618
!	jmp	_Label_1617
_Label_1617:
! THEN...
	mov	1437,r13		! source line 1437
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1618:
! IF STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1623		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1623
!	jmp	_Label_1622
_Label_1622:
! THEN...
	mov	1442,r13		! source line 1442
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1623:
! ASSIGNMENT STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0RE",r10
	mov	1447,r13		! source line 1447
	mov	"\0\0SE",r10
!   _temp_1626 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1625 = _temp_1626 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1627 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1628) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1625  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1627  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1624  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1624  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1629
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1630
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1631
	.word	12
	.word	4
	.word	_Label_1632
	.word	16
	.word	4
	.word	_Label_1633
	.word	20
	.word	4
	.word	_Label_1634
	.word	-12
	.word	4
	.word	_Label_1635
	.word	-16
	.word	4
	.word	_Label_1636
	.word	-20
	.word	4
	.word	_Label_1637
	.word	-24
	.word	4
	.word	_Label_1638
	.word	-28
	.word	4
	.word	_Label_1639
	.word	-32
	.word	4
	.word	_Label_1640
	.word	-36
	.word	4
	.word	_Label_1641
	.word	-40
	.word	4
	.word	_Label_1642
	.word	-44
	.word	4
	.word	0
_Label_1629:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1630:
	.ascii	"Pself\0"
	.align
_Label_1631:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1632:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1633:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1642:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
