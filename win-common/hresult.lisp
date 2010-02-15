(in-package :cl-com)
;; /************************************************************************
;; *                                                                       *
;; *   winerror.h --  error code definitions for the Win32 API functions   *
;; *                                                                       *
;; *   Copyright (c) 1991-2000 Microsoft Corporation.  All rights reserved.
;; *                                                                       *
;; ************************************************************************/
;;
;;  Values are 32 bit values layed out as follows:
;;
;;   3 3 2 2 2 2 2 2 2 2 2 2 1 1 1 1 1 1 1 1 1 1
;;   1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
;;  +---+-+-+-----------------------+-------------------------------+
;;  |Sev|C|R|     Facility          |               Code            |
;;  +---+-+-+-----------------------+-------------------------------+
;;
;;  where
;;
;;      Sev - is the severity code
;;
;;          00 - Success
;;          01 - Informational
;;          10 - Warning
;;          11 - Error
;;
;;      C - is the Customer code flag
;;
;;      R - is a reserved bit
;;
;;      Facility - is the facility code
;;
;;      Code - is the facility's status code
;;
;;
;; Define the facility codes
;;
;; (FACILITY_WINDOWS 8)
;; (FACILITY_STORAGE 3)
;; (FACILITY_SSPI 9)
;; (FACILITY_SCARD 6)
;; (FACILITY_SETUPAPI 5)
;; (FACILITY_RPC 1)
;; (FACILITY_WIN32 7)
;; (FACILITY_CONTROL 0)
;; (FACILITY_NULL 0)
;; (FACILITY_MSMQ 4)
;; (FACILITY_MEDIASERVER 3)
;; (FACILITY_INTERNET 2)
;; (FACILITY_ITF 4)
;; (FACILITY_DISPATCH 2)
;; (FACILITY_CERT 1)


;;
;; Define the severity codes
;;

(defparameter *hresult-list* '(
;;
;; MessageId: ERROR_SUCCESS
;;
;; MessageText:
;;
;;  The operation completed successfully.
;;
(ERROR_SUCCESS 0)


;; MessageId: ERROR_INVALID_FUNCTION
;;
;; MessageText:
;;
;;  Incorrect function.
;;
(ERROR_INVALID_FUNCTION 1)

;; MessageId: ERROR_FILE_NOT_FOUND
;;
;; MessageText:
;;
;;  The system cannot find the file specified.
;;
(ERROR_FILE_NOT_FOUND 2)

;; MessageId: ERROR_PATH_NOT_FOUND
;;
;; MessageText:
;;
;;  The system cannot find the path specified.
;;
(ERROR_PATH_NOT_FOUND 3)

;; MessageId: ERROR_TOO_MANY_OPEN_FILES
;;
;; MessageText:
;;
;;  The system cannot open the file.
;;
(ERROR_TOO_MANY_OPEN_FILES 4)

;; MessageId: ERROR_ACCESS_DENIED
;;
;; MessageText:
;;
;;  Access is denied.
;;
(ERROR_ACCESS_DENIED 5)

;; MessageId: ERROR_INVALID_HANDLE
;;
;; MessageText:
;;
;;  The handle is invalid.
;;
(ERROR_INVALID_HANDLE 6)

;; MessageId: ERROR_ARENA_TRASHED
;;
;; MessageText:
;;
;;  The storage control blocks were destroyed.
;;
(ERROR_ARENA_TRASHED 7)

;; MessageId: ERROR_NOT_ENOUGH_MEMORY
;;
;; MessageText:
;;
;;  Not enough storage is available to process this command.
;;
(ERROR_NOT_ENOUGH_MEMORY 8)

;; MessageId: ERROR_INVALID_BLOCK
;;
;; MessageText:
;;
;;  The storage control block address is invalid.
;;
(ERROR_INVALID_BLOCK 9)

;; MessageId: ERROR_BAD_ENVIRONMENT
;;
;; MessageText:
;;
;;  The environment is incorrect.
;;
(ERROR_BAD_ENVIRONMENT 0)

;; MessageId: ERROR_BAD_FORMAT
;;
;; MessageText:
;;
;;  An attempt was made to load a program with an
;;  incorrect format.
;;
(ERROR_BAD_FORMAT 1)

;; MessageId: ERROR_INVALID_ACCESS
;;
;; MessageText:
;;
;;  The access code is invalid.
;;
(ERROR_INVALID_ACCESS 2)

;; MessageId: ERROR_INVALID_DATA
;;
;; MessageText:
;;
;;  The data is invalid.
;;
(ERROR_INVALID_DATA 3)

;; MessageId: ERROR_OUTOFMEMORY
;;
;; MessageText:
;;
;;  Not enough storage is available to complete this operation.
;;
(ERROR_OUTOFMEMORY 4)

;; MessageId: ERROR_INVALID_DRIVE
;;
;; MessageText:
;;
;;  The system cannot find the drive specified.
;;
(ERROR_INVALID_DRIVE 5)

;; MessageId: ERROR_CURRENT_DIRECTORY
;;
;; MessageText:
;;
;;  The directory cannot be removed.
;;
(ERROR_CURRENT_DIRECTORY 6)

;; MessageId: ERROR_NOT_SAME_DEVICE
;;
;; MessageText:
;;
;;  The system cannot move the file
;;  to a different disk drive.
;;
(ERROR_NOT_SAME_DEVICE 7)

;; MessageId: ERROR_NO_MORE_FILES
;;
;; MessageText:
;;
;;  There are no more files.
;;
(ERROR_NO_MORE_FILES 8)

;; MessageId: ERROR_WRITE_PROTECT
;;
;; MessageText:
;;
;;  The media is write protected.
;;
(ERROR_WRITE_PROTECT 9)

;; MessageId: ERROR_BAD_UNIT
;;
;; MessageText:
;;
;;  The system cannot find the device specified.
;;
(ERROR_BAD_UNIT 0)

;; MessageId: ERROR_NOT_READY
;;
;; MessageText:
;;
;;  The device is not ready.
;;
(ERROR_NOT_READY 1)

;; MessageId: ERROR_BAD_COMMAND
;;
;; MessageText:
;;
;;  The device does not recognize the command.
;;
(ERROR_BAD_COMMAND 2)

;; MessageId: ERROR_CRC
;;
;; MessageText:
;;
;;  Data error (cyclic redundancy check).
;;
(ERROR_CRC 3)

;; MessageId: ERROR_BAD_LENGTH
;;
;; MessageText:
;;
;;  The program issued a command but the
;;  command length is incorrect.
;;
(ERROR_BAD_LENGTH 4)

;; MessageId: ERROR_SEEK
;;
;; MessageText:
;;
;;  The drive cannot locate a specific
;;  area or track on the disk.
;;
(ERROR_SEEK 5)

;; MessageId: ERROR_NOT_DOS_DISK
;;
;; MessageText:
;;
;;  The specified disk or diskette cannot be accessed.
;;
(ERROR_NOT_DOS_DISK 6)

;; MessageId: ERROR_SECTOR_NOT_FOUND
;;
;; MessageText:
;;
;;  The drive cannot find the sector requested.
;;
(ERROR_SECTOR_NOT_FOUND 7)

;; MessageId: ERROR_OUT_OF_PAPER
;;
;; MessageText:
;;
;;  The printer is out of paper.
;;
(ERROR_OUT_OF_PAPER 8)

;; MessageId: ERROR_WRITE_FAULT
;;
;; MessageText:
;;
;;  The system cannot write to the specified device.
;;
(ERROR_WRITE_FAULT 9)

;; MessageId: ERROR_READ_FAULT
;;
;; MessageText:
;;
;;  The system cannot read from the specified device.
;;
(ERROR_READ_FAULT 0)

;; MessageId: ERROR_GEN_FAILURE
;;
;; MessageText:
;;
;;  A device attached to the system is not functioning.
;;
(ERROR_GEN_FAILURE 1)

;; MessageId: ERROR_SHARING_VIOLATION
;;
;; MessageText:
;;
;;  The process cannot access the file because
;;  it is being used by another process.
;;
(ERROR_SHARING_VIOLATION 2)

;; MessageId: ERROR_LOCK_VIOLATION
;;
;; MessageText:
;;
;;  The process cannot access the file because
;;  another process has locked a portion of the file.
;;
(ERROR_LOCK_VIOLATION 3)

;; MessageId: ERROR_WRONG_DISK
;;
;; MessageText:
;;
;;  The wrong diskette is in the drive.
;;  Insert %2 (Volume Serial Number: %3)
;;  into drive %1.
;;
(ERROR_WRONG_DISK 4)

;; MessageId: ERROR_SHARING_BUFFER_EXCEEDED
;;
;; MessageText:
;;
;;  Too many files opened for sharing.
;;
(ERROR_SHARING_BUFFER_EXCEEDED 6)

;; MessageId: ERROR_HANDLE_EOF
;;
;; MessageText:
;;
;;  Reached the end of the file.
;;
(ERROR_HANDLE_EOF 8)

;; MessageId: ERROR_HANDLE_DISK_FULL
;;
;; MessageText:
;;
;;  The disk is full.
;;
(ERROR_HANDLE_DISK_FULL 9)

;; MessageId: ERROR_NOT_SUPPORTED
;;
;; MessageText:
;;
;;  The network request is not supported.
;;
(ERROR_NOT_SUPPORTED 0)

;; MessageId: ERROR_REM_NOT_LIST
;;
;; MessageText:
;;
;;  The remote computer is not available.
;;
(ERROR_REM_NOT_LIST 1)

;; MessageId: ERROR_DUP_NAME
;;
;; MessageText:
;;
;;  A duplicate name exists on the network.
;;
(ERROR_DUP_NAME 2)

;; MessageId: ERROR_BAD_NETPATH
;;
;; MessageText:
;;
;;  The network path was not found.
;;
(ERROR_BAD_NETPATH 3)

;; MessageId: ERROR_NETWORK_BUSY
;;
;; MessageText:
;;
;;  The network is busy.
;;
(ERROR_NETWORK_BUSY 4)

;; MessageId: ERROR_DEV_NOT_EXIST
;;
;; MessageText:
;;
;;  The specified network resource or device is no longer
;;  available.
;;
(ERROR_DEV_NOT_EXIST 5)

;; MessageId: ERROR_TOO_MANY_CMDS
;;
;; MessageText:
;;
;;  The network BIOS command limit has been reached.
;;
(ERROR_TOO_MANY_CMDS 6)

;; MessageId: ERROR_ADAP_HDW_ERR
;;
;; MessageText:
;;
;;  A network adapter hardware error occurred.
;;
(ERROR_ADAP_HDW_ERR 7)

;; MessageId: ERROR_BAD_NET_RESP
;;
;; MessageText:
;;
;;  The specified server cannot perform the requested
;;  operation.
;;
(ERROR_BAD_NET_RESP 8)

;; MessageId: ERROR_UNEXP_NET_ERR
;;
;; MessageText:
;;
;;  An unexpected network error occurred.
;;
(ERROR_UNEXP_NET_ERR 9)

;; MessageId: ERROR_BAD_REM_ADAP
;;
;; MessageText:
;;
;;  The remote adapter is not compatible.
;;
(ERROR_BAD_REM_ADAP 0)

;; MessageId: ERROR_PRINTQ_FULL
;;
;; MessageText:
;;
;;  The printer queue is full.
;;
(ERROR_PRINTQ_FULL 1)

;; MessageId: ERROR_NO_SPOOL_SPACE
;;
;; MessageText:
;;
;;  Space to store the file waiting to be printed is
;;  not available on the server.
;;
(ERROR_NO_SPOOL_SPACE 2)

;; MessageId: ERROR_PRINT_CANCELLED
;;
;; MessageText:
;;
;;  Your file waiting to be printed was deleted.
;;
(ERROR_PRINT_CANCELLED 3)

;; MessageId: ERROR_NETNAME_DELETED
;;
;; MessageText:
;;
;;  The specified network name is no longer available.
;;
(ERROR_NETNAME_DELETED 4)

;; MessageId: ERROR_NETWORK_ACCESS_DENIED
;;
;; MessageText:
;;
;;  Network access is denied.
;;
(ERROR_NETWORK_ACCESS_DENIED 5)

;; MessageId: ERROR_BAD_DEV_TYPE
;;
;; MessageText:
;;
;;  The network resource type is not correct.
;;
(ERROR_BAD_DEV_TYPE 6)

;; MessageId: ERROR_BAD_NET_NAME
;;
;; MessageText:
;;
;;  The network name cannot be found.
;;
(ERROR_BAD_NET_NAME 7)

;; MessageId: ERROR_TOO_MANY_NAMES
;;
;; MessageText:
;;
;;  The name limit for the local computer network
;;  adapter card was exceeded.
;;
(ERROR_TOO_MANY_NAMES 8)

;; MessageId: ERROR_TOO_MANY_SESS
;;
;; MessageText:
;;
;;  The network BIOS session limit was exceeded.
;;
(ERROR_TOO_MANY_SESS 9)

;; MessageId: ERROR_SHARING_PAUSED
;;
;; MessageText:
;;
;;  The remote server has been paused or is in the
;;  process of being started.
;;
(ERROR_SHARING_PAUSED 0)

;; MessageId: ERROR_REQ_NOT_ACCEP
;;
;; MessageText:
;;
;;  No more connections can be made to this remote computer at this time
;;  because there are already as many connections as the computer can accept.
;;
(ERROR_REQ_NOT_ACCEP 1)

;; MessageId: ERROR_REDIR_PAUSED
;;
;; MessageText:
;;
;;  The specified printer or disk device has been paused.
;;
(ERROR_REDIR_PAUSED 2)

;; MessageId: ERROR_FILE_EXISTS
;;
;; MessageText:
;;
;;  The file exists.
;;
(ERROR_FILE_EXISTS 0)

;; MessageId: ERROR_CANNOT_MAKE
;;
;; MessageText:
;;
;;  The directory or file cannot be created.
;;
(ERROR_CANNOT_MAKE 2)

;; MessageId: ERROR_FAIL_I24
;;
;; MessageText:
;;
;;  Fail on INT 24.
;;
(ERROR_FAIL_I24 3)

;; MessageId: ERROR_OUT_OF_STRUCTURES
;;
;; MessageText:
;;
;;  Storage to process this request is not available.
;;
(ERROR_OUT_OF_STRUCTURES 4)

;; MessageId: ERROR_ALREADY_ASSIGNED
;;
;; MessageText:
;;
;;  The local device name is already in use.
;;
(ERROR_ALREADY_ASSIGNED 5)

;; MessageId: ERROR_INVALID_PASSWORD
;;
;; MessageText:
;;
;;  The specified network password is not correct.
;;
(ERROR_INVALID_PASSWORD 6)

;; MessageId: ERROR_INVALID_PARAMETER
;;
;; MessageText:
;;
;;  The parameter is incorrect.
;;
(ERROR_INVALID_PARAMETER 7)

;; MessageId: ERROR_NET_WRITE_FAULT
;;
;; MessageText:
;;
;;  A write fault occurred on the network.
;;
(ERROR_NET_WRITE_FAULT 8)

;; MessageId: ERROR_NO_PROC_SLOTS
;;
;; MessageText:
;;
;;  The system cannot start another process at
;;  this time.
;;
(ERROR_NO_PROC_SLOTS 9)

;; MessageId: ERROR_TOO_MANY_SEMAPHORES
;;
;; MessageText:
;;
;;  Cannot create another system semaphore.
;;
(ERROR_TOO_MANY_SEMAPHORES 0)

;; MessageId: ERROR_EXCL_SEM_ALREADY_OWNED
;;
;; MessageText:
;;
;;  The exclusive semaphore is owned by another process.
;;
(ERROR_EXCL_SEM_ALREADY_OWNED 1)

;; MessageId: ERROR_SEM_IS_SET
;;
;; MessageText:
;;
;;  The semaphore is set and cannot be closed.
;;
(ERROR_SEM_IS_SET 2)

;; MessageId: ERROR_TOO_MANY_SEM_REQUESTS
;;
;; MessageText:
;;
;;  The semaphore cannot be set again.
;;
(ERROR_TOO_MANY_SEM_REQUESTS 3)

;; MessageId: ERROR_INVALID_AT_INTERRUPT_TIME
;;
;; MessageText:
;;
;;  Cannot request exclusive semaphores at interrupt time.
;;
(ERROR_INVALID_AT_INTERRUPT_TIME 4)

;; MessageId: ERROR_SEM_OWNER_DIED
;;
;; MessageText:
;;
;;  The previous ownership of this semaphore has ended.
;;
(ERROR_SEM_OWNER_DIED 5)

;; MessageId: ERROR_SEM_USER_LIMIT
;;
;; MessageText:
;;
;;  Insert the diskette for drive %1.
;;
(ERROR_SEM_USER_LIMIT 6)

;; MessageId: ERROR_DISK_CHANGE
;;
;; MessageText:
;;
;;  The program stopped because an alternate diskette was not inserted.
;;
(ERROR_DISK_CHANGE 7)

;; MessageId: ERROR_DRIVE_LOCKED
;;
;; MessageText:
;;
;;  The disk is in use or locked by
;;  another process.
;;
(ERROR_DRIVE_LOCKED 8)

;; MessageId: ERROR_BROKEN_PIPE
;;
;; MessageText:
;;
;;  The pipe has been ended.
;;
(ERROR_BROKEN_PIPE 9)

;; MessageId: ERROR_OPEN_FAILED
;;
;; MessageText:
;;
;;  The system cannot open the
;;  device or file specified.
;;
(ERROR_OPEN_FAILED 0)

;; MessageId: ERROR_BUFFER_OVERFLOW
;;
;; MessageText:
;;
;;  The file name is too long.
;;
(ERROR_BUFFER_OVERFLOW 1)

;; MessageId: ERROR_DISK_FULL
;;
;; MessageText:
;;
;;  There is not enough space on the disk.
;;
(ERROR_DISK_FULL 2)

;; MessageId: ERROR_NO_MORE_SEARCH_HANDLES
;;
;; MessageText:
;;
;;  No more internal file identifiers available.
;;
(ERROR_NO_MORE_SEARCH_HANDLES 3)

;; MessageId: ERROR_INVALID_TARGET_HANDLE
;;
;; MessageText:
;;
;;  The target internal file identifier is incorrect.
;;
(ERROR_INVALID_TARGET_HANDLE 4)

;; MessageId: ERROR_INVALID_CATEGORY
;;
;; MessageText:
;;
;;  The IOCTL call made by the application program is
;;  not correct.
;;
(ERROR_INVALID_CATEGORY 7)

;; MessageId: ERROR_INVALID_VERIFY_SWITCH
;;
;; MessageText:
;;
;;  The verify-on-write switch parameter value is not
;;  correct.
;;
(ERROR_INVALID_VERIFY_SWITCH 8)

;; MessageId: ERROR_BAD_DRIVER_LEVEL
;;
;; MessageText:
;;
;;  The system does not support the command requested.
;;
(ERROR_BAD_DRIVER_LEVEL 9)

;; MessageId: ERROR_CALL_NOT_IMPLEMENTED
;;
;; MessageText:
;;
;;  This function is not supported on this system.
;;
(ERROR_CALL_NOT_IMPLEMENTED 0)

;; MessageId: ERROR_SEM_TIMEOUT
;;
;; MessageText:
;;
;;  The semaphore timeout period has expired.
;;
(ERROR_SEM_TIMEOUT 1)

;; MessageId: ERROR_INSUFFICIENT_BUFFER
;;
;; MessageText:
;;
;;  The data area passed to a system call is too
;;  small.
;;
(ERROR_INSUFFICIENT_BUFFER 2)

;; MessageId: ERROR_INVALID_NAME
;;
;; MessageText:
;;
;;  The filename, directory name, or volume label syntax is incorrect.
;;
(ERROR_INVALID_NAME 3)

;; MessageId: ERROR_INVALID_LEVEL
;;
;; MessageText:
;;
;;  The system call level is not correct.
;;
(ERROR_INVALID_LEVEL 4)

;; MessageId: ERROR_NO_VOLUME_LABEL
;;
;; MessageText:
;;
;;  The disk has no volume label.
;;
(ERROR_NO_VOLUME_LABEL 5)

;; MessageId: ERROR_MOD_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified module could not be found.
;;
(ERROR_MOD_NOT_FOUND 6)

;; MessageId: ERROR_PROC_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified procedure could not be found.
;;
(ERROR_PROC_NOT_FOUND 7)

;; MessageId: ERROR_WAIT_NO_CHILDREN
;;
;; MessageText:
;;
;;  There are no child processes to wait for.
;;
(ERROR_WAIT_NO_CHILDREN 8)

;; MessageId: ERROR_CHILD_NOT_COMPLETE
;;
;; MessageText:
;;
;;  The %1 application cannot be run in Win32 mode.
;;
(ERROR_CHILD_NOT_COMPLETE 9)

;; MessageId: ERROR_DIRECT_ACCESS_HANDLE
;;
;; MessageText:
;;
;;  Attempt to use a file handle to an open disk partition for an
;;  operation other than raw disk I/O.
;;
(ERROR_DIRECT_ACCESS_HANDLE 0)

;; MessageId: ERROR_NEGATIVE_SEEK
;;
;; MessageText:
;;
;;  An attempt was made to move the file pointer before the beginning of the file.
;;
(ERROR_NEGATIVE_SEEK 1)

;; MessageId: ERROR_SEEK_ON_DEVICE
;;
;; MessageText:
;;
;;  The file pointer cannot be set on the specified device or file.
;;
(ERROR_SEEK_ON_DEVICE 2)

;; MessageId: ERROR_IS_JOIN_TARGET
;;
;; MessageText:
;;
;;  A JOIN or SUBST command
;;  cannot be used for a drive that
;;  contains previously joined drives.
;;
(ERROR_IS_JOIN_TARGET 3)

;; MessageId: ERROR_IS_JOINED
;;
;; MessageText:
;;
;;  An attempt was made to use a
;;  JOIN or SUBST command on a drive that has
;;  already been joined.
;;
(ERROR_IS_JOINED 4)

;; MessageId: ERROR_IS_SUBSTED
;;
;; MessageText:
;;
;;  An attempt was made to use a
;;  JOIN or SUBST command on a drive that has
;;  already been substituted.
;;
(ERROR_IS_SUBSTED 5)

;; MessageId: ERROR_NOT_JOINED
;;
;; MessageText:
;;
;;  The system tried to delete
;;  the JOIN of a drive that is not joined.
;;
(ERROR_NOT_JOINED 6)

;; MessageId: ERROR_NOT_SUBSTED
;;
;; MessageText:
;;
;;  The system tried to delete the
;;  substitution of a drive that is not substituted.
;;
(ERROR_NOT_SUBSTED 7)

;; MessageId: ERROR_JOIN_TO_JOIN
;;
;; MessageText:
;;
;;  The system tried to join a drive
;;  to a directory on a joined drive.
;;
(ERROR_JOIN_TO_JOIN 8)

;; MessageId: ERROR_SUBST_TO_SUBST
;;
;; MessageText:
;;
;;  The system tried to substitute a
;;  drive to a directory on a substituted drive.
;;
(ERROR_SUBST_TO_SUBST 9)

;; MessageId: ERROR_JOIN_TO_SUBST
;;
;; MessageText:
;;
;;  The system tried to join a drive to
;;  a directory on a substituted drive.
;;
(ERROR_JOIN_TO_SUBST 0)

;; MessageId: ERROR_SUBST_TO_JOIN
;;
;; MessageText:
;;
;;  The system tried to SUBST a drive
;;  to a directory on a joined drive.
;;
(ERROR_SUBST_TO_JOIN 1)

;; MessageId: ERROR_BUSY_DRIVE
;;
;; MessageText:
;;
;;  The system cannot perform a JOIN or SUBST at this time.
;;
(ERROR_BUSY_DRIVE 2)

;; MessageId: ERROR_SAME_DRIVE
;;
;; MessageText:
;;
;;  The system cannot join or substitute a
;;  drive to or for a directory on the same drive.
;;
(ERROR_SAME_DRIVE 3)

;; MessageId: ERROR_DIR_NOT_ROOT
;;
;; MessageText:
;;
;;  The directory is not a subdirectory of the root directory.
;;
(ERROR_DIR_NOT_ROOT 4)

;; MessageId: ERROR_DIR_NOT_EMPTY
;;
;; MessageText:
;;
;;  The directory is not empty.
;;
(ERROR_DIR_NOT_EMPTY 5)

;; MessageId: ERROR_IS_SUBST_PATH
;;
;; MessageText:
;;
;;  The path specified is being used in
;;  a substitute.
;;
(ERROR_IS_SUBST_PATH 6)

;; MessageId: ERROR_IS_JOIN_PATH
;;
;; MessageText:
;;
;;  Not enough resources are available to
;;  process this command.
;;
(ERROR_IS_JOIN_PATH 7)

;; MessageId: ERROR_PATH_BUSY
;;
;; MessageText:
;;
;;  The path specified cannot be used at this time.
;;
(ERROR_PATH_BUSY 8)

;; MessageId: ERROR_IS_SUBST_TARGET
;;
;; MessageText:
;;
;;  An attempt was made to join
;;  or substitute a drive for which a directory
;;  on the drive is the target of a previous
;;  substitute.
;;
(ERROR_IS_SUBST_TARGET 9)

;; MessageId: ERROR_SYSTEM_TRACE
;;
;; MessageText:
;;
;;  System trace information was not specified in your
;;  CONFIG.SYS file, or tracing is disallowed.
;;
(ERROR_SYSTEM_TRACE 0)

;; MessageId: ERROR_INVALID_EVENT_COUNT
;;
;; MessageText:
;;
;;  The number of specified semaphore events for
;;  DosMuxSemWait is not correct.
;;
(ERROR_INVALID_EVENT_COUNT 1)

;; MessageId: ERROR_TOO_MANY_MUXWAITERS
;;
;; MessageText:
;;
;;  DosMuxSemWait did not execute; too many semaphores
;;  are already set.
;;
(ERROR_TOO_MANY_MUXWAITERS 2)

;; MessageId: ERROR_INVALID_LIST_FORMAT
;;
;; MessageText:
;;
;;  The DosMuxSemWait list is not correct.
;;
(ERROR_INVALID_LIST_FORMAT 3)

;; MessageId: ERROR_LABEL_TOO_LONG
;;
;; MessageText:
;;
;;  The volume label you entered exceeds the label character
;;  limit of the target file system.
;;
(ERROR_LABEL_TOO_LONG 4)

;; MessageId: ERROR_TOO_MANY_TCBS
;;
;; MessageText:
;;
;;  Cannot create another thread.
;;
(ERROR_TOO_MANY_TCBS 5)

;; MessageId: ERROR_SIGNAL_REFUSED
;;
;; MessageText:
;;
;;  The recipient process has refused the signal.
;;
(ERROR_SIGNAL_REFUSED 6)

;; MessageId: ERROR_DISCARDED
;;
;; MessageText:
;;
;;  The segment is already discarded and cannot be locked.
;;
(ERROR_DISCARDED 7)

;; MessageId: ERROR_NOT_LOCKED
;;
;; MessageText:
;;
;;  The segment is already unlocked.
;;
(ERROR_NOT_LOCKED 8)

;; MessageId: ERROR_BAD_THREADID_ADDR
;;
;; MessageText:
;;
;;  The address for the thread ID is not correct.
;;
(ERROR_BAD_THREADID_ADDR 9)

;; MessageId: ERROR_BAD_ARGUMENTS
;;
;; MessageText:
;;
;;  The argument string passed to DosExecPgm is not correct.
;;
(ERROR_BAD_ARGUMENTS 0)

;; MessageId: ERROR_BAD_PATHNAME
;;
;; MessageText:
;;
;;  The specified path is invalid.
;;
(ERROR_BAD_PATHNAME 1)

;; MessageId: ERROR_SIGNAL_PENDING
;;
;; MessageText:
;;
;;  A signal is already pending.
;;
(ERROR_SIGNAL_PENDING 2)

;; MessageId: ERROR_MAX_THRDS_REACHED
;;
;; MessageText:
;;
;;  No more threads can be created in the system.
;;
(ERROR_MAX_THRDS_REACHED 4)

;; MessageId: ERROR_LOCK_FAILED
;;
;; MessageText:
;;
;;  Unable to lock a region of a file.
;;
(ERROR_LOCK_FAILED 7)

;; MessageId: ERROR_BUSY
;;
;; MessageText:
;;
;;  The requested resource is in use.
;;
(ERROR_BUSY 0)

;; MessageId: ERROR_CANCEL_VIOLATION
;;
;; MessageText:
;;
;;  A lock request was not outstanding for the supplied cancel region.
;;
(ERROR_CANCEL_VIOLATION 3)

;; MessageId: ERROR_ATOMIC_LOCKS_NOT_SUPPORTED
;;
;; MessageText:
;;
;;  The file system does not support atomic changes to the lock type.
;;
(ERROR_ATOMIC_LOCKS_NOT_SUPPORTED 4)

;; MessageId: ERROR_INVALID_SEGMENT_NUMBER
;;
;; MessageText:
;;
;;  The system detected a segment number that was not correct.
;;
(ERROR_INVALID_SEGMENT_NUMBER 0)

;; MessageId: ERROR_INVALID_ORDINAL
;;
;; MessageText:
;;
;;  The operating system cannot run %1.
;;
(ERROR_INVALID_ORDINAL 2)

;; MessageId: ERROR_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  Cannot create a file when that file already exists.
;;
(ERROR_ALREADY_EXISTS 3)

;; MessageId: ERROR_INVALID_FLAG_NUMBER
;;
;; MessageText:
;;
;;  The flag passed is not correct.
;;
(ERROR_INVALID_FLAG_NUMBER 6)

;; MessageId: ERROR_SEM_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified system semaphore name was not found.
;;
(ERROR_SEM_NOT_FOUND 7)

;; MessageId: ERROR_INVALID_STARTING_CODESEG
;;
;; MessageText:
;;
;;  The operating system cannot run %1.
;;
(ERROR_INVALID_STARTING_CODESEG 8)

;; MessageId: ERROR_INVALID_STACKSEG
;;
;; MessageText:
;;
;;  The operating system cannot run %1.
;;
(ERROR_INVALID_STACKSEG 9)

;; MessageId: ERROR_INVALID_MODULETYPE
;;
;; MessageText:
;;
;;  The operating system cannot run %1.
;;
(ERROR_INVALID_MODULETYPE 0)

;; MessageId: ERROR_INVALID_EXE_SIGNATURE
;;
;; MessageText:
;;
;;  Cannot run %1 in Win32 mode.
;;
(ERROR_INVALID_EXE_SIGNATURE 1)

;; MessageId: ERROR_EXE_MARKED_INVALID
;;
;; MessageText:
;;
;;  The operating system cannot run %1.
;;
(ERROR_EXE_MARKED_INVALID 2)

;; MessageId: ERROR_BAD_EXE_FORMAT
;;
;; MessageText:
;;
;;  %1 is not a valid Win32 application.
;;
(ERROR_BAD_EXE_FORMAT 3)

;; MessageId: ERROR_ITERATED_DATA_EXCEEDS_64k
;;
;; MessageText:
;;
;;  The operating system cannot run %1.
;;
(ERROR_ITERATED_DATA_EXCEEDS_64k 4)

;; MessageId: ERROR_INVALID_MINALLOCSIZE
;;
;; MessageText:
;;
;;  The operating system cannot run %1.
;;
(ERROR_INVALID_MINALLOCSIZE 5)

;; MessageId: ERROR_DYNLINK_FROM_INVALID_RING
;;
;; MessageText:
;;
;;  The operating system cannot run this
;;  application program.
;;
(ERROR_DYNLINK_FROM_INVALID_RING 6)

;; MessageId: ERROR_IOPL_NOT_ENABLED
;;
;; MessageText:
;;
;;  The operating system is not presently
;;  configured to run this application.
;;
(ERROR_IOPL_NOT_ENABLED 7)

;; MessageId: ERROR_INVALID_SEGDPL
;;
;; MessageText:
;;
;;  The operating system cannot run %1.
;;
(ERROR_INVALID_SEGDPL 8)

;; MessageId: ERROR_AUTODATASEG_EXCEEDS_64k
;;
;; MessageText:
;;
;;  The operating system cannot run this
;;  application program.
;;
(ERROR_AUTODATASEG_EXCEEDS_64k 9)

;; MessageId: ERROR_RING2SEG_MUST_BE_MOVABLE
;;
;; MessageText:
;;
;;  The code segment cannot be greater than or equal to 64K.
;;
(ERROR_RING2SEG_MUST_BE_MOVABLE 0)

;; MessageId: ERROR_RELOC_CHAIN_XEEDS_SEGLIM
;;
;; MessageText:
;;
;;  The operating system cannot run %1.
;;
(ERROR_RELOC_CHAIN_XEEDS_SEGLIM 1)

;; MessageId: ERROR_INFLOOP_IN_RELOC_CHAIN
;;
;; MessageText:
;;
;;  The operating system cannot run %1.
;;
(ERROR_INFLOOP_IN_RELOC_CHAIN 2)

;; MessageId: ERROR_ENVVAR_NOT_FOUND
;;
;; MessageText:
;;
;;  The system could not find the environment
;;  option that was entered.
;;
(ERROR_ENVVAR_NOT_FOUND 3)

;; MessageId: ERROR_NO_SIGNAL_SENT
;;
;; MessageText:
;;
;;  No process in the command subtree has a
;;  signal handler.
;;
(ERROR_NO_SIGNAL_SENT 5)

;; MessageId: ERROR_FILENAME_EXCED_RANGE
;;
;; MessageText:
;;
;;  The filename or extension is too long.
;;
(ERROR_FILENAME_EXCED_RANGE 6)

;; MessageId: ERROR_RING2_STACK_IN_USE
;;
;; MessageText:
;;
;;  The ring 2 stack is in use.
;;
(ERROR_RING2_STACK_IN_USE 7)

;; MessageId: ERROR_META_EXPANSION_TOO_LONG
;;
;; MessageText:
;;
;;  The global filename characters, * or ?, are entered
;;  incorrectly or too many global filename characters are specified.
;;
(ERROR_META_EXPANSION_TOO_LONG 8)

;; MessageId: ERROR_INVALID_SIGNAL_NUMBER
;;
;; MessageText:
;;
;;  The signal being posted is not correct.
;;
(ERROR_INVALID_SIGNAL_NUMBER 9)

;; MessageId: ERROR_THREAD_1_INACTIVE
;;
;; MessageText:
;;
;;  The signal handler cannot be set.
;;
(ERROR_THREAD_1_INACTIVE 0)

;; MessageId: ERROR_LOCKED
;;
;; MessageText:
;;
;;  The segment is locked and cannot be reallocated.
;;
(ERROR_LOCKED 2)

;; MessageId: ERROR_TOO_MANY_MODULES
;;
;; MessageText:
;;
;;  Too many dynamic-link modules are attached to this
;;  program or dynamic-link module.
;;
(ERROR_TOO_MANY_MODULES 4)

;; MessageId: ERROR_NESTING_NOT_ALLOWED
;;
;; MessageText:
;;
;;  Can't nest calls to LoadModule.
;;
(ERROR_NESTING_NOT_ALLOWED 5)

;; MessageId: ERROR_EXE_MACHINE_TYPE_MISMATCH
;;
;; MessageText:
;;
;;  The image file %1 is valid, but is for a machine type other
;;  than the current machine.
;;
(ERROR_EXE_MACHINE_TYPE_MISMATCH 6)

;; MessageId: ERROR_BAD_PIPE
;;
;; MessageText:
;;
;;  The pipe state is invalid.
;;
(ERROR_BAD_PIPE 0)

;; MessageId: ERROR_PIPE_BUSY
;;
;; MessageText:
;;
;;  All pipe instances are busy.
;;
(ERROR_PIPE_BUSY 1)

;; MessageId: ERROR_NO_DATA
;;
;; MessageText:
;;
;;  The pipe is being closed.
;;
(ERROR_NO_DATA 2)

;; MessageId: ERROR_PIPE_NOT_CONNECTED
;;
;; MessageText:
;;
;;  No process is on the other end of the pipe.
;;
(ERROR_PIPE_NOT_CONNECTED 3)

;; MessageId: ERROR_MORE_DATA
;;
;; MessageText:
;;
;;  More data is available.
;;
(ERROR_MORE_DATA 4)

;; MessageId: ERROR_VC_DISCONNECTED
;;
;; MessageText:
;;
;;  The session was canceled.
;;
(ERROR_VC_DISCONNECTED 0)

;; MessageId: ERROR_INVALID_EA_NAME
;;
;; MessageText:
;;
;;  The specified extended attribute name was invalid.
;;
(ERROR_INVALID_EA_NAME 4)

;; MessageId: ERROR_EA_LIST_INCONSISTENT
;;
;; MessageText:
;;
;;  The extended attributes are inconsistent.
;;
(ERROR_EA_LIST_INCONSISTENT 5)

;; MessageId: WAIT_TIMEOUT
;;
;; MessageText:
;;
;;  The wait operation timed out.
;;
(WAIT_TIMEOUT 8)

;; MessageId: ERROR_NO_MORE_ITEMS
;;
;; MessageText:
;;
;;  No more data is available.
;;
(ERROR_NO_MORE_ITEMS 9)

;; MessageId: ERROR_CANNOT_COPY
;;
;; MessageText:
;;
;;  The copy functions cannot be used.
;;
(ERROR_CANNOT_COPY 6)

;; MessageId: ERROR_DIRECTORY
;;
;; MessageText:
;;
;;  The directory name is invalid.
;;
(ERROR_DIRECTORY 7)

;; MessageId: ERROR_EAS_DIDNT_FIT
;;
;; MessageText:
;;
;;  The extended attributes did not fit in the buffer.
;;
(ERROR_EAS_DIDNT_FIT 5)

;; MessageId: ERROR_EA_FILE_CORRUPT
;;
;; MessageText:
;;
;;  The extended attribute file on the mounted file system is corrupt.
;;
(ERROR_EA_FILE_CORRUPT 6)

;; MessageId: ERROR_EA_TABLE_FULL
;;
;; MessageText:
;;
;;  The extended attribute table file is full.
;;
(ERROR_EA_TABLE_FULL 7)

;; MessageId: ERROR_INVALID_EA_HANDLE
;;
;; MessageText:
;;
;;  The specified extended attribute handle is invalid.
;;
(ERROR_INVALID_EA_HANDLE 8)

;; MessageId: ERROR_EAS_NOT_SUPPORTED
;;
;; MessageText:
;;
;;  The mounted file system does not support extended attributes.
;;
(ERROR_EAS_NOT_SUPPORTED 2)

;; MessageId: ERROR_NOT_OWNER
;;
;; MessageText:
;;
;;  Attempt to release mutex not owned by caller.
;;
(ERROR_NOT_OWNER 8)

;; MessageId: ERROR_TOO_MANY_POSTS
;;
;; MessageText:
;;
;;  Too many posts were made to a semaphore.
;;
(ERROR_TOO_MANY_POSTS 8)

;; MessageId: ERROR_PARTIAL_COPY
;;
;; MessageText:
;;
;;  Only part of a ReadProcessMemoty or WriteProcessMemory request was completed.
;;
(ERROR_PARTIAL_COPY 9)

;; MessageId: ERROR_OPLOCK_NOT_GRANTED
;;
;; MessageText:
;;
;;  The oplock request is denied.
;;
(ERROR_OPLOCK_NOT_GRANTED 0)

;; MessageId: ERROR_INVALID_OPLOCK_PROTOCOL
;;
;; MessageText:
;;
;;  An invalid oplock acknowledgment was received by the system.
;;
(ERROR_INVALID_OPLOCK_PROTOCOL 1)

;; MessageId: ERROR_MR_MID_NOT_FOUND
;;
;; MessageText:
;;
;;  The system cannot find message text for message number 0x%1
;;  in the message file for %2.
;;
(ERROR_MR_MID_NOT_FOUND 7)

;; MessageId: ERROR_INVALID_ADDRESS
;;
;; MessageText:
;;
;;  Attempt to access invalid address.
;;
(ERROR_INVALID_ADDRESS 7)

;; MessageId: ERROR_ARITHMETIC_OVERFLOW
;;
;; MessageText:
;;
;;  Arithmetic result exceeded 32 bits.
;;
(ERROR_ARITHMETIC_OVERFLOW 4)

;; MessageId: ERROR_PIPE_CONNECTED
;;
;; MessageText:
;;
;;  There is a process on other end of the pipe.
;;
(ERROR_PIPE_CONNECTED 5)

;; MessageId: ERROR_PIPE_LISTENING
;;
;; MessageText:
;;
;;  Waiting for a process to open the other end of the pipe.
;;
(ERROR_PIPE_LISTENING 6)

;; MessageId: ERROR_EA_ACCESS_DENIED
;;
;; MessageText:
;;
;;  Access to the extended attribute was denied.
;;
(ERROR_EA_ACCESS_DENIED 4)

;; MessageId: ERROR_OPERATION_ABORTED
;;
;; MessageText:
;;
;;  The I/O operation has been aborted because of either a thread exit
;;  or an application request.
;;
(ERROR_OPERATION_ABORTED 5)

;; MessageId: ERROR_IO_INCOMPLETE
;;
;; MessageText:
;;
;;  Overlapped I/O event is not in a signaled state.
;;
(ERROR_IO_INCOMPLETE 6)

;; MessageId: ERROR_IO_PENDING
;;
;; MessageText:
;;
;;  Overlapped I/O operation is in progress.
;;
(ERROR_IO_PENDING 7)

;; MessageId: ERROR_NOACCESS
;;
;; MessageText:
;;
;;  Invalid access to memory location.
;;
(ERROR_NOACCESS 8)

;; MessageId: ERROR_SWAPERROR
;;
;; MessageText:
;;
;;  Error performing inpage operation.
;;
(ERROR_SWAPERROR 9)

;; MessageId: ERROR_STACK_OVERFLOW
;;
;; MessageText:
;;
;;  Recursion too deep; the stack overflowed.
;;
(ERROR_STACK_OVERFLOW 1)

;; MessageId: ERROR_INVALID_MESSAGE
;;
;; MessageText:
;;
;;  The window cannot act on the sent message.
;;
(ERROR_INVALID_MESSAGE 2)

;; MessageId: ERROR_CAN_NOT_COMPLETE
;;
;; MessageText:
;;
;;  Cannot complete this function.
;;
(ERROR_CAN_NOT_COMPLETE 3)

;; MessageId: ERROR_INVALID_FLAGS
;;
;; MessageText:
;;
;;  Invalid flags.
;;
(ERROR_INVALID_FLAGS 4)

;; MessageId: ERROR_UNRECOGNIZED_VOLUME
;;
;; MessageText:
;;
;;  The volume does not contain a recognized file system.
;;  Please make sure that all required file system drivers are loaded and that the
;;  volume is not corrupted.
;;
(ERROR_UNRECOGNIZED_VOLUME 5)

;; MessageId: ERROR_FILE_INVALID
;;
;; MessageText:
;;
;;  The volume for a file has been externally altered so that the
;;  opened file is no longer valid.
;;
(ERROR_FILE_INVALID 6)

;; MessageId: ERROR_FULLSCREEN_MODE
;;
;; MessageText:
;;
;;  The requested operation cannot be performed in full-screen mode.
;;
(ERROR_FULLSCREEN_MODE 7)

;; MessageId: ERROR_NO_TOKEN
;;
;; MessageText:
;;
;;  An attempt was made to reference a token that does not exist.
;;
(ERROR_NO_TOKEN 8)

;; MessageId: ERROR_BADDB
;;
;; MessageText:
;;
;;  The configuration registry database is corrupt.
;;
(ERROR_BADDB 9)

;; MessageId: ERROR_BADKEY
;;
;; MessageText:
;;
;;  The configuration registry key is invalid.
;;
(ERROR_BADKEY 0)

;; MessageId: ERROR_CANTOPEN
;;
;; MessageText:
;;
;;  The configuration registry key could not be opened.
;;
(ERROR_CANTOPEN 1)

;; MessageId: ERROR_CANTREAD
;;
;; MessageText:
;;
;;  The configuration registry key could not be read.
;;
(ERROR_CANTREAD 2)

;; MessageId: ERROR_CANTWRITE
;;
;; MessageText:
;;
;;  The configuration registry key could not be written.
;;
(ERROR_CANTWRITE 3)

;; MessageId: ERROR_REGISTRY_RECOVERED
;;
;; MessageText:
;;
;;  One of the files in the registry database had to be recovered
;;  by use of a log or alternate copy.  The recovery was successful.
;;
(ERROR_REGISTRY_RECOVERED 4)

;; MessageId: ERROR_REGISTRY_CORRUPT
;;
;; MessageText:
;;
;;  The registry is corrupted. The structure of one of the files that contains
;;  registry data is corrupted, or the system's image of the file in memory
;;  is corrupted, or the file could not be recovered because the alternate
;;  copy or log was absent or corrupted.
;;
(ERROR_REGISTRY_CORRUPT 5)

;; MessageId: ERROR_REGISTRY_IO_FAILED
;;
;; MessageText:
;;
;;  An I/O operation initiated by the registry failed unrecoverably.
;;  The registry could not read in, or write out, or flush, one of the files
;;  that contain the system's image of the registry.
;;
(ERROR_REGISTRY_IO_FAILED 6)

;; MessageId: ERROR_NOT_REGISTRY_FILE
;;
;; MessageText:
;;
;;  The system has attempted to load or restore a file into the registry, but the
;;  specified file is not in a registry file format.
;;
(ERROR_NOT_REGISTRY_FILE 7)

;; MessageId: ERROR_KEY_DELETED
;;
;; MessageText:
;;
;;  Illegal operation attempted on a registry key that has been marked for deletion.
;;
(ERROR_KEY_DELETED 8)

;; MessageId: ERROR_NO_LOG_SPACE
;;
;; MessageText:
;;
;;  System could not allocate the required space in a registry log.
;;
(ERROR_NO_LOG_SPACE 9)

;; MessageId: ERROR_KEY_HAS_CHILDREN
;;
;; MessageText:
;;
;;  Cannot create a symbolic link in a registry key that already
;;  has subkeys or values.
;;
(ERROR_KEY_HAS_CHILDREN 0)

;; MessageId: ERROR_CHILD_MUST_BE_VOLATILE
;;
;; MessageText:
;;
;;  Cannot create a stable subkey under a volatile parent key.
;;
(ERROR_CHILD_MUST_BE_VOLATILE 1)

;; MessageId: ERROR_NOTIFY_ENUM_DIR
;;
;; MessageText:
;;
;;  A notify change request is being completed and the information
;;  is not being returned in the caller's buffer. The caller now
;;  needs to enumerate the files to find the changes.
;;
(ERROR_NOTIFY_ENUM_DIR 2)

;; MessageId: ERROR_DEPENDENT_SERVICES_RUNNING
;;
;; MessageText:
;;
;;  A stop control has been sent to a service that other running services
;;  are dependent on.
;;
(ERROR_DEPENDENT_SERVICES_RUNNING 1)

;; MessageId: ERROR_INVALID_SERVICE_CONTROL
;;
;; MessageText:
;;
;;  The requested control is not valid for this service.
;;
(ERROR_INVALID_SERVICE_CONTROL 2)

;; MessageId: ERROR_SERVICE_REQUEST_TIMEOUT
;;
;; MessageText:
;;
;;  The service did not respond to the start or control request in a timely
;;  fashion.
;;
(ERROR_SERVICE_REQUEST_TIMEOUT 3)

;; MessageId: ERROR_SERVICE_NO_THREAD
;;
;; MessageText:
;;
;;  A thread could not be created for the service.
;;
(ERROR_SERVICE_NO_THREAD 4)

;; MessageId: ERROR_SERVICE_DATABASE_LOCKED
;;
;; MessageText:
;;
;;  The service database is locked.
;;
(ERROR_SERVICE_DATABASE_LOCKED 5)

;; MessageId: ERROR_SERVICE_ALREADY_RUNNING
;;
;; MessageText:
;;
;;  An instance of the service is already running.
;;
(ERROR_SERVICE_ALREADY_RUNNING 6)

;; MessageId: ERROR_INVALID_SERVICE_ACCOUNT
;;
;; MessageText:
;;
;;  The account name is invalid or does not exist.
;;
(ERROR_INVALID_SERVICE_ACCOUNT 7)

;; MessageId: ERROR_SERVICE_DISABLED
;;
;; MessageText:
;;
;;  The service cannot be started, either because it is disabled or because
;;  it has no enabled devices associated with it.
;;
(ERROR_SERVICE_DISABLED 8)

;; MessageId: ERROR_CIRCULAR_DEPENDENCY
;;
;; MessageText:
;;
;;  Circular service dependency was specified.
;;
(ERROR_CIRCULAR_DEPENDENCY 9)

;; MessageId: ERROR_SERVICE_DOES_NOT_EXIST
;;
;; MessageText:
;;
;;  The specified service does not exist as an installed service.
;;
(ERROR_SERVICE_DOES_NOT_EXIST 0)

;; MessageId: ERROR_SERVICE_CANNOT_ACCEPT_CTRL
;;
;; MessageText:
;;
;;  The service cannot accept control messages at this time.
;;
(ERROR_SERVICE_CANNOT_ACCEPT_CTRL 1)

;; MessageId: ERROR_SERVICE_NOT_ACTIVE
;;
;; MessageText:
;;
;;  The service has not been started.
;;
(ERROR_SERVICE_NOT_ACTIVE 2)

;; MessageId: ERROR_FAILED_SERVICE_CONTROLLER_CONNECT
;;
;; MessageText:
;;
;;  The service process could not connect to the service controller.
;;
(ERROR_FAILED_SERVICE_CONTROLLER_CONNECT 3)

;; MessageId: ERROR_EXCEPTION_IN_SERVICE
;;
;; MessageText:
;;
;;  An exception occurred in the service when handling the control request.
;;
(ERROR_EXCEPTION_IN_SERVICE 4)

;; MessageId: ERROR_DATABASE_DOES_NOT_EXIST
;;
;; MessageText:
;;
;;  The database specified does not exist.
;;
(ERROR_DATABASE_DOES_NOT_EXIST 5)

;; MessageId: ERROR_SERVICE_SPECIFIC_ERROR
;;
;; MessageText:
;;
;;  The service has returned a service-specific error code.
;;
(ERROR_SERVICE_SPECIFIC_ERROR 6)

;; MessageId: ERROR_PROCESS_ABORTED
;;
;; MessageText:
;;
;;  The process terminated unexpectedly.
;;
(ERROR_PROCESS_ABORTED 7)

;; MessageId: ERROR_SERVICE_DEPENDENCY_FAIL
;;
;; MessageText:
;;
;;  The dependency service or group failed to start.
;;
(ERROR_SERVICE_DEPENDENCY_FAIL 8)

;; MessageId: ERROR_SERVICE_LOGON_FAILED
;;
;; MessageText:
;;
;;  The service did not start due to a logon failure.
;;
(ERROR_SERVICE_LOGON_FAILED 9)

;; MessageId: ERROR_SERVICE_START_HANG
;;
;; MessageText:
;;
;;  After starting, the service hung in a start-pending state.
;;
(ERROR_SERVICE_START_HANG 0)

;; MessageId: ERROR_INVALID_SERVICE_LOCK
;;
;; MessageText:
;;
;;  The specified service database lock is invalid.
;;
(ERROR_INVALID_SERVICE_LOCK 1)

;; MessageId: ERROR_SERVICE_MARKED_FOR_DELETE
;;
;; MessageText:
;;
;;  The specified service has been marked for deletion.
;;
(ERROR_SERVICE_MARKED_FOR_DELETE 2)

;; MessageId: ERROR_SERVICE_EXISTS
;;
;; MessageText:
;;
;;  The specified service already exists.
;;
(ERROR_SERVICE_EXISTS 3)

;; MessageId: ERROR_ALREADY_RUNNING_LKG
;;
;; MessageText:
;;
;;  The system is currently running with the last-known-good configuration.
;;
(ERROR_ALREADY_RUNNING_LKG 4)

;; MessageId: ERROR_SERVICE_DEPENDENCY_DELETED
;;
;; MessageText:
;;
;;  The dependency service does not exist or has been marked for
;;  deletion.
;;
(ERROR_SERVICE_DEPENDENCY_DELETED 5)

;; MessageId: ERROR_BOOT_ALREADY_ACCEPTED
;;
;; MessageText:
;;
;;  The current boot has already been accepted for use as the
;;  last-known-good control set.
;;
(ERROR_BOOT_ALREADY_ACCEPTED 6)

;; MessageId: ERROR_SERVICE_NEVER_STARTED
;;
;; MessageText:
;;
;;  No attempts to start the service have been made since the last boot.
;;
(ERROR_SERVICE_NEVER_STARTED 7)

;; MessageId: ERROR_DUPLICATE_SERVICE_NAME
;;
;; MessageText:
;;
;;  The name is already in use as either a service name or a service display
;;  name.
;;
(ERROR_DUPLICATE_SERVICE_NAME 8)

;; MessageId: ERROR_DIFFERENT_SERVICE_ACCOUNT
;;
;; MessageText:
;;
;;  The account specified for this service is different from the account
;;  specified for other services running in the same process.
;;
(ERROR_DIFFERENT_SERVICE_ACCOUNT 9)

;; MessageId: ERROR_CANNOT_DETECT_DRIVER_FAILURE
;;
;; MessageText:
;;
;;  Failure actions can only be set for Win32 services, not for drivers.
;;
(ERROR_CANNOT_DETECT_DRIVER_FAILURE 0)

;; MessageId: ERROR_CANNOT_DETECT_PROCESS_ABORT
;;
;; MessageText:
;;
;;  This service runs in the same process as the service control manager.
;;  Therefore, the service control manager cannot take action if this
;;  service's process terminates unexpectedly.
;;
(ERROR_CANNOT_DETECT_PROCESS_ABORT 1)

;; MessageId: ERROR_NO_RECOVERY_PROGRAM
;;
;; MessageText:
;;
;;  No recovery program has been configured for this service.
;;
(ERROR_NO_RECOVERY_PROGRAM 2)

;; MessageId: ERROR_SERVICE_NOT_IN_EXE
;;
;; MessageText:
;;
;;  The executable program that this service is configured to run
;;  in does not implement the service.
;;
(ERROR_SERVICE_NOT_IN_EXE 3)

;; MessageId: ERROR_END_OF_MEDIA
;;
;; MessageText:
;;
;;  The physical end of the tape has been reached.
;;
(ERROR_END_OF_MEDIA 0)

;; MessageId: ERROR_FILEMARK_DETECTED
;;
;; MessageText:
;;
;;  A tape access reached a filemark.
;;
(ERROR_FILEMARK_DETECTED 1)

;; MessageId: ERROR_BEGINNING_OF_MEDIA
;;
;; MessageText:
;;
;;  The beginning of the tape or a partition was encountered.
;;
(ERROR_BEGINNING_OF_MEDIA 2)

;; MessageId: ERROR_SETMARK_DETECTED
;;
;; MessageText:
;;
;;  A tape access reached the end of a set of files.
;;
(ERROR_SETMARK_DETECTED 3)

;; MessageId: ERROR_NO_DATA_DETECTED
;;
;; MessageText:
;;
;;  No more data is on the tape.
;;
(ERROR_NO_DATA_DETECTED 4)

;; MessageId: ERROR_PARTITION_FAILURE
;;
;; MessageText:
;;
;;  Tape could not be partitioned.
;;
(ERROR_PARTITION_FAILURE 5)

;; MessageId: ERROR_INVALID_BLOCK_LENGTH
;;
;; MessageText:
;;
;;  When accessing a new tape of a multivolume partition, the current
;;  blocksize is incorrect.
;;
(ERROR_INVALID_BLOCK_LENGTH 6)

;; MessageId: ERROR_DEVICE_NOT_PARTITIONED
;;
;; MessageText:
;;
;;  Tape partition information could not be found when loading a tape.
;;
(ERROR_DEVICE_NOT_PARTITIONED 7)

;; MessageId: ERROR_UNABLE_TO_LOCK_MEDIA
;;
;; MessageText:
;;
;;  Unable to lock the media eject mechanism.
;;
(ERROR_UNABLE_TO_LOCK_MEDIA 8)

;; MessageId: ERROR_UNABLE_TO_UNLOAD_MEDIA
;;
;; MessageText:
;;
;;  Unable to unload the media.
;;
(ERROR_UNABLE_TO_UNLOAD_MEDIA 9)

;; MessageId: ERROR_MEDIA_CHANGED
;;
;; MessageText:
;;
;;  The media in the drive may have changed.
;;
(ERROR_MEDIA_CHANGED 0)

;; MessageId: ERROR_BUS_RESET
;;
;; MessageText:
;;
;;  The I/O bus was reset.
;;
(ERROR_BUS_RESET 1)

;; MessageId: ERROR_NO_MEDIA_IN_DRIVE
;;
;; MessageText:
;;
;;  No media in drive.
;;
(ERROR_NO_MEDIA_IN_DRIVE 2)

;; MessageId: ERROR_NO_UNICODE_TRANSLATION
;;
;; MessageText:
;;
;;  No mapping for the Unicode character exists in the target multi-byte code page.
;;
(ERROR_NO_UNICODE_TRANSLATION 3)

;; MessageId: ERROR_DLL_INIT_FAILED
;;
;; MessageText:
;;
;;  A dynamic link library (DLL) initialization routine failed.
;;
(ERROR_DLL_INIT_FAILED 4)

;; MessageId: ERROR_SHUTDOWN_IN_PROGRESS
;;
;; MessageText:
;;
;;  A system shutdown is in progress.
;;
(ERROR_SHUTDOWN_IN_PROGRESS 5)

;; MessageId: ERROR_NO_SHUTDOWN_IN_PROGRESS
;;
;; MessageText:
;;
;;  Unable to abort the system shutdown because no shutdown was in progress.
;;
(ERROR_NO_SHUTDOWN_IN_PROGRESS 6)

;; MessageId: ERROR_IO_DEVICE
;;
;; MessageText:
;;
;;  The request could not be performed because of an I/O device error.
;;
(ERROR_IO_DEVICE 7)

;; MessageId: ERROR_SERIAL_NO_DEVICE
;;
;; MessageText:
;;
;;  No serial device was successfully initialized.  The serial driver will unload.
;;
(ERROR_SERIAL_NO_DEVICE 8)

;; MessageId: ERROR_IRQ_BUSY
;;
;; MessageText:
;;
;;  Unable to open a device that was sharing an interrupt request (IRQ)
;;  with other devices. At least one other device that uses that IRQ
;;  was already opened.
;;
(ERROR_IRQ_BUSY 9)

;; MessageId: ERROR_MORE_WRITES
;;
;; MessageText:
;;
;;  A serial I/O operation was completed by another write to the serial port.
;;  (The IOCTL_SERIAL_XOFF_COUNTER reached zero.)
;;
(ERROR_MORE_WRITES 0)

;; MessageId: ERROR_COUNTER_TIMEOUT
;;
;; MessageText:
;;
;;  A serial I/O operation completed because the timeout period expired.
;;  (The IOCTL_SERIAL_XOFF_COUNTER did not reach zero.)
;;
(ERROR_COUNTER_TIMEOUT 1)

;; MessageId: ERROR_FLOPPY_ID_MARK_NOT_FOUND
;;
;; MessageText:
;;
;;  No ID address mark was found on the floppy disk.
;;
(ERROR_FLOPPY_ID_MARK_NOT_FOUND 2)

;; MessageId: ERROR_FLOPPY_WRONG_CYLINDER
;;
;; MessageText:
;;
;;  Mismatch between the floppy disk sector ID field and the floppy disk
;;  controller track address.
;;
(ERROR_FLOPPY_WRONG_CYLINDER 3)

;; MessageId: ERROR_FLOPPY_UNKNOWN_ERROR
;;
;; MessageText:
;;
;;  The floppy disk controller reported an error that is not recognized
;;  by the floppy disk driver.
;;
(ERROR_FLOPPY_UNKNOWN_ERROR 4)

;; MessageId: ERROR_FLOPPY_BAD_REGISTERS
;;
;; MessageText:
;;
;;  The floppy disk controller returned inconsistent results in its registers.
;;
(ERROR_FLOPPY_BAD_REGISTERS 5)

;; MessageId: ERROR_DISK_RECALIBRATE_FAILED
;;
;; MessageText:
;;
;;  While accessing the hard disk, a recalibrate operation failed, even after retries.
;;
(ERROR_DISK_RECALIBRATE_FAILED 6)

;; MessageId: ERROR_DISK_OPERATION_FAILED
;;
;; MessageText:
;;
;;  While accessing the hard disk, a disk operation failed even after retries.
;;
(ERROR_DISK_OPERATION_FAILED 7)

;; MessageId: ERROR_DISK_RESET_FAILED
;;
;; MessageText:
;;
;;  While accessing the hard disk, a disk controller reset was needed, but
;;  even that failed.
;;
(ERROR_DISK_RESET_FAILED 8)

;; MessageId: ERROR_EOM_OVERFLOW
;;
;; MessageText:
;;
;;  Physical end of tape encountered.
;;
(ERROR_EOM_OVERFLOW 9)

;; MessageId: ERROR_NOT_ENOUGH_SERVER_MEMORY
;;
;; MessageText:
;;
;;  Not enough server storage is available to process this command.
;;
(ERROR_NOT_ENOUGH_SERVER_MEMORY 0)

;; MessageId: ERROR_POSSIBLE_DEADLOCK
;;
;; MessageText:
;;
;;  A potential deadlock condition has been detected.
;;
(ERROR_POSSIBLE_DEADLOCK 1)

;; MessageId: ERROR_MAPPED_ALIGNMENT
;;
;; MessageText:
;;
;;  The base address or the file offset specified does not have the proper
;;  alignment.
;;
(ERROR_MAPPED_ALIGNMENT 2)

;; MessageId: ERROR_SET_POWER_STATE_VETOED
;;
;; MessageText:
;;
;;  An attempt to change the system power state was vetoed by another
;;  application or driver.
;;
(ERROR_SET_POWER_STATE_VETOED 0)

;; MessageId: ERROR_SET_POWER_STATE_FAILED
;;
;; MessageText:
;;
;;  The system BIOS failed an attempt to change the system power state.
;;
(ERROR_SET_POWER_STATE_FAILED 1)

;; MessageId: ERROR_TOO_MANY_LINKS
;;
;; MessageText:
;;
;;  An attempt was made to create more links on a file than
;;  the file system supports.
;;
(ERROR_TOO_MANY_LINKS 2)

;; MessageId: ERROR_OLD_WIN_VERSION
;;
;; MessageText:
;;
;;  The specified program requires a newer version of Windows.
;;
(ERROR_OLD_WIN_VERSION 0)

;; MessageId: ERROR_APP_WRONG_OS
;;
;; MessageText:
;;
;;  The specified program is not a Windows or MS-DOS program.
;;
(ERROR_APP_WRONG_OS 1)

;; MessageId: ERROR_SINGLE_INSTANCE_APP
;;
;; MessageText:
;;
;;  Cannot start more than one instance of the specified program.
;;
(ERROR_SINGLE_INSTANCE_APP 2)

;; MessageId: ERROR_RMODE_APP
;;
;; MessageText:
;;
;;  The specified program was written for an earlier version of Windows.
;;
(ERROR_RMODE_APP 3)

;; MessageId: ERROR_INVALID_DLL
;;
;; MessageText:
;;
;;  One of the library files needed to run this application is damaged.
;;
(ERROR_INVALID_DLL 4)

;; MessageId: ERROR_NO_ASSOCIATION
;;
;; MessageText:
;;
;;  No application is associated with the specified file for this operation.
;;
(ERROR_NO_ASSOCIATION 5)

;; MessageId: ERROR_DDE_FAIL
;;
;; MessageText:
;;
;;  An error occurred in sending the command to the application.
;;
(ERROR_DDE_FAIL 6)

;; MessageId: ERROR_DLL_NOT_FOUND
;;
;; MessageText:
;;
;;  One of the library files needed to run this application cannot be found.
;;
(ERROR_DLL_NOT_FOUND 7)

;; MessageId: ERROR_NO_MORE_USER_HANDLES
;;
;; MessageText:
;;
;;  The current process has used all of its system allowance of handles for Window Manager objects.
;;
(ERROR_NO_MORE_USER_HANDLES 8)

;; MessageId: ERROR_MESSAGE_SYNC_ONLY
;;
;; MessageText:
;;
;;  The message can be used only with synchronous operations.
;;
(ERROR_MESSAGE_SYNC_ONLY 9)

;; MessageId: ERROR_SOURCE_ELEMENT_EMPTY
;;
;; MessageText:
;;
;;  The indicated source element has no media.
;;
(ERROR_SOURCE_ELEMENT_EMPTY 0)

;; MessageId: ERROR_DESTINATION_ELEMENT_FULL
;;
;; MessageText:
;;
;;  The indicated destination element already contains media.
;;
(ERROR_DESTINATION_ELEMENT_FULL 1)

;; MessageId: ERROR_ILLEGAL_ELEMENT_ADDRESS
;;
;; MessageText:
;;
;;  The indicated element does not exist.
;;
(ERROR_ILLEGAL_ELEMENT_ADDRESS 2)

;; MessageId: ERROR_MAGAZINE_NOT_PRESENT
;;
;; MessageText:
;;
;;  The indicated element is part of a magazine that is not present.
;;
(ERROR_MAGAZINE_NOT_PRESENT 3)

;; MessageId: ERROR_DEVICE_REINITIALIZATION_NEEDED
;;
;; MessageText:
;;
;;  The indicated device requires reinitialization due to hardware errors.
;;
(ERROR_DEVICE_REINITIALIZATION_NEEDED 4)

;; MessageId: ERROR_DEVICE_REQUIRES_CLEANING
;;
;; MessageText:
;;
;;  The device has indicated that cleaning is required before further operations are attempted.
;;
(ERROR_DEVICE_REQUIRES_CLEANING 5)

;; MessageId: ERROR_DEVICE_DOOR_OPEN
;;
;; MessageText:
;;
;;  The device has indicated that its door is open.
;;
(ERROR_DEVICE_DOOR_OPEN 6)

;; MessageId: ERROR_DEVICE_NOT_CONNECTED
;;
;; MessageText:
;;
;;  The device is not connected.
;;
(ERROR_DEVICE_NOT_CONNECTED 7)

;; MessageId: ERROR_NOT_FOUND
;;
;; MessageText:
;;
;;  Element not found.
;;
(ERROR_NOT_FOUND 8)

;; MessageId: ERROR_NO_MATCH
;;
;; MessageText:
;;
;;  There was no match for the specified key in the index.
;;
(ERROR_NO_MATCH 9)

;; MessageId: ERROR_SET_NOT_FOUND
;;
;; MessageText:
;;
;;  The property set specified does not exist on the object.
;;
(ERROR_SET_NOT_FOUND 0)

;; MessageId: ERROR_POINT_NOT_FOUND
;;
;; MessageText:
;;
;;  The point passed to GetMouseMovePoints is not in the buffer.
;;
(ERROR_POINT_NOT_FOUND 1)

;; MessageId: ERROR_NO_TRACKING_SERVICE
;;
;; MessageText:
;;
;;  The tracking (workstation) service is not running.
;;
(ERROR_NO_TRACKING_SERVICE 2)

;; MessageId: ERROR_NO_VOLUME_ID
;;
;; MessageText:
;;
;;  The Volume ID could not be found.
;;
(ERROR_NO_VOLUME_ID 3)

;; MessageId: ERROR_INVALID_VLM_OPERATION
;;
;; MessageText:
;;
;;  The specified Very Large Memory (64-bit) operation is invalid.
;;
(ERROR_INVALID_VLM_OPERATION 4)

;; MessageId: ERROR_UNABLE_TO_REMOVE_REPLACED
;;
;; MessageText:
;;
;;  Unable to remove the file to be replaced.
;;
(ERROR_UNABLE_TO_REMOVE_REPLACED 5)

;; MessageId: ERROR_UNABLE_TO_MOVE_REPLACEMENT
;;
;; MessageText:
;;
;;  Unable to move the replacement file to the to-be-replaced file. Files are in
;;  there original names.
;;
(ERROR_UNABLE_TO_MOVE_REPLACEMENT 6)

;; MessageId: ERROR_UNABLE_TO_MOVE_REPLACEMENT_2
;;
;; MessageText:
;;
;;  Unable to move the replacement file to the to be replaced file. The
;;  to-be-replaced is in the backup file.
;;
(ERROR_UNABLE_TO_MOVE_REPLACEMENT_2 7)

;; MessageId: ERROR_JOURNAL_DELETE_IN_PROGRESS
;;
;; MessageText:
;;
;;  The volume change journal is being deleted.
;;
(ERROR_JOURNAL_DELETE_IN_PROGRESS 8)

;; MessageId: ERROR_JOURNAL_NOT_ACTIVE
;;
;; MessageText:
;;
;;  The volume change journal service is not active.
;;
(ERROR_JOURNAL_NOT_ACTIVE 9)

;; MessageId: ERROR_POTENTIAL_FILE_FOUND
;;
;; MessageText:
;;
;;  A file was found, but it may not be the correct file.
;;
(ERROR_POTENTIAL_FILE_FOUND 0)

;;                       ;;
;; Winnet32 Status Codes ;;
;;                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;/

;; MessageId: ERROR_CONNECTED_OTHER_PASSWORD
;;
;; MessageText:
;;
;;  The network connection was made successfully, but the user had to be prompted
;;  for a password other than the one originally specified.
;;
(ERROR_CONNECTED_OTHER_PASSWORD 8)

;; MessageId: ERROR_BAD_USERNAME
;;
;; MessageText:
;;
;;  The specified username is invalid.
;;
(ERROR_BAD_USERNAME 2)

;; MessageId: ERROR_NOT_CONNECTED
;;
;; MessageText:
;;
;;  This network connection does not exist.
;;
(ERROR_NOT_CONNECTED 0)

;; MessageId: ERROR_OPEN_FILES
;;
;; MessageText:
;;
;;  This network connection has files open or requests pending.
;;
(ERROR_OPEN_FILES 1)

;; MessageId: ERROR_ACTIVE_CONNECTIONS
;;
;; MessageText:
;;
;;  Active connections still exist.
;;
(ERROR_ACTIVE_CONNECTIONS 2)

;; MessageId: ERROR_DEVICE_IN_USE
;;
;; MessageText:
;;
;;  The device is in use by an active process and cannot be disconnected.
;;
(ERROR_DEVICE_IN_USE 4)

;; MessageId: ERROR_BAD_DEVICE
;;
;; MessageText:
;;
;;  The specified device name is invalid.
;;
(ERROR_BAD_DEVICE 0)

;; MessageId: ERROR_CONNECTION_UNAVAIL
;;
;; MessageText:
;;
;;  The device is not currently connected but it is a remembered connection.
;;
(ERROR_CONNECTION_UNAVAIL 1)

;; MessageId: ERROR_DEVICE_ALREADY_REMEMBERED
;;
;; MessageText:
;;
;;  An attempt was made to remember a device that had previously been remembered.
;;
(ERROR_DEVICE_ALREADY_REMEMBERED 2)

;; MessageId: ERROR_NO_NET_OR_BAD_PATH
;;
;; MessageText:
;;
;;  No network provider accepted the given network path.
;;
(ERROR_NO_NET_OR_BAD_PATH 3)

;; MessageId: ERROR_BAD_PROVIDER
;;
;; MessageText:
;;
;;  The specified network provider name is invalid.
;;
(ERROR_BAD_PROVIDER 4)

;; MessageId: ERROR_CANNOT_OPEN_PROFILE
;;
;; MessageText:
;;
;;  Unable to open the network connection profile.
;;
(ERROR_CANNOT_OPEN_PROFILE 5)

;; MessageId: ERROR_BAD_PROFILE
;;
;; MessageText:
;;
;;  The network connection profile is corrupted.
;;
(ERROR_BAD_PROFILE 6)

;; MessageId: ERROR_NOT_CONTAINER
;;
;; MessageText:
;;
;;  Cannot enumerate a noncontainer.
;;
(ERROR_NOT_CONTAINER 7)

;; MessageId: ERROR_EXTENDED_ERROR
;;
;; MessageText:
;;
;;  An extended error has occurred.
;;
(ERROR_EXTENDED_ERROR 8)

;; MessageId: ERROR_INVALID_GROUPNAME
;;
;; MessageText:
;;
;;  The format of the specified group name is invalid.
;;
(ERROR_INVALID_GROUPNAME 9)

;; MessageId: ERROR_INVALID_COMPUTERNAME
;;
;; MessageText:
;;
;;  The format of the specified computer name is invalid.
;;
(ERROR_INVALID_COMPUTERNAME 0)

;; MessageId: ERROR_INVALID_EVENTNAME
;;
;; MessageText:
;;
;;  The format of the specified event name is invalid.
;;
(ERROR_INVALID_EVENTNAME 1)

;; MessageId: ERROR_INVALID_DOMAINNAME
;;
;; MessageText:
;;
;;  The format of the specified domain name is invalid.
;;
(ERROR_INVALID_DOMAINNAME 2)

;; MessageId: ERROR_INVALID_SERVICENAME
;;
;; MessageText:
;;
;;  The format of the specified service name is invalid.
;;
(ERROR_INVALID_SERVICENAME 3)

;; MessageId: ERROR_INVALID_NETNAME
;;
;; MessageText:
;;
;;  The format of the specified network name is invalid.
;;
(ERROR_INVALID_NETNAME 4)

;; MessageId: ERROR_INVALID_SHARENAME
;;
;; MessageText:
;;
;;  The format of the specified share name is invalid.
;;
(ERROR_INVALID_SHARENAME 5)

;; MessageId: ERROR_INVALID_PASSWORDNAME
;;
;; MessageText:
;;
;;  The format of the specified password is invalid.
;;
(ERROR_INVALID_PASSWORDNAME 6)

;; MessageId: ERROR_INVALID_MESSAGENAME
;;
;; MessageText:
;;
;;  The format of the specified message name is invalid.
;;
(ERROR_INVALID_MESSAGENAME 7)

;; MessageId: ERROR_INVALID_MESSAGEDEST
;;
;; MessageText:
;;
;;  The format of the specified message destination is invalid.
;;
(ERROR_INVALID_MESSAGEDEST 8)

;; MessageId: ERROR_SESSION_CREDENTIAL_CONFLICT
;;
;; MessageText:
;;
;;  The credentials supplied conflict with an existing set of credentials.
;;
(ERROR_SESSION_CREDENTIAL_CONFLICT 9)

;; MessageId: ERROR_REMOTE_SESSION_LIMIT_EXCEEDED
;;
;; MessageText:
;;
;;  An attempt was made to establish a session to a network server, but there
;;  are already too many sessions established to that server.
;;
(ERROR_REMOTE_SESSION_LIMIT_EXCEEDED 0)

;; MessageId: ERROR_DUP_DOMAINNAME
;;
;; MessageText:
;;
;;  The workgroup or domain name is already in use by another computer on the
;;  network.
;;
(ERROR_DUP_DOMAINNAME 1)

;; MessageId: ERROR_NO_NETWORK
;;
;; MessageText:
;;
;;  The network is not present or not started.
;;
(ERROR_NO_NETWORK 2)

;; MessageId: ERROR_CANCELLED
;;
;; MessageText:
;;
;;  The operation was canceled by the user.
;;
(ERROR_CANCELLED 3)

;; MessageId: ERROR_USER_MAPPED_FILE
;;
;; MessageText:
;;
;;  The requested operation cannot be performed on a file with a user-mapped section open.
;;
(ERROR_USER_MAPPED_FILE 4)

;; MessageId: ERROR_CONNECTION_REFUSED
;;
;; MessageText:
;;
;;  The remote system refused the network connection.
;;
(ERROR_CONNECTION_REFUSED 5)

;; MessageId: ERROR_GRACEFUL_DISCONNECT
;;
;; MessageText:
;;
;;  The network connection was gracefully closed.
;;
(ERROR_GRACEFUL_DISCONNECT 6)

;; MessageId: ERROR_ADDRESS_ALREADY_ASSOCIATED
;;
;; MessageText:
;;
;;  The network transport endpoint already has an address associated with it.
;;
(ERROR_ADDRESS_ALREADY_ASSOCIATED 7)

;; MessageId: ERROR_ADDRESS_NOT_ASSOCIATED
;;
;; MessageText:
;;
;;  An address has not yet been associated with the network endpoint.
;;
(ERROR_ADDRESS_NOT_ASSOCIATED 8)

;; MessageId: ERROR_CONNECTION_INVALID
;;
;; MessageText:
;;
;;  An operation was attempted on a nonexistent network connection.
;;
(ERROR_CONNECTION_INVALID 9)

;; MessageId: ERROR_CONNECTION_ACTIVE
;;
;; MessageText:
;;
;;  An invalid operation was attempted on an active network connection.
;;
(ERROR_CONNECTION_ACTIVE 0)

;; MessageId: ERROR_NETWORK_UNREACHABLE
;;
;; MessageText:
;;
;;  The remote network is not reachable by the transport.
;;
(ERROR_NETWORK_UNREACHABLE 1)

;; MessageId: ERROR_HOST_UNREACHABLE
;;
;; MessageText:
;;
;;  The remote system is not reachable by the transport.
;;
(ERROR_HOST_UNREACHABLE 2)

;; MessageId: ERROR_PROTOCOL_UNREACHABLE
;;
;; MessageText:
;;
;;  The remote system does not support the transport protocol.
;;
(ERROR_PROTOCOL_UNREACHABLE 3)

;; MessageId: ERROR_PORT_UNREACHABLE
;;
;; MessageText:
;;
;;  No service is operating at the destination network endpoint
;;  on the remote system.
;;
(ERROR_PORT_UNREACHABLE 4)

;; MessageId: ERROR_REQUEST_ABORTED
;;
;; MessageText:
;;
;;  The request was aborted.
;;
(ERROR_REQUEST_ABORTED 5)

;; MessageId: ERROR_CONNECTION_ABORTED
;;
;; MessageText:
;;
;;  The network connection was aborted by the local system.
;;
(ERROR_CONNECTION_ABORTED 6)

;; MessageId: ERROR_RETRY
;;
;; MessageText:
;;
;;  The operation could not be completed.  A retry should be performed.
;;
(ERROR_RETRY 7)

;; MessageId: ERROR_CONNECTION_COUNT_LIMIT
;;
;; MessageText:
;;
;;  A connection to the server could not be made because the limit on the number of
;;  concurrent connections for this account has been reached.
;;
(ERROR_CONNECTION_COUNT_LIMIT 8)

;; MessageId: ERROR_LOGIN_TIME_RESTRICTION
;;
;; MessageText:
;;
;;  Attempting to log in during an unauthorized time of day for this account.
;;
(ERROR_LOGIN_TIME_RESTRICTION 9)

;; MessageId: ERROR_LOGIN_WKSTA_RESTRICTION
;;
;; MessageText:
;;
;;  The account is not authorized to log in from this station.
;;
(ERROR_LOGIN_WKSTA_RESTRICTION 0)

;; MessageId: ERROR_INCORRECT_ADDRESS
;;
;; MessageText:
;;
;;  The network address could not be used for the operation requested.
;;
(ERROR_INCORRECT_ADDRESS 1)

;; MessageId: ERROR_ALREADY_REGISTERED
;;
;; MessageText:
;;
;;  The service is already registered.
;;
(ERROR_ALREADY_REGISTERED 2)

;; MessageId: ERROR_SERVICE_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified service does not exist.
;;
(ERROR_SERVICE_NOT_FOUND 3)

;; MessageId: ERROR_NOT_AUTHENTICATED
;;
;; MessageText:
;;
;;  The operation being requested was not performed because the user
;;  has not been authenticated.
;;
(ERROR_NOT_AUTHENTICATED 4)

;; MessageId: ERROR_NOT_LOGGED_ON
;;
;; MessageText:
;;
;;  The operation being requested was not performed because the user
;;  has not logged on to the network.
;;  The specified service does not exist.
;;
(ERROR_NOT_LOGGED_ON 5)

;; MessageId: ERROR_CONTINUE
;;
;; MessageText:
;;
;;  Continue with work in progress.
;;
(ERROR_CONTINUE 6)

;; MessageId: ERROR_ALREADY_INITIALIZED
;;
;; MessageText:
;;
;;  An attempt was made to perform an initialization operation when
;;  initialization has already been completed.
;;
(ERROR_ALREADY_INITIALIZED 7)

;; MessageId: ERROR_NO_MORE_DEVICES
;;
;; MessageText:
;;
;;  No more local devices.
;;
(ERROR_NO_MORE_DEVICES 8)

;; MessageId: ERROR_NO_SUCH_SITE
;;
;; MessageText:
;;
;;  The specified site does not exist.
;;
(ERROR_NO_SUCH_SITE 9)

;; MessageId: ERROR_DOMAIN_CONTROLLER_EXISTS
;;
;; MessageText:
;;
;;  A domain controller with the specified name already exists.
;;
(ERROR_DOMAIN_CONTROLLER_EXISTS 0)

;;                       ;;
;; Security Status Codes ;;
;;                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;/

;; MessageId: ERROR_NOT_ALL_ASSIGNED
;;
;; MessageText:
;;
;;  Not all privileges referenced are assigned to the caller.
;;
(ERROR_NOT_ALL_ASSIGNED 0)

;; MessageId: ERROR_SOME_NOT_MAPPED
;;
;; MessageText:
;;
;;  Some mapping between account names and security IDs was not done.
;;
(ERROR_SOME_NOT_MAPPED 1)

;; MessageId: ERROR_NO_QUOTAS_FOR_ACCOUNT
;;
;; MessageText:
;;
;;  No system quota limits are specifically set for this account.
;;
(ERROR_NO_QUOTAS_FOR_ACCOUNT 2)

;; MessageId: ERROR_LOCAL_USER_SESSION_KEY
;;
;; MessageText:
;;
;;  No encryption key is available.  A well-known encryption key was returned.
;;
(ERROR_LOCAL_USER_SESSION_KEY 3)

;; MessageId: ERROR_NULL_LM_PASSWORD
;;
;; MessageText:
;;
;;  The Windows NT password is too complex to be converted to a LAN Manager
;;  password.  The LAN Manager password returned is a NULL string.
;;
(ERROR_NULL_LM_PASSWORD 4)

;; MessageId: ERROR_UNKNOWN_REVISION
;;
;; MessageText:
;;
;;  The revision level is unknown.
;;
(ERROR_UNKNOWN_REVISION 5)

;; MessageId: ERROR_REVISION_MISMATCH
;;
;; MessageText:
;;
;;  Indicates two revision levels are incompatible.
;;
(ERROR_REVISION_MISMATCH 6)

;; MessageId: ERROR_INVALID_OWNER
;;
;; MessageText:
;;
;;  This security ID may not be assigned as the owner of this object.
;;
(ERROR_INVALID_OWNER 7)

;; MessageId: ERROR_INVALID_PRIMARY_GROUP
;;
;; MessageText:
;;
;;  This security ID may not be assigned as the primary group of an object.
;;
(ERROR_INVALID_PRIMARY_GROUP 8)

;; MessageId: ERROR_NO_IMPERSONATION_TOKEN
;;
;; MessageText:
;;
;;  An attempt has been made to operate on an impersonation token
;;  by a thread that is not currently impersonating a client.
;;
(ERROR_NO_IMPERSONATION_TOKEN 9)

;; MessageId: ERROR_CANT_DISABLE_MANDATORY
;;
;; MessageText:
;;
;;  The group may not be disabled.
;;
(ERROR_CANT_DISABLE_MANDATORY 0)

;; MessageId: ERROR_NO_LOGON_SERVERS
;;
;; MessageText:
;;
;;  There are currently no logon servers available to service the logon
;;  request.
;;
(ERROR_NO_LOGON_SERVERS 1)

;; MessageId: ERROR_NO_SUCH_LOGON_SESSION
;;
;; MessageText:
;;
;;   A specified logon session does not exist.  It may already have
;;   been terminated.
;;
(ERROR_NO_SUCH_LOGON_SESSION 2)

;; MessageId: ERROR_NO_SUCH_PRIVILEGE
;;
;; MessageText:
;;
;;   A specified privilege does not exist.
;;
(ERROR_NO_SUCH_PRIVILEGE 3)

;; MessageId: ERROR_PRIVILEGE_NOT_HELD
;;
;; MessageText:
;;
;;   A required privilege is not held by the client.
;;
(ERROR_PRIVILEGE_NOT_HELD 4)

;; MessageId: ERROR_INVALID_ACCOUNT_NAME
;;
;; MessageText:
;;
;;  The name provided is not a properly formed account name.
;;
(ERROR_INVALID_ACCOUNT_NAME 5)

;; MessageId: ERROR_USER_EXISTS
;;
;; MessageText:
;;
;;  The specified user already exists.
;;
(ERROR_USER_EXISTS 6)

;; MessageId: ERROR_NO_SUCH_USER
;;
;; MessageText:
;;
;;  The specified user does not exist.
;;
(ERROR_NO_SUCH_USER 7)

;; MessageId: ERROR_GROUP_EXISTS
;;
;; MessageText:
;;
;;  The specified group already exists.
;;
(ERROR_GROUP_EXISTS 8)

;; MessageId: ERROR_NO_SUCH_GROUP
;;
;; MessageText:
;;
;;  The specified group does not exist.
;;
(ERROR_NO_SUCH_GROUP 9)

;; MessageId: ERROR_MEMBER_IN_GROUP
;;
;; MessageText:
;;
;;  Either the specified user account is already a member of the specified
;;  group, or the specified group cannot be deleted because it contains
;;  a member.
;;
(ERROR_MEMBER_IN_GROUP 0)

;; MessageId: ERROR_MEMBER_NOT_IN_GROUP
;;
;; MessageText:
;;
;;  The specified user account is not a member of the specified group account.
;;
(ERROR_MEMBER_NOT_IN_GROUP 1)

;; MessageId: ERROR_LAST_ADMIN
;;
;; MessageText:
;;
;;  The last remaining administration account cannot be disabled
;;  or deleted.
;;
(ERROR_LAST_ADMIN 2)

;; MessageId: ERROR_WRONG_PASSWORD
;;
;; MessageText:
;;
;;  Unable to update the password.  The value provided as the current
;;  password is incorrect.
;;
(ERROR_WRONG_PASSWORD 3)

;; MessageId: ERROR_ILL_FORMED_PASSWORD
;;
;; MessageText:
;;
;;  Unable to update the password.  The value provided for the new password
;;  contains values that are not allowed in passwords.
;;
(ERROR_ILL_FORMED_PASSWORD 4)

;; MessageId: ERROR_PASSWORD_RESTRICTION
;;
;; MessageText:
;;
;;  Unable to update the password because a password update rule has been
;;  violated.
;;
(ERROR_PASSWORD_RESTRICTION 5)

;; MessageId: ERROR_LOGON_FAILURE
;;
;; MessageText:
;;
;;  Logon failure: unknown user name or bad password.
;;
(ERROR_LOGON_FAILURE 6)

;; MessageId: ERROR_ACCOUNT_RESTRICTION
;;
;; MessageText:
;;
;;  Logon failure: user account restriction.
;;
(ERROR_ACCOUNT_RESTRICTION 7)

;; MessageId: ERROR_INVALID_LOGON_HOURS
;;
;; MessageText:
;;
;;  Logon failure: account logon time restriction violation.
;;
(ERROR_INVALID_LOGON_HOURS 8)

;; MessageId: ERROR_INVALID_WORKSTATION
;;
;; MessageText:
;;
;;  Logon failure: user not allowed to log on to this computer.
;;
(ERROR_INVALID_WORKSTATION 9)

;; MessageId: ERROR_PASSWORD_EXPIRED
;;
;; MessageText:
;;
;;  Logon failure: the specified account password has expired.
;;
(ERROR_PASSWORD_EXPIRED 0)

;; MessageId: ERROR_ACCOUNT_DISABLED
;;
;; MessageText:
;;
;;  Logon failure: account currently disabled.
;;
(ERROR_ACCOUNT_DISABLED 1)

;; MessageId: ERROR_NONE_MAPPED
;;
;; MessageText:
;;
;;  No mapping between account names and security IDs was done.
;;
(ERROR_NONE_MAPPED 2)

;; MessageId: ERROR_TOO_MANY_LUIDS_REQUESTED
;;
;; MessageText:
;;
;;  Too many local user identifiers (LUIDs) were requested at one time.
;;
(ERROR_TOO_MANY_LUIDS_REQUESTED 3)

;; MessageId: ERROR_LUIDS_EXHAUSTED
;;
;; MessageText:
;;
;;  No more local user identifiers (LUIDs) are available.
;;
(ERROR_LUIDS_EXHAUSTED 4)

;; MessageId: ERROR_INVALID_SUB_AUTHORITY
;;
;; MessageText:
;;
;;  The subauthority part of a security ID is invalid for this particular use.
;;
(ERROR_INVALID_SUB_AUTHORITY 5)

;; MessageId: ERROR_INVALID_ACL
;;
;; MessageText:
;;
;;  The access control list (ACL) structure is invalid.
;;
(ERROR_INVALID_ACL 6)

;; MessageId: ERROR_INVALID_SID
;;
;; MessageText:
;;
;;  The security ID structure is invalid.
;;
(ERROR_INVALID_SID 7)

;; MessageId: ERROR_INVALID_SECURITY_DESCR
;;
;; MessageText:
;;
;;  The security descriptor structure is invalid.
;;
(ERROR_INVALID_SECURITY_DESCR 8)

;; MessageId: ERROR_BAD_INHERITANCE_ACL
;;
;; MessageText:
;;
;;  The inherited access control list (ACL) or access control entry (ACE)
;;  could not be built.
;;
(ERROR_BAD_INHERITANCE_ACL 0)

;; MessageId: ERROR_SERVER_DISABLED
;;
;; MessageText:
;;
;;  The server is currently disabled.
;;
(ERROR_SERVER_DISABLED 1)

;; MessageId: ERROR_SERVER_NOT_DISABLED
;;
;; MessageText:
;;
;;  The server is currently enabled.
;;
(ERROR_SERVER_NOT_DISABLED 2)

;; MessageId: ERROR_INVALID_ID_AUTHORITY
;;
;; MessageText:
;;
;;  The value provided was an invalid value for an identifier authority.
;;
(ERROR_INVALID_ID_AUTHORITY 3)

;; MessageId: ERROR_ALLOTTED_SPACE_EXCEEDED
;;
;; MessageText:
;;
;;  No more memory is available for security information updates.
;;
(ERROR_ALLOTTED_SPACE_EXCEEDED 4)

;; MessageId: ERROR_INVALID_GROUP_ATTRIBUTES
;;
;; MessageText:
;;
;;  The specified attributes are invalid, or incompatible with the
;;  attributes for the group as a whole.
;;
(ERROR_INVALID_GROUP_ATTRIBUTES 5)

;; MessageId: ERROR_BAD_IMPERSONATION_LEVEL
;;
;; MessageText:
;;
;;  Either a required impersonation level was not provided, or the
;;  provided impersonation level is invalid.
;;
(ERROR_BAD_IMPERSONATION_LEVEL 6)

;; MessageId: ERROR_CANT_OPEN_ANONYMOUS
;;
;; MessageText:
;;
;;  Cannot open an anonymous level security token.
;;
(ERROR_CANT_OPEN_ANONYMOUS 7)

;; MessageId: ERROR_BAD_VALIDATION_CLASS
;;
;; MessageText:
;;
;;  The validation information class requested was invalid.
;;
(ERROR_BAD_VALIDATION_CLASS 8)

;; MessageId: ERROR_BAD_TOKEN_TYPE
;;
;; MessageText:
;;
;;  The type of the token is inappropriate for its attempted use.
;;
(ERROR_BAD_TOKEN_TYPE 9)

;; MessageId: ERROR_NO_SECURITY_ON_OBJECT
;;
;; MessageText:
;;
;;  Unable to perform a security operation on an object
;;  that has no associated security.
;;
(ERROR_NO_SECURITY_ON_OBJECT 0)

;; MessageId: ERROR_CANT_ACCESS_DOMAIN_INFO
;;
;; MessageText:
;;
;;  Configuration information could not be read from the domain
;;  controller, either because the machine is unavailable, or
;;  access has been denied.
;;
(ERROR_CANT_ACCESS_DOMAIN_INFO 1)

;; MessageId: ERROR_INVALID_SERVER_STATE
;;
;; MessageText:
;;
;;  The security account manager (SAM) or local security
;;  authority (LSA) server was in the wrong state to perform
;;  the security operation.
;;
(ERROR_INVALID_SERVER_STATE 2)

;; MessageId: ERROR_INVALID_DOMAIN_STATE
;;
;; MessageText:
;;
;;  The domain was in the wrong state to perform the security operation.
;;
(ERROR_INVALID_DOMAIN_STATE 3)

;; MessageId: ERROR_INVALID_DOMAIN_ROLE
;;
;; MessageText:
;;
;;  This operation is only allowed for the Primary Domain Controller of the domain.
;;
(ERROR_INVALID_DOMAIN_ROLE 4)

;; MessageId: ERROR_NO_SUCH_DOMAIN
;;
;; MessageText:
;;
;;  The specified domain did not exist.
;;
(ERROR_NO_SUCH_DOMAIN 5)

;; MessageId: ERROR_DOMAIN_EXISTS
;;
;; MessageText:
;;
;;  The specified domain already exists.
;;
(ERROR_DOMAIN_EXISTS 6)

;; MessageId: ERROR_DOMAIN_LIMIT_EXCEEDED
;;
;; MessageText:
;;
;;  An attempt was made to exceed the limit on the number of domains per server.
;;
(ERROR_DOMAIN_LIMIT_EXCEEDED 7)

;; MessageId: ERROR_INTERNAL_DB_CORRUPTION
;;
;; MessageText:
;;
;;  Unable to complete the requested operation because of either a
;;  catastrophic media failure or a data structure corruption on the disk.
;;
(ERROR_INTERNAL_DB_CORRUPTION 8)

;; MessageId: ERROR_INTERNAL_ERROR
;;
;; MessageText:
;;
;;  The security account database contains an internal inconsistency.
;;
(ERROR_INTERNAL_ERROR 9)

;; MessageId: ERROR_GENERIC_NOT_MAPPED
;;
;; MessageText:
;;
;;  Generic access types were contained in an access mask which should
;;  already be mapped to nongeneric types.
;;
(ERROR_GENERIC_NOT_MAPPED 0)

;; MessageId: ERROR_BAD_DESCRIPTOR_FORMAT
;;
;; MessageText:
;;
;;  A security descriptor is not in the right format (absolute or self-relative).
;;
(ERROR_BAD_DESCRIPTOR_FORMAT 1)

;; MessageId: ERROR_NOT_LOGON_PROCESS
;;
;; MessageText:
;;
;;  The requested action is restricted for use by logon processes
;;  only.  The calling process has not registered as a logon process.
;;
(ERROR_NOT_LOGON_PROCESS 2)

;; MessageId: ERROR_LOGON_SESSION_EXISTS
;;
;; MessageText:
;;
;;  Cannot start a new logon session with an ID that is already in use.
;;
(ERROR_LOGON_SESSION_EXISTS 3)

;; MessageId: ERROR_NO_SUCH_PACKAGE
;;
;; MessageText:
;;
;;  A specified authentication package is unknown.
;;
(ERROR_NO_SUCH_PACKAGE 4)

;; MessageId: ERROR_BAD_LOGON_SESSION_STATE
;;
;; MessageText:
;;
;;  The logon session is not in a state that is consistent with the
;;  requested operation.
;;
(ERROR_BAD_LOGON_SESSION_STATE 5)

;; MessageId: ERROR_LOGON_SESSION_COLLISION
;;
;; MessageText:
;;
;;  The logon session ID is already in use.
;;
(ERROR_LOGON_SESSION_COLLISION 6)

;; MessageId: ERROR_INVALID_LOGON_TYPE
;;
;; MessageText:
;;
;;  A logon request contained an invalid logon type value.
;;
(ERROR_INVALID_LOGON_TYPE 7)

;; MessageId: ERROR_CANNOT_IMPERSONATE
;;
;; MessageText:
;;
;;  Unable to impersonate using a named pipe until data has been read
;;  from that pipe.
;;
(ERROR_CANNOT_IMPERSONATE 8)

;; MessageId: ERROR_RXACT_INVALID_STATE
;;
;; MessageText:
;;
;;  The transaction state of a registry subtree is incompatible with the
;;  requested operation.
;;
(ERROR_RXACT_INVALID_STATE 9)

;; MessageId: ERROR_RXACT_COMMIT_FAILURE
;;
;; MessageText:
;;
;;  An internal security database corruption has been encountered.
;;
(ERROR_RXACT_COMMIT_FAILURE 0)

;; MessageId: ERROR_SPECIAL_ACCOUNT
;;
;; MessageText:
;;
;;  Cannot perform this operation on built-in accounts.
;;
(ERROR_SPECIAL_ACCOUNT 1)

;; MessageId: ERROR_SPECIAL_GROUP
;;
;; MessageText:
;;
;;  Cannot perform this operation on this built-in special group.
;;
(ERROR_SPECIAL_GROUP 2)

;; MessageId: ERROR_SPECIAL_USER
;;
;; MessageText:
;;
;;  Cannot perform this operation on this built-in special user.
;;
(ERROR_SPECIAL_USER 3)

;; MessageId: ERROR_MEMBERS_PRIMARY_GROUP
;;
;; MessageText:
;;
;;  The user cannot be removed from a group because the group
;;  is currently the user's primary group.
;;
(ERROR_MEMBERS_PRIMARY_GROUP 4)

;; MessageId: ERROR_TOKEN_ALREADY_IN_USE
;;
;; MessageText:
;;
;;  The token is already in use as a primary token.
;;
(ERROR_TOKEN_ALREADY_IN_USE 5)

;; MessageId: ERROR_NO_SUCH_ALIAS
;;
;; MessageText:
;;
;;  The specified local group does not exist.
;;
(ERROR_NO_SUCH_ALIAS 6)

;; MessageId: ERROR_MEMBER_NOT_IN_ALIAS
;;
;; MessageText:
;;
;;  The specified account name is not a member of the local group.
;;
(ERROR_MEMBER_NOT_IN_ALIAS 7)

;; MessageId: ERROR_MEMBER_IN_ALIAS
;;
;; MessageText:
;;
;;  The specified account name is already a member of the local group.
;;
(ERROR_MEMBER_IN_ALIAS 8)

;; MessageId: ERROR_ALIAS_EXISTS
;;
;; MessageText:
;;
;;  The specified local group already exists.
;;
(ERROR_ALIAS_EXISTS 9)

;; MessageId: ERROR_LOGON_NOT_GRANTED
;;
;; MessageText:
;;
;;  Logon failure: the user has not been granted the requested
;;  logon type at this computer.
;;
(ERROR_LOGON_NOT_GRANTED 0)

;; MessageId: ERROR_TOO_MANY_SECRETS
;;
;; MessageText:
;;
;;  The maximum number of secrets that may be stored in a single system has been
;;  exceeded.
;;
(ERROR_TOO_MANY_SECRETS 1)

;; MessageId: ERROR_SECRET_TOO_LONG
;;
;; MessageText:
;;
;;  The length of a secret exceeds the maximum length allowed.
;;
(ERROR_SECRET_TOO_LONG 2)

;; MessageId: ERROR_INTERNAL_DB_ERROR
;;
;; MessageText:
;;
;;  The local security authority database contains an internal inconsistency.
;;
(ERROR_INTERNAL_DB_ERROR 3)

;; MessageId: ERROR_TOO_MANY_CONTEXT_IDS
;;
;; MessageText:
;;
;;  During a logon attempt, the user's security context accumulated too many
;;  security IDs.
;;
(ERROR_TOO_MANY_CONTEXT_IDS 4)

;; MessageId: ERROR_LOGON_TYPE_NOT_GRANTED
;;
;; MessageText:
;;
;;  Logon failure: the user has not been granted the requested logon type
;;  at this computer.
;;
(ERROR_LOGON_TYPE_NOT_GRANTED 5)

;; MessageId: ERROR_NT_CROSS_ENCRYPTION_REQUIRED
;;
;; MessageText:
;;
;;  A cross-encrypted password is necessary to change a user password.
;;
(ERROR_NT_CROSS_ENCRYPTION_REQUIRED 6)

;; MessageId: ERROR_NO_SUCH_MEMBER
;;
;; MessageText:
;;
;;  A new member could not be added to a local group because the member does
;;  not exist.
;;
(ERROR_NO_SUCH_MEMBER 7)

;; MessageId: ERROR_INVALID_MEMBER
;;
;; MessageText:
;;
;;  A new member could not be added to a local group because the member has the
;;  wrong account type.
;;
(ERROR_INVALID_MEMBER 8)

;; MessageId: ERROR_TOO_MANY_SIDS
;;
;; MessageText:
;;
;;  Too many security IDs have been specified.
;;
(ERROR_TOO_MANY_SIDS 9)

;; MessageId: ERROR_LM_CROSS_ENCRYPTION_REQUIRED
;;
;; MessageText:
;;
;;  A cross-encrypted password is necessary to change this user password.
;;
(ERROR_LM_CROSS_ENCRYPTION_REQUIRED 0)

;; MessageId: ERROR_NO_INHERITANCE
;;
;; MessageText:
;;
;;  Indicates an ACL contains no inheritable components.
;;
(ERROR_NO_INHERITANCE 1)

;; MessageId: ERROR_FILE_CORRUPT
;;
;; MessageText:
;;
;;  The file or directory is corrupted and unreadable.
;;
(ERROR_FILE_CORRUPT 2)

;; MessageId: ERROR_DISK_CORRUPT
;;
;; MessageText:
;;
;;  The disk structure is corrupted and unreadable.
;;
(ERROR_DISK_CORRUPT 3)

;; MessageId: ERROR_NO_USER_SESSION_KEY
;;
;; MessageText:
;;
;;  There is no user session key for the specified logon session.
;;
(ERROR_NO_USER_SESSION_KEY 4)

;; MessageId: ERROR_LICENSE_QUOTA_EXCEEDED
;;
;; MessageText:
;;
;;  The service being accessed is licensed for a particular number of connections.
;;  No more connections can be made to the service at this time
;;  because there are already as many connections as the service can accept.
;;
(ERROR_LICENSE_QUOTA_EXCEEDED 5)

;; MessageId: ERROR_WRONG_TARGET_NAME
;;
;; MessageText:
;;
;;  Logon Failure: The target account name is incorrect.
;;
(ERROR_WRONG_TARGET_NAME 6)

;; MessageId: ERROR_MUTUAL_AUTH_FAILED
;;
;; MessageText:
;;
;;  Mutual Authentication failed. The server's password is out of date
;;  at the domain controller.
;;
(ERROR_MUTUAL_AUTH_FAILED 7)

;; MessageId: ERROR_TIME_SKEW
;;
;; MessageText:
;;
;;  There is a time difference between the client and server.
;;
(ERROR_TIME_SKEW 8)


;;                       ;;
;; WinUser Error Codes   ;;
;;                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;/

;; MessageId: ERROR_INVALID_WINDOW_HANDLE
;;
;; MessageText:
;;
;;  Invalid window handle.
;;
(ERROR_INVALID_WINDOW_HANDLE 0)

;; MessageId: ERROR_INVALID_MENU_HANDLE
;;
;; MessageText:
;;
;;  Invalid menu handle.
;;
(ERROR_INVALID_MENU_HANDLE 1)

;; MessageId: ERROR_INVALID_CURSOR_HANDLE
;;
;; MessageText:
;;
;;  Invalid cursor handle.
;;
(ERROR_INVALID_CURSOR_HANDLE 2)

;; MessageId: ERROR_INVALID_ACCEL_HANDLE
;;
;; MessageText:
;;
;;  Invalid accelerator table handle.
;;
(ERROR_INVALID_ACCEL_HANDLE 3)

;; MessageId: ERROR_INVALID_HOOK_HANDLE
;;
;; MessageText:
;;
;;  Invalid hook handle.
;;
(ERROR_INVALID_HOOK_HANDLE 4)

;; MessageId: ERROR_INVALID_DWP_HANDLE
;;
;; MessageText:
;;
;;  Invalid handle to a multiple-window position structure.
;;
(ERROR_INVALID_DWP_HANDLE 5)

;; MessageId: ERROR_TLW_WITH_WSCHILD
;;
;; MessageText:
;;
;;  Cannot create a top-level child window.
;;
(ERROR_TLW_WITH_WSCHILD 6)

;; MessageId: ERROR_CANNOT_FIND_WND_CLASS
;;
;; MessageText:
;;
;;  Cannot find window class.
;;
(ERROR_CANNOT_FIND_WND_CLASS 7)

;; MessageId: ERROR_WINDOW_OF_OTHER_THREAD
;;
;; MessageText:
;;
;;  Invalid window; it belongs to other thread.
;;
(ERROR_WINDOW_OF_OTHER_THREAD 8)

;; MessageId: ERROR_HOTKEY_ALREADY_REGISTERED
;;
;; MessageText:
;;
;;  Hot key is already registered.
;;
(ERROR_HOTKEY_ALREADY_REGISTERED 9)

;; MessageId: ERROR_CLASS_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  Class already exists.
;;
(ERROR_CLASS_ALREADY_EXISTS 0)

;; MessageId: ERROR_CLASS_DOES_NOT_EXIST
;;
;; MessageText:
;;
;;  Class does not exist.
;;
(ERROR_CLASS_DOES_NOT_EXIST 1)

;; MessageId: ERROR_CLASS_HAS_WINDOWS
;;
;; MessageText:
;;
;;  Class still has open windows.
;;
(ERROR_CLASS_HAS_WINDOWS 2)

;; MessageId: ERROR_INVALID_INDEX
;;
;; MessageText:
;;
;;  Invalid index.
;;
(ERROR_INVALID_INDEX 3)

;; MessageId: ERROR_INVALID_ICON_HANDLE
;;
;; MessageText:
;;
;;  Invalid icon handle.
;;
(ERROR_INVALID_ICON_HANDLE 4)

;; MessageId: ERROR_PRIVATE_DIALOG_INDEX
;;
;; MessageText:
;;
;;  Using private DIALOG window words.
;;
(ERROR_PRIVATE_DIALOG_INDEX 5)

;; MessageId: ERROR_LISTBOX_ID_NOT_FOUND
;;
;; MessageText:
;;
;;  The list box identifier was not found.
;;
(ERROR_LISTBOX_ID_NOT_FOUND 6)

;; MessageId: ERROR_NO_WILDCARD_CHARACTERS
;;
;; MessageText:
;;
;;  No wildcards were found.
;;
(ERROR_NO_WILDCARD_CHARACTERS 7)

;; MessageId: ERROR_CLIPBOARD_NOT_OPEN
;;
;; MessageText:
;;
;;  Thread does not have a clipboard open.
;;
(ERROR_CLIPBOARD_NOT_OPEN 8)

;; MessageId: ERROR_HOTKEY_NOT_REGISTERED
;;
;; MessageText:
;;
;;  Hot key is not registered.
;;
(ERROR_HOTKEY_NOT_REGISTERED 9)

;; MessageId: ERROR_WINDOW_NOT_DIALOG
;;
;; MessageText:
;;
;;  The window is not a valid dialog window.
;;
(ERROR_WINDOW_NOT_DIALOG 0)

;; MessageId: ERROR_CONTROL_ID_NOT_FOUND
;;
;; MessageText:
;;
;;  Control ID not found.
;;
(ERROR_CONTROL_ID_NOT_FOUND 1)

;; MessageId: ERROR_INVALID_COMBOBOX_MESSAGE
;;
;; MessageText:
;;
;;  Invalid message for a combo box because it does not have an edit control.
;;
(ERROR_INVALID_COMBOBOX_MESSAGE 2)

;; MessageId: ERROR_WINDOW_NOT_COMBOBOX
;;
;; MessageText:
;;
;;  The window is not a combo box.
;;
(ERROR_WINDOW_NOT_COMBOBOX 3)

;; MessageId: ERROR_INVALID_EDIT_HEIGHT
;;
;; MessageText:
;;
;;  Height must be less than 256.
;;
(ERROR_INVALID_EDIT_HEIGHT 4)

;; MessageId: ERROR_DC_NOT_FOUND
;;
;; MessageText:
;;
;;  Invalid device context (DC) handle.
;;
(ERROR_DC_NOT_FOUND 5)

;; MessageId: ERROR_INVALID_HOOK_FILTER
;;
;; MessageText:
;;
;;  Invalid hook procedure type.
;;
(ERROR_INVALID_HOOK_FILTER 6)

;; MessageId: ERROR_INVALID_FILTER_PROC
;;
;; MessageText:
;;
;;  Invalid hook procedure.
;;
(ERROR_INVALID_FILTER_PROC 7)

;; MessageId: ERROR_HOOK_NEEDS_HMOD
;;
;; MessageText:
;;
;;  Cannot set nonlocal hook without a module handle.
;;
(ERROR_HOOK_NEEDS_HMOD 8)

;; MessageId: ERROR_GLOBAL_ONLY_HOOK
;;
;; MessageText:
;;
;;  This hook procedure can only be set globally.
;;
(ERROR_GLOBAL_ONLY_HOOK 9)

;; MessageId: ERROR_JOURNAL_HOOK_SET
;;
;; MessageText:
;;
;;  The journal hook procedure is already installed.
;;
(ERROR_JOURNAL_HOOK_SET 0)

;; MessageId: ERROR_HOOK_NOT_INSTALLED
;;
;; MessageText:
;;
;;  The hook procedure is not installed.
;;
(ERROR_HOOK_NOT_INSTALLED 1)

;; MessageId: ERROR_INVALID_LB_MESSAGE
;;
;; MessageText:
;;
;;  Invalid message for single-selection list box.
;;
(ERROR_INVALID_LB_MESSAGE 2)

;; MessageId: ERROR_SETCOUNT_ON_BAD_LB
;;
;; MessageText:
;;
;;  LB_SETCOUNT sent to non-lazy list box.
;;
(ERROR_SETCOUNT_ON_BAD_LB 3)

;; MessageId: ERROR_LB_WITHOUT_TABSTOPS
;;
;; MessageText:
;;
;;  This list box does not support tab stops.
;;
(ERROR_LB_WITHOUT_TABSTOPS 4)

;; MessageId: ERROR_DESTROY_OBJECT_OF_OTHER_THREAD
;;
;; MessageText:
;;
;;  Cannot destroy object created by another thread.
;;
(ERROR_DESTROY_OBJECT_OF_OTHER_THREAD 5)

;; MessageId: ERROR_CHILD_WINDOW_MENU
;;
;; MessageText:
;;
;;  Child windows cannot have menus.
;;
(ERROR_CHILD_WINDOW_MENU 6)

;; MessageId: ERROR_NO_SYSTEM_MENU
;;
;; MessageText:
;;
;;  The window does not have a system menu.
;;
(ERROR_NO_SYSTEM_MENU 7)

;; MessageId: ERROR_INVALID_MSGBOX_STYLE
;;
;; MessageText:
;;
;;  Invalid message box style.
;;
(ERROR_INVALID_MSGBOX_STYLE 8)

;; MessageId: ERROR_INVALID_SPI_VALUE
;;
;; MessageText:
;;
;;  Invalid system-wide (SPI_*) parameter.
;;
(ERROR_INVALID_SPI_VALUE 9)

;; MessageId: ERROR_SCREEN_ALREADY_LOCKED
;;
;; MessageText:
;;
;;  Screen already locked.
;;
(ERROR_SCREEN_ALREADY_LOCKED 0)

;; MessageId: ERROR_HWNDS_HAVE_DIFF_PARENT
;;
;; MessageText:
;;
;;  All handles to windows in a multiple-window position structure must
;;  have the same parent.
;;
(ERROR_HWNDS_HAVE_DIFF_PARENT 1)

;; MessageId: ERROR_NOT_CHILD_WINDOW
;;
;; MessageText:
;;
;;  The window is not a child window.
;;
(ERROR_NOT_CHILD_WINDOW 2)

;; MessageId: ERROR_INVALID_GW_COMMAND
;;
;; MessageText:
;;
;;  Invalid GW_* command.
;;
(ERROR_INVALID_GW_COMMAND 3)

;; MessageId: ERROR_INVALID_THREAD_ID
;;
;; MessageText:
;;
;;  Invalid thread identifier.
;;
(ERROR_INVALID_THREAD_ID 4)

;; MessageId: ERROR_NON_MDICHILD_WINDOW
;;
;; MessageText:
;;
;;  Cannot process a message from a window that is not a multiple document
;;  interface (MDI) window.
;;
(ERROR_NON_MDICHILD_WINDOW 5)

;; MessageId: ERROR_POPUP_ALREADY_ACTIVE
;;
;; MessageText:
;;
;;  Popup menu already active.
;;
(ERROR_POPUP_ALREADY_ACTIVE 6)

;; MessageId: ERROR_NO_SCROLLBARS
;;
;; MessageText:
;;
;;  The window does not have scroll bars.
;;
(ERROR_NO_SCROLLBARS 7)

;; MessageId: ERROR_INVALID_SCROLLBAR_RANGE
;;
;; MessageText:
;;
;;  Scroll bar range cannot be greater than 0x7FFF.
;;
(ERROR_INVALID_SCROLLBAR_RANGE 8)

;; MessageId: ERROR_INVALID_SHOWWIN_COMMAND
;;
;; MessageText:
;;
;;  Cannot show or remove the window in the way specified.
;;
(ERROR_INVALID_SHOWWIN_COMMAND 9)

;; MessageId: ERROR_NO_SYSTEM_RESOURCES
;;
;; MessageText:
;;
;;  Insufficient system resources exist to complete the requested service.
;;
(ERROR_NO_SYSTEM_RESOURCES 0)

;; MessageId: ERROR_NONPAGED_SYSTEM_RESOURCES
;;
;; MessageText:
;;
;;  Insufficient system resources exist to complete the requested service.
;;
(ERROR_NONPAGED_SYSTEM_RESOURCES 1)

;; MessageId: ERROR_PAGED_SYSTEM_RESOURCES
;;
;; MessageText:
;;
;;  Insufficient system resources exist to complete the requested service.
;;
(ERROR_PAGED_SYSTEM_RESOURCES 2)

;; MessageId: ERROR_WORKING_SET_QUOTA
;;
;; MessageText:
;;
;;  Insufficient quota to complete the requested service.
;;
(ERROR_WORKING_SET_QUOTA 3)

;; MessageId: ERROR_PAGEFILE_QUOTA
;;
;; MessageText:
;;
;;  Insufficient quota to complete the requested service.
;;
(ERROR_PAGEFILE_QUOTA 4)

;; MessageId: ERROR_COMMITMENT_LIMIT
;;
;; MessageText:
;;
;;  The paging file is too small for this operation to complete.
;;
(ERROR_COMMITMENT_LIMIT 5)

;; MessageId: ERROR_MENU_ITEM_NOT_FOUND
;;
;; MessageText:
;;
;;  A menu item was not found.
;;
(ERROR_MENU_ITEM_NOT_FOUND 6)

;; MessageId: ERROR_INVALID_KEYBOARD_HANDLE
;;
;; MessageText:
;;
;;  Invalid keyboard layout handle.
;;
(ERROR_INVALID_KEYBOARD_HANDLE 7)

;; MessageId: ERROR_HOOK_TYPE_NOT_ALLOWED
;;
;; MessageText:
;;
;;  Hook type not allowed.
;;
(ERROR_HOOK_TYPE_NOT_ALLOWED 8)

;; MessageId: ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION
;;
;; MessageText:
;;
;;  This operation requires an interactive window station.
;;
(ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION 9)

;; MessageId: ERROR_TIMEOUT
;;
;; MessageText:
;;
;;  This operation returned because the timeout period expired.
;;
(ERROR_TIMEOUT 0)

;; MessageId: ERROR_INVALID_MONITOR_HANDLE
;;
;; MessageText:
;;
;;  Invalid monitor handle.
;;
(ERROR_INVALID_MONITOR_HANDLE 1)


;;                       ;;
;; Eventlog Status Codes ;;
;;                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;/

;; MessageId: ERROR_EVENTLOG_FILE_CORRUPT
;;
;; MessageText:
;;
;;  The event log file is corrupted.
;;
(ERROR_EVENTLOG_FILE_CORRUPT 0)

;; MessageId: ERROR_EVENTLOG_CANT_START
;;
;; MessageText:
;;
;;  No event log file could be opened, so the event logging service did not start.
;;
(ERROR_EVENTLOG_CANT_START 1)

;; MessageId: ERROR_LOG_FILE_FULL
;;
;; MessageText:
;;
;;  The event log file is full.
;;
(ERROR_LOG_FILE_FULL 2)

;; MessageId: ERROR_EVENTLOG_FILE_CHANGED
;;
;; MessageText:
;;
;;  The event log file has changed between read operations.
;;
(ERROR_EVENTLOG_FILE_CHANGED 3)


;;                       ;;
;; MSI Error Codes       ;;
;;                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;/

;; MessageId: ERROR_INSTALL_SERVICE
;;
;; MessageText:
;;
;;  Failure accessing install service.
;;
(ERROR_INSTALL_SERVICE 1)

;; MessageId: ERROR_INSTALL_USEREXIT
;;
;; MessageText:
;;
;;  The user canceled the installation.
;;
(ERROR_INSTALL_USEREXIT 2)

;; MessageId: ERROR_INSTALL_FAILURE
;;
;; MessageText:
;;
;;  Fatal error during installation.
;;
(ERROR_INSTALL_FAILURE 3)

;; MessageId: ERROR_INSTALL_SUSPEND
;;
;; MessageText:
;;
;;  Installation suspended, incomplete.
;;
(ERROR_INSTALL_SUSPEND 4)

;; MessageId: ERROR_UNKNOWN_PRODUCT
;;
;; MessageText:
;;
;;  Product code not registered.
;;
(ERROR_UNKNOWN_PRODUCT 5)

;; MessageId: ERROR_UNKNOWN_FEATURE
;;
;; MessageText:
;;
;;  Feature ID not registered.
;;
(ERROR_UNKNOWN_FEATURE 6)

;; MessageId: ERROR_UNKNOWN_COMPONENT
;;
;; MessageText:
;;
;;  Component ID not registered.
;;
(ERROR_UNKNOWN_COMPONENT 7)

;; MessageId: ERROR_UNKNOWN_PROPERTY
;;
;; MessageText:
;;
;;  Unknown property.
;;
(ERROR_UNKNOWN_PROPERTY 8)

;; MessageId: ERROR_INVALID_HANDLE_STATE
;;
;; MessageText:
;;
;;  Handle is in an invalid state.
;;
(ERROR_INVALID_HANDLE_STATE 9)

;; MessageId: ERROR_BAD_CONFIGURATION
;;
;; MessageText:
;;
;;  Configuration data corrupt.
;;
(ERROR_BAD_CONFIGURATION 0)

;; MessageId: ERROR_INDEX_ABSENT
;;
;; MessageText:
;;
;;  Language not available.
;;
(ERROR_INDEX_ABSENT 1)

;; MessageId: ERROR_INSTALL_SOURCE_ABSENT
;;
;; MessageText:
;;
;;  Install source unavailable.
;;
(ERROR_INSTALL_SOURCE_ABSENT 2)

;; MessageId: ERROR_BAD_DATABASE_VERSION
;;
;; MessageText:
;;
;;  Database version unsupported.
;;
(ERROR_BAD_DATABASE_VERSION 3)

;; MessageId: ERROR_PRODUCT_UNINSTALLED
;;
;; MessageText:
;;
;;  Product is uninstalled.
;;
(ERROR_PRODUCT_UNINSTALLED 4)

;; MessageId: ERROR_BAD_QUERY_SYNTAX
;;
;; MessageText:
;;
;;  SQL query syntax invalid or unsupported.
;;
(ERROR_BAD_QUERY_SYNTAX 5)

;; MessageId: ERROR_INVALID_FIELD
;;
;; MessageText:
;;
;;  Record field does not exist.
;;
(ERROR_INVALID_FIELD 6)

;; MessageId: ERROR_DEVICE_REMOVED
;;
;; MessageText:
;;
;;  The device has been removed.
;;
(ERROR_DEVICE_REMOVED 7)


;;                       ;;
;;   RPC Status Codes    ;;
;;                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;/

;; MessageId: RPC_S_INVALID_STRING_BINDING
;;
;; MessageText:
;;
;;  The string binding is invalid.
;;
(RPC_S_INVALID_STRING_BINDING 0)

;; MessageId: RPC_S_WRONG_KIND_OF_BINDING
;;
;; MessageText:
;;
;;  The binding handle is not the correct type.
;;
(RPC_S_WRONG_KIND_OF_BINDING 1)

;; MessageId: RPC_S_INVALID_BINDING
;;
;; MessageText:
;;
;;  The binding handle is invalid.
;;
(RPC_S_INVALID_BINDING 2)

;; MessageId: RPC_S_PROTSEQ_NOT_SUPPORTED
;;
;; MessageText:
;;
;;  The RPC protocol sequence is not supported.
;;
(RPC_S_PROTSEQ_NOT_SUPPORTED 3)

;; MessageId: RPC_S_INVALID_RPC_PROTSEQ
;;
;; MessageText:
;;
;;  The RPC protocol sequence is invalid.
;;
(RPC_S_INVALID_RPC_PROTSEQ 4)

;; MessageId: RPC_S_INVALID_STRING_UUID
;;
;; MessageText:
;;
;;  The string universal unique identifier (UUID) is invalid.
;;
(RPC_S_INVALID_STRING_UUID 5)

;; MessageId: RPC_S_INVALID_ENDPOINT_FORMAT
;;
;; MessageText:
;;
;;  The endpoint format is invalid.
;;
(RPC_S_INVALID_ENDPOINT_FORMAT 6)

;; MessageId: RPC_S_INVALID_NET_ADDR
;;
;; MessageText:
;;
;;  The network address is invalid.
;;
(RPC_S_INVALID_NET_ADDR 7)

;; MessageId: RPC_S_NO_ENDPOINT_FOUND
;;
;; MessageText:
;;
;;  No endpoint was found.
;;
(RPC_S_NO_ENDPOINT_FOUND 8)

;; MessageId: RPC_S_INVALID_TIMEOUT
;;
;; MessageText:
;;
;;  The timeout value is invalid.
;;
(RPC_S_INVALID_TIMEOUT 9)

;; MessageId: RPC_S_OBJECT_NOT_FOUND
;;
;; MessageText:
;;
;;  The object universal unique identifier (UUID) was not found.
;;
(RPC_S_OBJECT_NOT_FOUND 0)

;; MessageId: RPC_S_ALREADY_REGISTERED
;;
;; MessageText:
;;
;;  The object universal unique identifier (UUID) has already been registered.
;;
(RPC_S_ALREADY_REGISTERED 1)

;; MessageId: RPC_S_TYPE_ALREADY_REGISTERED
;;
;; MessageText:
;;
;;  The type universal unique identifier (UUID) has already been registered.
;;
(RPC_S_TYPE_ALREADY_REGISTERED 2)

;; MessageId: RPC_S_ALREADY_LISTENING
;;
;; MessageText:
;;
;;  The RPC server is already listening.
;;
(RPC_S_ALREADY_LISTENING 3)

;; MessageId: RPC_S_NO_PROTSEQS_REGISTERED
;;
;; MessageText:
;;
;;  No protocol sequences have been registered.
;;
(RPC_S_NO_PROTSEQS_REGISTERED 4)

;; MessageId: RPC_S_NOT_LISTENING
;;
;; MessageText:
;;
;;  The RPC server is not listening.
;;
(RPC_S_NOT_LISTENING 5)

;; MessageId: RPC_S_UNKNOWN_MGR_TYPE
;;
;; MessageText:
;;
;;  The manager type is unknown.
;;
(RPC_S_UNKNOWN_MGR_TYPE 6)

;; MessageId: RPC_S_UNKNOWN_IF
;;
;; MessageText:
;;
;;  The interface is unknown.
;;
(RPC_S_UNKNOWN_IF 7)

;; MessageId: RPC_S_NO_BINDINGS
;;
;; MessageText:
;;
;;  There are no bindings.
;;
(RPC_S_NO_BINDINGS 8)

;; MessageId: RPC_S_NO_PROTSEQS
;;
;; MessageText:
;;
;;  There are no protocol sequences.
;;
(RPC_S_NO_PROTSEQS 9)

;; MessageId: RPC_S_CANT_CREATE_ENDPOINT
;;
;; MessageText:
;;
;;  The endpoint cannot be created.
;;
(RPC_S_CANT_CREATE_ENDPOINT 0)

;; MessageId: RPC_S_OUT_OF_RESOURCES
;;
;; MessageText:
;;
;;  Not enough resources are available to complete this operation.
;;
(RPC_S_OUT_OF_RESOURCES 1)

;; MessageId: RPC_S_SERVER_UNAVAILABLE
;;
;; MessageText:
;;
;;  The RPC server is unavailable.
;;
(RPC_S_SERVER_UNAVAILABLE 2)

;; MessageId: RPC_S_SERVER_TOO_BUSY
;;
;; MessageText:
;;
;;  The RPC server is too busy to complete this operation.
;;
(RPC_S_SERVER_TOO_BUSY 3)

;; MessageId: RPC_S_INVALID_NETWORK_OPTIONS
;;
;; MessageText:
;;
;;  The network options are invalid.
;;
(RPC_S_INVALID_NETWORK_OPTIONS 4)

;; MessageId: RPC_S_NO_CALL_ACTIVE
;;
;; MessageText:
;;
;;  There are no remote procedure calls active on this thread.
;;
(RPC_S_NO_CALL_ACTIVE 5)

;; MessageId: RPC_S_CALL_FAILED
;;
;; MessageText:
;;
;;  The remote procedure call failed.
;;
(RPC_S_CALL_FAILED 6)

;; MessageId: RPC_S_CALL_FAILED_DNE
;;
;; MessageText:
;;
;;  The remote procedure call failed and did not execute.
;;
(RPC_S_CALL_FAILED_DNE 7)

;; MessageId: RPC_S_PROTOCOL_ERROR
;;
;; MessageText:
;;
;;  A remote procedure call (RPC) protocol error occurred.
;;
(RPC_S_PROTOCOL_ERROR 8)

;; MessageId: RPC_S_UNSUPPORTED_TRANS_SYN
;;
;; MessageText:
;;
;;  The transfer syntax is not supported by the RPC server.
;;
(RPC_S_UNSUPPORTED_TRANS_SYN 0)

;; MessageId: RPC_S_UNSUPPORTED_TYPE
;;
;; MessageText:
;;
;;  The universal unique identifier (UUID) type is not supported.
;;
(RPC_S_UNSUPPORTED_TYPE 2)

;; MessageId: RPC_S_INVALID_TAG
;;
;; MessageText:
;;
;;  The tag is invalid.
;;
(RPC_S_INVALID_TAG 3)

;; MessageId: RPC_S_INVALID_BOUND
;;
;; MessageText:
;;
;;  The array bounds are invalid.
;;
(RPC_S_INVALID_BOUND 4)

;; MessageId: RPC_S_NO_ENTRY_NAME
;;
;; MessageText:
;;
;;  The binding does not contain an entry name.
;;
(RPC_S_NO_ENTRY_NAME 5)

;; MessageId: RPC_S_INVALID_NAME_SYNTAX
;;
;; MessageText:
;;
;;  The name syntax is invalid.
;;
(RPC_S_INVALID_NAME_SYNTAX 6)

;; MessageId: RPC_S_UNSUPPORTED_NAME_SYNTAX
;;
;; MessageText:
;;
;;  The name syntax is not supported.
;;
(RPC_S_UNSUPPORTED_NAME_SYNTAX 7)

;; MessageId: RPC_S_UUID_NO_ADDRESS
;;
;; MessageText:
;;
;;  No network address is available to use to construct a universal
;;  unique identifier (UUID).
;;
(RPC_S_UUID_NO_ADDRESS 9)

;; MessageId: RPC_S_DUPLICATE_ENDPOINT
;;
;; MessageText:
;;
;;  The endpoint is a duplicate.
;;
(RPC_S_DUPLICATE_ENDPOINT 0)

;; MessageId: RPC_S_UNKNOWN_AUTHN_TYPE
;;
;; MessageText:
;;
;;  The authentication type is unknown.
;;
(RPC_S_UNKNOWN_AUTHN_TYPE 1)

;; MessageId: RPC_S_MAX_CALLS_TOO_SMALL
;;
;; MessageText:
;;
;;  The maximum number of calls is too small.
;;
(RPC_S_MAX_CALLS_TOO_SMALL 2)

;; MessageId: RPC_S_STRING_TOO_LONG
;;
;; MessageText:
;;
;;  The string is too long.
;;
(RPC_S_STRING_TOO_LONG 3)

;; MessageId: RPC_S_PROTSEQ_NOT_FOUND
;;
;; MessageText:
;;
;;  The RPC protocol sequence was not found.
;;
(RPC_S_PROTSEQ_NOT_FOUND 4)

;; MessageId: RPC_S_PROCNUM_OUT_OF_RANGE
;;
;; MessageText:
;;
;;  The procedure number is out of range.
;;
(RPC_S_PROCNUM_OUT_OF_RANGE 5)

;; MessageId: RPC_S_BINDING_HAS_NO_AUTH
;;
;; MessageText:
;;
;;  The binding does not contain any authentication information.
;;
(RPC_S_BINDING_HAS_NO_AUTH 6)

;; MessageId: RPC_S_UNKNOWN_AUTHN_SERVICE
;;
;; MessageText:
;;
;;  The authentication service is unknown.
;;
(RPC_S_UNKNOWN_AUTHN_SERVICE 7)

;; MessageId: RPC_S_UNKNOWN_AUTHN_LEVEL
;;
;; MessageText:
;;
;;  The authentication level is unknown.
;;
(RPC_S_UNKNOWN_AUTHN_LEVEL 8)

;; MessageId: RPC_S_INVALID_AUTH_IDENTITY
;;
;; MessageText:
;;
;;  The security context is invalid.
;;
(RPC_S_INVALID_AUTH_IDENTITY 9)

;; MessageId: RPC_S_UNKNOWN_AUTHZ_SERVICE
;;
;; MessageText:
;;
;;  The authorization service is unknown.
;;
(RPC_S_UNKNOWN_AUTHZ_SERVICE 0)

;; MessageId: EPT_S_INVALID_ENTRY
;;
;; MessageText:
;;
;;  The entry is invalid.
;;
(EPT_S_INVALID_ENTRY 1)

;; MessageId: EPT_S_CANT_PERFORM_OP
;;
;; MessageText:
;;
;;  The server endpoint cannot perform the operation.
;;
(EPT_S_CANT_PERFORM_OP 2)

;; MessageId: EPT_S_NOT_REGISTERED
;;
;; MessageText:
;;
;;  There are no more endpoints available from the endpoint mapper.
;;
(EPT_S_NOT_REGISTERED 3)

;; MessageId: RPC_S_NOTHING_TO_EXPORT
;;
;; MessageText:
;;
;;  No interfaces have been exported.
;;
(RPC_S_NOTHING_TO_EXPORT 4)

;; MessageId: RPC_S_INCOMPLETE_NAME
;;
;; MessageText:
;;
;;  The entry name is incomplete.
;;
(RPC_S_INCOMPLETE_NAME 5)

;; MessageId: RPC_S_INVALID_VERS_OPTION
;;
;; MessageText:
;;
;;  The version option is invalid.
;;
(RPC_S_INVALID_VERS_OPTION 6)

;; MessageId: RPC_S_NO_MORE_MEMBERS
;;
;; MessageText:
;;
;;  There are no more members.
;;
(RPC_S_NO_MORE_MEMBERS 7)

;; MessageId: RPC_S_NOT_ALL_OBJS_UNEXPORTED
;;
;; MessageText:
;;
;;  There is nothing to unexport.
;;
(RPC_S_NOT_ALL_OBJS_UNEXPORTED 8)

;; MessageId: RPC_S_INTERFACE_NOT_FOUND
;;
;; MessageText:
;;
;;  The interface was not found.
;;
(RPC_S_INTERFACE_NOT_FOUND 9)

;; MessageId: RPC_S_ENTRY_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  The entry already exists.
;;
(RPC_S_ENTRY_ALREADY_EXISTS 0)

;; MessageId: RPC_S_ENTRY_NOT_FOUND
;;
;; MessageText:
;;
;;  The entry is not found.
;;
(RPC_S_ENTRY_NOT_FOUND 1)

;; MessageId: RPC_S_NAME_SERVICE_UNAVAILABLE
;;
;; MessageText:
;;
;;  The name service is unavailable.
;;
(RPC_S_NAME_SERVICE_UNAVAILABLE 2)

;; MessageId: RPC_S_INVALID_NAF_ID
;;
;; MessageText:
;;
;;  The network address family is invalid.
;;
(RPC_S_INVALID_NAF_ID 3)

;; MessageId: RPC_S_CANNOT_SUPPORT
;;
;; MessageText:
;;
;;  The requested operation is not supported.
;;
(RPC_S_CANNOT_SUPPORT 4)

;; MessageId: RPC_S_NO_CONTEXT_AVAILABLE
;;
;; MessageText:
;;
;;  No security context is available to allow impersonation.
;;
(RPC_S_NO_CONTEXT_AVAILABLE 5)

;; MessageId: RPC_S_INTERNAL_ERROR
;;
;; MessageText:
;;
;;  An internal error occurred in a remote procedure call (RPC).
;;
(RPC_S_INTERNAL_ERROR 6)

;; MessageId: RPC_S_ZERO_DIVIDE
;;
;; MessageText:
;;
;;  The RPC server attempted an integer division by zero.
;;
(RPC_S_ZERO_DIVIDE 7)

;; MessageId: RPC_S_ADDRESS_ERROR
;;
;; MessageText:
;;
;;  An addressing error occurred in the RPC server.
;;
(RPC_S_ADDRESS_ERROR 8)

;; MessageId: RPC_S_FP_DIV_ZERO
;;
;; MessageText:
;;
;;  A floating-point operation at the RPC server caused a division by zero.
;;
(RPC_S_FP_DIV_ZERO 9)

;; MessageId: RPC_S_FP_UNDERFLOW
;;
;; MessageText:
;;
;;  A floating-point underflow occurred at the RPC server.
;;
(RPC_S_FP_UNDERFLOW 0)

;; MessageId: RPC_S_FP_OVERFLOW
;;
;; MessageText:
;;
;;  A floating-point overflow occurred at the RPC server.
;;
(RPC_S_FP_OVERFLOW 1)

;; MessageId: RPC_X_NO_MORE_ENTRIES
;;
;; MessageText:
;;
;;  The list of RPC servers available for the binding of auto handles
;;  has been exhausted.
;;
(RPC_X_NO_MORE_ENTRIES 2)

;; MessageId: RPC_X_SS_CHAR_TRANS_OPEN_FAIL
;;
;; MessageText:
;;
;;  Unable to open the character translation table file.
;;
(RPC_X_SS_CHAR_TRANS_OPEN_FAIL 3)

;; MessageId: RPC_X_SS_CHAR_TRANS_SHORT_FILE
;;
;; MessageText:
;;
;;  The file containing the character translation table has fewer than
;;  512 bytes.
;;
(RPC_X_SS_CHAR_TRANS_SHORT_FILE 4)

;; MessageId: RPC_X_SS_IN_NULL_CONTEXT
;;
;; MessageText:
;;
;;  A null context handle was passed from the client to the host during
;;  a remote procedure call.
;;
(RPC_X_SS_IN_NULL_CONTEXT 5)

;; MessageId: RPC_X_SS_CONTEXT_DAMAGED
;;
;; MessageText:
;;
;;  The context handle changed during a remote procedure call.
;;
(RPC_X_SS_CONTEXT_DAMAGED 7)

;; MessageId: RPC_X_SS_HANDLES_MISMATCH
;;
;; MessageText:
;;
;;  The binding handles passed to a remote procedure call do not match.
;;
(RPC_X_SS_HANDLES_MISMATCH 8)

;; MessageId: RPC_X_SS_CANNOT_GET_CALL_HANDLE
;;
;; MessageText:
;;
;;  The stub is unable to get the remote procedure call handle.
;;
(RPC_X_SS_CANNOT_GET_CALL_HANDLE 9)

;; MessageId: RPC_X_NULL_REF_POINTER
;;
;; MessageText:
;;
;;  A null reference pointer was passed to the stub.
;;
(RPC_X_NULL_REF_POINTER 0)

;; MessageId: RPC_X_ENUM_VALUE_OUT_OF_RANGE
;;
;; MessageText:
;;
;;  The enumeration value is out of range.
;;
(RPC_X_ENUM_VALUE_OUT_OF_RANGE 1)

;; MessageId: RPC_X_BYTE_COUNT_TOO_SMALL
;;
;; MessageText:
;;
;;  The byte count is too small.
;;
(RPC_X_BYTE_COUNT_TOO_SMALL 2)

;; MessageId: RPC_X_BAD_STUB_DATA
;;
;; MessageText:
;;
;;  The stub received bad data.
;;
(RPC_X_BAD_STUB_DATA 3)

;; MessageId: ERROR_INVALID_USER_BUFFER
;;
;; MessageText:
;;
;;  The supplied user buffer is not valid for the requested operation.
;;
(ERROR_INVALID_USER_BUFFER 4)

;; MessageId: ERROR_UNRECOGNIZED_MEDIA
;;
;; MessageText:
;;
;;  The disk media is not recognized.  It may not be formatted.
;;
(ERROR_UNRECOGNIZED_MEDIA 5)

;; MessageId: ERROR_NO_TRUST_LSA_SECRET
;;
;; MessageText:
;;
;;  The workstation does not have a trust secret.
;;
(ERROR_NO_TRUST_LSA_SECRET 6)

;; MessageId: ERROR_NO_TRUST_SAM_ACCOUNT
;;
;; MessageText:
;;
;;  The SAM database on the Windows NT Server does not have a computer
;;  account for this workstation trust relationship.
;;
(ERROR_NO_TRUST_SAM_ACCOUNT 7)

;; MessageId: ERROR_TRUSTED_DOMAIN_FAILURE
;;
;; MessageText:
;;
;;  The trust relationship between the primary domain and the trusted
;;  domain failed.
;;
(ERROR_TRUSTED_DOMAIN_FAILURE 8)

;; MessageId: ERROR_TRUSTED_RELATIONSHIP_FAILURE
;;
;; MessageText:
;;
;;  The trust relationship between this workstation and the primary
;;  domain failed.
;;
(ERROR_TRUSTED_RELATIONSHIP_FAILURE 9)

;; MessageId: ERROR_TRUST_FAILURE
;;
;; MessageText:
;;
;;  The network logon failed.
;;
(ERROR_TRUST_FAILURE 0)

;; MessageId: RPC_S_CALL_IN_PROGRESS
;;
;; MessageText:
;;
;;  A remote procedure call is already in progress for this thread.
;;
(RPC_S_CALL_IN_PROGRESS 1)

;; MessageId: ERROR_NETLOGON_NOT_STARTED
;;
;; MessageText:
;;
;;  An attempt was made to logon, but the network logon service was not started.
;;
(ERROR_NETLOGON_NOT_STARTED 2)

;; MessageId: ERROR_ACCOUNT_EXPIRED
;;
;; MessageText:
;;
;;  The user's account has expired.
;;
(ERROR_ACCOUNT_EXPIRED 3)

;; MessageId: ERROR_REDIRECTOR_HAS_OPEN_HANDLES
;;
;; MessageText:
;;
;;  The redirector is in use and cannot be unloaded.
;;
(ERROR_REDIRECTOR_HAS_OPEN_HANDLES 4)

;; MessageId: ERROR_PRINTER_DRIVER_ALREADY_INSTALLED
;;
;; MessageText:
;;
;;  The specified printer driver is already installed.
;;
(ERROR_PRINTER_DRIVER_ALREADY_INSTALLED 5)

;; MessageId: ERROR_UNKNOWN_PORT
;;
;; MessageText:
;;
;;  The specified port is unknown.
;;
(ERROR_UNKNOWN_PORT 6)

;; MessageId: ERROR_UNKNOWN_PRINTER_DRIVER
;;
;; MessageText:
;;
;;  The printer driver is unknown.
;;
(ERROR_UNKNOWN_PRINTER_DRIVER 7)

;; MessageId: ERROR_UNKNOWN_PRINTPROCESSOR
;;
;; MessageText:
;;
;;  The print processor is unknown.
;;
(ERROR_UNKNOWN_PRINTPROCESSOR 8)

;; MessageId: ERROR_INVALID_SEPARATOR_FILE
;;
;; MessageText:
;;
;;  The specified separator file is invalid.
;;
(ERROR_INVALID_SEPARATOR_FILE 9)

;; MessageId: ERROR_INVALID_PRIORITY
;;
;; MessageText:
;;
;;  The specified priority is invalid.
;;
(ERROR_INVALID_PRIORITY 0)

;; MessageId: ERROR_INVALID_PRINTER_NAME
;;
;; MessageText:
;;
;;  The printer name is invalid.
;;
(ERROR_INVALID_PRINTER_NAME 1)

;; MessageId: ERROR_PRINTER_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  The printer already exists.
;;
(ERROR_PRINTER_ALREADY_EXISTS 2)

;; MessageId: ERROR_INVALID_PRINTER_COMMAND
;;
;; MessageText:
;;
;;  The printer command is invalid.
;;
(ERROR_INVALID_PRINTER_COMMAND 3)

;; MessageId: ERROR_INVALID_DATATYPE
;;
;; MessageText:
;;
;;  The specified datatype is invalid.
;;
(ERROR_INVALID_DATATYPE 4)

;; MessageId: ERROR_INVALID_ENVIRONMENT
;;
;; MessageText:
;;
;;  The environment specified is invalid.
;;
(ERROR_INVALID_ENVIRONMENT 5)

;; MessageId: RPC_S_NO_MORE_BINDINGS
;;
;; MessageText:
;;
;;  There are no more bindings.
;;
(RPC_S_NO_MORE_BINDINGS 6)

;; MessageId: ERROR_NOLOGON_INTERDOMAIN_TRUST_ACCOUNT
;;
;; MessageText:
;;
;;  The account used is an interdomain trust account.  Use your global user account or local user account to access this server.
;;
(ERROR_NOLOGON_INTERDOMAIN_TRUST_ACCOUNT 7)

;; MessageId: ERROR_NOLOGON_WORKSTATION_TRUST_ACCOUNT
;;
;; MessageText:
;;
;;  The account used is a computer account.  Use your global user account or local user account to access this server.
;;
(ERROR_NOLOGON_WORKSTATION_TRUST_ACCOUNT 8)

;; MessageId: ERROR_NOLOGON_SERVER_TRUST_ACCOUNT
;;
;; MessageText:
;;
;;  The account used is a server trust account. Use your global user account or local user account to access this server.
;;
(ERROR_NOLOGON_SERVER_TRUST_ACCOUNT 9)

;; MessageId: ERROR_DOMAIN_TRUST_INCONSISTENT
;;
;; MessageText:
;;
;;  The name or security ID (SID) of the domain specified is inconsistent
;;  with the trust information for that domain.
;;
(ERROR_DOMAIN_TRUST_INCONSISTENT 0)

;; MessageId: ERROR_SERVER_HAS_OPEN_HANDLES
;;
;; MessageText:
;;
;;  The server is in use and cannot be unloaded.
;;
(ERROR_SERVER_HAS_OPEN_HANDLES 1)

;; MessageId: ERROR_RESOURCE_DATA_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified image file did not contain a resource section.
;;
(ERROR_RESOURCE_DATA_NOT_FOUND 2)

;; MessageId: ERROR_RESOURCE_TYPE_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified resource type cannot be found in the image file.
;;
(ERROR_RESOURCE_TYPE_NOT_FOUND 3)

;; MessageId: ERROR_RESOURCE_NAME_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified resource name cannot be found in the image file.
;;
(ERROR_RESOURCE_NAME_NOT_FOUND 4)

;; MessageId: ERROR_RESOURCE_LANG_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified resource language ID cannot be found in the image file.
;;
(ERROR_RESOURCE_LANG_NOT_FOUND 5)

;; MessageId: ERROR_NOT_ENOUGH_QUOTA
;;
;; MessageText:
;;
;;  Not enough quota is available to process this command.
;;
(ERROR_NOT_ENOUGH_QUOTA 6)

;; MessageId: RPC_S_NO_INTERFACES
;;
;; MessageText:
;;
;;  No interfaces have been registered.
;;
(RPC_S_NO_INTERFACES 7)

;; MessageId: RPC_S_CALL_CANCELLED
;;
;; MessageText:
;;
;;  The remote procedure call was cancelled.
;;
(RPC_S_CALL_CANCELLED 8)

;; MessageId: RPC_S_BINDING_INCOMPLETE
;;
;; MessageText:
;;
;;  The binding handle does not contain all required information.
;;
(RPC_S_BINDING_INCOMPLETE 9)

;; MessageId: RPC_S_COMM_FAILURE
;;
;; MessageText:
;;
;;  A communications failure occurred during a remote procedure call.
;;
(RPC_S_COMM_FAILURE 0)

;; MessageId: RPC_S_UNSUPPORTED_AUTHN_LEVEL
;;
;; MessageText:
;;
;;  The requested authentication level is not supported.
;;
(RPC_S_UNSUPPORTED_AUTHN_LEVEL 1)

;; MessageId: RPC_S_NO_PRINC_NAME
;;
;; MessageText:
;;
;;  No principal name registered.
;;
(RPC_S_NO_PRINC_NAME 2)

;; MessageId: RPC_S_NOT_RPC_ERROR
;;
;; MessageText:
;;
;;  The error specified is not a valid Windows RPC error code.
;;
(RPC_S_NOT_RPC_ERROR 3)

;; MessageId: RPC_S_UUID_LOCAL_ONLY
;;
;; MessageText:
;;
;;  A UUID that is valid only on this computer has been allocated.
;;
(RPC_S_UUID_LOCAL_ONLY 4)

;; MessageId: RPC_S_SEC_PKG_ERROR
;;
;; MessageText:
;;
;;  A security package specific error occurred.
;;
(RPC_S_SEC_PKG_ERROR 5)

;; MessageId: RPC_S_NOT_CANCELLED
;;
;; MessageText:
;;
;;  Thread is not canceled.
;;
(RPC_S_NOT_CANCELLED 6)

;; MessageId: RPC_X_INVALID_ES_ACTION
;;
;; MessageText:
;;
;;  Invalid operation on the encoding/decoding handle.
;;
(RPC_X_INVALID_ES_ACTION 7)

;; MessageId: RPC_X_WRONG_ES_VERSION
;;
;; MessageText:
;;
;;  Incompatible version of the serializing package.
;;
(RPC_X_WRONG_ES_VERSION 8)

;; MessageId: RPC_X_WRONG_STUB_VERSION
;;
;; MessageText:
;;
;;  Incompatible version of the RPC stub.
;;
(RPC_X_WRONG_STUB_VERSION 9)

;; MessageId: RPC_X_INVALID_PIPE_OBJECT
;;
;; MessageText:
;;
;;  The RPC pipe object is invalid or corrupted.
;;
(RPC_X_INVALID_PIPE_OBJECT 0)

;; MessageId: RPC_X_WRONG_PIPE_ORDER
;;
;; MessageText:
;;
;;  An invalid operation was attempted on an RPC pipe object.
;;
(RPC_X_WRONG_PIPE_ORDER 1)

;; MessageId: RPC_X_WRONG_PIPE_VERSION
;;
;; MessageText:
;;
;;  Unsupported RPC pipe version.
;;
(RPC_X_WRONG_PIPE_VERSION 2)

;; MessageId: RPC_S_GROUP_MEMBER_NOT_FOUND
;;
;; MessageText:
;;
;;  The group member was not found.
;;
(RPC_S_GROUP_MEMBER_NOT_FOUND 8)

;; MessageId: EPT_S_CANT_CREATE
;;
;; MessageText:
;;
;;  The endpoint mapper database entry could not be created.
;;
(EPT_S_CANT_CREATE 9)

;; MessageId: RPC_S_INVALID_OBJECT
;;
;; MessageText:
;;
;;  The object universal unique identifier (UUID) is the nil UUID.
;;
(RPC_S_INVALID_OBJECT 0)

;; MessageId: ERROR_INVALID_TIME
;;
;; MessageText:
;;
;;  The specified time is invalid.
;;
(ERROR_INVALID_TIME 1)

;; MessageId: ERROR_INVALID_FORM_NAME
;;
;; MessageText:
;;
;;  The specified form name is invalid.
;;
(ERROR_INVALID_FORM_NAME 2)

;; MessageId: ERROR_INVALID_FORM_SIZE
;;
;; MessageText:
;;
;;  The specified form size is invalid.
;;
(ERROR_INVALID_FORM_SIZE 3)

;; MessageId: ERROR_ALREADY_WAITING
;;
;; MessageText:
;;
;;  The specified printer handle is already being waited on
;;
(ERROR_ALREADY_WAITING 4)

;; MessageId: ERROR_PRINTER_DELETED
;;
;; MessageText:
;;
;;  The specified printer has been deleted.
;;
(ERROR_PRINTER_DELETED 5)

;; MessageId: ERROR_INVALID_PRINTER_STATE
;;
;; MessageText:
;;
;;  The state of the printer is invalid.
;;
(ERROR_INVALID_PRINTER_STATE 6)

;; MessageId: ERROR_PASSWORD_MUST_CHANGE
;;
;; MessageText:
;;
;;  The user must change his password before he logs on the first time.
;;
(ERROR_PASSWORD_MUST_CHANGE 7)

;; MessageId: ERROR_DOMAIN_CONTROLLER_NOT_FOUND
;;
;; MessageText:
;;
;;  Could not find the domain controller for this domain.
;;
(ERROR_DOMAIN_CONTROLLER_NOT_FOUND 8)

;; MessageId: ERROR_ACCOUNT_LOCKED_OUT
;;
;; MessageText:
;;
;;  The referenced account is currently locked out and may not be logged on to.
;;
(ERROR_ACCOUNT_LOCKED_OUT 9)

;; MessageId: OR_INVALID_OXID
;;
;; MessageText:
;;
;;  The object exporter specified was not found.
;;
(OR_INVALID_OXID 0)

;; MessageId: OR_INVALID_OID
;;
;; MessageText:
;;
;;  The object specified was not found.
;;
(OR_INVALID_OID 1)

;; MessageId: OR_INVALID_SET
;;
;; MessageText:
;;
;;  The object resolver set specified was not found.
;;
(OR_INVALID_SET 2)

;; MessageId: RPC_S_SEND_INCOMPLETE
;;
;; MessageText:
;;
;;  Some data remains to be sent in the request buffer.
;;
(RPC_S_SEND_INCOMPLETE 3)

;; MessageId: RPC_S_INVALID_ASYNC_HANDLE
;;
;; MessageText:
;;
;;  Invalid asynchronous remote procedure call handle.
;;
(RPC_S_INVALID_ASYNC_HANDLE 4)

;; MessageId: RPC_S_INVALID_ASYNC_CALL
;;
;; MessageText:
;;
;;  Invalid asynchronous RPC call handle for this operation.
;;
(RPC_S_INVALID_ASYNC_CALL 5)

;; MessageId: RPC_X_PIPE_CLOSED
;;
;; MessageText:
;;
;;  The RPC pipe object has already been closed.
;;
(RPC_X_PIPE_CLOSED 6)

;; MessageId: RPC_X_PIPE_DISCIPLINE_ERROR
;;
;; MessageText:
;;
;;  The RPC call completed before all pipes were processed.
;;
(RPC_X_PIPE_DISCIPLINE_ERROR 7)

;; MessageId: RPC_X_PIPE_EMPTY
;;
;; MessageText:
;;
;;  No more data is available from the RPC pipe.
;;
(RPC_X_PIPE_EMPTY 8)

;; MessageId: ERROR_NO_SITENAME
;;
;; MessageText:
;;
;;  No site name is available for this machine.
;;
(ERROR_NO_SITENAME 9)

;; MessageId: ERROR_CANT_ACCESS_FILE
;;
;; MessageText:
;;
;;  The file can not be accessed by the system.
;;
(ERROR_CANT_ACCESS_FILE 0)

;; MessageId: ERROR_CANT_RESOLVE_FILENAME
;;
;; MessageText:
;;
;;  The name of the file cannot be resolved by the system.
;;
(ERROR_CANT_RESOLVE_FILENAME 1)

;; MessageId: ERROR_NO_BROWSER_SERVERS_FOUND
;;
;; MessageText:
;;
;;  The list of servers for this workgroup is not currently available
;;
(ERROR_NO_BROWSER_SERVERS_FOUND 8)

;;                       ;;
;;   OpenGL Error Code   ;;
;;                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;/

;; MessageId: ERROR_INVALID_PIXEL_FORMAT
;;
;; MessageText:
;;
;;  The pixel format is invalid.
;;
(ERROR_INVALID_PIXEL_FORMAT 0)

;; MessageId: ERROR_BAD_DRIVER
;;
;; MessageText:
;;
;;  The specified driver is invalid.
;;
(ERROR_BAD_DRIVER 1)

;; MessageId: ERROR_INVALID_WINDOW_STYLE
;;
;; MessageText:
;;
;;  The window style or class attribute is invalid for this operation.
;;
(ERROR_INVALID_WINDOW_STYLE 2)

;; MessageId: ERROR_METAFILE_NOT_SUPPORTED
;;
;; MessageText:
;;
;;  The requested metafile operation is not supported.
;;
(ERROR_METAFILE_NOT_SUPPORTED 3)

;; MessageId: ERROR_TRANSFORM_NOT_SUPPORTED
;;
;; MessageText:
;;
;;  The requested transformation operation is not supported.
;;
(ERROR_TRANSFORM_NOT_SUPPORTED 4)

;; MessageId: ERROR_CLIPPING_NOT_SUPPORTED
;;
;; MessageText:
;;
;;  The requested clipping operation is not supported.
;;
(ERROR_CLIPPING_NOT_SUPPORTED 5)


;;                                       ;;
;;   Image Color Management Error Code   ;;
;;                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;/

;; MessageId: ERROR_INVALID_CMM
;;
;; MessageText:
;;
;;  The specified color management module is invalid.
;;
(ERROR_INVALID_CMM 0)

;; MessageId: ERROR_INVALID_PROFILE
;;
;; MessageText:
;;
;;  The specified color profile is invalid.
;;
(ERROR_INVALID_PROFILE 1)

;; MessageId: ERROR_TAG_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified tag was not found.
;;
(ERROR_TAG_NOT_FOUND 2)

;; MessageId: ERROR_TAG_NOT_PRESENT
;;
;; MessageText:
;;
;;  A required tag is not present.
;;
(ERROR_TAG_NOT_PRESENT 3)

;; MessageId: ERROR_DUPLICATE_TAG
;;
;; MessageText:
;;
;;  The specified tag is already present.
;;
(ERROR_DUPLICATE_TAG 4)

;; MessageId: ERROR_PROFILE_NOT_ASSOCIATED_WITH_DEVICE
;;
;; MessageText:
;;
;;  The specified color profile is not associated with any device.
;;
(ERROR_PROFILE_NOT_ASSOCIATED_WITH_DEVICE 5)

;; MessageId: ERROR_PROFILE_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified color profile was not found.
;;
(ERROR_PROFILE_NOT_FOUND 6)

;; MessageId: ERROR_INVALID_COLORSPACE
;;
;; MessageText:
;;
;;  The specified color space is invalid.
;;
(ERROR_INVALID_COLORSPACE 7)

;; MessageId: ERROR_ICM_NOT_ENABLED
;;
;; MessageText:
;;
;;  Image Color Management is not enabled.
;;
(ERROR_ICM_NOT_ENABLED 8)

;; MessageId: ERROR_DELETING_ICM_XFORM
;;
;; MessageText:
;;
;;  There was an error while deleting the color transform.
;;
(ERROR_DELETING_ICM_XFORM 9)

;; MessageId: ERROR_INVALID_TRANSFORM
;;
;; MessageText:
;;
;;  The specified color transform is invalid.
;;
(ERROR_INVALID_TRANSFORM 0)

;; MessageId: ERROR_COLORSPACE_MISMATCH
;;
;; MessageText:
;;
;;  The specified transform does not match the bitmap's color space.
;;
(ERROR_COLORSPACE_MISMATCH 1)

;; MessageId: ERROR_INVALID_COLORINDEX
;;
;; MessageText:
;;
;;  The specified named color index is not present in the profile.
;;
(ERROR_INVALID_COLORINDEX 2)

;;                                ;;
;;     Win32 Spooler Error Codes  ;;
;;                                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MessageId: ERROR_UNKNOWN_PRINT_MONITOR
;;
;; MessageText:
;;
;;  The specified print monitor is unknown.
;;
(ERROR_UNKNOWN_PRINT_MONITOR 0)

;; MessageId: ERROR_PRINTER_DRIVER_IN_USE
;;
;; MessageText:
;;
;;  The specified printer driver is currently in use.
;;
(ERROR_PRINTER_DRIVER_IN_USE 1)

;; MessageId: ERROR_SPOOL_FILE_NOT_FOUND
;;
;; MessageText:
;;
;;  The spool file was not found.
;;
(ERROR_SPOOL_FILE_NOT_FOUND 2)

;; MessageId: ERROR_SPL_NO_STARTDOC
;;
;; MessageText:
;;
;;  A StartDocPrinter call was not issued.
;;
(ERROR_SPL_NO_STARTDOC 3)

;; MessageId: ERROR_SPL_NO_ADDJOB
;;
;; MessageText:
;;
;;  An AddJob call was not issued.
;;
(ERROR_SPL_NO_ADDJOB 4)

;; MessageId: ERROR_PRINT_PROCESSOR_ALREADY_INSTALLED
;;
;; MessageText:
;;
;;  The specified print processor has already been installed.
;;
(ERROR_PRINT_PROCESSOR_ALREADY_INSTALLED 5)

;; MessageId: ERROR_PRINT_MONITOR_ALREADY_INSTALLED
;;
;; MessageText:
;;
;;  The specified print monitor has already been installed.
;;
(ERROR_PRINT_MONITOR_ALREADY_INSTALLED 6)

;; MessageId: ERROR_INVALID_PRINT_MONITOR
;;
;; MessageText:
;;
;;  The specified print monitor does not have the required functions.
;;
(ERROR_INVALID_PRINT_MONITOR 7)

;; MessageId: ERROR_PRINT_MONITOR_IN_USE
;;
;; MessageText:
;;
;;  The specified print monitor is currently in use.
;;
(ERROR_PRINT_MONITOR_IN_USE 8)

;; MessageId: ERROR_PRINTER_HAS_JOBS_QUEUED
;;
;; MessageText:
;;
;;  The requested operation is not allowed when there are jobs queued to the printer.
;;
(ERROR_PRINTER_HAS_JOBS_QUEUED 9)

;; MessageId: ERROR_SUCCESS_REBOOT_REQUIRED
;;
;; MessageText:
;;
;;  The requested operation is successful.  Changes will not be effective until the system is rebooted.
;;
(ERROR_SUCCESS_REBOOT_REQUIRED 0)

;; MessageId: ERROR_SUCCESS_RESTART_REQUIRED
;;
;; MessageText:
;;
;;  The requested operation is successful.  Changes will not be effective until the service is restarted.
;;
(ERROR_SUCCESS_RESTART_REQUIRED 1)

;; MessageId: ERROR_PRINTER_NOT_FOUND
;;
;; MessageText:
;;
;;  No printers are found.
;;
(ERROR_PRINTER_NOT_FOUND 2)

;;                                ;;
;;     Wins Error Codes           ;;
;;                                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MessageId: ERROR_WINS_INTERNAL
;;
;; MessageText:
;;
;;  WINS encountered an error while processing the command.
;;
(ERROR_WINS_INTERNAL 0)

;; MessageId: ERROR_CAN_NOT_DEL_LOCAL_WINS
;;
;; MessageText:
;;
;;  The local WINS can not be deleted.
;;
(ERROR_CAN_NOT_DEL_LOCAL_WINS 1)

;; MessageId: ERROR_STATIC_INIT
;;
;; MessageText:
;;
;;  The importation from the file failed.
;;
(ERROR_STATIC_INIT 2)

;; MessageId: ERROR_INC_BACKUP
;;
;; MessageText:
;;
;;  The backup failed. Was a full backup done before?
;;
(ERROR_INC_BACKUP 3)

;; MessageId: ERROR_FULL_BACKUP
;;
;; MessageText:
;;
;;  The backup failed. Check the directory to which you are backing the database.
;;
(ERROR_FULL_BACKUP 4)

;; MessageId: ERROR_REC_NON_EXISTENT
;;
;; MessageText:
;;
;;  The name does not exist in the WINS database.
;;
(ERROR_REC_NON_EXISTENT 5)

;; MessageId: ERROR_RPL_NOT_ALLOWED
;;
;; MessageText:
;;
;;  Replication with a nonconfigured partner is not allowed.
;;
(ERROR_RPL_NOT_ALLOWED 6)

;;                                ;;
;;     DHCP Error Codes           ;;
;;                                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MessageId: ERROR_DHCP_ADDRESS_CONFLICT
;;
;; MessageText:
;;
;;  The DHCP client has obtained an IP address that is already in use on the network.  The local interface will be disabled until the DHCP client can obtain a new address.
;;
(ERROR_DHCP_ADDRESS_CONFLICT 0)

;;                                ;;
;;     WMI Error Codes            ;;
;;                                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MessageId: ERROR_WMI_GUID_NOT_FOUND
;;
;; MessageText:
;;
;;  The GUID passed was not recognized as valid by a WMI data provider.
;;
(ERROR_WMI_GUID_NOT_FOUND 0)

;; MessageId: ERROR_WMI_INSTANCE_NOT_FOUND
;;
;; MessageText:
;;
;;  The instance name passed was not recognized as valid by a WMI data provider.
;;
(ERROR_WMI_INSTANCE_NOT_FOUND 1)

;; MessageId: ERROR_WMI_ITEMID_NOT_FOUND
;;
;; MessageText:
;;
;;  The data item ID passed was not recognized as valid by a WMI data provider.
;;
(ERROR_WMI_ITEMID_NOT_FOUND 2)

;; MessageId: ERROR_WMI_TRY_AGAIN
;;
;; MessageText:
;;
;;  The WMI request could not be completed and should be retried.
;;
(ERROR_WMI_TRY_AGAIN 3)

;; MessageId: ERROR_WMI_DP_NOT_FOUND
;;
;; MessageText:
;;
;;  The WMI data provider could not be located.
;;
(ERROR_WMI_DP_NOT_FOUND 4)

;; MessageId: ERROR_WMI_UNRESOLVED_INSTANCE_REF
;;
;; MessageText:
;;
;;  The WMI data provider references an instance set that has not been registered.
;;
(ERROR_WMI_UNRESOLVED_INSTANCE_REF 5)

;; MessageId: ERROR_WMI_ALREADY_ENABLED
;;
;; MessageText:
;;
;;  The WMI data block or event notification has already been enabled.
;;
(ERROR_WMI_ALREADY_ENABLED 6)

;; MessageId: ERROR_WMI_GUID_DISCONNECTED
;;
;; MessageText:
;;
;;  The WMI data block is no longer available.
;;
(ERROR_WMI_GUID_DISCONNECTED 7)

;; MessageId: ERROR_WMI_SERVER_UNAVAILABLE
;;
;; MessageText:
;;
;;  The WMI data service is not available.
;;
(ERROR_WMI_SERVER_UNAVAILABLE 8)

;; MessageId: ERROR_WMI_DP_FAILED
;;
;; MessageText:
;;
;;  The WMI data provider failed to carry out the request.
;;
(ERROR_WMI_DP_FAILED 9)

;; MessageId: ERROR_WMI_INVALID_MOF
;;
;; MessageText:
;;
;;  The WMI MOF information is not valid.
;;
(ERROR_WMI_INVALID_MOF 0)

;; MessageId: ERROR_WMI_INVALID_REGINFO
;;
;; MessageText:
;;
;;  The WMI registration information is not valid.
;;
(ERROR_WMI_INVALID_REGINFO 1)

;; MessageId: ERROR_WMI_ALREADY_DISABLED
;;
;; MessageText:
;;
;;  The WMI data block or event notification has already been disabled.
;;
(ERROR_WMI_ALREADY_DISABLED 2)

;; MessageId: ERROR_WMI_READ_ONLY
;;
;; MessageText:
;;
;;  The WMI data item or data block is read only.
;;
(ERROR_WMI_READ_ONLY 3)

;; MessageId: ERROR_WMI_SET_FAILURE
;;
;; MessageText:
;;
;;  The WMI data item or data block could not be changed.
;;
(ERROR_WMI_SET_FAILURE 4)

;;                                ;;
;; NT Media Services Error Codes  ;;
;;                                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MessageId: ERROR_INVALID_MEDIA
;;
;; MessageText:
;;
;;  The media identifier does not represent a valid medium.
;;
(ERROR_INVALID_MEDIA 0)

;; MessageId: ERROR_INVALID_LIBRARY
;;
;; MessageText:
;;
;;  The library identifier does not represent a valid library.
;;
(ERROR_INVALID_LIBRARY 1)

;; MessageId: ERROR_INVALID_MEDIA_POOL
;;
;; MessageText:
;;
;;  The media pool identifier does not represent a valid media pool.
;;
(ERROR_INVALID_MEDIA_POOL 2)

;; MessageId: ERROR_DRIVE_MEDIA_MISMATCH
;;
;; MessageText:
;;
;;  The drive and medium are not compatible or exist in different libraries.
;;
(ERROR_DRIVE_MEDIA_MISMATCH 3)

;; MessageId: ERROR_MEDIA_OFFLINE
;;
;; MessageText:
;;
;;  The medium currently exists in an offline library and must be online to perform this operation.
;;
(ERROR_MEDIA_OFFLINE 4)

;; MessageId: ERROR_LIBRARY_OFFLINE
;;
;; MessageText:
;;
;;  The operation cannot be performed on an offline library.
;;
(ERROR_LIBRARY_OFFLINE 5)

;; MessageId: ERROR_EMPTY
;;
;; MessageText:
;;
;;  The library, drive, or media pool is empty.
;;
(ERROR_EMPTY 6)

;; MessageId: ERROR_NOT_EMPTY
;;
;; MessageText:
;;
;;  The library, drive, or media pool must be empty to perform this operation.
;;
(ERROR_NOT_EMPTY 7)

;; MessageId: ERROR_MEDIA_UNAVAILABLE
;;
;; MessageText:
;;
;;  No media is currently available in this media pool or library.
;;
(ERROR_MEDIA_UNAVAILABLE 8)

;; MessageId: ERROR_RESOURCE_DISABLED
;;
;; MessageText:
;;
;;  A resource required for this operation is disabled.
;;
(ERROR_RESOURCE_DISABLED 9)

;; MessageId: ERROR_INVALID_CLEANER
;;
;; MessageText:
;;
;;  The media identifier does not represent a valid cleaner.
;;
(ERROR_INVALID_CLEANER 0)

;; MessageId: ERROR_UNABLE_TO_CLEAN
;;
;; MessageText:
;;
;;  The drive cannot be cleaned or does not support cleaning.
;;
(ERROR_UNABLE_TO_CLEAN 1)

;; MessageId: ERROR_OBJECT_NOT_FOUND
;;
;; MessageText:
;;
;;  The object identifier does not represent a valid object.
;;
(ERROR_OBJECT_NOT_FOUND 2)

;; MessageId: ERROR_DATABASE_FAILURE
;;
;; MessageText:
;;
;;  Unable to read from or write to the database.
;;
(ERROR_DATABASE_FAILURE 3)

;; MessageId: ERROR_DATABASE_FULL
;;
;; MessageText:
;;
;;  The database is full.
;;
(ERROR_DATABASE_FULL 4)

;; MessageId: ERROR_MEDIA_INCOMPATIBLE
;;
;; MessageText:
;;
;;  The medium is not compatible with the device or media pool.
;;
(ERROR_MEDIA_INCOMPATIBLE 5)

;; MessageId: ERROR_RESOURCE_NOT_PRESENT
;;
;; MessageText:
;;
;;  The resource required for this operation does not exist.
;;
(ERROR_RESOURCE_NOT_PRESENT 6)

;; MessageId: ERROR_INVALID_OPERATION
;;
;; MessageText:
;;
;;  The operation identifier is not valid.
;;
(ERROR_INVALID_OPERATION 7)

;; MessageId: ERROR_MEDIA_NOT_AVAILABLE
;;
;; MessageText:
;;
;;  The media is not mounted or ready for use.
;;
(ERROR_MEDIA_NOT_AVAILABLE 8)

;; MessageId: ERROR_DEVICE_NOT_AVAILABLE
;;
;; MessageText:
;;
;;  The device is not ready for use.
;;
(ERROR_DEVICE_NOT_AVAILABLE 9)

;; MessageId: ERROR_REQUEST_REFUSED
;;
;; MessageText:
;;
;;  The operator or administrator has refused the request.
;;
(ERROR_REQUEST_REFUSED 0)

;; MessageId: ERROR_INVALID_DRIVE_OBJECT
;;
;; MessageText:
;;
;;  The drive identifier does not represent a valid drive.
;;
(ERROR_INVALID_DRIVE_OBJECT 1)

;; MessageId: ERROR_LIBRARY_FULL
;;
;; MessageText:
;;
;;  The library is completely full of media.
;;
(ERROR_LIBRARY_FULL 2)

;; MessageId: ERROR_MEDIUM_NOT_ACCESSIBLE
;;
;; MessageText:
;;
;;  The medium transport can not access the medium.
;;
(ERROR_MEDIUM_NOT_ACCESSIBLE 3)

;; MessageId: ERROR_UNABLE_TO_LOAD_MEDIUM
;;
;; MessageText:
;;
;;  Unable to load the medium into the drive.
;;
(ERROR_UNABLE_TO_LOAD_MEDIUM 4)

;; MessageId: ERROR_UNABLE_TO_INVENTORY_DRIVE
;;
;; MessageText:
;;
;;  Unable to retrieve status about the drive.
;;
(ERROR_UNABLE_TO_INVENTORY_DRIVE 5)

;; MessageId: ERROR_UNABLE_TO_INVENTORY_SLOT
;;
;; MessageText:
;;
;;  Unable to retrieve status about the slot.
;;
(ERROR_UNABLE_TO_INVENTORY_SLOT 6)

;; MessageId: ERROR_UNABLE_TO_INVENTORY_TRANSPORT
;;
;; MessageText:
;;
;;  Unable to retrieve status about the medium transport.
;;
(ERROR_UNABLE_TO_INVENTORY_TRANSPORT 7)

;; MessageId: ERROR_TRANSPORT_FULL
;;
;; MessageText:
;;
;;  The medium transport is full of media.
;;
(ERROR_TRANSPORT_FULL 8)

;; MessageId: ERROR_CONTROLLING_IEPORT
;;
;; MessageText:
;;
;;  Unable to open or close the inject/eject port.
;;
(ERROR_CONTROLLING_IEPORT 9)

;; MessageId: ERROR_UNABLE_TO_EJECT_MOUNTED_MEDIA
;;
;; MessageText:
;;
;;  Unable to eject the medium because if is in a drive.
;;
(ERROR_UNABLE_TO_EJECT_MOUNTED_MEDIA 0)

;; MessageId: ERROR_CLEANER_SLOT_SET
;;
;; MessageText:
;;
;;  A cleaner slot is already reserved.
;;
(ERROR_CLEANER_SLOT_SET 1)

;; MessageId: ERROR_CLEANER_SLOT_NOT_SET
;;
;; MessageText:
;;
;;  A cleaner slot is not reserved.
;;
(ERROR_CLEANER_SLOT_NOT_SET 2)

;; MessageId: ERROR_CLEANER_CARTRIDGE_SPENT
;;
;; MessageText:
;;
;;  The cleaner cartridge has performed the maximum number of drive cleanings.
;;
(ERROR_CLEANER_CARTRIDGE_SPENT 3)

;; MessageId: ERROR_UNEXPECTED_OMID
;;
;; MessageText:
;;
;;  Unexpected on-medium identifier.
;;
(ERROR_UNEXPECTED_OMID 4)

;; MessageId: ERROR_CANT_DELETE_LAST_ITEM
;;
;; MessageText:
;;
;;  The last remaining item in this group or resource cannot be deleted.
;;
(ERROR_CANT_DELETE_LAST_ITEM 5)

;; MessageId: ERROR_MESSAGE_EXCEEDS_MAX_SIZE
;;
;; MessageText:
;;
;;  The message provided exceeds the maximum size allowed for this parameter.
;;
(ERROR_MESSAGE_EXCEEDS_MAX_SIZE 6)

;;                                        ;;
;; NT Remote Storage Service Error Codes  ;;
;;                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MessageId: ERROR_FILE_OFFLINE
;;
;; MessageText:
;;
;;  The remote storage service was not able to recall the file.
;;
(ERROR_FILE_OFFLINE 0)

;; MessageId: ERROR_REMOTE_STORAGE_NOT_ACTIVE
;;
;; MessageText:
;;
;;  The remote storage service is not operational at this time.
;;
(ERROR_REMOTE_STORAGE_NOT_ACTIVE 1)

;; MessageId: ERROR_REMOTE_STORAGE_MEDIA_ERROR
;;
;; MessageText:
;;
;;  The remote storage service encountered a media error.
;;
(ERROR_REMOTE_STORAGE_MEDIA_ERROR 2)

;;                                        ;;
;; NT Reparse Points Error Codes          ;;
;;                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MessageId: ERROR_NOT_A_REPARSE_POINT
;;
;; MessageText:
;;
;;  The file or directory is not a reparse point.
;;
(ERROR_NOT_A_REPARSE_POINT 0)

;; MessageId: ERROR_REPARSE_ATTRIBUTE_CONFLICT
;;
;; MessageText:
;;
;;  The reparse point attribute cannot be set because it conflicts with an existing attribute.
;;
(ERROR_REPARSE_ATTRIBUTE_CONFLICT 1)

;; MessageId: ERROR_INVALID_REPARSE_DATA
;;
;; MessageText:
;;
;;  The data present in the reparse point buffer is invalid.
;;
(ERROR_INVALID_REPARSE_DATA 2)

;;                                ;;
;;     Cluster Error Codes        ;;
;;                                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MessageId: ERROR_DEPENDENT_RESOURCE_EXISTS
;;
;; MessageText:
;;
;;  The cluster resource cannot be moved to another group because other resources are dependent on it.
;;
(ERROR_DEPENDENT_RESOURCE_EXISTS 1)

;; MessageId: ERROR_DEPENDENCY_NOT_FOUND
;;
;; MessageText:
;;
;;  The cluster resource dependency cannot be found.
;;
(ERROR_DEPENDENCY_NOT_FOUND 2)

;; MessageId: ERROR_DEPENDENCY_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  The cluster resource cannot be made dependent on the specified resource because it is already dependent.
;;
(ERROR_DEPENDENCY_ALREADY_EXISTS 3)

;; MessageId: ERROR_RESOURCE_NOT_ONLINE
;;
;; MessageText:
;;
;;  The cluster resource is not online.
;;
(ERROR_RESOURCE_NOT_ONLINE 4)

;; MessageId: ERROR_HOST_NODE_NOT_AVAILABLE
;;
;; MessageText:
;;
;;  A cluster node is not available for this operation.
;;
(ERROR_HOST_NODE_NOT_AVAILABLE 5)

;; MessageId: ERROR_RESOURCE_NOT_AVAILABLE
;;
;; MessageText:
;;
;;  The cluster resource is not available.
;;
(ERROR_RESOURCE_NOT_AVAILABLE 6)

;; MessageId: ERROR_RESOURCE_NOT_FOUND
;;
;; MessageText:
;;
;;  The cluster resource could not be found.
;;
(ERROR_RESOURCE_NOT_FOUND 7)

;; MessageId: ERROR_SHUTDOWN_CLUSTER
;;
;; MessageText:
;;
;;  The cluster is being shut down.
;;
(ERROR_SHUTDOWN_CLUSTER 8)

;; MessageId: ERROR_CANT_EVICT_ACTIVE_NODE
;;
;; MessageText:
;;
;;  A cluster node cannot be evicted from the cluster while it is online.
;;
(ERROR_CANT_EVICT_ACTIVE_NODE 9)

;; MessageId: ERROR_OBJECT_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  The object already exists.
;;
(ERROR_OBJECT_ALREADY_EXISTS 0)

;; MessageId: ERROR_OBJECT_IN_LIST
;;
;; MessageText:
;;
;;  The object is already in the list.
;;
(ERROR_OBJECT_IN_LIST 1)

;; MessageId: ERROR_GROUP_NOT_AVAILABLE
;;
;; MessageText:
;;
;;  The cluster group is not available for any new requests.
;;
(ERROR_GROUP_NOT_AVAILABLE 2)

;; MessageId: ERROR_GROUP_NOT_FOUND
;;
;; MessageText:
;;
;;  The cluster group could not be found.
;;
(ERROR_GROUP_NOT_FOUND 3)

;; MessageId: ERROR_GROUP_NOT_ONLINE
;;
;; MessageText:
;;
;;  The operation could not be completed because the cluster group is not online.
;;
(ERROR_GROUP_NOT_ONLINE 4)

;; MessageId: ERROR_HOST_NODE_NOT_RESOURCE_OWNER
;;
;; MessageText:
;;
;;  The cluster node is not the owner of the resource.
;;
(ERROR_HOST_NODE_NOT_RESOURCE_OWNER 5)

;; MessageId: ERROR_HOST_NODE_NOT_GROUP_OWNER
;;
;; MessageText:
;;
;;  The cluster node is not the owner of the group.
;;
(ERROR_HOST_NODE_NOT_GROUP_OWNER 6)

;; MessageId: ERROR_RESMON_CREATE_FAILED
;;
;; MessageText:
;;
;;  The cluster resource could not be created in the specified resource monitor.
;;
(ERROR_RESMON_CREATE_FAILED 7)

;; MessageId: ERROR_RESMON_ONLINE_FAILED
;;
;; MessageText:
;;
;;  The cluster resource could not be brought online by the resource monitor.
;;
(ERROR_RESMON_ONLINE_FAILED 8)

;; MessageId: ERROR_RESOURCE_ONLINE
;;
;; MessageText:
;;
;;  The operation could not be completed because the cluster resource is online.
;;
(ERROR_RESOURCE_ONLINE 9)

;; MessageId: ERROR_QUORUM_RESOURCE
;;
;; MessageText:
;;
;;  The cluster resource could not be deleted or brought offline because it is the quorum resource.
;;
(ERROR_QUORUM_RESOURCE 0)

;; MessageId: ERROR_NOT_QUORUM_CAPABLE
;;
;; MessageText:
;;
;;  The cluster could not make the specified resource a quorum resource because it is not capable of being a quorum resource.
;;
(ERROR_NOT_QUORUM_CAPABLE 1)

;; MessageId: ERROR_CLUSTER_SHUTTING_DOWN
;;
;; MessageText:
;;
;;  The cluster software is shutting down.
;;
(ERROR_CLUSTER_SHUTTING_DOWN 2)

;; MessageId: ERROR_INVALID_STATE
;;
;; MessageText:
;;
;;  The group or resource is not in the correct state to perform the requested operation.
;;
(ERROR_INVALID_STATE 3)

;; MessageId: ERROR_RESOURCE_PROPERTIES_STORED
;;
;; MessageText:
;;
;;  The properties were stored but not all changes will take effect until the next
;;  time the resource is brought online.
;;
(ERROR_RESOURCE_PROPERTIES_STORED 4)

;; MessageId: ERROR_NOT_QUORUM_CLASS
;;
;; MessageText:
;;
;;  The cluster could not make the specified resource a quorum resource because it does not belong to a shared storage class.
;;
(ERROR_NOT_QUORUM_CLASS 5)

;; MessageId: ERROR_CORE_RESOURCE
;;
;; MessageText:
;;
;;  The cluster resource could not be deleted since it is a core resource.
;;
(ERROR_CORE_RESOURCE 6)

;; MessageId: ERROR_QUORUM_RESOURCE_ONLINE_FAILED
;;
;; MessageText:
;;
;;  The quorum resource failed to come online.
;;
(ERROR_QUORUM_RESOURCE_ONLINE_FAILED 7)

;; MessageId: ERROR_QUORUMLOG_OPEN_FAILED
;;
;; MessageText:
;;
;;  The quorum log could not be created or mounted successfully.
;;
(ERROR_QUORUMLOG_OPEN_FAILED 8)

;; MessageId: ERROR_CLUSTERLOG_CORRUPT
;;
;; MessageText:
;;
;;  The cluster log is corrupt.
;;
(ERROR_CLUSTERLOG_CORRUPT 9)

;; MessageId: ERROR_CLUSTERLOG_RECORD_EXCEEDS_MAXSIZE
;;
;; MessageText:
;;
;;  The record could not be written to the cluster log since it exceeds the maximum size.
;;
(ERROR_CLUSTERLOG_RECORD_EXCEEDS_MAXSIZE 0)

;; MessageId: ERROR_CLUSTERLOG_EXCEEDS_MAXSIZE
;;
;; MessageText:
;;
;;  The cluster log exceeds its maximum size.
;;
(ERROR_CLUSTERLOG_EXCEEDS_MAXSIZE 1)

;; MessageId: ERROR_CLUSTERLOG_CHKPOINT_NOT_FOUND
;;
;; MessageText:
;;
;;  No checkpoint record was found in the cluster log.
;;
(ERROR_CLUSTERLOG_CHKPOINT_NOT_FOUND 2)

;; MessageId: ERROR_CLUSTERLOG_NOT_ENOUGH_SPACE
;;
;; MessageText:
;;
;;  The minimum required disk space needed for logging is not available.
;;
(ERROR_CLUSTERLOG_NOT_ENOUGH_SPACE 3)

;;                                ;;
;;     EFS Error Codes            ;;
;;                                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MessageId: ERROR_ENCRYPTION_FAILED
;;
;; MessageText:
;;
;;  The specified file could not be encrypted.
;;
(ERROR_ENCRYPTION_FAILED 0)

;; MessageId: ERROR_DECRYPTION_FAILED
;;
;; MessageText:
;;
;;  The specified file could not be decrypted.
;;
(ERROR_DECRYPTION_FAILED 1)

;; MessageId: ERROR_FILE_ENCRYPTED
;;
;; MessageText:
;;
;;  The specified file is encrypted and the user does not have the ability to decrypt it.
;;
(ERROR_FILE_ENCRYPTED 2)

;; MessageId: ERROR_NO_RECOVERY_POLICY
;;
;; MessageText:
;;
;;  There is no encryption recovery policy configured for this system.
;;
(ERROR_NO_RECOVERY_POLICY 3)

;; MessageId: ERROR_NO_EFS
;;
;; MessageText:
;;
;;  The required encryption driver is not loaded for this system.
;;
(ERROR_NO_EFS 4)

;; MessageId: ERROR_WRONG_EFS
;;
;; MessageText:
;;
;;  The file was encrypted with a different encryption driver than is currently loaded.
;;
(ERROR_WRONG_EFS 5)

;; MessageId: ERROR_NO_USER_KEYS
;;
;; MessageText:
;;
;;  There are no EFS keys defined for the user.
;;
(ERROR_NO_USER_KEYS 6)

;; MessageId: ERROR_FILE_NOT_ENCRYPTED
;;
;; MessageText:
;;
;;  The specified file is not encrypted.
;;
(ERROR_FILE_NOT_ENCRYPTED 7)

;; MessageId: ERROR_NOT_EXPORT_FORMAT
;;
;; MessageText:
;;
;;  The specified file is not in the defined EFS export format.
;;
(ERROR_NOT_EXPORT_FORMAT 8)

;;                                ;;
;; Terminal Server Error Codes    ;;
;;                                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MessageId: ERROR_CTX_WINSTATION_NAME_INVALID
;;
;; MessageText:
;;
;;  The specified session name is invalid.
;;
(ERROR_CTX_WINSTATION_NAME_INVALID 1)

;; MessageId: ERROR_CTX_INVALID_PD
;;
;; MessageText:
;;
;;  The specified protocol driver is invalid.
;;
(ERROR_CTX_INVALID_PD 2)

;; MessageId: ERROR_CTX_PD_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified protocol driver was not found in the system path.
;;
(ERROR_CTX_PD_NOT_FOUND 3)

;; MessageId: ERROR_CTX_WD_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified Terminal Connection driver was not found in the system path.
;;
(ERROR_CTX_WD_NOT_FOUND 4)

;; MessageId: ERROR_CTX_CANNOT_MAKE_EVENTLOG_ENTRY
;;
;; MessageText:
;;
;;  A Registry key could not be created in the Event Log for this session.
;;
(ERROR_CTX_CANNOT_MAKE_EVENTLOG_ENTRY 5)

;; MessageId: ERROR_CTX_SERVICE_NAME_COLLISION
;;
;; MessageText:
;;
;;  A service with the same name already exists on the system.
;;
(ERROR_CTX_SERVICE_NAME_COLLISION 6)

;; MessageId: ERROR_CTX_CLOSE_PENDING
;;
;; MessageText:
;;
;;  A close operation is pending on the session.
;;
(ERROR_CTX_CLOSE_PENDING 7)

;; MessageId: ERROR_CTX_NO_OUTBUF
;;
;; MessageText:
;;
;;  There are no free output buffers available.
;;
(ERROR_CTX_NO_OUTBUF 8)

;; MessageId: ERROR_CTX_MODEM_INF_NOT_FOUND
;;
;; MessageText:
;;
;;  The MODEM.INF file was not found.
;;
(ERROR_CTX_MODEM_INF_NOT_FOUND 9)

;; MessageId: ERROR_CTX_INVALID_MODEMNAME
;;
;; MessageText:
;;
;;  The modem name was not found in MODEM.INF.
;;
(ERROR_CTX_INVALID_MODEMNAME 0)

;; MessageId: ERROR_CTX_MODEM_RESPONSE_ERROR
;;
;; MessageText:
;;
;;  The modem did not accept the command sent to it.
;;  Verify the configured modem name matches the attached modem.
;;
(ERROR_CTX_MODEM_RESPONSE_ERROR 1)

;; MessageId: ERROR_CTX_MODEM_RESPONSE_TIMEOUT
;;
;; MessageText:
;;
;;  The modem did not respond to the command sent to it.
;;  Verify the modem is properly cabled and powered on.
;;
(ERROR_CTX_MODEM_RESPONSE_TIMEOUT 2)

;; MessageId: ERROR_CTX_MODEM_RESPONSE_NO_CARRIER
;;
;; MessageText:
;;
;;  Carrier detect has failed or carrier has been dropped due to disconnect.
;;
(ERROR_CTX_MODEM_RESPONSE_NO_CARRIER 3)

;; MessageId: ERROR_CTX_MODEM_RESPONSE_NO_DIALTONE
;;
;; MessageText:
;;
;;  Dial tone not detected within required time.
;;  Verify phone cable is properly attached and functional.
;;
(ERROR_CTX_MODEM_RESPONSE_NO_DIALTONE 4)

;; MessageId: ERROR_CTX_MODEM_RESPONSE_BUSY
;;
;; MessageText:
;;
;;  Busy signal detected at remote site on callback.
;;
(ERROR_CTX_MODEM_RESPONSE_BUSY 5)

;; MessageId: ERROR_CTX_MODEM_RESPONSE_VOICE
;;
;; MessageText:
;;
;;  Voice detected at remote site on callback.
;;
(ERROR_CTX_MODEM_RESPONSE_VOICE 6)

;; MessageId: ERROR_CTX_TD_ERROR
;;
;; MessageText:
;;
;;  Transport driver error
;;
(ERROR_CTX_TD_ERROR 7)

;; MessageId: ERROR_CTX_WINSTATION_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified session cannot be found.
;;
(ERROR_CTX_WINSTATION_NOT_FOUND 2)

;; MessageId: ERROR_CTX_WINSTATION_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  The specified session name is already in use.
;;
(ERROR_CTX_WINSTATION_ALREADY_EXISTS 3)

;; MessageId: ERROR_CTX_WINSTATION_BUSY
;;
;; MessageText:
;;
;;  The requested operation cannot be completed because
;;  the Terminal Connection is currently busy processing a connect,
;;  disconnect, reset, or delete operation.
;;
(ERROR_CTX_WINSTATION_BUSY 4)

;; MessageId: ERROR_CTX_BAD_VIDEO_MODE
;;
;; MessageText:
;;
;;  An attempt has been made to connect to a session
;;  whose video mode is not supported by the current client.
;;
(ERROR_CTX_BAD_VIDEO_MODE 5)

;; MessageId: ERROR_CTX_GRAPHICS_INVALID
;;
;; MessageText:
;;
;;  The application attempted to enable DOS graphics mode.
;;  DOS graphics mode is not supported.
;;
(ERROR_CTX_GRAPHICS_INVALID 5)

;; MessageId: ERROR_CTX_LOGON_DISABLED
;;
;; MessageText:
;;
;;  Your interactive logon privilege has been disabled.
;;  Please contact your administrator.
;;
(ERROR_CTX_LOGON_DISABLED 7)

;; MessageId: ERROR_CTX_NOT_CONSOLE
;;
;; MessageText:
;;
;;  The requested operation can be performed only on the system console.
;;  This is most often the result of a driver or system DLL requiring
;;  direct console access.
;;
(ERROR_CTX_NOT_CONSOLE 8)

;; MessageId: ERROR_CTX_CLIENT_QUERY_TIMEOUT
;;
;; MessageText:
;;
;;  The client failed to respond to the server connect message.
;;
(ERROR_CTX_CLIENT_QUERY_TIMEOUT 0)

;; MessageId: ERROR_CTX_CONSOLE_DISCONNECT
;;
;; MessageText:
;;
;;  Disconnecting the console session is not supported.
;;
(ERROR_CTX_CONSOLE_DISCONNECT 1)

;; MessageId: ERROR_CTX_CONSOLE_CONNECT
;;
;; MessageText:
;;
;;  Reconnecting a disconnected session to the console is not supported.
;;
(ERROR_CTX_CONSOLE_CONNECT 2)

;; MessageId: ERROR_CTX_SHADOW_DENIED
;;
;; MessageText:
;;
;;  The request to shadow another session was denied.
;;
(ERROR_CTX_SHADOW_DENIED 4)

;; MessageId: ERROR_CTX_WINSTATION_ACCESS_DENIED
;;
;; MessageText:
;;
;;  The requested session access is denied.
;;
(ERROR_CTX_WINSTATION_ACCESS_DENIED 5)

;; MessageId: ERROR_CTX_INVALID_WD
;;
;; MessageText:
;;
;;  The specified Terminal Connection driver is invalid.
;;
(ERROR_CTX_INVALID_WD 9)

;; MessageId: ERROR_CTX_SHADOW_INVALID
;;
;; MessageText:
;;
;;  The requested session cannot be shadowed.
;;  This may be because the session is disconnected or
;;  does not currently have a user logged on.  Also, you cannot
;;  shadow a session from the system console or shadow the
;;  system console.
;;
(ERROR_CTX_SHADOW_INVALID 0)

;; MessageId: ERROR_CTX_SHADOW_DISABLED
;;
;; MessageText:
;;
;;  The requested session is not configured to allow shadowing.
;;
(ERROR_CTX_SHADOW_DISABLED 1)

;;                                                /
;;             Active Directory Error Codes       /
;;                                                /
;;                  8000 to  8999                 /
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;/
;; *****************
;; FACILITY_FILE_REPLICATION_SERVICE
;; *****************
;;
;; MessageId: FRS_ERR_INVALID_API_SEQUENCE
;;
;; MessageText:
;;
;;  File Replication Service API was called incorrectly.
;;
(FRS_ERR_INVALID_API_SEQUENCE 1)

;; MessageId: FRS_ERR_STARTING_SERVICE
;;
;; MessageText:
;;
;;  File Replication Service cannot be started.
;;
(FRS_ERR_STARTING_SERVICE 2)

;; MessageId: FRS_ERR_STOPPING_SERVICE
;;
;; MessageText:
;;
;;  File Replication Service cannot be stopped.
;;
(FRS_ERR_STOPPING_SERVICE 3)

;; MessageId: FRS_ERR_INTERNAL_API
;;
;; MessageText:
;;
;;  File Replication Service API terminated the request.
;;
(FRS_ERR_INTERNAL_API 4)

;; MessageId: FRS_ERR_INTERNAL
;;
;; MessageText:
;;
;;  File Replication Service terminated the request.
;;
(FRS_ERR_INTERNAL 5)

;; MessageId: FRS_ERR_SERVICE_COMM
;;
;; MessageText:
;;
;;  File Replication Service cannot be contacted.
;;
(FRS_ERR_SERVICE_COMM 6)

;; MessageId: FRS_ERR_INSUFFICIENT_PRIV
;;
;; MessageText:
;;
;;  File Replication Service cannot satisfy the request because the user is not a member of Administrators.
;;
(FRS_ERR_INSUFFICIENT_PRIV 7)

;; MessageId: FRS_ERR_AUTHENTICATION
;;
;; MessageText:
;;
;;  File Replication Service cannot satisfy the request because authenticated RPC is not available.
;;
(FRS_ERR_AUTHENTICATION 8)

;; MessageId: FRS_ERR_PARENT_INSUFFICIENT_PRIV
;;
;; MessageText:
;;
;;  File Replication Service cannot satisfy the request because the user is not a member of Administrators on the domain controller.
;;
(FRS_ERR_PARENT_INSUFFICIENT_PRIV 9)

;; MessageId: FRS_ERR_PARENT_AUTHENTICATION
;;
;; MessageText:
;;
;;  File Replication Service cannot satisfy the request because authenticated RPC is not available on the domain controller.
;;
(FRS_ERR_PARENT_AUTHENTICATION 0)

;; MessageId: FRS_ERR_CHILD_TO_PARENT_COMM
;;
;; MessageText:
;;
;;  File Replication Service cannot communicate with the File Replication Service on the domain controller.
;;
(FRS_ERR_CHILD_TO_PARENT_COMM 1)

;; MessageId: FRS_ERR_PARENT_TO_CHILD_COMM
;;
;; MessageText:
;;
;;  File Replication Service on the domain controller cannot communicate with the File Replication Service on this computer.
;;
(FRS_ERR_PARENT_TO_CHILD_COMM 2)

;; MessageId: FRS_ERR_SYSVOL_POPULATE
;;
;; MessageText:
;;
;;  File Replication Service cannot populate the system volume because of an internal error.
;;
(FRS_ERR_SYSVOL_POPULATE 3)

;; MessageId: FRS_ERR_SYSVOL_POPULATE_TIMEOUT
;;
;; MessageText:
;;
;;  File Replication Service cannot populate the system volume because of an internal timeout.
;;
(FRS_ERR_SYSVOL_POPULATE_TIMEOUT 4)

;; MessageId: FRS_ERR_SYSVOL_IS_BUSY
;;
;; MessageText:
;;
;;  File Replication Service cannot process the request. The system volume is busy with a previous request.
;;
(FRS_ERR_SYSVOL_IS_BUSY 5)

;; MessageId: FRS_ERR_SYSVOL_DEMOTE
;;
;; MessageText:
;;
;;  File Replication Service cannot stop replicating the system volume because of an internal error.
;;
(FRS_ERR_SYSVOL_DEMOTE 6)

;; MessageId: FRS_ERR_INVALID_SERVICE_PARAMETER
;;
;; MessageText:
;;
;;  File Replication Service detected an invalid parameter.
;;
(FRS_ERR_INVALID_SERVICE_PARAMETER 7)

;; FACILITY DIRECTORY SERVICE
;; *****************

;;
;; MessageId: ERROR_DS_NOT_INSTALLED
;;
;; MessageText:
;;
;;  An error occurred while installing the Windows NT directory service. Please view the event log for more information.
;;
(ERROR_DS_NOT_INSTALLED 0)

;; MessageId: ERROR_DS_MEMBERSHIP_EVALUATED_LOCALLY
;;
;; MessageText:
;;
;;  The directory service evaluated group memberships locally.
;;
(ERROR_DS_MEMBERSHIP_EVALUATED_LOCALLY 1)

;; MessageId: ERROR_DS_NO_ATTRIBUTE_OR_VALUE
;;
;; MessageText:
;;
;;  The specified directory service attribute or value does not exist.
;;
(ERROR_DS_NO_ATTRIBUTE_OR_VALUE 2)

;; MessageId: ERROR_DS_INVALID_ATTRIBUTE_SYNTAX
;;
;; MessageText:
;;
;;  The attribute syntax specified to the directory service is invalid.
;;
(ERROR_DS_INVALID_ATTRIBUTE_SYNTAX 3)

;; MessageId: ERROR_DS_ATTRIBUTE_TYPE_UNDEFINED
;;
;; MessageText:
;;
;;  The attribute type specified to the directory service is not defined.
;;
(ERROR_DS_ATTRIBUTE_TYPE_UNDEFINED 4)

;; MessageId: ERROR_DS_ATTRIBUTE_OR_VALUE_EXISTS
;;
;; MessageText:
;;
;;  The specified directory service attribute or value already exists.
;;
(ERROR_DS_ATTRIBUTE_OR_VALUE_EXISTS 5)

;; MessageId: ERROR_DS_BUSY
;;
;; MessageText:
;;
;;  The directory service is busy.
;;
(ERROR_DS_BUSY 6)

;; MessageId: ERROR_DS_UNAVAILABLE
;;
;; MessageText:
;;
;;  The directory service is unavailable.
;;
(ERROR_DS_UNAVAILABLE 7)

;; MessageId: ERROR_DS_NO_RIDS_ALLOCATED
;;
;; MessageText:
;;
;;  The directory service was unable to allocate a relative identifier.
;;
(ERROR_DS_NO_RIDS_ALLOCATED 8)

;; MessageId: ERROR_DS_NO_MORE_RIDS
;;
;; MessageText:
;;
;;  The directory service has exhausted the pool of relative identifiers.
;;
(ERROR_DS_NO_MORE_RIDS 9)

;; MessageId: ERROR_DS_INCORRECT_ROLE_OWNER
;;
;; MessageText:
;;
;;  The requested operation could not be performed because the directory service is not the
;;  master for that type of operation.
;;
(ERROR_DS_INCORRECT_ROLE_OWNER 0)

;; MessageId: ERROR_DS_RIDMGR_INIT_ERROR
;;
;; MessageText:
;;
;;  The directory service was unable to initialize the subsystem that allocates relative identifiers.
;;
(ERROR_DS_RIDMGR_INIT_ERROR 1)

;; MessageId: ERROR_DS_OBJ_CLASS_VIOLATION
;;
;; MessageText:
;;
;;  The requested operation did not satisfy one or more constraints associated with the class of the object.
;;
(ERROR_DS_OBJ_CLASS_VIOLATION 2)

;; MessageId: ERROR_DS_CANT_ON_NON_LEAF
;;
;; MessageText:
;;
;;  The directory service can perform the requested operation only on a leaf object.
;;
(ERROR_DS_CANT_ON_NON_LEAF 3)

;; MessageId: ERROR_DS_CANT_ON_RDN
;;
;; MessageText:
;;
;;  The directory service cannot perform the requested operation on the RDN attribute of an object.
;;
(ERROR_DS_CANT_ON_RDN 4)

;; MessageId: ERROR_DS_CANT_MOD_OBJ_CLASS
;;
;; MessageText:
;;
;;  The directory service detected an attempt to modify the object class of an object.
;;
(ERROR_DS_CANT_MOD_OBJ_CLASS 5)

;; MessageId: ERROR_DS_CROSS_DOM_MOVE_ERROR
;;
;; MessageText:
;;
;;  The requested cross domain move operation could not be performed.
;;
(ERROR_DS_CROSS_DOM_MOVE_ERROR 6)

;; MessageId: ERROR_DS_GC_NOT_AVAILABLE
;;
;; MessageText:
;;
;;  Unable to contact the global catalog server.
;;
(ERROR_DS_GC_NOT_AVAILABLE 7)

;; MessageId: ERROR_SHARED_POLICY
;;
;; MessageText:
;;
;;  The policy object is shared and can only be modified at the root.
;;
(ERROR_SHARED_POLICY 8)

;; MessageId: ERROR_POLICY_OBJECT_NOT_FOUND
;;
;; MessageText:
;;
;;  The policy object does not exist.
;;
(ERROR_POLICY_OBJECT_NOT_FOUND 9)

;; MessageId: ERROR_POLICY_ONLY_IN_DS
;;
;; MessageText:
;;
;;  The requested policy information only lives in the Ds.
;;
(ERROR_POLICY_ONLY_IN_DS 0)

;; MessageId: ERROR_PROMOTION_ACTIVE
;;
;; MessageText:
;;
;;  A domain controller promotion is currently active.
;;
(ERROR_PROMOTION_ACTIVE 1)

;; MessageId: ERROR_NO_PROMOTION_ACTIVE
;;
;; MessageText:
;;
;;  A domain controller promotion is not currently active
;;
(ERROR_NO_PROMOTION_ACTIVE 2)

;;
;; MessageId: ERROR_DS_OPERATIONS_ERROR
;;
;; MessageText:
;;
;;  An operations error occurred.
;;
(ERROR_DS_OPERATIONS_ERROR 4)

;; MessageId: ERROR_DS_PROTOCOL_ERROR
;;
;; MessageText:
;;
;;  A protocol error occurred.
;;
(ERROR_DS_PROTOCOL_ERROR 5)

;; MessageId: ERROR_DS_TIMELIMIT_EXCEEDED
;;
;; MessageText:
;;
;;  The time limit for this request was exceeded.
;;
(ERROR_DS_TIMELIMIT_EXCEEDED 6)

;; MessageId: ERROR_DS_SIZELIMIT_EXCEEDED
;;
;; MessageText:
;;
;;  The size limit for this request was exceeded.
;;
(ERROR_DS_SIZELIMIT_EXCEEDED 7)

;; MessageId: ERROR_DS_ADMIN_LIMIT_EXCEEDED
;;
;; MessageText:
;;
;;  The administrative limit for this request was exceeded.
;;
(ERROR_DS_ADMIN_LIMIT_EXCEEDED 8)

;; MessageId: ERROR_DS_COMPARE_FALSE
;;
;; MessageText:
;;
;;  The compare response was false.
;;
(ERROR_DS_COMPARE_FALSE 9)

;; MessageId: ERROR_DS_COMPARE_TRUE
;;
;; MessageText:
;;
;;  The compare response was true.
;;
(ERROR_DS_COMPARE_TRUE 0)

;; MessageId: ERROR_DS_AUTH_METHOD_NOT_SUPPORTED
;;
;; MessageText:
;;
;;  The requested authentication method is not supported by the server.
;;
(ERROR_DS_AUTH_METHOD_NOT_SUPPORTED 1)

;; MessageId: ERROR_DS_STRONG_AUTH_REQUIRED
;;
;; MessageText:
;;
;;  A more secure authentication method is required for this server.
;;
(ERROR_DS_STRONG_AUTH_REQUIRED 2)

;; MessageId: ERROR_DS_INAPPROPRIATE_AUTH
;;
;; MessageText:
;;
;;  Inappropriate authentication.
;;
(ERROR_DS_INAPPROPRIATE_AUTH 3)

;; MessageId: ERROR_DS_AUTH_UNKNOWN
;;
;; MessageText:
;;
;;  The authentication mechanism is unknown.
;;
(ERROR_DS_AUTH_UNKNOWN 4)

;; MessageId: ERROR_DS_REFERRAL
;;
;; MessageText:
;;
;;  A referral was returned from the server.
;;
(ERROR_DS_REFERRAL 5)

;; MessageId: ERROR_DS_UNAVAILABLE_CRIT_EXTENSION
;;
;; MessageText:
;;
;;  The server does not support the requested critical extension.
;;
(ERROR_DS_UNAVAILABLE_CRIT_EXTENSION 6)

;; MessageId: ERROR_DS_CONFIDENTIALITY_REQUIRED
;;
;; MessageText:
;;
;;  This request requires a secure connection.
;;
(ERROR_DS_CONFIDENTIALITY_REQUIRED 7)

;; MessageId: ERROR_DS_INAPPROPRIATE_MATCHING
;;
;; MessageText:
;;
;;  Inappropriate matching.
;;
(ERROR_DS_INAPPROPRIATE_MATCHING 8)

;; MessageId: ERROR_DS_CONSTRAINT_VIOLATION
;;
;; MessageText:
;;
;;  A constraint violation occurred.
;;
(ERROR_DS_CONSTRAINT_VIOLATION 9)

;; MessageId: ERROR_DS_NO_SUCH_OBJECT
;;
;; MessageText:
;;
;;  There is no such object on the server.
;;
(ERROR_DS_NO_SUCH_OBJECT 0)

;; MessageId: ERROR_DS_ALIAS_PROBLEM
;;
;; MessageText:
;;
;;  There is an alias problem.
;;
(ERROR_DS_ALIAS_PROBLEM 1)

;; MessageId: ERROR_DS_INVALID_DN_SYNTAX
;;
;; MessageText:
;;
;;  An invalid dn syntax has been specified.
;;
(ERROR_DS_INVALID_DN_SYNTAX 2)

;; MessageId: ERROR_DS_IS_LEAF
;;
;; MessageText:
;;
;;  The object is a leaf object.
;;
(ERROR_DS_IS_LEAF 3)

;; MessageId: ERROR_DS_ALIAS_DEREF_PROBLEM
;;
;; MessageText:
;;
;;  There is an alias dereferencing problem.
;;
(ERROR_DS_ALIAS_DEREF_PROBLEM 4)

;; MessageId: ERROR_DS_UNWILLING_TO_PERFORM
;;
;; MessageText:
;;
;;  The server is unwilling to process the request.
;;
(ERROR_DS_UNWILLING_TO_PERFORM 5)

;; MessageId: ERROR_DS_LOOP_DETECT
;;
;; MessageText:
;;
;;  A loop has been detected.
;;
(ERROR_DS_LOOP_DETECT 6)

;; MessageId: ERROR_DS_NAMING_VIOLATION
;;
;; MessageText:
;;
;;  There is a naming violation.
;;
(ERROR_DS_NAMING_VIOLATION 7)

;; MessageId: ERROR_DS_OBJECT_RESULTS_TOO_LARGE
;;
;; MessageText:
;;
;;  The result set is too large.
;;
(ERROR_DS_OBJECT_RESULTS_TOO_LARGE 8)

;; MessageId: ERROR_DS_AFFECTS_MULTIPLE_DSAS
;;
;; MessageText:
;;
;;  The operation affects multiple DSAs
;;
(ERROR_DS_AFFECTS_MULTIPLE_DSAS 9)

;; MessageId: ERROR_DS_SERVER_DOWN
;;
;; MessageText:
;;
;;  The server is not operational.
;;
(ERROR_DS_SERVER_DOWN 0)

;; MessageId: ERROR_DS_LOCAL_ERROR
;;
;; MessageText:
;;
;;  A local error has occured.
;;
(ERROR_DS_LOCAL_ERROR 1)

;; MessageId: ERROR_DS_ENCODING_ERROR
;;
;; MessageText:
;;
;;  An encoding error has occured.
;;
(ERROR_DS_ENCODING_ERROR 2)

;; MessageId: ERROR_DS_DECODING_ERROR
;;
;; MessageText:
;;
;;  A decoding error has occured.
;;
(ERROR_DS_DECODING_ERROR 3)

;; MessageId: ERROR_DS_FILTER_UNKNOWN
;;
;; MessageText:
;;
;;  The search filter cannot be recognized.
;;
(ERROR_DS_FILTER_UNKNOWN 4)

;; MessageId: ERROR_DS_PARAM_ERROR
;;
;; MessageText:
;;
;;  One or more parameters are illegal.
;;
(ERROR_DS_PARAM_ERROR 5)

;; MessageId: ERROR_DS_NOT_SUPPORTED
;;
;; MessageText:
;;
;;  The specified method is not supported.
;;
(ERROR_DS_NOT_SUPPORTED 6)

;; MessageId: ERROR_DS_NO_RESULTS_RETURNED
;;
;; MessageText:
;;
;;  No results were returned.
;;
(ERROR_DS_NO_RESULTS_RETURNED 7)

;; MessageId: ERROR_DS_CONTROL_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified control is not supported by the server.
;;
(ERROR_DS_CONTROL_NOT_FOUND 8)

;; MessageId: ERROR_DS_CLIENT_LOOP
;;
;; MessageText:
;;
;;  A referral loop was detected by the client.
;;
(ERROR_DS_CLIENT_LOOP 9)

;; MessageId: ERROR_DS_REFERRAL_LIMIT_EXCEEDED
;;
;; MessageText:
;;
;;  The preset referral limit was exceeded.
;;
(ERROR_DS_REFERRAL_LIMIT_EXCEEDED 0)

;; MessageId: ERROR_DS_ROOT_MUST_BE_NC
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ROOT_MUST_BE_NC 1)

;; MessageId: ERROR_DS_ADD_REPLICA_INHIBITED
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ADD_REPLICA_INHIBITED 2)

;; MessageId: ERROR_DS_ATT_NOT_DEF_IN_SCHEMA
;;
;; MessageText:
;;
;;  A reference to an attribute that is not defined in the schema occurred.
;;
(ERROR_DS_ATT_NOT_DEF_IN_SCHEMA 3)

;; MessageId: ERROR_DS_MAX_OBJ_SIZE_EXCEEDED
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_MAX_OBJ_SIZE_EXCEEDED 4)

;; MessageId: ERROR_DS_OBJ_STRING_NAME_EXISTS
;;
;; MessageText:
;;
;;  An attempt was made to add an object to the directory with a name that is already in use.
;;
(ERROR_DS_OBJ_STRING_NAME_EXISTS 5)

;; MessageId: ERROR_DS_NO_RDN_DEFINED_IN_SCHEMA
;;
;; MessageText:
;;
;;  An attempt was made to add an object of a class that does not have an RDN defined in the schema.
;;
(ERROR_DS_NO_RDN_DEFINED_IN_SCHEMA 6)

;; MessageId: ERROR_DS_RDN_DOESNT_MATCH_SCHEMA
;;
;; MessageText:
;;
;;  An attempt was made to add an object using an RDN that is not the RDN defined in the schema.
;;
(ERROR_DS_RDN_DOESNT_MATCH_SCHEMA 7)

;; MessageId: ERROR_DS_NO_REQUESTED_ATTS_FOUND
;;
;; MessageText:
;;
;;  None of the requested attributes were found on the objects.
;;
(ERROR_DS_NO_REQUESTED_ATTS_FOUND 8)

;; MessageId: ERROR_DS_USER_BUFFER_TO_SMALL
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_USER_BUFFER_TO_SMALL 9)

;; MessageId: ERROR_DS_ATT_IS_NOT_ON_OBJ
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ATT_IS_NOT_ON_OBJ 0)

;; MessageId: ERROR_DS_ILLEGAL_MOD_OPERATION
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ILLEGAL_MOD_OPERATION 1)

;; MessageId: ERROR_DS_OBJ_TOO_LARGE
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_OBJ_TOO_LARGE 2)

;; MessageId: ERROR_DS_BAD_INSTANCE_TYPE
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_BAD_INSTANCE_TYPE 3)

;; MessageId: ERROR_DS_MASTERDSA_REQUIRED
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_MASTERDSA_REQUIRED 4)

;; MessageId: ERROR_DS_OBJECT_CLASS_REQUIRED
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_OBJECT_CLASS_REQUIRED 5)

;; MessageId: ERROR_DS_MISSING_REQUIRED_ATT
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_MISSING_REQUIRED_ATT 6)

;; MessageId: ERROR_DS_ATT_NOT_DEF_FOR_CLASS
;;
;; MessageText:
;;
;;  An attempt was made to modify an object to include an attribute that is not legal for it's class
;;
(ERROR_DS_ATT_NOT_DEF_FOR_CLASS 7)

;; MessageId: ERROR_DS_ATT_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ATT_ALREADY_EXISTS 8)

;;
;; MessageId: ERROR_DS_CANT_ADD_ATT_VALUES
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_ADD_ATT_VALUES 0)

;; MessageId: ERROR_DS_SINGLE_VALUE_CONSTRAINT
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_SINGLE_VALUE_CONSTRAINT 1)

;; MessageId: ERROR_DS_RANGE_CONSTRAINT
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_RANGE_CONSTRAINT 2)

;; MessageId: ERROR_DS_ATT_VAL_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ATT_VAL_ALREADY_EXISTS 3)

;; MessageId: ERROR_DS_CANT_REM_MISSING_ATT
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_REM_MISSING_ATT 4)

;; MessageId: ERROR_DS_CANT_REM_MISSING_ATT_VAL
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_REM_MISSING_ATT_VAL 5)

;; MessageId: ERROR_DS_ROOT_CANT_BE_SUBREF
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ROOT_CANT_BE_SUBREF 6)

;; MessageId: ERROR_DS_NO_CHAINING
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NO_CHAINING 7)

;; MessageId: ERROR_DS_NO_CHAINED_EVAL
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NO_CHAINED_EVAL 8)

;; MessageId: ERROR_DS_NO_PARENT_OBJECT
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NO_PARENT_OBJECT 9)

;; MessageId: ERROR_DS_PARENT_IS_AN_ALIAS
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_PARENT_IS_AN_ALIAS 0)

;; MessageId: ERROR_DS_CANT_MIX_MASTER_AND_REPS
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_MIX_MASTER_AND_REPS 1)

;; MessageId: ERROR_DS_CHILDREN_EXIST
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CHILDREN_EXIST 2)

;; MessageId: ERROR_DS_OBJ_NOT_FOUND
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_OBJ_NOT_FOUND 3)

;; MessageId: ERROR_DS_ALIASED_OBJ_MISSING
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ALIASED_OBJ_MISSING 4)

;; MessageId: ERROR_DS_BAD_NAME_SYNTAX
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_BAD_NAME_SYNTAX 5)

;; MessageId: ERROR_DS_ALIAS_POINTS_TO_ALIAS
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ALIAS_POINTS_TO_ALIAS 6)

;; MessageId: ERROR_DS_CANT_DEREF_ALIAS
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_DEREF_ALIAS 7)

;; MessageId: ERROR_DS_OUT_OF_SCOPE
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_OUT_OF_SCOPE 8)

;;
;; MessageId: ERROR_DS_CANT_DELETE_DSA_OBJ
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_DELETE_DSA_OBJ 0)

;; MessageId: ERROR_DS_GENERIC_ERROR
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_GENERIC_ERROR 1)

;; MessageId: ERROR_DS_DSA_MUST_BE_INT_MASTER
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_DSA_MUST_BE_INT_MASTER 2)

;; MessageId: ERROR_DS_CLASS_NOT_DSA
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CLASS_NOT_DSA 3)

;; MessageId: ERROR_DS_INSUFF_ACCESS_RIGHTS
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_INSUFF_ACCESS_RIGHTS 4)

;; MessageId: ERROR_DS_ILLEGAL_SUPERIOR
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ILLEGAL_SUPERIOR 5)

;; MessageId: ERROR_DS_ATTRIBUTE_OWNED_BY_SAM
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ATTRIBUTE_OWNED_BY_SAM 6)

;; MessageId: ERROR_DS_NAME_TOO_MANY_PARTS
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NAME_TOO_MANY_PARTS 7)

;; MessageId: ERROR_DS_NAME_TOO_LONG
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NAME_TOO_LONG 8)

;; MessageId: ERROR_DS_NAME_VALUE_TOO_LONG
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NAME_VALUE_TOO_LONG 9)

;; MessageId: ERROR_DS_NAME_UNPARSEABLE
;;
;; MessageText:
;;
;;  The Directory Service encountered an error parsing a name.
;;
(ERROR_DS_NAME_UNPARSEABLE 0)

;; MessageId: ERROR_DS_NAME_TYPE_UNKNOWN
;;
;; MessageText:
;;
;;  The Directory Service cannot get the attribute type for a name.
;;
(ERROR_DS_NAME_TYPE_UNKNOWN 1)

;; MessageId: ERROR_DS_NOT_AN_OBJECT
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NOT_AN_OBJECT 2)

;; MessageId: ERROR_DS_SEC_DESC_TOO_SHORT
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_SEC_DESC_TOO_SHORT 3)

;; MessageId: ERROR_DS_SEC_DESC_INVALID
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_SEC_DESC_INVALID 4)

;; MessageId: ERROR_DS_NO_DELETED_NAME
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NO_DELETED_NAME 5)

;; MessageId: ERROR_DS_SUBREF_MUST_HAVE_PARENT
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_SUBREF_MUST_HAVE_PARENT 6)

;; MessageId: ERROR_DS_NCNAME_MUST_BE_NC
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NCNAME_MUST_BE_NC 7)

;; MessageId: ERROR_DS_CANT_ADD_SYSTEM_ONLY
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_ADD_SYSTEM_ONLY 8)

;; MessageId: ERROR_DS_CLASS_MUST_BE_CONCRETE
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CLASS_MUST_BE_CONCRETE 9)

;; MessageId: ERROR_DS_INVALID_DMD
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_INVALID_DMD 0)

;; MessageId: ERROR_DS_OBJ_GUID_EXISTS
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_OBJ_GUID_EXISTS 1)

;; MessageId: ERROR_DS_NOT_ON_BACKLINK
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NOT_ON_BACKLINK 2)

;; MessageId: ERROR_DS_NO_CROSSREF_FOR_NC
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NO_CROSSREF_FOR_NC 3)

;; MessageId: ERROR_DS_SHUTTING_DOWN
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_SHUTTING_DOWN 4)

;; MessageId: ERROR_DS_UNKNOWN_OPERATION
;;
;; MessageText:
;;
;;  The Directory Service request is invalid.
;;
(ERROR_DS_UNKNOWN_OPERATION 5)

;; MessageId: ERROR_DS_INVALID_ROLE_OWNER
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_INVALID_ROLE_OWNER 6)

;; MessageId: ERROR_DS_COULDNT_CONTACT_FSMO
;;
;; MessageText:
;;
;;  The FSMO could not be reached.
;;
(ERROR_DS_COULDNT_CONTACT_FSMO 7)

;; MessageId: ERROR_DS_CROSS_NC_DN_RENAME
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CROSS_NC_DN_RENAME 8)

;; MessageId: ERROR_DS_CANT_MOD_SYSTEM_ONLY
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_MOD_SYSTEM_ONLY 9)

;; MessageId: ERROR_DS_REPLICATOR_ONLY
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_REPLICATOR_ONLY 0)

;; MessageId: ERROR_DS_OBJ_CLASS_NOT_DEFINED
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_OBJ_CLASS_NOT_DEFINED 1)

;; MessageId: ERROR_DS_OBJ_CLASS_NOT_SUBCLASS
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_OBJ_CLASS_NOT_SUBCLASS 2)

;; MessageId: ERROR_DS_NAME_REFERENCE_INVALID
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NAME_REFERENCE_INVALID 3)

;; MessageId: ERROR_DS_CROSS_REF_EXISTS
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CROSS_REF_EXISTS 4)

;; MessageId: ERROR_DS_CANT_DEL_MASTER_CROSSREF
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_DEL_MASTER_CROSSREF 5)

;; MessageId: ERROR_DS_SUBTREE_NOTIFY_NOT_NC_HEAD
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_SUBTREE_NOTIFY_NOT_NC_HEAD 6)

;; MessageId: ERROR_DS_NOTIFY_FILTER_TOO_COMPLEX
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NOTIFY_FILTER_TOO_COMPLEX 7)

;; MessageId: ERROR_DS_DUP_RDN
;;
;; MessageText:
;;
;;  Schema update failed: duplicate rdn
;;
(ERROR_DS_DUP_RDN 8)

;; MessageId: ERROR_DS_DUP_OID
;;
;; MessageText:
;;
;;  Schema update failed: duplicate OID
;;
(ERROR_DS_DUP_OID 9)

;; MessageId: ERROR_DS_DUP_MAPI_ID
;;
;; MessageText:
;;
;;  Schema update failed: duplicate Mapi Id
;;
(ERROR_DS_DUP_MAPI_ID 0)

;; MessageId: ERROR_DS_DUP_SCHEMA_ID_GUID
;;
;; MessageText:
;;
;;  Schema update failed: duplicate schema-id-guid
;;
(ERROR_DS_DUP_SCHEMA_ID_GUID 1)

;; MessageId: ERROR_DS_DUP_LDAP_DISPLAY_NAME
;;
;; MessageText:
;;
;;  Schema update failed: duplicate ldap display name
;;
(ERROR_DS_DUP_LDAP_DISPLAY_NAME 2)

;; MessageId: ERROR_DS_SEMANTIC_ATT_TEST
;;
;; MessageText:
;;
;;  Schema update failed: range-lower less than range upper
;;
(ERROR_DS_SEMANTIC_ATT_TEST 3)

;; MessageId: ERROR_DS_SYNTAX_MISMATCH
;;
;; MessageText:
;;
;;  Schema update failed: syntax mismatch
;;
(ERROR_DS_SYNTAX_MISMATCH 4)

;; MessageId: ERROR_DS_EXISTS_IN_MUST_HAVE
;;
;; MessageText:
;;
;;  Schema deletion failed: attribute is used in must-contain
;;
(ERROR_DS_EXISTS_IN_MUST_HAVE 5)

;; MessageId: ERROR_DS_EXISTS_IN_MAY_HAVE
;;
;; MessageText:
;;
;;  Schema deletion failed: attribute is used in may-contain
;;
(ERROR_DS_EXISTS_IN_MAY_HAVE 6)

;; MessageId: ERROR_DS_NONEXISTENT_MAY_HAVE
;;
;; MessageText:
;;
;;  Schema update failed: attribute in may-contain does not exist
;;
(ERROR_DS_NONEXISTENT_MAY_HAVE 7)

;; MessageId: ERROR_DS_NONEXISTENT_MUST_HAVE
;;
;; MessageText:
;;
;;  Schema update failed: attribute in must-contain does not exist
;;
(ERROR_DS_NONEXISTENT_MUST_HAVE 8)

;; MessageId: ERROR_DS_AUX_CLS_TEST_FAIL
;;
;; MessageText:
;;
;;  Schema update failed: class in aux-class list does not exist or is not an auxiliary class
;;
(ERROR_DS_AUX_CLS_TEST_FAIL 9)

;; MessageId: ERROR_DS_NONEXISTENT_POSS_SUP
;;
;; MessageText:
;;
;;  Schema update failed: class in poss-superiors does not exist
;;
(ERROR_DS_NONEXISTENT_POSS_SUP 0)

;; MessageId: ERROR_DS_SUB_CLS_TEST_FAIL
;;
;; MessageText:
;;
;;  Schema update failed: class in subclassof list does not exist or does not satisfy hierarchy rules
;;
(ERROR_DS_SUB_CLS_TEST_FAIL 1)

;; MessageId: ERROR_DS_BAD_RDN_ATT_ID_SYNTAX
;;
;; MessageText:
;;
;;  Schema update failed: Rdn-Att-Id has wrong syntax
;;
(ERROR_DS_BAD_RDN_ATT_ID_SYNTAX 2)

;; MessageId: ERROR_DS_EXISTS_IN_AUX_CLS
;;
;; MessageText:
;;
;;  Schema deletion failed: class is used as auxiliary class
;;
(ERROR_DS_EXISTS_IN_AUX_CLS 3)

;; MessageId: ERROR_DS_EXISTS_IN_SUB_CLS
;;
;; MessageText:
;;
;;  Schema deletion failed: class is used as sub class
;;
(ERROR_DS_EXISTS_IN_SUB_CLS 4)

;; MessageId: ERROR_DS_EXISTS_IN_POSS_SUP
;;
;; MessageText:
;;
;;  Schema deletion failed: class is used as poss superior
;;
(ERROR_DS_EXISTS_IN_POSS_SUP 5)

;; MessageId: ERROR_DS_RECALCSCHEMA_FAILED
;;
;; MessageText:
;;
;;  Schema update failed in recalculatiing validation cache
;;
(ERROR_DS_RECALCSCHEMA_FAILED 6)

;; MessageId: ERROR_DS_TREE_DELETE_NOT_FINISHED
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_TREE_DELETE_NOT_FINISHED 7)

;; MessageId: ERROR_DS_CANT_DELETE
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_DELETE 8)

;; MessageId: ERROR_DS_ATT_SCHEMA_REQ_ID
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ATT_SCHEMA_REQ_ID 9)

;; MessageId: ERROR_DS_BAD_ATT_SCHEMA_SYNTAX
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_BAD_ATT_SCHEMA_SYNTAX 0)

;; MessageId: ERROR_DS_CANT_CACHE_ATT
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_CACHE_ATT 1)

;; MessageId: ERROR_DS_CANT_CACHE_CLASS
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_CACHE_CLASS 2)

;; MessageId: ERROR_DS_CANT_REMOVE_ATT_CACHE
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_REMOVE_ATT_CACHE 3)

;; MessageId: ERROR_DS_CANT_REMOVE_CLASS_CACHE
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_REMOVE_CLASS_CACHE 4)

;; MessageId: ERROR_DS_CANT_RETRIEVE_DN
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_RETRIEVE_DN 5)

;; MessageId: ERROR_DS_MISSING_SUPREF
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_MISSING_SUPREF 6)

;; MessageId: ERROR_DS_CANT_RETRIEVE_INSTANCE
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_RETRIEVE_INSTANCE 7)

;; MessageId: ERROR_DS_CODE_INCONSISTENCY
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CODE_INCONSISTENCY 8)

;; MessageId: ERROR_DS_DATABASE_ERROR
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_DATABASE_ERROR 9)

;; MessageId: ERROR_DS_GOVERNSID_MISSING
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_GOVERNSID_MISSING 0)

;; MessageId: ERROR_DS_MISSING_EXPECTED_ATT
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_MISSING_EXPECTED_ATT 1)

;; MessageId: ERROR_DS_NCNAME_MISSING_CR_REF
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_NCNAME_MISSING_CR_REF 2)

;; MessageId: ERROR_DS_SECURITY_CHECKING_ERROR
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_SECURITY_CHECKING_ERROR 3)

;; MessageId: ERROR_DS_SCHEMA_NOT_LOADED
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_SCHEMA_NOT_LOADED 4)

;; MessageId: ERROR_DS_SCHEMA_ALLOC_FAILED
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_SCHEMA_ALLOC_FAILED 5)

;; MessageId: ERROR_DS_ATT_SCHEMA_REQ_SYNTAX
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ATT_SCHEMA_REQ_SYNTAX 6)

;; MessageId: ERROR_DS_GCVERIFY_ERROR
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_GCVERIFY_ERROR 7)

;; MessageId: ERROR_DS_DRA_SCHEMA_MISMATCH
;;
;; MessageText:
;;
;;  The replication operation failed because of a schema mismatch between the servers involved.
;;
(ERROR_DS_DRA_SCHEMA_MISMATCH 8)

;; MessageId: ERROR_DS_CANT_FIND_DSA_OBJ
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_FIND_DSA_OBJ 9)

;; MessageId: ERROR_DS_CANT_FIND_EXPECTED_NC
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_FIND_EXPECTED_NC 0)

;; MessageId: ERROR_DS_CANT_FIND_NC_IN_CACHE
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_FIND_NC_IN_CACHE 1)

;; MessageId: ERROR_DS_CANT_RETRIEVE_CHILD
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_RETRIEVE_CHILD 2)

;; MessageId: ERROR_DS_SECURITY_ILLEGAL_MODIFY
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_SECURITY_ILLEGAL_MODIFY 3)

;; MessageId: ERROR_DS_CANT_REPLACE_HIDDEN_REC
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CANT_REPLACE_HIDDEN_REC 4)

;; MessageId: ERROR_DS_BAD_HIERARCHY_FILE
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_BAD_HIERARCHY_FILE 5)

;; MessageId: ERROR_DS_BUILD_HIERARCHY_TABLE_FAILED
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_BUILD_HIERARCHY_TABLE_FAILED 6)

;; MessageId: ERROR_DS_CONFIG_PARAM_MISSING
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_CONFIG_PARAM_MISSING 7)

;; MessageId: ERROR_DS_COUNTING_AB_INDICES_FAILED
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_COUNTING_AB_INDICES_FAILED 8)

;; MessageId: ERROR_DS_HIERARCHY_TABLE_MALLOC_FAILED
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_HIERARCHY_TABLE_MALLOC_FAILED 9)

;; MessageId: ERROR_DS_INTERNAL_FAILURE
;;
;; MessageText:
;;
;;  The Directory Service encountered an internal failure.
;;
(ERROR_DS_INTERNAL_FAILURE 0)

;; MessageId: ERROR_DS_UNKNOWN_ERROR
;;
;; MessageText:
;;
;;  The Directory Service encountered an unknown failure.
;;
(ERROR_DS_UNKNOWN_ERROR 1)

;; MessageId: ERROR_DS_ROOT_REQUIRES_CLASS_TOP
;;
;; MessageText:
;;
;;  Directory Service Error (placeholder text)
;;
(ERROR_DS_ROOT_REQUIRES_CLASS_TOP 2)

;; MessageId: ERROR_DS_REFUSING_FSMO_ROLES
;;
;; MessageText:
;;
;;  This Directory Server is shutting down, and cannot take ownership of new
;;  floating single master operation roles.
;;
(ERROR_DS_REFUSING_FSMO_ROLES 3)

;; MessageId: ERROR_DS_MISSING_FSMO_SETTINGS
;;
;; MessageText:
;;
;;  The Directory Service is missing mandatory configuration information, and
;;  is unable to determine the ownership of floating single master operation roles.
;;
(ERROR_DS_MISSING_FSMO_SETTINGS 4)

;; MessageId: ERROR_DS_UNABLE_TO_SURRENDER_ROLES
;;
;; MessageText:
;;
;;  The Directory Service was unable to transfer ownership of one or more
;;  floating single master operation roles to other servers.
;;
(ERROR_DS_UNABLE_TO_SURRENDER_ROLES 5)

;; MessageId: ERROR_DS_DRA_GENERIC
;;
;; MessageText:
;;
;;  The replication operation failed.
;;
(ERROR_DS_DRA_GENERIC 6)

;; MessageId: ERROR_DS_DRA_INVALID_PARAMETER
;;
;; MessageText:
;;
;;  An invalid parameter was specified for this replication operation.
;;
(ERROR_DS_DRA_INVALID_PARAMETER 7)

;; MessageId: ERROR_DS_DRA_BUSY
;;
;; MessageText:
;;
;;  The Windows NT Directory Service is too busy to complete this replication operation at this time.
;;
(ERROR_DS_DRA_BUSY 8)

;; MessageId: ERROR_DS_DRA_BAD_DN
;;
;; MessageText:
;;
;;  The distinguished name specified for this replication operation is invalid.
;;
(ERROR_DS_DRA_BAD_DN 9)

;; MessageId: ERROR_DS_DRA_BAD_NC
;;
;; MessageText:
;;
;;  The naming context specified for this replication operation is invalid.
;;
(ERROR_DS_DRA_BAD_NC 0)

;; MessageId: ERROR_DS_DRA_DN_EXISTS
;;
;; MessageText:
;;
;;  The distinguished name specified for this replication operation already exists.
;;
(ERROR_DS_DRA_DN_EXISTS 1)

;; MessageId: ERROR_DS_DRA_INTERNAL_ERROR
;;
;; MessageText:
;;
;;  The replication system encountered an internal error.
;;
(ERROR_DS_DRA_INTERNAL_ERROR 2)

;; MessageId: ERROR_DS_DRA_INCONSISTENT_DIT
;;
;; MessageText:
;;
;;  The replication operation encountered a database inconsistency.
;;
(ERROR_DS_DRA_INCONSISTENT_DIT 3)

;; MessageId: ERROR_DS_DRA_CONNECTION_FAILED
;;
;; MessageText:
;;
;;  The server specified for this replication operation could not be contacted.
;;
(ERROR_DS_DRA_CONNECTION_FAILED 4)

;; MessageId: ERROR_DS_DRA_BAD_INSTANCE_TYPE
;;
;; MessageText:
;;
;;  The replication operation encountered an object with an invalid instance type.
;;
(ERROR_DS_DRA_BAD_INSTANCE_TYPE 5)

;; MessageId: ERROR_DS_DRA_OUT_OF_MEM
;;
;; MessageText:
;;
;;  The replication operation failed to allocate memory.
;;
(ERROR_DS_DRA_OUT_OF_MEM 6)

;; MessageId: ERROR_DS_DRA_MAIL_PROBLEM
;;
;; MessageText:
;;
;;  The replication operation encountered an error with the mail system.
;;
(ERROR_DS_DRA_MAIL_PROBLEM 7)

;; MessageId: ERROR_DS_DRA_REF_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  The replication reference information for the target server already exists.
;;
(ERROR_DS_DRA_REF_ALREADY_EXISTS 8)

;; MessageId: ERROR_DS_DRA_REF_NOT_FOUND
;;
;; MessageText:
;;
;;  The replication reference information for the target server does not exist.
;;
(ERROR_DS_DRA_REF_NOT_FOUND 9)

;; MessageId: ERROR_DS_DRA_OBJ_IS_REP_SOURCE
;;
;; MessageText:
;;
;;  The naming context cannot be removed because it is replicated to another server.
;;
(ERROR_DS_DRA_OBJ_IS_REP_SOURCE 0)

;; MessageId: ERROR_DS_DRA_DB_ERROR
;;
;; MessageText:
;;
;;  The replication operation encountered a database error.
;;
(ERROR_DS_DRA_DB_ERROR 1)

;; MessageId: ERROR_DS_DRA_NO_REPLICA
;;
;; MessageText:
;;
;;  The naming context is in the process of being removed or is not replicated from the specified server.
;;
(ERROR_DS_DRA_NO_REPLICA 2)

;; MessageId: ERROR_DS_DRA_ACCESS_DENIED
;;
;; MessageText:
;;
;;  Replication access was denied.
;;
(ERROR_DS_DRA_ACCESS_DENIED 3)

;; MessageId: ERROR_DS_DRA_NOT_SUPPORTED
;;
;; MessageText:
;;
;;  The requested operation is not supported by this version of the Windows NT Directory Service.
;;
(ERROR_DS_DRA_NOT_SUPPORTED 4)

;; MessageId: ERROR_DS_DRA_RPC_CANCELLED
;;
;; MessageText:
;;
;;  The replication remote procedure call was cancelled.
;;
(ERROR_DS_DRA_RPC_CANCELLED 5)

;; MessageId: ERROR_DS_DRA_SOURCE_DISABLED
;;
;; MessageText:
;;
;;  The source server is currently rejecting replication requests.
;;
(ERROR_DS_DRA_SOURCE_DISABLED 6)

;; MessageId: ERROR_DS_DRA_SINK_DISABLED
;;
;; MessageText:
;;
;;  The destination server is currently rejecting replication requests.
;;
(ERROR_DS_DRA_SINK_DISABLED 7)

;; MessageId: ERROR_DS_DRA_NAME_COLLISION
;;
;; MessageText:
;;
;;  The replication operation failed due to a collision of object names.
;;
(ERROR_DS_DRA_NAME_COLLISION 8)

;; MessageId: ERROR_DS_DRA_SOURCE_REINSTALLED
;;
;; MessageText:
;;
;;  The replication source has been reinstalled.
;;
(ERROR_DS_DRA_SOURCE_REINSTALLED 9)

;; MessageId: ERROR_DS_DRA_MISSING_PARENT
;;
;; MessageText:
;;
;;  The replication operation failed because a required parent object is missing.
;;
(ERROR_DS_DRA_MISSING_PARENT 0)

;; MessageId: ERROR_DS_DRA_PREEMPTED
;;
;; MessageText:
;;
;;  The replication operation was preempted.
;;
(ERROR_DS_DRA_PREEMPTED 1)

;; MessageId: ERROR_DS_DRA_ABANDON_SYNC
;;
;; MessageText:
;;
;;  The replication synchronization attempt was abandoned because of a lack of updates.
;;
(ERROR_DS_DRA_ABANDON_SYNC 2)

;; MessageId: ERROR_DS_DRA_SHUTDOWN
;;
;; MessageText:
;;
;;  The replication operation was terminated because the system is shutting down.
;;
(ERROR_DS_DRA_SHUTDOWN 3)

;; MessageId: ERROR_DS_DRA_INCOMPATIBLE_PARTIAL_SET
;;
;; MessageText:
;;
;;  The replication synchronization attempt failed as the destination partial attribute set is not a subset of source partial attribute set.
;;
(ERROR_DS_DRA_INCOMPATIBLE_PARTIAL_SET 4)

;; MessageId: ERROR_DS_DRA_SOURCE_IS_PARTIAL_REPLICA
;;
;; MessageText:
;;
;;  The replication synchronization attempt failed because a master replica attempted to sync from a partial replica.
;;
(ERROR_DS_DRA_SOURCE_IS_PARTIAL_REPLICA 5)

;; MessageId: ERROR_DS_DRA_EXTN_CONNECTION_FAILED
;;
;; MessageText:
;;
;;  The server specified for this replication operation was contacted, but that server was unable to contact an additional server needed to complete the operation.
;;
(ERROR_DS_DRA_EXTN_CONNECTION_FAILED 6)

;; MessageId: ERROR_DS_INSTALL_SCHEMA_MISMATCH
;;
;; MessageText:
;;
;;  A schema mismatch is detected between the source and the build used
;;  during a replica install. The replica cannot be installed.
;;
(ERROR_DS_INSTALL_SCHEMA_MISMATCH 7)

;; MessageId: ERROR_DS_DUP_LINK_ID
;;
;; MessageText:
;;
;;  Schema update failed: An attribute with the same link id already exists
;;
(ERROR_DS_DUP_LINK_ID 8)

;; MessageId: ERROR_DS_NAME_ERROR_RESOLVING
;;
;; MessageText:
;;
;;  Name Translation: Generic Processing Error.
;;
(ERROR_DS_NAME_ERROR_RESOLVING 9)

;; MessageId: ERROR_DS_NAME_ERROR_NOT_FOUND
;;
;; MessageText:
;;
;;  Name Translation: Could not find name or no rights to see name.
;;
(ERROR_DS_NAME_ERROR_NOT_FOUND 0)

;; MessageId: ERROR_DS_NAME_ERROR_NOT_UNIQUE
;;
;; MessageText:
;;
;;  Name Translation: Input name mapped to more than one output name.
;;
(ERROR_DS_NAME_ERROR_NOT_UNIQUE 1)

;; MessageId: ERROR_DS_NAME_ERROR_NO_MAPPING
;;
;; MessageText:
;;
;;  Name Translation: Input name found, but not the associated output format.
;;
(ERROR_DS_NAME_ERROR_NO_MAPPING 2)

;; MessageId: ERROR_DS_NAME_ERROR_DOMAIN_ONLY
;;
;; MessageText:
;;
;;  Name Translation: Unable to resolve completely, domain alone found.
;;
(ERROR_DS_NAME_ERROR_DOMAIN_ONLY 3)

;; MessageId: ERROR_DS_NAME_ERROR_NO_SYNTACTICAL_MAPPING
;;
;; MessageText:
;;
;;  Name Translation: Unable to perform purely syntactical mapping at the client
;;  without going out on the wire.
;;
(ERROR_DS_NAME_ERROR_NO_SYNTACTICAL_MAPPING 4)

;; MessageId: ERROR_DS_CONSTRUCTED_ATT_MOD
;;
;; MessageText:
;;
;;  Modification of a constructed att is not allowed.
;;
(ERROR_DS_CONSTRUCTED_ATT_MOD 5)

;; MessageId: ERROR_DS_WRONG_OM_OBJ_CLASS
;;
;; MessageText:
;;
;;  The OM-Object-Class specified is incorrect for an attribute with the specified syntax.
;;
(ERROR_DS_WRONG_OM_OBJ_CLASS 6)

;; MessageId: ERROR_DS_DRA_REPL_PENDING
;;
;; MessageText:
;;
;;  The replication request has been posted; waiting for reply.
;;
(ERROR_DS_DRA_REPL_PENDING 7)

;;                                                /
;;     End of Active Directory Error Codes        /
;;                                                /
;;                  8000 to  8999                 /
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;/

;;                                               ;;
;;                  DNS Error Codes              ;;
;;                                               ;;
;;                   9000 to 9999                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;/

;; Facility DNS Error Messages
;; =============================

;;  DNS response codes.
;;




;;
;; MessageId: DNS_ERROR_RCODE_FORMAT_ERROR
;;
;; MessageText:
;;
;;  DNS server unable to interpret format
;;
(DNS_ERROR_RCODE_FORMAT_ERROR 1)

;;
;; MessageId: DNS_ERROR_RCODE_SERVER_FAILURE
;;
;; MessageText:
;;
;;  DNS server failure
;;
(DNS_ERROR_RCODE_SERVER_FAILURE 2)

;;
;; MessageId: DNS_ERROR_RCODE_NAME_ERROR
;;
;; MessageText:
;;
;;  DNS name does not exist
;;
(DNS_ERROR_RCODE_NAME_ERROR 3)

;;
;; MessageId: DNS_ERROR_RCODE_NOT_IMPLEMENTED
;;
;; MessageText:
;;
;;  DNS request not supported by name server
;;
(DNS_ERROR_RCODE_NOT_IMPLEMENTED 4)

;;
;; MessageId: DNS_ERROR_RCODE_REFUSED
;;
;; MessageText:
;;
;;  DNS operation refused
;;
(DNS_ERROR_RCODE_REFUSED 5)

;;
;; MessageId: DNS_ERROR_RCODE_YXDOMAIN
;;
;; MessageText:
;;
;;  DNS name that ought not exist, does exist
;;
(DNS_ERROR_RCODE_YXDOMAIN 6)

;;
;; MessageId: DNS_ERROR_RCODE_YXRRSET
;;
;; MessageText:
;;
;;  DNS RR set that ought not exist, does exist
;;
(DNS_ERROR_RCODE_YXRRSET 7)

;;
;; MessageId: DNS_ERROR_RCODE_NXRRSET
;;
;; MessageText:
;;
;;  DNS RR set that ought to exist, does not exist
;;
(DNS_ERROR_RCODE_NXRRSET 8)

;;
;; MessageId: DNS_ERROR_RCODE_NOTAUTH
;;
;; MessageText:
;;
;;  DNS server not authoritative for zone
;;
(DNS_ERROR_RCODE_NOTAUTH 9)

;;
;; MessageId: DNS_ERROR_RCODE_NOTZONE
;;
;; MessageText:
;;
;;  DNS name in update or prereq is not in zone
;;
(DNS_ERROR_RCODE_NOTZONE 0)

;;
;; MessageId: DNS_ERROR_RCODE_BADSIG
;;
;; MessageText:
;;
;;  DNS signature failed to verify
;;
(DNS_ERROR_RCODE_BADSIG 6)

;;
;; MessageId: DNS_ERROR_RCODE_BADKEY
;;
;; MessageText:
;;
;;  DNS bad key
;;
(DNS_ERROR_RCODE_BADKEY 7)

;;
;; MessageId: DNS_ERROR_RCODE_BADTIME
;;
;; MessageText:
;;
;;  DNS signature validity expired
;;
(DNS_ERROR_RCODE_BADTIME 8)


;;  Packet format
;;


;;
;; MessageId: DNS_INFO_NO_RECORDS
;;
;; MessageText:
;;
;;  no records found for given DNS query
;;
(DNS_INFO_NO_RECORDS 1)

;;
;; MessageId: DNS_ERROR_BAD_PACKET
;;
;; MessageText:
;;
;;  bad DNS packet
;;
(DNS_ERROR_BAD_PACKET 2)

;;
;; MessageId: DNS_ERROR_NO_PACKET
;;
;; MessageText:
;;
;;  no DNS packet
;;
(DNS_ERROR_NO_PACKET 3)

;;
;; MessageId: DNS_ERROR_RCODE
;;
;; MessageText:
;;
;;  DNS error, check rcode
;;
(DNS_ERROR_RCODE 4)

;;
;; MessageId: DNS_ERROR_UNSECURE_PACKET
;;
;; MessageText:
;;
;;  unsecure DNS packet
;;
(DNS_ERROR_UNSECURE_PACKET 5)


;;  General API errors
;;





;;
;; MessageId: DNS_ERROR_INVALID_TYPE
;;
;; MessageText:
;;
;;  invalid DNS type
;;
(DNS_ERROR_INVALID_TYPE 1)

;;
;; MessageId: DNS_ERROR_INVALID_IP_ADDRESS
;;
;; MessageText:
;;
;;  invalid IP address
;;
(DNS_ERROR_INVALID_IP_ADDRESS 2)

;;
;; MessageId: DNS_ERROR_INVALID_PROPERTY
;;
;; MessageText:
;;
;;  invalid property
;;
(DNS_ERROR_INVALID_PROPERTY 3)

;;
;; MessageId: DNS_ERROR_TRY_AGAIN_LATER
;;
;; MessageText:
;;
;;  try DNS operation again later
;;
(DNS_ERROR_TRY_AGAIN_LATER 4)

;;
;; MessageId: DNS_ERROR_NOT_UNIQUE
;;
;; MessageText:
;;
;;  record for given name and type is not unique
;;
(DNS_ERROR_NOT_UNIQUE 5)

;;
;; MessageId: DNS_ERROR_NON_RFC_NAME
;;
;; MessageText:
;;
;;  DNS name does not comply with RFC specifications
;;
(DNS_ERROR_NON_RFC_NAME 6)

;;
;; MessageId: DNS_STATUS_FQDN
;;
;; MessageText:
;;
;;  DNS name is a fully qualified DNS name
;;
(DNS_STATUS_FQDN 7)

;;
;; MessageId: DNS_STATUS_DOTTED_NAME
;;
;; MessageText:
;;
;;  DNS name is dotted (multi-label)
;;
(DNS_STATUS_DOTTED_NAME 8)

;;
;; MessageId: DNS_STATUS_SINGLE_PART_NAME
;;
;; MessageText:
;;
;;  DNS name is a single part name
;;
(DNS_STATUS_SINGLE_PART_NAME 9)

;;  Zone errors
;;


;;
;; MessageId: DNS_ERROR_ZONE_DOES_NOT_EXIST
;;
;; MessageText:
;;
;;  DNS zone does not exist
;;
(DNS_ERROR_ZONE_DOES_NOT_EXIST 1)

;;
;; MessageId: DNS_ERROR_NO_ZONE_INFO
;;
;; MessageText:
;;
;;  DNS zone information not available
;;
(DNS_ERROR_NO_ZONE_INFO 2)

;;
;; MessageId: DNS_ERROR_INVALID_ZONE_OPERATION
;;
;; MessageText:
;;
;;  invalid operation for DNS zone
;;
(DNS_ERROR_INVALID_ZONE_OPERATION 3)

;;
;; MessageId: DNS_ERROR_ZONE_CONFIGURATION_ERROR
;;
;; MessageText:
;;
;;  invalid DNS zone configuration
;;
(DNS_ERROR_ZONE_CONFIGURATION_ERROR 4)

;;
;; MessageId: DNS_ERROR_ZONE_HAS_NO_SOA_RECORD
;;
;; MessageText:
;;
;;  DNS zone has no Start of Authority (SOA) record
;;
(DNS_ERROR_ZONE_HAS_NO_SOA_RECORD 5)

;;
;; MessageId: DNS_ERROR_ZONE_HAS_NO_NS_RECORDS
;;
;; MessageText:
;;
;;  DNS zone has no Name Server (NS) record
;;
(DNS_ERROR_ZONE_HAS_NO_NS_RECORDS 6)

;;
;; MessageId: DNS_ERROR_ZONE_LOCKED
;;
;; MessageText:
;;
;;  DNS zone is locked
;;
(DNS_ERROR_ZONE_LOCKED 7)

;;
;; MessageId: DNS_ERROR_ZONE_CREATION_FAILED
;;
;; MessageText:
;;
;;  DNS zone creation failed
;;
(DNS_ERROR_ZONE_CREATION_FAILED 8)

;;
;; MessageId: DNS_ERROR_ZONE_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  DNS zone already exists
;;
(DNS_ERROR_ZONE_ALREADY_EXISTS 9)

;;
;; MessageId: DNS_ERROR_AUTOZONE_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  DNS automatic zone already exists
;;
(DNS_ERROR_AUTOZONE_ALREADY_EXISTS 0)

;;
;; MessageId: DNS_ERROR_INVALID_ZONE_TYPE
;;
;; MessageText:
;;
;;  invalid DNS zone type
;;
(DNS_ERROR_INVALID_ZONE_TYPE 1)

;;
;; MessageId: DNS_ERROR_SECONDARY_REQUIRES_MASTER_IP
;;
;; MessageText:
;;
;;  secondary DNS zone requires master IP address
;;
(DNS_ERROR_SECONDARY_REQUIRES_MASTER_IP 2)

;;
;; MessageId: DNS_ERROR_ZONE_NOT_SECONDARY
;;
;; MessageText:
;;
;;  DNS zone not secondary
;;
(DNS_ERROR_ZONE_NOT_SECONDARY 3)

;;
;; MessageId: DNS_ERROR_NEED_SECONDARY_ADDRESSES
;;
;; MessageText:
;;
;;  need secondary IP address
;;
(DNS_ERROR_NEED_SECONDARY_ADDRESSES 4)

;;
;; MessageId: DNS_ERROR_WINS_INIT_FAILED
;;
;; MessageText:
;;
;;  WINS initialization failed
;;
(DNS_ERROR_WINS_INIT_FAILED 5)

;;
;; MessageId: DNS_ERROR_NEED_WINS_SERVERS
;;
;; MessageText:
;;
;;  need WINS servers
;;
(DNS_ERROR_NEED_WINS_SERVERS 6)

;;
;; MessageId: DNS_ERROR_NBSTAT_INIT_FAILED
;;
;; MessageText:
;;
;;  NBTSTAT initialization call failed
;;
(DNS_ERROR_NBSTAT_INIT_FAILED 7)

;;
;; MessageId: DNS_ERROR_SOA_DELETE_INVALID
;;
;; MessageText:
;;
;;  invalid delete of Start of Authority (SOA)
;;
(DNS_ERROR_SOA_DELETE_INVALID 8)

;;  Datafile errors
;;


;;
;; MessageId: DNS_ERROR_PRIMARY_REQUIRES_DATAFILE
;;
;; MessageText:
;;
;;  primary DNS zone requires datafile
;;
(DNS_ERROR_PRIMARY_REQUIRES_DATAFILE 1)

;;
;; MessageId: DNS_ERROR_INVALID_DATAFILE_NAME
;;
;; MessageText:
;;
;;  invalid datafile name for DNS zone
;;
(DNS_ERROR_INVALID_DATAFILE_NAME 2)

;;
;; MessageId: DNS_ERROR_DATAFILE_OPEN_FAILURE
;;
;; MessageText:
;;
;;  failed to open datafile for DNS zone
;;
(DNS_ERROR_DATAFILE_OPEN_FAILURE 3)

;;
;; MessageId: DNS_ERROR_FILE_WRITEBACK_FAILED
;;
;; MessageText:
;;
;;  failed to write datafile for DNS zone
;;
(DNS_ERROR_FILE_WRITEBACK_FAILED 4)

;;
;; MessageId: DNS_ERROR_DATAFILE_PARSING
;;
;; MessageText:
;;
;;  failure while reading datafile for DNS zone
;;
(DNS_ERROR_DATAFILE_PARSING 5)

;;  Database errors
;;


;;
;; MessageId: DNS_ERROR_RECORD_DOES_NOT_EXIST
;;
;; MessageText:
;;
;;  DNS record does not exist
;;
(DNS_ERROR_RECORD_DOES_NOT_EXIST 1)

;;
;; MessageId: DNS_ERROR_RECORD_FORMAT
;;
;; MessageText:
;;
;;  DNS record format error
;;
(DNS_ERROR_RECORD_FORMAT 2)

;;
;; MessageId: DNS_ERROR_NODE_CREATION_FAILED
;;
;; MessageText:
;;
;;  node creation failure in DNS
;;
(DNS_ERROR_NODE_CREATION_FAILED 3)

;;
;; MessageId: DNS_ERROR_UNKNOWN_RECORD_TYPE
;;
;; MessageText:
;;
;;  error unknown DNS record type
;;
(DNS_ERROR_UNKNOWN_RECORD_TYPE 4)

;;
;; MessageId: DNS_ERROR_RECORD_TIMED_OUT
;;
;; MessageText:
;;
;;  DNS record timed out
;;
(DNS_ERROR_RECORD_TIMED_OUT 5)

;;
;; MessageId: DNS_ERROR_NAME_NOT_IN_ZONE
;;
;; MessageText:
;;
;;  name not in DNS zone
;;
(DNS_ERROR_NAME_NOT_IN_ZONE 6)

;;
;; MessageId: DNS_ERROR_CNAME_LOOP
;;
;; MessageText:
;;
;;  CNAME loop detected
;;
(DNS_ERROR_CNAME_LOOP 7)

;;
;; MessageId: DNS_ERROR_NODE_IS_CNAME
;;
;; MessageText:
;;
;;  node is a CNAME DNS record
;;
(DNS_ERROR_NODE_IS_CNAME 8)

;;
;; MessageId: DNS_ERROR_CNAME_COLLISION
;;
;; MessageText:
;;
;;  a CNAME record already exists for given name
;;
(DNS_ERROR_CNAME_COLLISION 9)

;;
;; MessageId: DNS_ERROR_RECORD_ONLY_AT_ZONE_ROOT
;;
;; MessageText:
;;
;;  record only at DNS zone root
;;
(DNS_ERROR_RECORD_ONLY_AT_ZONE_ROOT 0)

;;
;; MessageId: DNS_ERROR_RECORD_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  DNS record already exists
;;
(DNS_ERROR_RECORD_ALREADY_EXISTS 1)

;;
;; MessageId: DNS_ERROR_SECONDARY_DATA
;;
;; MessageText:
;;
;;  secondary DNS zone data error
;;
(DNS_ERROR_SECONDARY_DATA 2)

;;
;; MessageId: DNS_ERROR_NO_CREATE_CACHE_DATA
;;
;; MessageText:
;;
;;  could not create DNS cache data
;;
(DNS_ERROR_NO_CREATE_CACHE_DATA 3)

;;
;; MessageId: DNS_ERROR_NAME_DOES_NOT_EXIST
;;
;; MessageText:
;;
;;  DNS name does not exist
;;
(DNS_ERROR_NAME_DOES_NOT_EXIST 4)

;;
;; MessageId: DNS_WARNING_PTR_CREATE_FAILED
;;
;; MessageText:
;;
;;  could not create Pointer (PTR) record
;;
(DNS_WARNING_PTR_CREATE_FAILED 5)

;;
;; MessageId: DNS_WARNING_DOMAIN_UNDELETED
;;
;; MessageText:
;;
;;  DNS domain was undeleted
;;
(DNS_WARNING_DOMAIN_UNDELETED 6)

;;
;; MessageId: DNS_ERROR_DS_UNAVAILABLE
;;
;; MessageText:
;;
;;  Windows NT Directory Service unavailable
;;
(DNS_ERROR_DS_UNAVAILABLE 7)

;;
;; MessageId: DNS_ERROR_DS_ZONE_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  DNS zone already exists in Windows NT Directory Service
;;
(DNS_ERROR_DS_ZONE_ALREADY_EXISTS 8)

;;
;; MessageId: DNS_ERROR_NO_BOOTFILE_IF_DS_ZONE
;;
;; MessageText:
;;
;;  DNS server not creating/reading boot file for Directory Service integrated DNS zone
;;
(DNS_ERROR_NO_BOOTFILE_IF_DS_ZONE 9)

;;  Operation errors
;;


;;
;; MessageId: DNS_INFO_AXFR_COMPLETE
;;
;; MessageText:
;;
;;  DNS AXFR (zone transfer) complete
;;
(DNS_INFO_AXFR_COMPLETE 1)

;;
;; MessageId: DNS_ERROR_AXFR
;;
;; MessageText:
;;
;;  DNS zone transfer failed
;;
(DNS_ERROR_AXFR 2)

;;
;; MessageId: DNS_INFO_ADDED_LOCAL_WINS
;;
;; MessageText:
;;
;;  added local WINS server
;;
(DNS_INFO_ADDED_LOCAL_WINS 3)

;;  Secure update
;;


;;
;; MessageId: DNS_STATUS_CONTINUE_NEEDED
;;
;; MessageText:
;;
;;  secure update call needs to continue update request
;;
(DNS_STATUS_CONTINUE_NEEDED 1)

;;  Setup errors
;;


;;
;; MessageId: DNS_ERROR_NO_TCPIP
;;
;; MessageText:
;;
;;  TCP/IP network protocol not installed
;;
(DNS_ERROR_NO_TCPIP 1)

;;
;; MessageId: DNS_ERROR_NO_DNS_SERVERS
;;
;; MessageText:
;;
;;  no DNS servers configured for local system
;;
(DNS_ERROR_NO_DNS_SERVERS 2)

;;                                               ;;
;;             End of DNS Error Codes            ;;
;;                                               ;;
;;                  9000 to 9999                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;/

;;                                               ;;
;;               WinSock Error Codes             ;;
;;                                               ;;
;;                 10000 to 11999                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;/

;; WinSock error codes are also defined in WinSock.h
;; and WinSock2.h, hence the IFDEF
;;

(WSABASEERR 0)
;;
;; MessageId: WSAEINTR
;;
;; MessageText:
;;
;;  A blocking operation was interrupted by a call to WSACancelBlockingCall().
;;
(WSAEINTR 4)

;; MessageId: WSAEBADF
;;
;; MessageText:
;;
;;  The file handle supplied is not valid
;;
(WSAEBADF 9)

;; MessageId: WSAEACCES
;;
;; MessageText:
;;
;;  An attempt was made to access a socket in a way forbidden
;;  by its access permissions.
;;
(WSAEACCES 3)

;; MessageId: WSAEFAULT
;;
;; MessageText:
;;
;;  The system detected an invalid pointer address in attempting
;;  to use a pointer argument of a call.
;;
(WSAEFAULT 4)

;; MessageId: WSAEINVAL
;;
;; MessageText:
;;
;;  Some invalid argument was supplied.
;;
(WSAEINVAL 2)

;; MessageId: WSAEMFILE
;;
;; MessageText:
;;
;;  Too many open sockets.
;;
(WSAEMFILE 4)

;; MessageId: WSAEWOULDBLOCK
;;
;; MessageText:
;;
;;  A non-blocking socket operation could not be completed immediately.
;;
(WSAEWOULDBLOCK 5)

;; MessageId: WSAEINPROGRESS
;;
;; MessageText:
;;
;;  A blocking operation is currently executing.
;;
(WSAEINPROGRESS 6)

;; MessageId: WSAEALREADY
;;
;; MessageText:
;;
;;  An operation was attempted on a non-blocking socket that already had
;;  an operation in progress.
;;
(WSAEALREADY 7)

;; MessageId: WSAENOTSOCK
;;
;; MessageText:
;;
;;  An operation was attempted on something that is not a socket.
;;
(WSAENOTSOCK 8)

;; MessageId: WSAEDESTADDRREQ
;;
;; MessageText:
;;
;;  A required address was omitted from an operation on a socket.
;;
(WSAEDESTADDRREQ 9)

;; MessageId: WSAEMSGSIZE
;;
;; MessageText:
;;
;;  A message sent on a datagram socket was larger than the internal message
;;  buffer or some other network limit, or the buffer used to receive
;;  a datagram into was smaller than the datagram itself.
;;
(WSAEMSGSIZE 0)

;; MessageId: WSAEPROTOTYPE
;;
;; MessageText:
;;
;;  A protocol was specified in the socket() function call that does not support
;;  the semantics of the socket type requested.
;;
(WSAEPROTOTYPE 1)

;; MessageId: WSAENOPROTOOPT
;;
;; MessageText:
;;
;;  An unknown, invalid or unsupported option or level was specified in a
;;  getsockopt() or setsockopt() call.
;;
(WSAENOPROTOOPT 2)

;; MessageId: WSAEPROTONOSUPPORT
;;
;; MessageText:
;;
;;  The requested protocol has not been configured into the system,
;;  or no implementation for it exists.
;;
(WSAEPROTONOSUPPORT 3)

;; MessageId: WSAESOCKTNOSUPPORT
;;
;; MessageText:
;;
;;  The support for the specified socket type does not exist
;;  in this address family.
;;
(WSAESOCKTNOSUPPORT 4)

;; MessageId: WSAEOPNOTSUPP
;;
;; MessageText:
;;
;;  The attempted operation is not supported for the type of object referenced.
;;
(WSAEOPNOTSUPP 5)

;; MessageId: WSAEPFNOSUPPORT
;;
;; MessageText:
;;
;;  The protocol family has not been configured into the system
;;  or no implementation for it exists.
;;
(WSAEPFNOSUPPORT 6)

;; MessageId: WSAEAFNOSUPPORT
;;
;; MessageText:
;;
;;  An address incompatible with the requested protocol was used.
;;
(WSAEAFNOSUPPORT 7)

;; MessageId: WSAEADDRINUSE
;;
;; MessageText:
;;
;;  Only one usage of each socket address (protocol/network address/port)
;;  is normally permitted.
;;
(WSAEADDRINUSE 8)

;; MessageId: WSAEADDRNOTAVAIL
;;
;; MessageText:
;;
;;  The requested address is not valid in its context.
;;
(WSAEADDRNOTAVAIL 9)

;; MessageId: WSAENETDOWN
;;
;; MessageText:
;;
;;  A socket operation encountered a dead network.
;;
(WSAENETDOWN 0)

;; MessageId: WSAENETUNREACH
;;
;; MessageText:
;;
;;  A socket operation was attempted to an unreachable network.
;;
(WSAENETUNREACH 1)

;; MessageId: WSAENETRESET
;;
;; MessageText:
;;
;;  The connection has been broken due to keep-alive activity
;;  detecting a failure while the operation was in progress.
;;
(WSAENETRESET 2)

;; MessageId: WSAECONNABORTED
;;
;; MessageText:
;;
;;  An established connection was aborted by the software in your host machine.
;;
(WSAECONNABORTED 3)

;; MessageId: WSAECONNRESET
;;
;; MessageText:
;;
;;  An existing connection was forcibly closed by the remote host.
;;
(WSAECONNRESET 4)

;; MessageId: WSAENOBUFS
;;
;; MessageText:
;;
;;  An operation on a socket could not be performed because the system lacked
;;  sufficient buffer space or because a queue was full.
;;
(WSAENOBUFS 5)

;; MessageId: WSAEISCONN
;;
;; MessageText:
;;
;;  A connect request was made on an already connected socket.
;;
(WSAEISCONN 6)

;; MessageId: WSAENOTCONN
;;
;; MessageText:
;;
;;  A request to send or receive data was disallowed because the socket
;;  is not connected and (when sending on a datagram socket using sendto())
;;  no address was supplied.
;;
(WSAENOTCONN 7)

;; MessageId: WSAESHUTDOWN
;;
;; MessageText:
;;
;;  A request to send or receive data was disallowed because the socket
;;  had already been shut down in that direction with a previous
;;  shutdown() call.
;;
(WSAESHUTDOWN 8)

;; MessageId: WSAETOOMANYREFS
;;
;; MessageText:
;;
;;  Too many references to some kernel object.
;;
(WSAETOOMANYREFS 9)

;; MessageId: WSAETIMEDOUT
;;
;; MessageText:
;;
;;  A connection attempt failed because the connected party
;;  did not properly respond after a period of time,
;;  or established connection failed because connected host has failed to respond.
;;
(WSAETIMEDOUT 0)

;; MessageId: WSAECONNREFUSED
;;
;; MessageText:
;;
;;  No connection could be made because the target machine actively refused it.
;;
(WSAECONNREFUSED 1)

;; MessageId: WSAELOOP
;;
;; MessageText:
;;
;;  Couldn't translate a name.
;;
(WSAELOOP 2)

;; MessageId: WSAENAMETOOLONG
;;
;; MessageText:
;;
;;  Name component or name was too long.
;;
(WSAENAMETOOLONG 3)

;; MessageId: WSAEHOSTDOWN
;;
;; MessageText:
;;
;;  A socket operation failed because the destination host was down.
;;
(WSAEHOSTDOWN 4)

;; MessageId: WSAEHOSTUNREACH
;;
;; MessageText:
;;
;;  A socket operation was attempted to an unreachable host.
;;
(WSAEHOSTUNREACH 5)

;; MessageId: WSAENOTEMPTY
;;
;; MessageText:
;;
;;  Can remove a not empty directory.
;;
(WSAENOTEMPTY 6)

;; MessageId: WSAEPROCLIM
;;
;; MessageText:
;;
;;  A Windows Sockets implementation may have a limit on the number
;;  of applications that may use it simultaneously.
;;
(WSAEPROCLIM 7)

;; MessageId: WSAEUSERS
;;
;; MessageText:
;;
;;  Ran out of Quota.
;;
(WSAEUSERS 8)

;; MessageId: WSAEDQUOT
;;
;; MessageText:
;;
;;  Ran out of disk Quota.
;;
(WSAEDQUOT 9)

;; MessageId: WSAESTALE
;;
;; MessageText:
;;
;;  File handle reference is no longer available.
;;
(WSAESTALE 0)

;; MessageId: WSAEREMOTE
;;
;; MessageText:
;;
;;  Item is not available locally,
;;
(WSAEREMOTE 1)

;; MessageId: WSASYSNOTREADY
;;
;; MessageText:
;;
;;  WSAStartup() cannot function at this time because the underlying system
;;  it uses to provide network services is currently unavailable.
;;
(WSASYSNOTREADY 1)

;; MessageId: WSAVERNOTSUPPORTED
;;
;; MessageText:
;;
;;  The Windows Sockets version requested is not supported.
;;
(WSAVERNOTSUPPORTED 2)

;; MessageId: WSANOTINITIALISED
;;
;; MessageText:
;;
;;  Either the application hasn't called WSAStartup(), or WSAStartup() failed.
;;
(WSANOTINITIALISED 3)

;; MessageId: WSAEDISCON
;;
;; MessageText:
;;
;;  Returned by WSARecv(), WSARecvFrom() to indicate the remote party
;;  has initiated a graceful shutdown sequence.
;;
(WSAEDISCON 1)

;; MessageId: WSAENOMORE
;;
;; MessageText:
;;
;;  No more results can be returned by WSALookupServiceNext.
;;
(WSAENOMORE 2)

;; MessageId: WSAECANCELLED
;;
;; MessageText:
;;
;;  A call to WSALookupServiceEnd was made while this call was still processing.
;;  The call has been canceled.
;;
(WSAECANCELLED 3)

;; MessageId: WSAEINVALIDPROCTABLE
;;
;; MessageText:
;;
;;  The procedure call table is invalid.
;;
(WSAEINVALIDPROCTABLE 4)

;; MessageId: WSAEINVALIDPROVIDER
;;
;; MessageText:
;;
;;  The requested service provider is invalid.
;;
(WSAEINVALIDPROVIDER 5)

;; MessageId: WSAEPROVIDERFAILEDINIT
;;
;; MessageText:
;;
;;  The requested service provider could not be loaded or initialised.
;;
(WSAEPROVIDERFAILEDINIT 6)

;; MessageId: WSASYSCALLFAILURE
;;
;; MessageText:
;;
;;  Returned when a system call that should never fail does.
;;
(WSASYSCALLFAILURE 7)

;; MessageId: WSASERVICE_NOT_FOUND
;;
;; MessageText:
;;
;;  No such service is known. The service cannot be found in the specified
;;  name space.
;;
(WSASERVICE_NOT_FOUND 8)

;; MessageId: WSATYPE_NOT_FOUND
;;
;; MessageText:
;;
;;  The specified class was not found.
;;
(WSATYPE_NOT_FOUND 9)

;; MessageId: WSA_E_NO_MORE
;;
;; MessageText:
;;
;;  No more results can be returned by WSALookupServiceNext.
;;
(WSA_E_NO_MORE 0)

;; MessageId: WSA_E_CANCELLED
;;
;; MessageText:
;;
;;  A call to WSALookupServiceEnd was made while this call was still processing.
;;  The call has been canceled.
;;
(WSA_E_CANCELLED 1)

;; MessageId: WSAEREFUSED
;;
;; MessageText:
;;
;;  A database query failed because it was actively refused.
;;
(WSAEREFUSED 2)

;; MessageId: WSAHOST_NOT_FOUND
;;
;; MessageText:
;;
;;  No such host is known.
;;
(WSAHOST_NOT_FOUND 1)

;; MessageId: WSATRY_AGAIN
;;
;; MessageText:
;;
;;  This is usually a temporary error during hostname resolution
;;  and means that the local server did not receive a response
;;  from an authoritative server.
;;
(WSATRY_AGAIN 2)

;; MessageId: WSANO_RECOVERY
;;
;; MessageText:
;;
;;  A non-recoverable error occurred during a database lookup.
;;
(WSANO_RECOVERY 3)

;; MessageId: WSANO_DATA
;;
;; MessageText:
;;
;;  The requested name is valid and was found in the database,
;;  but it does not have the correct associated data being resolved for.
;;
(WSANO_DATA 4)

;; MessageId: WSA_QOS_RECEIVERS
;;
;; MessageText:
;;
;;  At least one Reserve has arrived.
;;
(WSA_QOS_RECEIVERS 5)

;; MessageId: WSA_QOS_SENDERS
;;
;; MessageText:
;;
;;  At least one Path has arrived.
;;
(WSA_QOS_SENDERS 6)

;; MessageId: WSA_QOS_NO_SENDERS
;;
;; MessageText:
;;
;;  There are no senders.
;;
(WSA_QOS_NO_SENDERS 7)

;; MessageId: WSA_QOS_NO_RECEIVERS
;;
;; MessageText:
;;
;;  There are no receivers.
;;
(WSA_QOS_NO_RECEIVERS 8)

;; MessageId: WSA_QOS_REQUEST_CONFIRMED
;;
;; MessageText:
;;
;;  Reserve has been confirmed.
;;
(WSA_QOS_REQUEST_CONFIRMED 9)

;; MessageId: WSA_QOS_ADMISSION_FAILURE
;;
;; MessageText:
;;
;;  Error due to lack of resources.
;;
(WSA_QOS_ADMISSION_FAILURE 0)

;; MessageId: WSA_QOS_POLICY_FAILURE
;;
;; MessageText:
;;
;;  Rejected for administrative reasons - bad credentials.
;;
(WSA_QOS_POLICY_FAILURE 1)

;; MessageId: WSA_QOS_BAD_STYLE
;;
;; MessageText:
;;
;;  Unknown or conflicting style.
;;
(WSA_QOS_BAD_STYLE 2)

;; MessageId: WSA_QOS_BAD_OBJECT
;;
;; MessageText:
;;
;;  Problem with some part of the filterspec or providerspecific buffer in general.
;;
(WSA_QOS_BAD_OBJECT 3)

;; MessageId: WSA_QOS_TRAFFIC_CTRL_ERROR
;;
;; MessageText:
;;
;;  Problem with some part of the flowspec.
;;
(WSA_QOS_TRAFFIC_CTRL_ERROR 4)

;; MessageId: WSA_QOS_GENERIC_ERROR
;;
;; MessageText:
;;
;;  General QOS error.
;;
(WSA_QOS_GENERIC_ERROR 5)


;;                                               ;;
;;           End of WinSock Error Codes          ;;
;;                                               ;;
;;                 10000 to 11999                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;/

;;                                ;;
;;     OLE Error Codes            ;;
;;                                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; OLE error definitions and values
;;
;; The return value of OLE APIs and methods is an HRESULT.
;; This is not a handle to anything, but is merely a 32-bit value
;; with several fields encoded in the value.  The parts of an
;; HRESULT are shown below.
;;
;; Many of the macros and functions below were orginally defined to
;; operate on SCODEs.  SCODEs are no longer used.  The macros are
;; still present for compatibility and easy porting of Win16 code.
;; Newly written code should use the HRESULT macros and functions.
;;

;;  HRESULTs are 32 bit values layed out as follows:
;;
;;   3 3 2 2 2 2 2 2 2 2 2 2 1 1 1 1 1 1 1 1 1 1
;;   1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
;;  +-+-+-+-+-+---------------------+-------------------------------+
;;  |S|R|C|N|r|    Facility         |               Code            |
;;  +-+-+-+-+-+---------------------+-------------------------------+
;;
;;  where
;;
;;      S - Severity - indicates success/fail
;;
;;          0 - Success
;;          1 - Fail (COERROR)
;;
;;      R - reserved portion of the facility code, corresponds to NT's
;;              second severity bit.
;;
;;      C - reserved portion of the facility code, corresponds to NT's
;;              C field.
;;
;;      N - reserved portion of the facility code. Used to indicate a
;;              mapped NT status value.
;;
;;      r - reserved portion of the facility code. Reserved for internal
;;              use. Used to indicate HRESULT values that are not status
;;              values, but are instead message ids for display strings.
;;
;;      Facility - is the facility code
;;
;;      Code - is the facility's status code
;;

;; Severity values
;;

(SEVERITY_ERROR 1)

;; Generic test for success on any status value (non-negative numbers
;; indicate success).
;;


;; and the inverse
;;


;; Generic test for error on any status value.
;;


;; Return the code
;;

(SCODE_CODE #xFFFF)

;;  Return the facility
;;

(SCODE_FACILITY #x1fff)

;;  Return the severity
;;

(SCODE_SEVERITY #x1)

;; Create an HRESULT value from component pieces
;;





;; Map a WIN32 error value into a HRESULT
;; Note: This assumes that WIN32 errors fall in the range -32k to 32k.
;;
;; Define bits here so macros are guaranteed to work

(HRESULT_FROM_WIN32 #x80000000)

;; Map an NT status value into a HRESULT
;;



;; As noted above, these functions are obsolete and should not be used.








;;
;; HRESULT definitions
;;







;; Error definitions follow
;;

;; Codes 0x4000-0x40ff are reserved for OLE
;;
;;
;; Error codes
;;
;;
;; MessageId: E_UNEXPECTED
;;
;; MessageText:
;;
;;  Catastrophic failure
;;
(E_UNEXPECTED #x8000FFFF)

;;
;; MessageId: E_NOTIMPL
;;
;; MessageText:
;;
;;  Not implemented
;;
(E_NOTIMPL #x80004001)

;; MessageId: E_OUTOFMEMORY
;;
;; MessageText:
;;
;;  Ran out of memory
;;
(E_OUTOFMEMORY #x8007000E)

;; MessageId: E_INVALIDARG
;;
;; MessageText:
;;
;;  One or more arguments are invalid
;;
(E_INVALIDARG #x80070057)

;; MessageId: E_NOINTERFACE
;;
;; MessageText:
;;
;;  No such interface supported
;;
(E_NOINTERFACE #x80004002)

;; MessageId: E_POINTER
;;
;; MessageText:
;;
;;  Invalid pointer
;;
(E_POINTER #x80004003)

;; MessageId: E_HANDLE
;;
;; MessageText:
;;
;;  Invalid handle
;;
(E_HANDLE #x80070006)

;; MessageId: E_ABORT
;;
;; MessageText:
;;
;;  Operation aborted
;;
(E_ABORT #x80004004)

;; MessageId: E_FAIL
;;
;; MessageText:
;;
;;  Unspecified error
;;
(E_FAIL #x80004005)

;; MessageId: E_ACCESSDENIED
;;
;; MessageText:
;;
;;  General access denied error
;;
(E_ACCESSDENIED #x80070005)

;;
;; MessageId: E_NOTIMPL
;;
;; MessageText:
;;
;;  Not implemented
;;
(E_NOTIMPL #x80000001)

;; MessageId: E_OUTOFMEMORY
;;
;; MessageText:
;;
;;  Ran out of memory
;;
(E_OUTOFMEMORY #x80000002)

;; MessageId: E_INVALIDARG
;;
;; MessageText:
;;
;;  One or more arguments are invalid
;;
(E_INVALIDARG #x80000003)

;; MessageId: E_NOINTERFACE
;;
;; MessageText:
;;
;;  No such interface supported
;;
(E_NOINTERFACE #x80000004)

;; MessageId: E_POINTER
;;
;; MessageText:
;;
;;  Invalid pointer
;;
(E_POINTER #x80000005)

;; MessageId: E_HANDLE
;;
;; MessageText:
;;
;;  Invalid handle
;;
(E_HANDLE #x80000006)

;; MessageId: E_ABORT
;;
;; MessageText:
;;
;;  Operation aborted
;;
(E_ABORT #x80000007)

;; MessageId: E_FAIL
;;
;; MessageText:
;;
;;  Unspecified error
;;
(E_FAIL #x80000008)

;; MessageId: E_ACCESSDENIED
;;
;; MessageText:
;;
;;  General access denied error
;;
(E_ACCESSDENIED #x80000009)

;;
;; MessageId: E_PENDING
;;
;; MessageText:
;;
;;  The data necessary to complete this operation is not yet available.
;;
(E_PENDING #x8000000A)

;; MessageId: CO_E_INIT_TLS
;;
;; MessageText:
;;
;;  Thread local storage failure
;;
(CO_E_INIT_TLS #x80004006)

;; MessageId: CO_E_INIT_SHARED_ALLOCATOR
;;
;; MessageText:
;;
;;  Get shared memory allocator failure
;;
(CO_E_INIT_SHARED_ALLOCATOR #x80004007)

;; MessageId: CO_E_INIT_MEMORY_ALLOCATOR
;;
;; MessageText:
;;
;;  Get memory allocator failure
;;
(CO_E_INIT_MEMORY_ALLOCATOR #x80004008)

;; MessageId: CO_E_INIT_CLASS_CACHE
;;
;; MessageText:
;;
;;  Unable to initialize class cache
;;
(CO_E_INIT_CLASS_CACHE #x80004009)

;; MessageId: CO_E_INIT_RPC_CHANNEL
;;
;; MessageText:
;;
;;  Unable to initialize RPC services
;;
(CO_E_INIT_RPC_CHANNEL #x8000400A)

;; MessageId: CO_E_INIT_TLS_SET_CHANNEL_CONTROL
;;
;; MessageText:
;;
;;  Cannot set thread local storage channel control
;;
(CO_E_INIT_TLS_SET_CHANNEL_CONTROL #x8000400B)

;; MessageId: CO_E_INIT_TLS_CHANNEL_CONTROL
;;
;; MessageText:
;;
;;  Could not allocate thread local storage channel control
;;
(CO_E_INIT_TLS_CHANNEL_CONTROL #x8000400C)

;; MessageId: CO_E_INIT_UNACCEPTED_USER_ALLOCATOR
;;
;; MessageText:
;;
;;  The user supplied memory allocator is unacceptable
;;
(CO_E_INIT_UNACCEPTED_USER_ALLOCATOR #x8000400D)

;; MessageId: CO_E_INIT_SCM_MUTEX_EXISTS
;;
;; MessageText:
;;
;;  The OLE service mutex already exists
;;
(CO_E_INIT_SCM_MUTEX_EXISTS #x8000400E)

;; MessageId: CO_E_INIT_SCM_FILE_MAPPING_EXISTS
;;
;; MessageText:
;;
;;  The OLE service file mapping already exists
;;
(CO_E_INIT_SCM_FILE_MAPPING_EXISTS #x8000400F)

;; MessageId: CO_E_INIT_SCM_MAP_VIEW_OF_FILE
;;
;; MessageText:
;;
;;  Unable to map view of file for OLE service
;;
(CO_E_INIT_SCM_MAP_VIEW_OF_FILE #x80004010)

;; MessageId: CO_E_INIT_SCM_EXEC_FAILURE
;;
;; MessageText:
;;
;;  Failure attempting to launch OLE service
;;
(CO_E_INIT_SCM_EXEC_FAILURE #x80004011)

;; MessageId: CO_E_INIT_ONLY_SINGLE_THREADED
;;
;; MessageText:
;;
;;  There was an attempt to call CoInitialize a second time while single threaded
;;
(CO_E_INIT_ONLY_SINGLE_THREADED #x80004012)

;; MessageId: CO_E_CANT_REMOTE
;;
;; MessageText:
;;
;;  A Remote activation was necessary but was not allowed
;;
(CO_E_CANT_REMOTE #x80004013)

;; MessageId: CO_E_BAD_SERVER_NAME
;;
;; MessageText:
;;
;;  A Remote activation was necessary but the server name provided was invalid
;;
(CO_E_BAD_SERVER_NAME #x80004014)

;; MessageId: CO_E_WRONG_SERVER_IDENTITY
;;
;; MessageText:
;;
;;  The class is configured to run as a security id different from the caller
;;
(CO_E_WRONG_SERVER_IDENTITY #x80004015)

;; MessageId: CO_E_OLE1DDE_DISABLED
;;
;; MessageText:
;;
;;  Use of Ole1 services requiring DDE windows is disabled
;;
(CO_E_OLE1DDE_DISABLED #x80004016)

;; MessageId: CO_E_RUNAS_SYNTAX
;;
;; MessageText:
;;
;;  A RunAs specification must be <domain name>\<user name> or simply <user name>
;;
(CO_E_RUNAS_SYNTAX #x80004017)

;; MessageId: CO_E_CREATEPROCESS_FAILURE
;;
;; MessageText:
;;
;;  The server process could not be started.  The pathname may be incorrect.
;;
(CO_E_CREATEPROCESS_FAILURE #x80004018)

;; MessageId: CO_E_RUNAS_CREATEPROCESS_FAILURE
;;
;; MessageText:
;;
;;  The server process could not be started as the configured identity.  The pathname may be incorrect or unavailable.
;;
(CO_E_RUNAS_CREATEPROCESS_FAILURE #x80004019)

;; MessageId: CO_E_RUNAS_LOGON_FAILURE
;;
;; MessageText:
;;
;;  The server process could not be started because the configured identity is incorrect.  Check the username and password.
;;
(CO_E_RUNAS_LOGON_FAILURE #x8000401A)

;; MessageId: CO_E_LAUNCH_PERMSSION_DENIED
;;
;; MessageText:
;;
;;  The client is not allowed to launch this server.
;;
(CO_E_LAUNCH_PERMSSION_DENIED #x8000401B)

;; MessageId: CO_E_START_SERVICE_FAILURE
;;
;; MessageText:
;;
;;  The service providing this server could not be started.
;;
(CO_E_START_SERVICE_FAILURE #x8000401C)

;; MessageId: CO_E_REMOTE_COMMUNICATION_FAILURE
;;
;; MessageText:
;;
;;  This computer was unable to communicate with the computer providing the server.
;;
(CO_E_REMOTE_COMMUNICATION_FAILURE #x8000401D)

;; MessageId: CO_E_SERVER_START_TIMEOUT
;;
;; MessageText:
;;
;;  The server did not respond after being launched.
;;
(CO_E_SERVER_START_TIMEOUT #x8000401E)

;; MessageId: CO_E_CLSREG_INCONSISTENT
;;
;; MessageText:
;;
;;  The registration information for this server is inconsistent or incomplete.
;;
(CO_E_CLSREG_INCONSISTENT #x8000401F)

;; MessageId: CO_E_IIDREG_INCONSISTENT
;;
;; MessageText:
;;
;;  The registration information for this interface is inconsistent or incomplete.
;;
(CO_E_IIDREG_INCONSISTENT #x80004020)

;; MessageId: CO_E_NOT_SUPPORTED
;;
;; MessageText:
;;
;;  The operation attempted is not supported.
;;
(CO_E_NOT_SUPPORTED #x80004021)

;; MessageId: CO_E_RELOAD_DLL
;;
;; MessageText:
;;
;;  A dll must be loaded.
;;
(CO_E_RELOAD_DLL #x80004022)

;; MessageId: CO_E_MSI_ERROR
;;
;; MessageText:
;;
;;  A Microsoft Software Installer error was encountered.
;;
(CO_E_MSI_ERROR #x80004023)

;; Success codes
;;
(S_OK #x00000000)
(S_FALSE #x00000001)

;; FACILITY_ITF
;; ******************

;; Codes 0x0-0x01ff are reserved for the OLE group of
;; interfaces.
;;

;; Generic OLE errors that may be returned by many inerfaces
;;

(OLE_E_LAST #x800400FF)
(OLE_S_FIRST #x00040000)
(OLE_S_LAST #x000400FF)

;; Old OLE errors
;;
;;
;; MessageId: OLE_E_OLEVERB
;;
;; MessageText:
;;
;;  Invalid OLEVERB structure
;;
(OLE_E_OLEVERB #x80040000)

;; MessageId: OLE_E_ADVF
;;
;; MessageText:
;;
;;  Invalid advise flags
;;
(OLE_E_ADVF #x80040001)

;; MessageId: OLE_E_ENUM_NOMORE
;;
;; MessageText:
;;
;;  Can't enumerate any more, because the associated data is missing
;;
(OLE_E_ENUM_NOMORE #x80040002)

;; MessageId: OLE_E_ADVISENOTSUPPORTED
;;
;; MessageText:
;;
;;  This implementation doesn't take advises
;;
(OLE_E_ADVISENOTSUPPORTED #x80040003)

;; MessageId: OLE_E_NOCONNECTION
;;
;; MessageText:
;;
;;  There is no connection for this connection ID
;;
(OLE_E_NOCONNECTION #x80040004)

;; MessageId: OLE_E_NOTRUNNING
;;
;; MessageText:
;;
;;  Need to run the object to perform this operation
;;
(OLE_E_NOTRUNNING #x80040005)

;; MessageId: OLE_E_NOCACHE
;;
;; MessageText:
;;
;;  There is no cache to operate on
;;
(OLE_E_NOCACHE #x80040006)

;; MessageId: OLE_E_BLANK
;;
;; MessageText:
;;
;;  Uninitialized object
;;
(OLE_E_BLANK #x80040007)

;; MessageId: OLE_E_CLASSDIFF
;;
;; MessageText:
;;
;;  Linked object's source class has changed
;;
(OLE_E_CLASSDIFF #x80040008)

;; MessageId: OLE_E_CANT_GETMONIKER
;;
;; MessageText:
;;
;;  Not able to get the moniker of the object
;;
(OLE_E_CANT_GETMONIKER #x80040009)

;; MessageId: OLE_E_CANT_BINDTOSOURCE
;;
;; MessageText:
;;
;;  Not able to bind to the source
;;
(OLE_E_CANT_BINDTOSOURCE #x8004000A)

;; MessageId: OLE_E_STATIC
;;
;; MessageText:
;;
;;  Object is static; operation not allowed
;;
(OLE_E_STATIC #x8004000B)

;; MessageId: OLE_E_PROMPTSAVECANCELLED
;;
;; MessageText:
;;
;;  User canceled out of save dialog
;;
(OLE_E_PROMPTSAVECANCELLED #x8004000C)

;; MessageId: OLE_E_INVALIDRECT
;;
;; MessageText:
;;
;;  Invalid rectangle
;;
(OLE_E_INVALIDRECT #x8004000D)

;; MessageId: OLE_E_WRONGCOMPOBJ
;;
;; MessageText:
;;
;;  compobj.dll is too old for the ole2.dll initialized
;;
(OLE_E_WRONGCOMPOBJ #x8004000E)

;; MessageId: OLE_E_INVALIDHWND
;;
;; MessageText:
;;
;;  Invalid window handle
;;
(OLE_E_INVALIDHWND #x8004000F)

;; MessageId: OLE_E_NOT_INPLACEACTIVE
;;
;; MessageText:
;;
;;  Object is not in any of the inplace active states
;;
(OLE_E_NOT_INPLACEACTIVE #x80040010)

;; MessageId: OLE_E_CANTCONVERT
;;
;; MessageText:
;;
;;  Not able to convert object
;;
(OLE_E_CANTCONVERT #x80040011)

;; MessageId: OLE_E_NOSTORAGE
;;
;; MessageText:
;;
;;  Not able to perform the operation because object is not given storage yet
;;  
;;
(OLE_E_NOSTORAGE #x80040012)

;; MessageId: DV_E_FORMATETC
;;
;; MessageText:
;;
;;  Invalid FORMATETC structure
;;
(DV_E_FORMATETC #x80040064)

;; MessageId: DV_E_DVTARGETDEVICE
;;
;; MessageText:
;;
;;  Invalid DVTARGETDEVICE structure
;;
(DV_E_DVTARGETDEVICE #x80040065)

;; MessageId: DV_E_STGMEDIUM
;;
;; MessageText:
;;
;;  Invalid STDGMEDIUM structure
;;
(DV_E_STGMEDIUM #x80040066)

;; MessageId: DV_E_STATDATA
;;
;; MessageText:
;;
;;  Invalid STATDATA structure
;;
(DV_E_STATDATA #x80040067)

;; MessageId: DV_E_LINDEX
;;
;; MessageText:
;;
;;  Invalid lindex
;;
(DV_E_LINDEX #x80040068)

;; MessageId: DV_E_TYMED
;;
;; MessageText:
;;
;;  Invalid tymed
;;
(DV_E_TYMED #x80040069)

;; MessageId: DV_E_CLIPFORMAT
;;
;; MessageText:
;;
;;  Invalid clipboard format
;;
(DV_E_CLIPFORMAT #x8004006A)

;; MessageId: DV_E_DVASPECT
;;
;; MessageText:
;;
;;  Invalid aspect(s)
;;
(DV_E_DVASPECT #x8004006B)

;; MessageId: DV_E_DVTARGETDEVICE_SIZE
;;
;; MessageText:
;;
;;  tdSize parameter of the DVTARGETDEVICE structure is invalid
;;
(DV_E_DVTARGETDEVICE_SIZE #x8004006C)

;; MessageId: DV_E_NOIVIEWOBJECT
;;
;; MessageText:
;;
;;  Object doesn't support IViewObject interface
;;
(DV_E_NOIVIEWOBJECT #x8004006D)

(DRAGDROP_E_LAST #x8004010F)
(DRAGDROP_S_FIRST #x00040100)
(DRAGDROP_S_LAST #x0004010F)
;;
;; MessageId: DRAGDROP_E_NOTREGISTERED
;;
;; MessageText:
;;
;;  Trying to revoke a drop target that has not been registered
;;
(DRAGDROP_E_NOTREGISTERED #x80040100)

;; MessageId: DRAGDROP_E_ALREADYREGISTERED
;;
;; MessageText:
;;
;;  This window has already been registered as a drop target
;;
(DRAGDROP_E_ALREADYREGISTERED #x80040101)

;; MessageId: DRAGDROP_E_INVALIDHWND
;;
;; MessageText:
;;
;;  Invalid window handle
;;
(DRAGDROP_E_INVALIDHWND #x80040102)

(CLASSFACTORY_E_LAST #x8004011F)
(CLASSFACTORY_S_FIRST #x00040110)
(CLASSFACTORY_S_LAST #x0004011F)
;;
;; MessageId: CLASS_E_NOAGGREGATION
;;
;; MessageText:
;;
;;  Class does not support aggregation (or class object is remote)
;;
(CLASS_E_NOAGGREGATION #x80040110)

;; MessageId: CLASS_E_CLASSNOTAVAILABLE
;;
;; MessageText:
;;
;;  ClassFactory cannot supply requested class
;;
(CLASS_E_CLASSNOTAVAILABLE #x80040111)

;; MessageId: CLASS_E_NOTLICENSED
;;
;; MessageText:
;;
;;  Class is not licensed for use
;;
(CLASS_E_NOTLICENSED #x80040112)

(MARSHAL_E_LAST #x8004012F)
(MARSHAL_S_FIRST #x00040120)
(MARSHAL_S_LAST #x0004012F)
(DATA_E_FIRST #x80040130)
(DATA_E_LAST #x8004013F)
(DATA_S_FIRST #x00040130)
(DATA_S_LAST #x0004013F)
(VIEW_E_FIRST #x80040140)
(VIEW_E_LAST #x8004014F)
(VIEW_S_FIRST #x00040140)
(VIEW_S_LAST #x0004014F)
;;
;; MessageId: VIEW_E_DRAW
;;
;; MessageText:
;;
;;  Error drawing view
;;
(VIEW_E_DRAW #x80040140)

(REGDB_E_LAST #x8004015F)
(REGDB_S_FIRST #x00040150)
(REGDB_S_LAST #x0004015F)
;;
;; MessageId: REGDB_E_READREGDB
;;
;; MessageText:
;;
;;  Could not read key from registry
;;
(REGDB_E_READREGDB #x80040150)

;; MessageId: REGDB_E_WRITEREGDB
;;
;; MessageText:
;;
;;  Could not write key to registry
;;
(REGDB_E_WRITEREGDB #x80040151)

;; MessageId: REGDB_E_KEYMISSING
;;
;; MessageText:
;;
;;  Could not find the key in the registry
;;
(REGDB_E_KEYMISSING #x80040152)

;; MessageId: REGDB_E_INVALIDVALUE
;;
;; MessageText:
;;
;;  Invalid value for registry
;;
(REGDB_E_INVALIDVALUE #x80040153)

;; MessageId: REGDB_E_CLASSNOTREG
;;
;; MessageText:
;;
;;  Class not registered
;;
(REGDB_E_CLASSNOTREG #x80040154)

;; MessageId: REGDB_E_IIDNOTREG
;;
;; MessageText:
;;
;;  Interface not registered
;;
(REGDB_E_IIDNOTREG #x80040155)

(CAT_E_LAST #x80040161)
;;
;; MessageId: CAT_E_CATIDNOEXIST
;;
;; MessageText:
;;
;;  CATID does not exist
;;
(CAT_E_CATIDNOEXIST #x80040160)

;; MessageId: CAT_E_NODESCRIPTION
;;
;; MessageText:
;;
;;  Description not found
;;
(CAT_E_NODESCRIPTION #x80040161)

;;                                ;;
;;     Class Store Error Codes    ;;
;;                                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(CS_E_FIRST #x80040164)
(CS_E_LAST #x8004016F)
;;
;; MessageId: CS_E_PACKAGE_NOTFOUND
;;
;; MessageText:
;;
;;  No package in Class Store meets this criteria
;;
(CS_E_PACKAGE_NOTFOUND #x80040164)

;; MessageId: CS_E_NOT_DELETABLE
;;
;; MessageText:
;;
;;  Deleting this will break referential integrity
;;
(CS_E_NOT_DELETABLE #x80040165)

;; MessageId: CS_E_CLASS_NOTFOUND
;;
;; MessageText:
;;
;;  No such CLSID in Class Store
;;
(CS_E_CLASS_NOTFOUND #x80040166)

;; MessageId: CS_E_INVALID_VERSION
;;
;; MessageText:
;;
;;  The Class Store is corrupted or has a version that is no more supported
;;
(CS_E_INVALID_VERSION #x80040167)

;; MessageId: CS_E_NO_CLASSSTORE
;;
;; MessageText:
;;
;;  No such Class Store
;;
(CS_E_NO_CLASSSTORE #x80040168)

;; MessageId: CS_E_OBJECT_NOTFOUND
;;
;; MessageText:
;;
;;  The Class Store Object is not found.
;;
(CS_E_OBJECT_NOTFOUND #x80040169)

;; MessageId: CS_E_OBJECT_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  The Class Store Object Already Exists.
;;
(CS_E_OBJECT_ALREADY_EXISTS #x8004016A)

;; MessageId: CS_E_INVALID_PATH
;;
;; MessageText:
;;
;;  The Class Store Path is Invalid.
;;
(CS_E_INVALID_PATH #x8004016B)

;; MessageId: CS_E_NETWORK_ERROR
;;
;; MessageText:
;;
;;  A network error was encountered when the operation was performed.
;;
(CS_E_NETWORK_ERROR #x8004016C)

;; MessageId: CS_E_ADMIN_LIMIT_EXCEEDED
;;
;; MessageText:
;;
;;  The Size of this object will exceed the Administration limit on the object.
;;
(CS_E_ADMIN_LIMIT_EXCEEDED #x8004016D)

;; MessageId: CS_E_SCHEMA_MISMATCH
;;
;; MessageText:
;;
;;  The Class Store Schema doesn't match the expected schema.
;;
(CS_E_SCHEMA_MISMATCH #x8004016E)

;; MessageId: CS_E_INTERNAL_ERROR
;;
;; MessageText:
;;
;;  Unexpected Error occured when Class Store tried to perform the operation.
;;
(CS_E_INTERNAL_ERROR #x8004016F)

(CACHE_E_LAST #x8004017F)
(CACHE_S_FIRST #x00040170)
(CACHE_S_LAST #x0004017F)
;;
;; MessageId: CACHE_E_NOCACHE_UPDATED
;;
;; MessageText:
;;
;;  Cache not updated
;;
(CACHE_E_NOCACHE_UPDATED #x80040170)

(OLEOBJ_E_LAST #x8004018F)
(OLEOBJ_S_FIRST #x00040180)
(OLEOBJ_S_LAST #x0004018F)
;;
;; MessageId: OLEOBJ_E_NOVERBS
;;
;; MessageText:
;;
;;  No verbs for OLE object
;;
(OLEOBJ_E_NOVERBS #x80040180)

;; MessageId: OLEOBJ_E_INVALIDVERB
;;
;; MessageText:
;;
;;  Invalid verb for OLE object
;;
(OLEOBJ_E_INVALIDVERB #x80040181)

(CLIENTSITE_E_LAST #x8004019F)
(CLIENTSITE_S_FIRST #x00040190)
(CLIENTSITE_S_LAST #x0004019F)
;;
;; MessageId: INPLACE_E_NOTUNDOABLE
;;
;; MessageText:
;;
;;  Undo is not available
;;
(INPLACE_E_NOTUNDOABLE #x800401A0)

;; MessageId: INPLACE_E_NOTOOLSPACE
;;
;; MessageText:
;;
;;  Space for tools is not available
;;
(INPLACE_E_NOTOOLSPACE #x800401A1)

(INPLACE_E_LAST #x800401AF)
(INPLACE_S_FIRST #x000401A0)
(INPLACE_S_LAST #x000401AF)
(ENUM_E_FIRST #x800401B0)
(ENUM_E_LAST #x800401BF)
(ENUM_S_FIRST #x000401B0)
(ENUM_S_LAST #x000401BF)
(CONVERT10_E_FIRST #x800401C0)
(CONVERT10_E_LAST #x800401CF)
(CONVERT10_S_FIRST #x000401C0)
(CONVERT10_S_LAST #x000401CF)
;;
;; MessageId: CONVERT10_E_OLESTREAM_GET
;;
;; MessageText:
;;
;;  OLESTREAM Get method failed
;;
(CONVERT10_E_OLESTREAM_GET #x800401C0)

;; MessageId: CONVERT10_E_OLESTREAM_PUT
;;
;; MessageText:
;;
;;  OLESTREAM Put method failed
;;
(CONVERT10_E_OLESTREAM_PUT #x800401C1)

;; MessageId: CONVERT10_E_OLESTREAM_FMT
;;
;; MessageText:
;;
;;  Contents of the OLESTREAM not in correct format
;;
(CONVERT10_E_OLESTREAM_FMT #x800401C2)

;; MessageId: CONVERT10_E_OLESTREAM_BITMAP_TO_DIB
;;
;; MessageText:
;;
;;  There was an error in a Windows GDI call while converting the bitmap to a DIB
;;
(CONVERT10_E_OLESTREAM_BITMAP_TO_DIB #x800401C3)

;; MessageId: CONVERT10_E_STG_FMT
;;
;; MessageText:
;;
;;  Contents of the IStorage not in correct format
;;
(CONVERT10_E_STG_FMT #x800401C4)

;; MessageId: CONVERT10_E_STG_NO_STD_STREAM
;;
;; MessageText:
;;
;;  Contents of IStorage is missing one of the standard streams
;;
(CONVERT10_E_STG_NO_STD_STREAM #x800401C5)

;; MessageId: CONVERT10_E_STG_DIB_TO_BITMAP
;;
;; MessageText:
;;
;;  There was an error in a Windows GDI call while converting the DIB to a bitmap.
;;  
;;
(CONVERT10_E_STG_DIB_TO_BITMAP #x800401C6)

(CLIPBRD_E_LAST #x800401DF)
(CLIPBRD_S_FIRST #x000401D0)
(CLIPBRD_S_LAST #x000401DF)
;;
;; MessageId: CLIPBRD_E_CANT_OPEN
;;
;; MessageText:
;;
;;  OpenClipboard Failed
;;
(CLIPBRD_E_CANT_OPEN #x800401D0)

;; MessageId: CLIPBRD_E_CANT_EMPTY
;;
;; MessageText:
;;
;;  EmptyClipboard Failed
;;
(CLIPBRD_E_CANT_EMPTY #x800401D1)

;; MessageId: CLIPBRD_E_CANT_SET
;;
;; MessageText:
;;
;;  SetClipboard Failed
;;
(CLIPBRD_E_CANT_SET #x800401D2)

;; MessageId: CLIPBRD_E_BAD_DATA
;;
;; MessageText:
;;
;;  Data on clipboard is invalid
;;
(CLIPBRD_E_BAD_DATA #x800401D3)

;; MessageId: CLIPBRD_E_CANT_CLOSE
;;
;; MessageText:
;;
;;  CloseClipboard Failed
;;
(CLIPBRD_E_CANT_CLOSE #x800401D4)

(MK_E_LAST #x800401EF)
(MK_S_FIRST #x000401E0)
(MK_S_LAST #x000401EF)
;;
;; MessageId: MK_E_CONNECTMANUALLY
;;
;; MessageText:
;;
;;  Moniker needs to be connected manually
;;
(MK_E_CONNECTMANUALLY #x800401E0)

;; MessageId: MK_E_EXCEEDEDDEADLINE
;;
;; MessageText:
;;
;;  Operation exceeded deadline
;;
(MK_E_EXCEEDEDDEADLINE #x800401E1)

;; MessageId: MK_E_NEEDGENERIC
;;
;; MessageText:
;;
;;  Moniker needs to be generic
;;
(MK_E_NEEDGENERIC #x800401E2)

;; MessageId: MK_E_UNAVAILABLE
;;
;; MessageText:
;;
;;  Operation unavailable
;;
(MK_E_UNAVAILABLE #x800401E3)

;; MessageId: MK_E_SYNTAX
;;
;; MessageText:
;;
;;  Invalid syntax
;;
(MK_E_SYNTAX #x800401E4)

;; MessageId: MK_E_NOOBJECT
;;
;; MessageText:
;;
;;  No object for moniker
;;
(MK_E_NOOBJECT #x800401E5)

;; MessageId: MK_E_INVALIDEXTENSION
;;
;; MessageText:
;;
;;  Bad extension for file
;;
(MK_E_INVALIDEXTENSION #x800401E6)

;; MessageId: MK_E_INTERMEDIATEINTERFACENOTSUPPORTED
;;
;; MessageText:
;;
;;  Intermediate operation failed
;;
(MK_E_INTERMEDIATEINTERFACENOTSUPPORTED #x800401E7)

;; MessageId: MK_E_NOTBINDABLE
;;
;; MessageText:
;;
;;  Moniker is not bindable
;;
(MK_E_NOTBINDABLE #x800401E8)

;; MessageId: MK_E_NOTBOUND
;;
;; MessageText:
;;
;;  Moniker is not bound
;;
(MK_E_NOTBOUND #x800401E9)

;; MessageId: MK_E_CANTOPENFILE
;;
;; MessageText:
;;
;;  Moniker cannot open file
;;
(MK_E_CANTOPENFILE #x800401EA)

;; MessageId: MK_E_MUSTBOTHERUSER
;;
;; MessageText:
;;
;;  User input required for operation to succeed
;;
(MK_E_MUSTBOTHERUSER #x800401EB)

;; MessageId: MK_E_NOINVERSE
;;
;; MessageText:
;;
;;  Moniker class has no inverse
;;
(MK_E_NOINVERSE #x800401EC)

;; MessageId: MK_E_NOSTORAGE
;;
;; MessageText:
;;
;;  Moniker does not refer to storage
;;
(MK_E_NOSTORAGE #x800401ED)

;; MessageId: MK_E_NOPREFIX
;;
;; MessageText:
;;
;;  No common prefix
;;
(MK_E_NOPREFIX #x800401EE)

;; MessageId: MK_E_ENUMERATION_FAILED
;;
;; MessageText:
;;
;;  Moniker could not be enumerated
;;
(MK_E_ENUMERATION_FAILED #x800401EF)

(CO_E_LAST #x800401FF)
(CO_S_FIRST #x000401F0)
(CO_S_LAST #x000401FF)
;;
;; MessageId: CO_E_NOTINITIALIZED
;;
;; MessageText:
;;
;;  CoInitialize has not been called.
;;
(CO_E_NOTINITIALIZED #x800401F0)

;; MessageId: CO_E_ALREADYINITIALIZED
;;
;; MessageText:
;;
;;  CoInitialize has already been called.
;;
(CO_E_ALREADYINITIALIZED #x800401F1)

;; MessageId: CO_E_CANTDETERMINECLASS
;;
;; MessageText:
;;
;;  Class of object cannot be determined
;;
(CO_E_CANTDETERMINECLASS #x800401F2)

;; MessageId: CO_E_CLASSSTRING
;;
;; MessageText:
;;
;;  Invalid class string
;;
(CO_E_CLASSSTRING #x800401F3)

;; MessageId: CO_E_IIDSTRING
;;
;; MessageText:
;;
;;  Invalid interface string
;;
(CO_E_IIDSTRING #x800401F4)

;; MessageId: CO_E_APPNOTFOUND
;;
;; MessageText:
;;
;;  Application not found
;;
(CO_E_APPNOTFOUND #x800401F5)

;; MessageId: CO_E_APPSINGLEUSE
;;
;; MessageText:
;;
;;  Application cannot be run more than once
;;
(CO_E_APPSINGLEUSE #x800401F6)

;; MessageId: CO_E_ERRORINAPP
;;
;; MessageText:
;;
;;  Some error in application program
;;
(CO_E_ERRORINAPP #x800401F7)

;; MessageId: CO_E_DLLNOTFOUND
;;
;; MessageText:
;;
;;  DLL for class not found
;;
(CO_E_DLLNOTFOUND #x800401F8)

;; MessageId: CO_E_ERRORINDLL
;;
;; MessageText:
;;
;;  Error in the DLL
;;
(CO_E_ERRORINDLL #x800401F9)

;; MessageId: CO_E_WRONGOSFORAPP
;;
;; MessageText:
;;
;;  Wrong OS or OS version for application
;;
(CO_E_WRONGOSFORAPP #x800401FA)

;; MessageId: CO_E_OBJNOTREG
;;
;; MessageText:
;;
;;  Object is not registered
;;
(CO_E_OBJNOTREG #x800401FB)

;; MessageId: CO_E_OBJISREG
;;
;; MessageText:
;;
;;  Object is already registered
;;
(CO_E_OBJISREG #x800401FC)

;; MessageId: CO_E_OBJNOTCONNECTED
;;
;; MessageText:
;;
;;  Object is not connected to server
;;
(CO_E_OBJNOTCONNECTED #x800401FD)

;; MessageId: CO_E_APPDIDNTREG
;;
;; MessageText:
;;
;;  Application was launched but it didn't register a class factory
;;
(CO_E_APPDIDNTREG #x800401FE)

;; MessageId: CO_E_RELEASED
;;
;; MessageText:
;;
;;  Object has been released
;;
(CO_E_RELEASED #x800401FF)

;; Old OLE Success Codes
;;
;;
;; MessageId: OLE_S_USEREG
;;
;; MessageText:
;;
;;  Use the registry database to provide the requested information
;;
(OLE_S_USEREG #x00040000)

;; MessageId: OLE_S_STATIC
;;
;; MessageText:
;;
;;  Success, but static
;;
(OLE_S_STATIC #x00040001)

;; MessageId: OLE_S_MAC_CLIPFORMAT
;;
;; MessageText:
;;
;;  Macintosh clipboard format
;;
(OLE_S_MAC_CLIPFORMAT #x00040002)

;; MessageId: DRAGDROP_S_DROP
;;
;; MessageText:
;;
;;  Successful drop took place
;;
(DRAGDROP_S_DROP #x00040100)

;; MessageId: DRAGDROP_S_CANCEL
;;
;; MessageText:
;;
;;  Drag-drop operation canceled
;;
(DRAGDROP_S_CANCEL #x00040101)

;; MessageId: DRAGDROP_S_USEDEFAULTCURSORS
;;
;; MessageText:
;;
;;  Use the default cursor
;;
(DRAGDROP_S_USEDEFAULTCURSORS #x00040102)

;; MessageId: DATA_S_SAMEFORMATETC
;;
;; MessageText:
;;
;;  Data has same FORMATETC
;;
(DATA_S_SAMEFORMATETC #x00040130)

;; MessageId: VIEW_S_ALREADY_FROZEN
;;
;; MessageText:
;;
;;  View is already frozen
;;
(VIEW_S_ALREADY_FROZEN #x00040140)

;; MessageId: CACHE_S_FORMATETC_NOTSUPPORTED
;;
;; MessageText:
;;
;;  FORMATETC not supported
;;
(CACHE_S_FORMATETC_NOTSUPPORTED #x00040170)

;; MessageId: CACHE_S_SAMECACHE
;;
;; MessageText:
;;
;;  Same cache
;;
(CACHE_S_SAMECACHE #x00040171)

;; MessageId: CACHE_S_SOMECACHES_NOTUPDATED
;;
;; MessageText:
;;
;;  Some cache(s) not updated
;;
(CACHE_S_SOMECACHES_NOTUPDATED #x00040172)

;; MessageId: OLEOBJ_S_INVALIDVERB
;;
;; MessageText:
;;
;;  Invalid verb for OLE object
;;
(OLEOBJ_S_INVALIDVERB #x00040180)

;; MessageId: OLEOBJ_S_CANNOT_DOVERB_NOW
;;
;; MessageText:
;;
;;  Verb number is valid but verb cannot be done now
;;
(OLEOBJ_S_CANNOT_DOVERB_NOW #x00040181)

;; MessageId: OLEOBJ_S_INVALIDHWND
;;
;; MessageText:
;;
;;  Invalid window handle passed
;;
(OLEOBJ_S_INVALIDHWND #x00040182)

;; MessageId: INPLACE_S_TRUNCATED
;;
;; MessageText:
;;
;;  Message is too long; some of it had to be truncated before displaying
;;
(INPLACE_S_TRUNCATED #x000401A0)

;; MessageId: CONVERT10_S_NO_PRESENTATION
;;
;; MessageText:
;;
;;  Unable to convert OLESTREAM to IStorage
;;
(CONVERT10_S_NO_PRESENTATION #x000401C0)

;; MessageId: MK_S_REDUCED_TO_SELF
;;
;; MessageText:
;;
;;  Moniker reduced to itself
;;
(MK_S_REDUCED_TO_SELF #x000401E2)

;; MessageId: MK_S_ME
;;
;; MessageText:
;;
;;  Common prefix is this moniker
;;
(MK_S_ME #x000401E4)

;; MessageId: MK_S_HIM
;;
;; MessageText:
;;
;;  Common prefix is input moniker
;;
(MK_S_HIM #x000401E5)

;; MessageId: MK_S_US
;;
;; MessageText:
;;
;;  Common prefix is both monikers
;;
(MK_S_US #x000401E6)

;; MessageId: MK_S_MONIKERALREADYREGISTERED
;;
;; MessageText:
;;
;;  Moniker is already registered in running object table
;;
(MK_S_MONIKERALREADYREGISTERED #x000401E7)

;; FACILITY_WINDOWS
;; ******************
;;
;; Codes 0x0-0x01ff are reserved for the OLE group of
;; interfaces.
;;
;;
;; MessageId: CO_E_CLASS_CREATE_FAILED
;;
;; MessageText:
;;
;;  Attempt to create a class object failed
;;
(CO_E_CLASS_CREATE_FAILED #x80080001)

;; MessageId: CO_E_SCM_ERROR
;;
;; MessageText:
;;
;;  OLE service could not bind object
;;
(CO_E_SCM_ERROR #x80080002)

;; MessageId: CO_E_SCM_RPC_FAILURE
;;
;; MessageText:
;;
;;  RPC communication failed with OLE service
;;
(CO_E_SCM_RPC_FAILURE #x80080003)

;; MessageId: CO_E_BAD_PATH
;;
;; MessageText:
;;
;;  Bad path to object
;;
(CO_E_BAD_PATH #x80080004)

;; MessageId: CO_E_SERVER_EXEC_FAILURE
;;
;; MessageText:
;;
;;  Server execution failed
;;
(CO_E_SERVER_EXEC_FAILURE #x80080005)

;; MessageId: CO_E_OBJSRV_RPC_FAILURE
;;
;; MessageText:
;;
;;  OLE service could not communicate with the object server
;;
(CO_E_OBJSRV_RPC_FAILURE #x80080006)

;; MessageId: MK_E_NO_NORMALIZED
;;
;; MessageText:
;;
;;  Moniker path could not be normalized
;;
(MK_E_NO_NORMALIZED #x80080007)

;; MessageId: CO_E_SERVER_STOPPING
;;
;; MessageText:
;;
;;  Object server is stopping when OLE service contacts it
;;
(CO_E_SERVER_STOPPING #x80080008)

;; MessageId: MEM_E_INVALID_ROOT
;;
;; MessageText:
;;
;;  An invalid root block pointer was specified
;;
(MEM_E_INVALID_ROOT #x80080009)

;; MessageId: MEM_E_INVALID_LINK
;;
;; MessageText:
;;
;;  An allocation chain contained an invalid link pointer
;;
(MEM_E_INVALID_LINK #x80080010)

;; MessageId: MEM_E_INVALID_SIZE
;;
;; MessageText:
;;
;;  The requested allocation size was too large
;;
(MEM_E_INVALID_SIZE #x80080011)

;; MessageId: CO_S_NOTALLINTERFACES
;;
;; MessageText:
;;
;;  Not all the requested interfaces were available
;;
(CO_S_NOTALLINTERFACES #x00080012)

;; FACILITY_DISPATCH
;; ******************
;;
;; MessageId: DISP_E_UNKNOWNINTERFACE
;;
;; MessageText:
;;
;;  Unknown interface.
;;
(DISP_E_UNKNOWNINTERFACE #x80020001)

;; MessageId: DISP_E_MEMBERNOTFOUND
;;
;; MessageText:
;;
;;  Member not found.
;;
(DISP_E_MEMBERNOTFOUND #x80020003)

;; MessageId: DISP_E_PARAMNOTFOUND
;;
;; MessageText:
;;
;;  Parameter not found.
;;
(DISP_E_PARAMNOTFOUND #x80020004)

;; MessageId: DISP_E_TYPEMISMATCH
;;
;; MessageText:
;;
;;  Type mismatch.
;;
(DISP_E_TYPEMISMATCH #x80020005)

;; MessageId: DISP_E_UNKNOWNNAME
;;
;; MessageText:
;;
;;  Unknown name.
;;
(DISP_E_UNKNOWNNAME #x80020006)

;; MessageId: DISP_E_NONAMEDARGS
;;
;; MessageText:
;;
;;  No named arguments.
;;
(DISP_E_NONAMEDARGS #x80020007)

;; MessageId: DISP_E_BADVARTYPE
;;
;; MessageText:
;;
;;  Bad variable type.
;;
(DISP_E_BADVARTYPE #x80020008)

;; MessageId: DISP_E_EXCEPTION
;;
;; MessageText:
;;
;;  Exception occurred.
;;
(DISP_E_EXCEPTION #x80020009)

;; MessageId: DISP_E_OVERFLOW
;;
;; MessageText:
;;
;;  Out of present range.
;;
(DISP_E_OVERFLOW #x8002000A)

;; MessageId: DISP_E_BADINDEX
;;
;; MessageText:
;;
;;  Invalid index.
;;
(DISP_E_BADINDEX #x8002000B)

;; MessageId: DISP_E_UNKNOWNLCID
;;
;; MessageText:
;;
;;  Unknown language.
;;
(DISP_E_UNKNOWNLCID #x8002000C)

;; MessageId: DISP_E_ARRAYISLOCKED
;;
;; MessageText:
;;
;;  Memory is locked.
;;
(DISP_E_ARRAYISLOCKED #x8002000D)

;; MessageId: DISP_E_BADPARAMCOUNT
;;
;; MessageText:
;;
;;  Invalid number of parameters.
;;
(DISP_E_BADPARAMCOUNT #x8002000E)

;; MessageId: DISP_E_PARAMNOTOPTIONAL
;;
;; MessageText:
;;
;;  Parameter not optional.
;;
(DISP_E_PARAMNOTOPTIONAL #x8002000F)

;; MessageId: DISP_E_BADCALLEE
;;
;; MessageText:
;;
;;  Invalid callee.
;;
(DISP_E_BADCALLEE #x80020010)

;; MessageId: DISP_E_NOTACOLLECTION
;;
;; MessageText:
;;
;;  Does not support a collection.
;;
(DISP_E_NOTACOLLECTION #x80020011)

;; MessageId: DISP_E_DIVBYZERO
;;
;; MessageText:
;;
;;  Division by zero.
;;
(DISP_E_DIVBYZERO #x80020012)

;; MessageId: DISP_E_BUFFERTOOSMALL
;;
;; MessageText:
;;
;;  Buffer too small
;;
(DISP_E_BUFFERTOOSMALL #x80020013)

;; MessageId: TYPE_E_BUFFERTOOSMALL
;;
;; MessageText:
;;
;;  Buffer too small.
;;
(TYPE_E_BUFFERTOOSMALL #x80028016)

;; MessageId: TYPE_E_FIELDNOTFOUND
;;
;; MessageText:
;;
;;  Field name not defined in the record.
;;
(TYPE_E_FIELDNOTFOUND #x80028017)

;; MessageId: TYPE_E_INVDATAREAD
;;
;; MessageText:
;;
;;  Old format or invalid type library.
;;
(TYPE_E_INVDATAREAD #x80028018)

;; MessageId: TYPE_E_UNSUPFORMAT
;;
;; MessageText:
;;
;;  Old format or invalid type library.
;;
(TYPE_E_UNSUPFORMAT #x80028019)

;; MessageId: TYPE_E_REGISTRYACCESS
;;
;; MessageText:
;;
;;  Error accessing the OLE registry.
;;
(TYPE_E_REGISTRYACCESS #x8002801C)

;; MessageId: TYPE_E_LIBNOTREGISTERED
;;
;; MessageText:
;;
;;  Library not registered.
;;
(TYPE_E_LIBNOTREGISTERED #x8002801D)

;; MessageId: TYPE_E_UNDEFINEDTYPE
;;
;; MessageText:
;;
;;  Bound to unknown type.
;;
(TYPE_E_UNDEFINEDTYPE #x80028027)

;; MessageId: TYPE_E_QUALIFIEDNAMEDISALLOWED
;;
;; MessageText:
;;
;;  Qualified name disallowed.
;;
(TYPE_E_QUALIFIEDNAMEDISALLOWED #x80028028)

;; MessageId: TYPE_E_INVALIDSTATE
;;
;; MessageText:
;;
;;  Invalid forward reference, or reference to uncompiled type.
;;
(TYPE_E_INVALIDSTATE #x80028029)

;; MessageId: TYPE_E_WRONGTYPEKIND
;;
;; MessageText:
;;
;;  Type mismatch.
;;
(TYPE_E_WRONGTYPEKIND #x8002802A)

;; MessageId: TYPE_E_ELEMENTNOTFOUND
;;
;; MessageText:
;;
;;  Element not found.
;;
(TYPE_E_ELEMENTNOTFOUND #x8002802B)

;; MessageId: TYPE_E_AMBIGUOUSNAME
;;
;; MessageText:
;;
;;  Ambiguous name.
;;
(TYPE_E_AMBIGUOUSNAME #x8002802C)

;; MessageId: TYPE_E_NAMECONFLICT
;;
;; MessageText:
;;
;;  Name already exists in the library.
;;
(TYPE_E_NAMECONFLICT #x8002802D)

;; MessageId: TYPE_E_UNKNOWNLCID
;;
;; MessageText:
;;
;;  Unknown LCID.
;;
(TYPE_E_UNKNOWNLCID #x8002802E)

;; MessageId: TYPE_E_DLLFUNCTIONNOTFOUND
;;
;; MessageText:
;;
;;  Function not defined in specified DLL.
;;
(TYPE_E_DLLFUNCTIONNOTFOUND #x8002802F)

;; MessageId: TYPE_E_BADMODULEKIND
;;
;; MessageText:
;;
;;  Wrong module kind for the operation.
;;
(TYPE_E_BADMODULEKIND #x800288BD)

;; MessageId: TYPE_E_SIZETOOBIG
;;
;; MessageText:
;;
;;  Size may not exceed 64K.
;;
(TYPE_E_SIZETOOBIG #x800288C5)

;; MessageId: TYPE_E_DUPLICATEID
;;
;; MessageText:
;;
;;  Duplicate ID in inheritance hierarchy.
;;
(TYPE_E_DUPLICATEID #x800288C6)

;; MessageId: TYPE_E_INVALIDID
;;
;; MessageText:
;;
;;  Incorrect inheritance depth in standard OLE hmember.
;;
(TYPE_E_INVALIDID #x800288CF)

;; MessageId: TYPE_E_TYPEMISMATCH
;;
;; MessageText:
;;
;;  Type mismatch.
;;
(TYPE_E_TYPEMISMATCH #x80028CA0)

;; MessageId: TYPE_E_OUTOFBOUNDS
;;
;; MessageText:
;;
;;  Invalid number of arguments.
;;
(TYPE_E_OUTOFBOUNDS #x80028CA1)

;; MessageId: TYPE_E_IOERROR
;;
;; MessageText:
;;
;;  I/O Error.
;;
(TYPE_E_IOERROR #x80028CA2)

;; MessageId: TYPE_E_CANTCREATETMPFILE
;;
;; MessageText:
;;
;;  Error creating unique tmp file.
;;
(TYPE_E_CANTCREATETMPFILE #x80028CA3)

;; MessageId: TYPE_E_CANTLOADLIBRARY
;;
;; MessageText:
;;
;;  Error loading type library/DLL.
;;
(TYPE_E_CANTLOADLIBRARY #x80029C4A)

;; MessageId: TYPE_E_INCONSISTENTPROPFUNCS
;;
;; MessageText:
;;
;;  Inconsistent property functions.
;;
(TYPE_E_INCONSISTENTPROPFUNCS #x80029C83)

;; MessageId: TYPE_E_CIRCULARTYPE
;;
;; MessageText:
;;
;;  Circular dependency between types/modules.
;;
(TYPE_E_CIRCULARTYPE #x80029C84)

;; FACILITY_STORAGE
;; ******************
;;
;; MessageId: STG_E_INVALIDFUNCTION
;;
;; MessageText:
;;
;;  Unable to perform requested operation.
;;
(STG_E_INVALIDFUNCTION #x80030001)

;; MessageId: STG_E_FILENOTFOUND
;;
;; MessageText:
;;
;;  %1 could not be found.
;;
(STG_E_FILENOTFOUND #x80030002)

;; MessageId: STG_E_PATHNOTFOUND
;;
;; MessageText:
;;
;;  The path %1 could not be found.
;;
(STG_E_PATHNOTFOUND #x80030003)

;; MessageId: STG_E_TOOMANYOPENFILES
;;
;; MessageText:
;;
;;  There are insufficient resources to open another file.
;;
(STG_E_TOOMANYOPENFILES #x80030004)

;; MessageId: STG_E_ACCESSDENIED
;;
;; MessageText:
;;
;;  Access Denied.
;;
(STG_E_ACCESSDENIED #x80030005)

;; MessageId: STG_E_INVALIDHANDLE
;;
;; MessageText:
;;
;;  Attempted an operation on an invalid object.
;;
(STG_E_INVALIDHANDLE #x80030006)

;; MessageId: STG_E_INSUFFICIENTMEMORY
;;
;; MessageText:
;;
;;  There is insufficient memory available to complete operation.
;;
(STG_E_INSUFFICIENTMEMORY #x80030008)

;; MessageId: STG_E_INVALIDPOINTER
;;
;; MessageText:
;;
;;  Invalid pointer error.
;;
(STG_E_INVALIDPOINTER #x80030009)

;; MessageId: STG_E_NOMOREFILES
;;
;; MessageText:
;;
;;  There are no more entries to return.
;;
(STG_E_NOMOREFILES #x80030012)

;; MessageId: STG_E_DISKISWRITEPROTECTED
;;
;; MessageText:
;;
;;  Disk is write-protected.
;;
(STG_E_DISKISWRITEPROTECTED #x80030013)

;; MessageId: STG_E_SEEKERROR
;;
;; MessageText:
;;
;;  An error occurred during a seek operation.
;;
(STG_E_SEEKERROR #x80030019)

;; MessageId: STG_E_WRITEFAULT
;;
;; MessageText:
;;
;;  A disk error occurred during a write operation.
;;
(STG_E_WRITEFAULT #x8003001D)

;; MessageId: STG_E_READFAULT
;;
;; MessageText:
;;
;;  A disk error occurred during a read operation.
;;
(STG_E_READFAULT #x8003001E)

;; MessageId: STG_E_SHAREVIOLATION
;;
;; MessageText:
;;
;;  A share violation has occurred.
;;
(STG_E_SHAREVIOLATION #x80030020)

;; MessageId: STG_E_LOCKVIOLATION
;;
;; MessageText:
;;
;;  A lock violation has occurred.
;;
(STG_E_LOCKVIOLATION #x80030021)

;; MessageId: STG_E_FILEALREADYEXISTS
;;
;; MessageText:
;;
;;  %1 already exists.
;;
(STG_E_FILEALREADYEXISTS #x80030050)

;; MessageId: STG_E_INVALIDPARAMETER
;;
;; MessageText:
;;
;;  Invalid parameter error.
;;
(STG_E_INVALIDPARAMETER #x80030057)

;; MessageId: STG_E_MEDIUMFULL
;;
;; MessageText:
;;
;;  There is insufficient disk space to complete operation.
;;
(STG_E_MEDIUMFULL #x80030070)

;; MessageId: STG_E_PROPSETMISMATCHED
;;
;; MessageText:
;;
;;  Illegal write of non-simple property to simple property set.
;;
(STG_E_PROPSETMISMATCHED #x800300F0)

;; MessageId: STG_E_ABNORMALAPIEXIT
;;
;; MessageText:
;;
;;  An API call exited abnormally.
;;
(STG_E_ABNORMALAPIEXIT #x800300FA)

;; MessageId: STG_E_INVALIDHEADER
;;
;; MessageText:
;;
;;  The file %1 is not a valid compound file.
;;
(STG_E_INVALIDHEADER #x800300FB)

;; MessageId: STG_E_INVALIDNAME
;;
;; MessageText:
;;
;;  The name %1 is not valid.
;;
(STG_E_INVALIDNAME #x800300FC)

;; MessageId: STG_E_UNKNOWN
;;
;; MessageText:
;;
;;  An unexpected error occurred.
;;
(STG_E_UNKNOWN #x800300FD)

;; MessageId: STG_E_UNIMPLEMENTEDFUNCTION
;;
;; MessageText:
;;
;;  That function is not implemented.
;;
(STG_E_UNIMPLEMENTEDFUNCTION #x800300FE)

;; MessageId: STG_E_INVALIDFLAG
;;
;; MessageText:
;;
;;  Invalid flag error.
;;
(STG_E_INVALIDFLAG #x800300FF)

;; MessageId: STG_E_INUSE
;;
;; MessageText:
;;
;;  Attempted to use an object that is busy.
;;
(STG_E_INUSE #x80030100)

;; MessageId: STG_E_NOTCURRENT
;;
;; MessageText:
;;
;;  The storage has been changed since the last commit.
;;
(STG_E_NOTCURRENT #x80030101)

;; MessageId: STG_E_REVERTED
;;
;; MessageText:
;;
;;  Attempted to use an object that has ceased to exist.
;;
(STG_E_REVERTED #x80030102)

;; MessageId: STG_E_CANTSAVE
;;
;; MessageText:
;;
;;  Can't save.
;;
(STG_E_CANTSAVE #x80030103)

;; MessageId: STG_E_OLDFORMAT
;;
;; MessageText:
;;
;;  The compound file %1 was produced with an incompatible version of storage.
;;
(STG_E_OLDFORMAT #x80030104)

;; MessageId: STG_E_OLDDLL
;;
;; MessageText:
;;
;;  The compound file %1 was produced with a newer version of storage.
;;
(STG_E_OLDDLL #x80030105)

;; MessageId: STG_E_SHAREREQUIRED
;;
;; MessageText:
;;
;;  Share.exe or equivalent is required for operation.
;;
(STG_E_SHAREREQUIRED #x80030106)

;; MessageId: STG_E_NOTFILEBASEDSTORAGE
;;
;; MessageText:
;;
;;  Illegal operation called on non-file based storage.
;;
(STG_E_NOTFILEBASEDSTORAGE #x80030107)

;; MessageId: STG_E_EXTANTMARSHALLINGS
;;
;; MessageText:
;;
;;  Illegal operation called on object with extant marshallings.
;;
(STG_E_EXTANTMARSHALLINGS #x80030108)

;; MessageId: STG_E_DOCFILECORRUPT
;;
;; MessageText:
;;
;;  The docfile has been corrupted.
;;
(STG_E_DOCFILECORRUPT #x80030109)

;; MessageId: STG_E_BADBASEADDRESS
;;
;; MessageText:
;;
;;  OLE32.DLL has been loaded at the wrong address.
;;
(STG_E_BADBASEADDRESS #x80030110)

;; MessageId: STG_E_DOCFILETOOLARGE
;;
;; MessageText:
;;
;;  The compound file is too large for the current implementation
;;
(STG_E_DOCFILETOOLARGE #x80030111)

;; MessageId: STG_E_NOTSIMPLEFORMAT
;;
;; MessageText:
;;
;;  The compound file was not created with the STGM_SIMPLE flag
;;
(STG_E_NOTSIMPLEFORMAT #x80030112)

;; MessageId: STG_E_INCOMPLETE
;;
;; MessageText:
;;
;;  The file download was aborted abnormally.  The file is incomplete.
;;
(STG_E_INCOMPLETE #x80030201)

;; MessageId: STG_E_TERMINATED
;;
;; MessageText:
;;
;;  The file download has been terminated.
;;
(STG_E_TERMINATED #x80030202)

;; MessageId: STG_S_CONVERTED
;;
;; MessageText:
;;
;;  The underlying file was converted to compound file format.
;;
(STG_S_CONVERTED #x00030200)

;; MessageId: STG_S_BLOCK
;;
;; MessageText:
;;
;;  The storage operation should block until more data is available.
;;
(STG_S_BLOCK #x00030201)

;; MessageId: STG_S_RETRYNOW
;;
;; MessageText:
;;
;;  The storage operation should retry immediately.
;;
(STG_S_RETRYNOW #x00030202)

;; MessageId: STG_S_MONITORING
;;
;; MessageText:
;;
;;  The notified event sink will not influence the storage operation.
;;
(STG_S_MONITORING #x00030203)

;; MessageId: STG_S_MULTIPLEOPENS
;;
;; MessageText:
;;
;;  Multiple opens prevent consolidated. (commit succeeded).
;;
(STG_S_MULTIPLEOPENS #x00030204)

;; MessageId: STG_S_CONSOLIDATIONFAILED
;;
;; MessageText:
;;
;;  Consolidation of the storage file failed. (commit succeeded).
;;
(STG_S_CONSOLIDATIONFAILED #x00030205)

;; MessageId: STG_S_CANNOTCONSOLIDATE
;;
;; MessageText:
;;
;;  Consolidation of the storage file is inappropriate. (commit succeeded).
;;
(STG_S_CANNOTCONSOLIDATE #x00030206)

;; FACILITY_RPC
;; ******************
;;
;; Codes 0x0-0x11 are propagated from 16 bit OLE.
;;
;;
;; MessageId: RPC_E_CALL_REJECTED
;;
;; MessageText:
;;
;;  Call was rejected by callee.
;;
(RPC_E_CALL_REJECTED #x80010001)

;; MessageId: RPC_E_CALL_CANCELED
;;
;; MessageText:
;;
;;  Call was canceled by the message filter.
;;
(RPC_E_CALL_CANCELED #x80010002)

;; MessageId: RPC_E_CANTPOST_INSENDCALL
;;
;; MessageText:
;;
;;  The caller is dispatching an intertask SendMessage call and
;;  cannot call out via PostMessage.
;;
(RPC_E_CANTPOST_INSENDCALL #x80010003)

;; MessageId: RPC_E_CANTCALLOUT_INASYNCCALL
;;
;; MessageText:
;;
;;  The caller is dispatching an asynchronous call and cannot
;;  make an outgoing call on behalf of this call.
;;
(RPC_E_CANTCALLOUT_INASYNCCALL #x80010004)

;; MessageId: RPC_E_CANTCALLOUT_INEXTERNALCALL
;;
;; MessageText:
;;
;;  It is illegal to call out while inside message filter.
;;
(RPC_E_CANTCALLOUT_INEXTERNALCALL #x80010005)

;; MessageId: RPC_E_CONNECTION_TERMINATED
;;
;; MessageText:
;;
;;  The connection terminated or is in a bogus state
;;  and cannot be used any more. Other connections
;;  are still valid.
;;
(RPC_E_CONNECTION_TERMINATED #x80010006)

;; MessageId: RPC_E_SERVER_DIED
;;
;; MessageText:
;;
;;  The callee (server [not server application]) is not available
;;  and disappeared; all connections are invalid.  The call may
;;  have executed.
;;
(RPC_E_SERVER_DIED #x80010007)

;; MessageId: RPC_E_CLIENT_DIED
;;
;; MessageText:
;;
;;  The caller (client) disappeared while the callee (server) was
;;  processing a call.
;;
(RPC_E_CLIENT_DIED #x80010008)

;; MessageId: RPC_E_INVALID_DATAPACKET
;;
;; MessageText:
;;
;;  The data packet with the marshalled parameter data is incorrect.
;;
(RPC_E_INVALID_DATAPACKET #x80010009)

;; MessageId: RPC_E_CANTTRANSMIT_CALL
;;
;; MessageText:
;;
;;  The call was not transmitted properly; the message queue
;;  was full and was not emptied after yielding.
;;
(RPC_E_CANTTRANSMIT_CALL #x8001000A)

;; MessageId: RPC_E_CLIENT_CANTMARSHAL_DATA
;;
;; MessageText:
;;
;;  The client (caller) cannot marshall the parameter data - low memory, etc.
;;
(RPC_E_CLIENT_CANTMARSHAL_DATA #x8001000B)

;; MessageId: RPC_E_CLIENT_CANTUNMARSHAL_DATA
;;
;; MessageText:
;;
;;  The client (caller) cannot unmarshall the return data - low memory, etc.
;;
(RPC_E_CLIENT_CANTUNMARSHAL_DATA #x8001000C)

;; MessageId: RPC_E_SERVER_CANTMARSHAL_DATA
;;
;; MessageText:
;;
;;  The server (callee) cannot marshall the return data - low memory, etc.
;;
(RPC_E_SERVER_CANTMARSHAL_DATA #x8001000D)

;; MessageId: RPC_E_SERVER_CANTUNMARSHAL_DATA
;;
;; MessageText:
;;
;;  The server (callee) cannot unmarshall the parameter data - low memory, etc.
;;
(RPC_E_SERVER_CANTUNMARSHAL_DATA #x8001000E)

;; MessageId: RPC_E_INVALID_DATA
;;
;; MessageText:
;;
;;  Received data is invalid; could be server or client data.
;;
(RPC_E_INVALID_DATA #x8001000F)

;; MessageId: RPC_E_INVALID_PARAMETER
;;
;; MessageText:
;;
;;  A particular parameter is invalid and cannot be (un)marshalled.
;;
(RPC_E_INVALID_PARAMETER #x80010010)

;; MessageId: RPC_E_CANTCALLOUT_AGAIN
;;
;; MessageText:
;;
;;  There is no second outgoing call on same channel in DDE conversation.
;;
(RPC_E_CANTCALLOUT_AGAIN #x80010011)

;; MessageId: RPC_E_SERVER_DIED_DNE
;;
;; MessageText:
;;
;;  The callee (server [not server application]) is not available
;;  and disappeared; all connections are invalid.  The call did not execute.
;;
(RPC_E_SERVER_DIED_DNE #x80010012)

;; MessageId: RPC_E_SYS_CALL_FAILED
;;
;; MessageText:
;;
;;  System call failed.
;;
(RPC_E_SYS_CALL_FAILED #x80010100)

;; MessageId: RPC_E_OUT_OF_RESOURCES
;;
;; MessageText:
;;
;;  Could not allocate some required resource (memory, events, ...)
;;
(RPC_E_OUT_OF_RESOURCES #x80010101)

;; MessageId: RPC_E_ATTEMPTED_MULTITHREAD
;;
;; MessageText:
;;
;;  Attempted to make calls on more than one thread in single threaded mode.
;;
(RPC_E_ATTEMPTED_MULTITHREAD #x80010102)

;; MessageId: RPC_E_NOT_REGISTERED
;;
;; MessageText:
;;
;;  The requested interface is not registered on the server object.
;;
(RPC_E_NOT_REGISTERED #x80010103)

;; MessageId: RPC_E_FAULT
;;
;; MessageText:
;;
;;  RPC could not call the server or could not return the results of calling the server.
;;
(RPC_E_FAULT #x80010104)

;; MessageId: RPC_E_SERVERFAULT
;;
;; MessageText:
;;
;;  The server threw an exception.
;;
(RPC_E_SERVERFAULT #x80010105)

;; MessageId: RPC_E_CHANGED_MODE
;;
;; MessageText:
;;
;;  Cannot change thread mode after it is set.
;;
(RPC_E_CHANGED_MODE #x80010106)

;; MessageId: RPC_E_INVALIDMETHOD
;;
;; MessageText:
;;
;;  The method called does not exist on the server.
;;
(RPC_E_INVALIDMETHOD #x80010107)

;; MessageId: RPC_E_DISCONNECTED
;;
;; MessageText:
;;
;;  The object invoked has disconnected from its clients.
;;
(RPC_E_DISCONNECTED #x80010108)

;; MessageId: RPC_E_RETRY
;;
;; MessageText:
;;
;;  The object invoked chose not to process the call now.  Try again later.
;;
(RPC_E_RETRY #x80010109)

;; MessageId: RPC_E_SERVERCALL_RETRYLATER
;;
;; MessageText:
;;
;;  The message filter indicated that the application is busy.
;;
(RPC_E_SERVERCALL_RETRYLATER #x8001010A)

;; MessageId: RPC_E_SERVERCALL_REJECTED
;;
;; MessageText:
;;
;;  The message filter rejected the call.
;;
(RPC_E_SERVERCALL_REJECTED #x8001010B)

;; MessageId: RPC_E_INVALID_CALLDATA
;;
;; MessageText:
;;
;;  A call control interfaces was called with invalid data.
;;
(RPC_E_INVALID_CALLDATA #x8001010C)

;; MessageId: RPC_E_CANTCALLOUT_ININPUTSYNCCALL
;;
;; MessageText:
;;
;;  An outgoing call cannot be made since the application is dispatching an input-synchronous call.
;;
(RPC_E_CANTCALLOUT_ININPUTSYNCCALL #x8001010D)

;; MessageId: RPC_E_WRONG_THREAD
;;
;; MessageText:
;;
;;  The application called an interface that was marshalled for a different thread.
;;
(RPC_E_WRONG_THREAD #x8001010E)

;; MessageId: RPC_E_THREAD_NOT_INIT
;;
;; MessageText:
;;
;;  CoInitialize has not been called on the current thread.
;;
(RPC_E_THREAD_NOT_INIT #x8001010F)

;; MessageId: RPC_E_VERSION_MISMATCH
;;
;; MessageText:
;;
;;  The version of OLE on the client and server machines does not match.
;;
(RPC_E_VERSION_MISMATCH #x80010110)

;; MessageId: RPC_E_INVALID_HEADER
;;
;; MessageText:
;;
;;  OLE received a packet with an invalid header.
;;
(RPC_E_INVALID_HEADER #x80010111)

;; MessageId: RPC_E_INVALID_EXTENSION
;;
;; MessageText:
;;
;;  OLE received a packet with an invalid extension.
;;
(RPC_E_INVALID_EXTENSION #x80010112)

;; MessageId: RPC_E_INVALID_IPID
;;
;; MessageText:
;;
;;  The requested object or interface does not exist.
;;
(RPC_E_INVALID_IPID #x80010113)

;; MessageId: RPC_E_INVALID_OBJECT
;;
;; MessageText:
;;
;;  The requested object does not exist.
;;
(RPC_E_INVALID_OBJECT #x80010114)

;; MessageId: RPC_S_CALLPENDING
;;
;; MessageText:
;;
;;  OLE has sent a request and is waiting for a reply.
;;
(RPC_S_CALLPENDING #x80010115)

;; MessageId: RPC_S_WAITONTIMER
;;
;; MessageText:
;;
;;  OLE is waiting before retrying a request.
;;
(RPC_S_WAITONTIMER #x80010116)

;; MessageId: RPC_E_CALL_COMPLETE
;;
;; MessageText:
;;
;;  Call context cannot be accessed after call completed.
;;
(RPC_E_CALL_COMPLETE #x80010117)

;; MessageId: RPC_E_UNSECURE_CALL
;;
;; MessageText:
;;
;;  Impersonate on unsecure calls is not supported.
;;
(RPC_E_UNSECURE_CALL #x80010118)

;; MessageId: RPC_E_TOO_LATE
;;
;; MessageText:
;;
;;  Security must be initialized before any interfaces are marshalled or
;;  unmarshalled.  It cannot be changed once initialized.
;;
(RPC_E_TOO_LATE #x80010119)

;; MessageId: RPC_E_NO_GOOD_SECURITY_PACKAGES
;;
;; MessageText:
;;
;;  No security packages are installed on this machine or the user is not logged
;;  on or there are no compatible security packages between the client and server.
;;
(RPC_E_NO_GOOD_SECURITY_PACKAGES #x8001011A)

;; MessageId: RPC_E_ACCESS_DENIED
;;
;; MessageText:
;;
;;  Access is denied.
;;
(RPC_E_ACCESS_DENIED #x8001011B)

;; MessageId: RPC_E_REMOTE_DISABLED
;;
;; MessageText:
;;
;;  Remote calls are not allowed for this process.
;;
(RPC_E_REMOTE_DISABLED #x8001011C)

;; MessageId: RPC_E_INVALID_OBJREF
;;
;; MessageText:
;;
;;  The marshaled interface data packet (OBJREF) has an invalid or unknown format.
;;
(RPC_E_INVALID_OBJREF #x8001011D)

;; MessageId: RPC_E_NO_CONTEXT
;;
;; MessageText:
;;
;;  No context is associated with this call.  This happens for some custom
;;  marshalled calls and on the client side of the call.
;;
(RPC_E_NO_CONTEXT #x8001011E)

;; MessageId: RPC_E_TIMEOUT
;;
;; MessageText:
;;
;;  This operation returned because the timeout period expired.
;;
(RPC_E_TIMEOUT #x8001011F)

;; MessageId: RPC_E_NO_SYNC
;;
;; MessageText:
;;
;;  There are no synchronize objects to wait on.
;;
(RPC_E_NO_SYNC #x80010120)

;; MessageId: RPC_E_FULLSIC_REQUIRED
;;
;; MessageText:
;;
;;  Full subject issuer chain SSL principal name expected from the server.
;;
(RPC_E_FULLSIC_REQUIRED #x80010121)

;; MessageId: RPC_E_INVALID_STD_NAME
;;
;; MessageText:
;;
;;  Principal name is not a valid MSSTD name.
;;
(RPC_E_INVALID_STD_NAME #x80010122)

;; MessageId: CO_E_FAILEDTOIMPERSONATE
;;
;; MessageText:
;;
;;  Unable to impersonate DCOM client
;;
(CO_E_FAILEDTOIMPERSONATE #x80010123)

;; MessageId: CO_E_FAILEDTOGETSECCTX
;;
;; MessageText:
;;
;;  Unable to obtain server's security context
;;
(CO_E_FAILEDTOGETSECCTX #x80010124)

;; MessageId: CO_E_FAILEDTOOPENTHREADTOKEN
;;
;; MessageText:
;;
;;  Unable to open the access token of the current thread
;;
(CO_E_FAILEDTOOPENTHREADTOKEN #x80010125)

;; MessageId: CO_E_FAILEDTOGETTOKENINFO
;;
;; MessageText:
;;
;;  Unable to obtain user info from an access token
;;
(CO_E_FAILEDTOGETTOKENINFO #x80010126)

;; MessageId: CO_E_TRUSTEEDOESNTMATCHCLIENT
;;
;; MessageText:
;;
;;  The client who called IAccessControl::IsAccessPermitted was not the trustee
;;  provided to the method
;;
(CO_E_TRUSTEEDOESNTMATCHCLIENT #x80010127)

;; MessageId: CO_E_FAILEDTOQUERYCLIENTBLANKET
;;
;; MessageText:
;;
;;  Unable to obtain the client's security blanket
;;
(CO_E_FAILEDTOQUERYCLIENTBLANKET #x80010128)

;; MessageId: CO_E_FAILEDTOSETDACL
;;
;; MessageText:
;;
;;  Unable to set a discretionary ACL into a security descriptor
;;
(CO_E_FAILEDTOSETDACL #x80010129)

;; MessageId: CO_E_ACCESSCHECKFAILED
;;
;; MessageText:
;;
;;  The system function, AccessCheck, returned false
;;
(CO_E_ACCESSCHECKFAILED #x8001012A)

;; MessageId: CO_E_NETACCESSAPIFAILED
;;
;; MessageText:
;;
;;  Either NetAccessDel or NetAccessAdd returned an error code.
;;
(CO_E_NETACCESSAPIFAILED #x8001012B)

;; MessageId: CO_E_WRONGTRUSTEENAMESYNTAX
;;
;; MessageText:
;;
;;  One of the trustee strings provided by the user did not conform to the
;;  <Domain>\<Name> syntax and it was not the "*" string
;;
(CO_E_WRONGTRUSTEENAMESYNTAX #x8001012C)

;; MessageId: CO_E_INVALIDSID
;;
;; MessageText:
;;
;;  One of the security identifiers provided by the user was invalid
;;
(CO_E_INVALIDSID #x8001012D)

;; MessageId: CO_E_CONVERSIONFAILED
;;
;; MessageText:
;;
;;  Unable to convert a wide character trustee string to a multibyte trustee string
;;
(CO_E_CONVERSIONFAILED #x8001012E)

;; MessageId: CO_E_NOMATCHINGSIDFOUND
;;
;; MessageText:
;;
;;  Unable to find a security identifier that corresponds to a trustee string
;;  provided by the user
;;
(CO_E_NOMATCHINGSIDFOUND #x8001012F)

;; MessageId: CO_E_LOOKUPACCSIDFAILED
;;
;; MessageText:
;;
;;  The system function, LookupAccountSID, failed
;;
(CO_E_LOOKUPACCSIDFAILED #x80010130)

;; MessageId: CO_E_NOMATCHINGNAMEFOUND
;;
;; MessageText:
;;
;;  Unable to find a trustee name that corresponds to a security identifier
;;  provided by the user
;;
(CO_E_NOMATCHINGNAMEFOUND #x80010131)

;; MessageId: CO_E_LOOKUPACCNAMEFAILED
;;
;; MessageText:
;;
;;  The system function, LookupAccountName, failed
;;
(CO_E_LOOKUPACCNAMEFAILED #x80010132)

;; MessageId: CO_E_SETSERLHNDLFAILED
;;
;; MessageText:
;;
;;  Unable to set or reset a serialization handle
;;
(CO_E_SETSERLHNDLFAILED #x80010133)

;; MessageId: CO_E_FAILEDTOGETWINDIR
;;
;; MessageText:
;;
;;  Unable to obtain the Windows directory
;;
(CO_E_FAILEDTOGETWINDIR #x80010134)

;; MessageId: CO_E_PATHTOOLONG
;;
;; MessageText:
;;
;;  Path too long
;;
(CO_E_PATHTOOLONG #x80010135)

;; MessageId: CO_E_FAILEDTOGENUUID
;;
;; MessageText:
;;
;;  Unable to generate a uuid.
;;
(CO_E_FAILEDTOGENUUID #x80010136)

;; MessageId: CO_E_FAILEDTOCREATEFILE
;;
;; MessageText:
;;
;;  Unable to create file
;;
(CO_E_FAILEDTOCREATEFILE #x80010137)

;; MessageId: CO_E_FAILEDTOCLOSEHANDLE
;;
;; MessageText:
;;
;;  Unable to close a serialization handle or a file handle.
;;
(CO_E_FAILEDTOCLOSEHANDLE #x80010138)

;; MessageId: CO_E_EXCEEDSYSACLLIMIT
;;
;; MessageText:
;;
;;  The number of ACEs in an ACL exceeds the system limit
;;
(CO_E_EXCEEDSYSACLLIMIT #x80010139)

;; MessageId: CO_E_ACESINWRONGORDER
;;
;; MessageText:
;;
;;  Not all the DENY_ACCESS ACEs are arranged in front of the
;;  GRANT_ACCESS ACEs in the stream
;;
(CO_E_ACESINWRONGORDER #x8001013A)

;; MessageId: CO_E_INCOMPATIBLESTREAMVERSION
;;
;; MessageText:
;;
;;  The version of ACL format in the stream is not supported by this implementation
;;  of IAccessControl
;;
(CO_E_INCOMPATIBLESTREAMVERSION #x8001013B)

;; MessageId: CO_E_FAILEDTOOPENPROCESSTOKEN
;;
;; MessageText:
;;
;;  Unable to open the access token of the server process
;;
(CO_E_FAILEDTOOPENPROCESSTOKEN #x8001013C)

;; MessageId: CO_E_DECODEFAILED
;;
;; MessageText:
;;
;;  Unable to decode the ACL in the stream provided by the user
;;
(CO_E_DECODEFAILED #x8001013D)

;; MessageId: CO_E_ACNOTINITIALIZED
;;
;; MessageText:
;;
;;  The COM IAccessControl object is not initialized
;;
(CO_E_ACNOTINITIALIZED #x8001013F)

;; MessageId: RPC_E_UNEXPECTED
;;
;; MessageText:
;;
;;  An internal error occurred.
;;
(RPC_E_UNEXPECTED #x8001FFFF)






;; MessageId: NTE_BAD_UID
;;
;; MessageText:
;;
;;  Bad UID.
;;
(NTE_BAD_UID #x80090001)

;; MessageId: NTE_BAD_HASH
;;
;; MessageText:
;;
;;  Bad Hash.
;;
(NTE_BAD_HASH #x80090002)

;; MessageId: NTE_BAD_KEY
;;
;; MessageText:
;;
;;  Bad Key.
;;
(NTE_BAD_KEY #x80090003)

;; MessageId: NTE_BAD_LEN
;;
;; MessageText:
;;
;;  Bad Length.
;;
(NTE_BAD_LEN #x80090004)

;; MessageId: NTE_BAD_DATA
;;
;; MessageText:
;;
;;  Bad Data.
;;
(NTE_BAD_DATA #x80090005)

;; MessageId: NTE_BAD_SIGNATURE
;;
;; MessageText:
;;
;;  Invalid Signature.
;;
(NTE_BAD_SIGNATURE #x80090006)

;; MessageId: NTE_BAD_VER
;;
;; MessageText:
;;
;;  Bad Version of provider.
;;
(NTE_BAD_VER #x80090007)

;; MessageId: NTE_BAD_ALGID
;;
;; MessageText:
;;
;;  Invalid algorithm specified.
;;
(NTE_BAD_ALGID #x80090008)

;; MessageId: NTE_BAD_FLAGS
;;
;; MessageText:
;;
;;  Invalid flags specified.
;;
(NTE_BAD_FLAGS #x80090009)

;; MessageId: NTE_BAD_TYPE
;;
;; MessageText:
;;
;;  Invalid type specified.
;;
(NTE_BAD_TYPE #x8009000A)

;; MessageId: NTE_BAD_KEY_STATE
;;
;; MessageText:
;;
;;  Key not valid for use in specified state.
;;
(NTE_BAD_KEY_STATE #x8009000B)

;; MessageId: NTE_BAD_HASH_STATE
;;
;; MessageText:
;;
;;  Hash not valid for use in specified state.
;;
(NTE_BAD_HASH_STATE #x8009000C)

;; MessageId: NTE_NO_KEY
;;
;; MessageText:
;;
;;  Key does not exist.
;;
(NTE_NO_KEY #x8009000D)

;; MessageId: NTE_NO_MEMORY
;;
;; MessageText:
;;
;;  Insufficient memory available for the operation.
;;
(NTE_NO_MEMORY #x8009000E)

;; MessageId: NTE_EXISTS
;;
;; MessageText:
;;
;;  Object already exists.
;;
(NTE_EXISTS #x8009000F)

;; MessageId: NTE_PERM
;;
;; MessageText:
;;
;;  Access denied.
;;
(NTE_PERM #x80090010)

;; MessageId: NTE_NOT_FOUND
;;
;; MessageText:
;;
;;  Object was not found.
;;
(NTE_NOT_FOUND #x80090011)

;; MessageId: NTE_DOUBLE_ENCRYPT
;;
;; MessageText:
;;
;;  Data already encrypted.
;;
(NTE_DOUBLE_ENCRYPT #x80090012)

;; MessageId: NTE_BAD_PROVIDER
;;
;; MessageText:
;;
;;  Invalid provider specified.
;;
(NTE_BAD_PROVIDER #x80090013)

;; MessageId: NTE_BAD_PROV_TYPE
;;
;; MessageText:
;;
;;  Invalid provider type specified.
;;
(NTE_BAD_PROV_TYPE #x80090014)

;; MessageId: NTE_BAD_PUBLIC_KEY
;;
;; MessageText:
;;
;;  Provider's public key is invalid.
;;
(NTE_BAD_PUBLIC_KEY #x80090015)

;; MessageId: NTE_BAD_KEYSET
;;
;; MessageText:
;;
;;  Keyset does not exist
;;
(NTE_BAD_KEYSET #x80090016)

;; MessageId: NTE_PROV_TYPE_NOT_DEF
;;
;; MessageText:
;;
;;  Provider type not defined.
;;
(NTE_PROV_TYPE_NOT_DEF #x80090017)

;; MessageId: NTE_PROV_TYPE_ENTRY_BAD
;;
;; MessageText:
;;
;;  Provider type as registered is invalid.
;;
(NTE_PROV_TYPE_ENTRY_BAD #x80090018)

;; MessageId: NTE_KEYSET_NOT_DEF
;;
;; MessageText:
;;
;;  The keyset is not defined.
;;
(NTE_KEYSET_NOT_DEF #x80090019)

;; MessageId: NTE_KEYSET_ENTRY_BAD
;;
;; MessageText:
;;
;;  Keyset as registered is invalid.
;;
(NTE_KEYSET_ENTRY_BAD #x8009001A)

;; MessageId: NTE_PROV_TYPE_NO_MATCH
;;
;; MessageText:
;;
;;  Provider type does not match registered value.
;;
(NTE_PROV_TYPE_NO_MATCH #x8009001B)

;; MessageId: NTE_SIGNATURE_FILE_BAD
;;
;; MessageText:
;;
;;  The digital signature file is corrupt.
;;
(NTE_SIGNATURE_FILE_BAD #x8009001C)

;; MessageId: NTE_PROVIDER_DLL_FAIL
;;
;; MessageText:
;;
;;  Provider DLL failed to initialize correctly.
;;
(NTE_PROVIDER_DLL_FAIL #x8009001D)

;; MessageId: NTE_PROV_DLL_NOT_FOUND
;;
;; MessageText:
;;
;;  Provider DLL could not be found.
;;
(NTE_PROV_DLL_NOT_FOUND #x8009001E)

;; MessageId: NTE_BAD_KEYSET_PARAM
;;
;; MessageText:
;;
;;  The Keyset parameter is invalid.
;;
(NTE_BAD_KEYSET_PARAM #x8009001F)

;; MessageId: NTE_FAIL
;;
;; MessageText:
;;
;;  An internal error occurred.
;;
(NTE_FAIL #x80090020)

;; MessageId: NTE_SYS_ERR
;;
;; MessageText:
;;
;;  A base error occurred.
;;
(NTE_SYS_ERR #x80090021)

;; MessageId: NTE_SILENT_CONTEXT
;;
;; MessageText:
;;
;;  Provider could not perform the action since the context was acquired as silent.
;;
(NTE_SILENT_CONTEXT #x80090022)

;; MessageId: NTE_TOKEN_KEYSET_STORAGE_FULL
;;
;; MessageText:
;;
;;  The security token does not have storage space available for an additional container.
;;
(NTE_TOKEN_KEYSET_STORAGE_FULL #x80090023)

;; MessageId: CRYPT_E_MSG_ERROR
;;
;; MessageText:
;;
;;  An error was encountered doing a cryptographic message operation.
;;
(CRYPT_E_MSG_ERROR #x80091001)

;; MessageId: CRYPT_E_UNKNOWN_ALGO
;;
;; MessageText:
;;
;;  The cryptographic algorithm is unknown.
;;
(CRYPT_E_UNKNOWN_ALGO #x80091002)

;; MessageId: CRYPT_E_OID_FORMAT
;;
;; MessageText:
;;
;;  The object identifier is badly formatted.
;;
(CRYPT_E_OID_FORMAT #x80091003)

;; MessageId: CRYPT_E_INVALID_MSG_TYPE
;;
;; MessageText:
;;
;;  The message type is invalid.
;;
(CRYPT_E_INVALID_MSG_TYPE #x80091004)

;; MessageId: CRYPT_E_UNEXPECTED_ENCODING
;;
;; MessageText:
;;
;;  The message is not encoded as expected.
;;
(CRYPT_E_UNEXPECTED_ENCODING #x80091005)

;; MessageId: CRYPT_E_AUTH_ATTR_MISSING
;;
;; MessageText:
;;
;;  The message does not contain an expected authenticated attribute.
;;
(CRYPT_E_AUTH_ATTR_MISSING #x80091006)

;; MessageId: CRYPT_E_HASH_VALUE
;;
;; MessageText:
;;
;;  The hash value is not correct.
;;
(CRYPT_E_HASH_VALUE #x80091007)

;; MessageId: CRYPT_E_INVALID_INDEX
;;
;; MessageText:
;;
;;  The index value is not valid.
;;
(CRYPT_E_INVALID_INDEX #x80091008)

;; MessageId: CRYPT_E_ALREADY_DECRYPTED
;;
;; MessageText:
;;
;;  The message content has already been decrypted.
;;
(CRYPT_E_ALREADY_DECRYPTED #x80091009)

;; MessageId: CRYPT_E_NOT_DECRYPTED
;;
;; MessageText:
;;
;;  The message content has not been decrypted yet.
;;
(CRYPT_E_NOT_DECRYPTED #x8009100A)

;; MessageId: CRYPT_E_RECIPIENT_NOT_FOUND
;;
;; MessageText:
;;
;;  The enveloped-data message does not contain the specified recipient.
;;
(CRYPT_E_RECIPIENT_NOT_FOUND #x8009100B)

;; MessageId: CRYPT_E_CONTROL_TYPE
;;
;; MessageText:
;;
;;  The control type is not valid.
;;
(CRYPT_E_CONTROL_TYPE #x8009100C)

;; MessageId: CRYPT_E_ISSUER_SERIALNUMBER
;;
;; MessageText:
;;
;;  The issuer and/or serial number are/is not valid.
;;
(CRYPT_E_ISSUER_SERIALNUMBER #x8009100D)

;; MessageId: CRYPT_E_SIGNER_NOT_FOUND
;;
;; MessageText:
;;
;;  The original signer is not found.
;;
(CRYPT_E_SIGNER_NOT_FOUND #x8009100E)

;; MessageId: CRYPT_E_ATTRIBUTES_MISSING
;;
;; MessageText:
;;
;;  The message does not contain the requested attributes.
;;
(CRYPT_E_ATTRIBUTES_MISSING #x8009100F)

;; MessageId: CRYPT_E_STREAM_MSG_NOT_READY
;;
;; MessageText:
;;
;;  The steamed message is note yet able to return the requested data.
;;
(CRYPT_E_STREAM_MSG_NOT_READY #x80091010)

;; MessageId: CRYPT_E_STREAM_INSUFFICIENT_DATA
;;
;; MessageText:
;;
;;  The streamed message needs more data before the decode can complete.
;;
(CRYPT_E_STREAM_INSUFFICIENT_DATA #x80091011)

;; MessageId: CRYPT_E_BAD_LEN
;;
;; MessageText:
;;
;;  The length specified for the output data was insufficient.
;;
(CRYPT_E_BAD_LEN #x80092001)

;; MessageId: CRYPT_E_BAD_ENCODE
;;
;; MessageText:
;;
;;  An error was encountered while encoding or decoding.
;;
(CRYPT_E_BAD_ENCODE #x80092002)

;; MessageId: CRYPT_E_FILE_ERROR
;;
;; MessageText:
;;
;;  An error occurred while reading or writing to the file
;;
(CRYPT_E_FILE_ERROR #x80092003)

;; MessageId: CRYPT_E_NOT_FOUND
;;
;; MessageText:
;;
;;  The object or property wasn't found
;;
(CRYPT_E_NOT_FOUND #x80092004)

;; MessageId: CRYPT_E_EXISTS
;;
;; MessageText:
;;
;;  The object or property already exists
;;
(CRYPT_E_EXISTS #x80092005)

;; MessageId: CRYPT_E_NO_PROVIDER
;;
;; MessageText:
;;
;;  No provider was specified for the store or object
;;
(CRYPT_E_NO_PROVIDER #x80092006)

;; MessageId: CRYPT_E_SELF_SIGNED
;;
;; MessageText:
;;
;;  The specified certificate is self signed.
;;
(CRYPT_E_SELF_SIGNED #x80092007)

;; MessageId: CRYPT_E_DELETED_PREV
;;
;; MessageText:
;;
;;  The previous certificate or CRL context was deleted.
;;
(CRYPT_E_DELETED_PREV #x80092008)

;; MessageId: CRYPT_E_NO_MATCH
;;
;; MessageText:
;;
;;  No match when trying to find the object.
;;
(CRYPT_E_NO_MATCH #x80092009)

;; MessageId: CRYPT_E_UNEXPECTED_MSG_TYPE
;;
;; MessageText:
;;
;;  The type of the cryptographic message being decoded is different than what was expected.
;;
(CRYPT_E_UNEXPECTED_MSG_TYPE #x8009200A)

;; MessageId: CRYPT_E_NO_KEY_PROPERTY
;;
;; MessageText:
;;
;;  The certificate doesn't have a private key property
;;
(CRYPT_E_NO_KEY_PROPERTY #x8009200B)

;; MessageId: CRYPT_E_NO_DECRYPT_CERT
;;
;; MessageText:
;;
;;  No certificate was found having a private key property to use for decrypting.
;;
(CRYPT_E_NO_DECRYPT_CERT #x8009200C)

;; MessageId: CRYPT_E_BAD_MSG
;;
;; MessageText:
;;
;;  Either, not a cryptographic message or incorrectly formatted.
;;
(CRYPT_E_BAD_MSG #x8009200D)

;; MessageId: CRYPT_E_NO_SIGNER
;;
;; MessageText:
;;
;;  The signed message doesn't have a signer for the specified signer index
;;
(CRYPT_E_NO_SIGNER #x8009200E)

;; MessageId: CRYPT_E_PENDING_CLOSE
;;
;; MessageText:
;;
;;  Final closure is pending until additional frees or closes.
;;
(CRYPT_E_PENDING_CLOSE #x8009200F)

;; MessageId: CRYPT_E_REVOKED
;;
;; MessageText:
;;
;;  The certificate or signature has been revoked
;;
(CRYPT_E_REVOKED #x80092010)

;; MessageId: CRYPT_E_NO_REVOCATION_DLL
;;
;; MessageText:
;;
;;  No Dll or exported function was found to verify revocation.
;;
(CRYPT_E_NO_REVOCATION_DLL #x80092011)

;; MessageId: CRYPT_E_NO_REVOCATION_CHECK
;;
;; MessageText:
;;
;;  The called function wasn't able to do a revocation check on the certificate or signature.
;;
(CRYPT_E_NO_REVOCATION_CHECK #x80092012)

;; MessageId: CRYPT_E_REVOCATION_OFFLINE
;;
;; MessageText:
;;
;;  Since the revocation server was offline, the called function wasn't able to complete the revocation check.
;;
(CRYPT_E_REVOCATION_OFFLINE #x80092013)

;; MessageId: CRYPT_E_NOT_IN_REVOCATION_DATABASE
;;
;; MessageText:
;;
;;  The certificate or signature to be checked was not found in the revocation servers database.
;;
(CRYPT_E_NOT_IN_REVOCATION_DATABASE #x80092014)

;; MessageId: CRYPT_E_INVALID_NUMERIC_STRING
;;
;; MessageText:
;;
;;  The string contains a non-numeric character.
;;
(CRYPT_E_INVALID_NUMERIC_STRING #x80092020)

;; MessageId: CRYPT_E_INVALID_PRINTABLE_STRING
;;
;; MessageText:
;;
;;  The string contains a non-printable character.
;;
(CRYPT_E_INVALID_PRINTABLE_STRING #x80092021)

;; MessageId: CRYPT_E_INVALID_IA5_STRING
;;
;; MessageText:
;;
;;  The string contains a character not in the 7 bit ASCII character set.
;;
(CRYPT_E_INVALID_IA5_STRING #x80092022)

;; MessageId: CRYPT_E_INVALID_X500_STRING
;;
;; MessageText:
;;
;;  The string contains an invalid X500 name attribute key, oid, value or delimiter.
;;
(CRYPT_E_INVALID_X500_STRING #x80092023)

;; MessageId: CRYPT_E_NOT_CHAR_STRING
;;
;; MessageText:
;;
;;  The dwValueType for the CERT_NAME_VALUE is not one of the character strings.  Most likely it is either a CERT_RDN_ENCODED_BLOB or CERT_TDN_OCTED_STRING.
;;
(CRYPT_E_NOT_CHAR_STRING #x80092024)

;; MessageId: CRYPT_E_FILERESIZED
;;
;; MessageText:
;;
;;  The Put operation can not continue.  The file needs to be resized.  However, there is already a signature present.  A complete signing operation must be done.
;;
(CRYPT_E_FILERESIZED #x80092025)

;; MessageId: CRYPT_E_SECURITY_SETTINGS
;;
;; MessageText:
;;
;;  The cryptography operation has failed due to a local security option setting.
;;
(CRYPT_E_SECURITY_SETTINGS #x80092026)

;; MessageId: CRYPT_E_NO_VERIFY_USAGE_DLL
;;
;; MessageText:
;;
;;  No DLL or exported function was found to verify subject usage.
;;
(CRYPT_E_NO_VERIFY_USAGE_DLL #x80092027)

;; MessageId: CRYPT_E_NO_VERIFY_USAGE_CHECK
;;
;; MessageText:
;;
;;  The called function wasn't able to do a usage check on the subject.
;;
(CRYPT_E_NO_VERIFY_USAGE_CHECK #x80092028)

;; MessageId: CRYPT_E_VERIFY_USAGE_OFFLINE
;;
;; MessageText:
;;
;;  Since the server was offline, the called function wasn't able to complete the usage check.
;;
(CRYPT_E_VERIFY_USAGE_OFFLINE #x80092029)

;; MessageId: CRYPT_E_NOT_IN_CTL
;;
;; MessageText:
;;
;;  The subject was not found in a Certificate Trust List (CTL).
;;
(CRYPT_E_NOT_IN_CTL #x8009202A)

;; MessageId: CRYPT_E_NO_TRUSTED_SIGNER
;;
;; MessageText:
;;
;;  No trusted signer was found to verify the signature of the message or trust list.
;;
(CRYPT_E_NO_TRUSTED_SIGNER #x8009202B)

;; MessageId: CRYPT_E_OSS_ERROR
;;
;; MessageText:
;;
;;  OSS Certificate encode/decode error code base
;;  
;;  See asn1code.h for a definition of the OSS runtime errors. The OSS
;;  error values are offset by CRYPT_E_OSS_ERROR.
;;
(CRYPT_E_OSS_ERROR #x80093000)

;; MessageId: OSS_MORE_BUF
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Output Buffer is too small.
;;
(OSS_MORE_BUF #x80093001)

;; MessageId: OSS_NEGATIVE_UINTEGER
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Signed integer is encoded as a unsigned integer.
;;
(OSS_NEGATIVE_UINTEGER #x80093002)

;; MessageId: OSS_PDU_RANGE
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Unknown ASN.1 data type.
;;
(OSS_PDU_RANGE #x80093003)

;; MessageId: OSS_MORE_INPUT
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Output buffer is too small, the decoded data has been truncated.
;;
(OSS_MORE_INPUT #x80093004)

;; MessageId: OSS_DATA_ERROR
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Invalid data.
;;
(OSS_DATA_ERROR #x80093005)

;; MessageId: OSS_BAD_ARG
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Invalid argument.
;;
(OSS_BAD_ARG #x80093006)

;; MessageId: OSS_BAD_VERSION
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Encode/Decode version mismatch.
;;
(OSS_BAD_VERSION #x80093007)

;; MessageId: OSS_OUT_MEMORY
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Out of memory.
;;
(OSS_OUT_MEMORY #x80093008)

;; MessageId: OSS_PDU_MISMATCH
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Encode/Decode Error.
;;
(OSS_PDU_MISMATCH #x80093009)

;; MessageId: OSS_LIMITED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Internal Error.
;;
(OSS_LIMITED #x8009300A)

;; MessageId: OSS_BAD_PTR
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Invalid data.
;;
(OSS_BAD_PTR #x8009300B)

;; MessageId: OSS_BAD_TIME
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Invalid data.
;;
(OSS_BAD_TIME #x8009300C)

;; MessageId: OSS_INDEFINITE_NOT_SUPPORTED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Unsupported BER indefinite-length encoding.
;;
(OSS_INDEFINITE_NOT_SUPPORTED #x8009300D)

;; MessageId: OSS_MEM_ERROR
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Access violation.
;;
(OSS_MEM_ERROR #x8009300E)

;; MessageId: OSS_BAD_TABLE
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Invalid data.
;;
(OSS_BAD_TABLE #x8009300F)

;; MessageId: OSS_TOO_LONG
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Invalid data.
;;
(OSS_TOO_LONG #x80093010)

;; MessageId: OSS_CONSTRAINT_VIOLATED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Invalid data.
;;
(OSS_CONSTRAINT_VIOLATED #x80093011)

;; MessageId: OSS_FATAL_ERROR
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Internal Error.
;;
(OSS_FATAL_ERROR #x80093012)

;; MessageId: OSS_ACCESS_SERIALIZATION_ERROR
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Multi-threading conflict.
;;
(OSS_ACCESS_SERIALIZATION_ERROR #x80093013)

;; MessageId: OSS_NULL_TBL
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Invalid data.
;;
(OSS_NULL_TBL #x80093014)

;; MessageId: OSS_NULL_FCN
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Invalid data.
;;
(OSS_NULL_FCN #x80093015)

;; MessageId: OSS_BAD_ENCRULES
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Invalid data.
;;
(OSS_BAD_ENCRULES #x80093016)

;; MessageId: OSS_UNAVAIL_ENCRULES
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Encode/Decode function not implemented.
;;
(OSS_UNAVAIL_ENCRULES #x80093017)

;; MessageId: OSS_CANT_OPEN_TRACE_WINDOW
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Trace file error.
;;
(OSS_CANT_OPEN_TRACE_WINDOW #x80093018)

;; MessageId: OSS_UNIMPLEMENTED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Function not implemented.
;;
(OSS_UNIMPLEMENTED #x80093019)

;; MessageId: OSS_OID_DLL_NOT_LINKED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_OID_DLL_NOT_LINKED #x8009301A)

;; MessageId: OSS_CANT_OPEN_TRACE_FILE
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Trace file error.
;;
(OSS_CANT_OPEN_TRACE_FILE #x8009301B)

;; MessageId: OSS_TRACE_FILE_ALREADY_OPEN
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Trace file error.
;;
(OSS_TRACE_FILE_ALREADY_OPEN #x8009301C)

;; MessageId: OSS_TABLE_MISMATCH
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Invalid data.
;;
(OSS_TABLE_MISMATCH #x8009301D)

;; MessageId: OSS_TYPE_NOT_SUPPORTED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Invalid data.
;;
(OSS_TYPE_NOT_SUPPORTED #x8009301E)

;; MessageId: OSS_REAL_DLL_NOT_LINKED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_REAL_DLL_NOT_LINKED #x8009301F)

;; MessageId: OSS_REAL_CODE_NOT_LINKED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_REAL_CODE_NOT_LINKED #x80093020)

;; MessageId: OSS_OUT_OF_RANGE
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_OUT_OF_RANGE #x80093021)

;; MessageId: OSS_COPIER_DLL_NOT_LINKED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_COPIER_DLL_NOT_LINKED #x80093022)

;; MessageId: OSS_CONSTRAINT_DLL_NOT_LINKED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_CONSTRAINT_DLL_NOT_LINKED #x80093023)

;; MessageId: OSS_COMPARATOR_DLL_NOT_LINKED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_COMPARATOR_DLL_NOT_LINKED #x80093024)

;; MessageId: OSS_COMPARATOR_CODE_NOT_LINKED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_COMPARATOR_CODE_NOT_LINKED #x80093025)

;; MessageId: OSS_MEM_MGR_DLL_NOT_LINKED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_MEM_MGR_DLL_NOT_LINKED #x80093026)

;; MessageId: OSS_PDV_DLL_NOT_LINKED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_PDV_DLL_NOT_LINKED #x80093027)

;; MessageId: OSS_PDV_CODE_NOT_LINKED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_PDV_CODE_NOT_LINKED #x80093028)

;; MessageId: OSS_API_DLL_NOT_LINKED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_API_DLL_NOT_LINKED #x80093029)

;; MessageId: OSS_BERDER_DLL_NOT_LINKED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_BERDER_DLL_NOT_LINKED #x8009302A)

;; MessageId: OSS_PER_DLL_NOT_LINKED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_PER_DLL_NOT_LINKED #x8009302B)

;; MessageId: OSS_OPEN_TYPE_ERROR
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Program link error.
;;
(OSS_OPEN_TYPE_ERROR #x8009302C)

;; MessageId: OSS_MUTEX_NOT_CREATED
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: System resource error.
;;
(OSS_MUTEX_NOT_CREATED #x8009302D)

;; MessageId: OSS_CANT_CLOSE_TRACE_FILE
;;
;; MessageText:
;;
;;  OSS ASN.1 Error: Trace file error.
;;
(OSS_CANT_CLOSE_TRACE_FILE #x8009302E)

;; MessageId: CERTSRV_E_BAD_REQUESTSUBJECT
;;
;; MessageText:
;;
;;  The request subject name is invalid or too long.
;;
(CERTSRV_E_BAD_REQUESTSUBJECT #x80094001)

;; MessageId: CERTSRV_E_NO_REQUEST
;;
;; MessageText:
;;
;;  The request does not exist.
;;
(CERTSRV_E_NO_REQUEST #x80094002)

;; MessageId: CERTSRV_E_BAD_REQUESTSTATUS
;;
;; MessageText:
;;
;;  The request's current status does not allow this operation.
;;
(CERTSRV_E_BAD_REQUESTSTATUS #x80094003)

;; MessageId: CERTSRV_E_PROPERTY_EMPTY
;;
;; MessageText:
;;
;;  The requested property value is empty.
;;
(CERTSRV_E_PROPERTY_EMPTY #x80094004)

;; MessageId: CERTSRV_E_INVALID_CA_CERTIFICATE
;;
;; MessageText:
;;
;;  The certificate server's certificate contains invalid data.
;;
(CERTSRV_E_INVALID_CA_CERTIFICATE #x80094005)

;; MessageId: CERTSRV_E_UNSUPPORTED_CERT_TYPE
;;
;; MessageText:
;;
;;  The requested certificate template is not supported by this CA.
;;
(CERTSRV_E_UNSUPPORTED_CERT_TYPE #x80094800)

;; MessageId: CERTSRV_E_NO_CERT_TYPE
;;
;; MessageText:
;;
;;  The requested contains no certificate template information.
;;
(CERTSRV_E_NO_CERT_TYPE #x80094801)

;; MessageId: CERTDB_E_JET_ERROR
;;
;; MessageText:
;;
;;  Jet error code base
;;  
;;  See jet.h for a definition of the Jet runtime errors.
;;  Negative Jet error values are masked to three digits and offset by CERTDB_E_JET_ERROR.
;;
(CERTDB_E_JET_ERROR #x80095000)

;; MessageId: TRUST_E_SYSTEM_ERROR
;;
;; MessageText:
;;
;;  A system-level error occured while verifying trust.
;;
(TRUST_E_SYSTEM_ERROR #x80096001)

;; MessageId: TRUST_E_NO_SIGNER_CERT
;;
;; MessageText:
;;
;;  The certificate for the signer of the message is invalid or not found.
;;
(TRUST_E_NO_SIGNER_CERT #x80096002)

;; MessageId: TRUST_E_COUNTER_SIGNER
;;
;; MessageText:
;;
;;  One of the counter signers was invalid.
;;
(TRUST_E_COUNTER_SIGNER #x80096003)

;; MessageId: TRUST_E_CERT_SIGNATURE
;;
;; MessageText:
;;
;;  The signature of the certificate can not be verified.
;;
(TRUST_E_CERT_SIGNATURE #x80096004)

;; MessageId: TRUST_E_TIME_STAMP
;;
;; MessageText:
;;
;;  The time stamp signer and or certificate could not be verified or is malformed.
;;
(TRUST_E_TIME_STAMP #x80096005)

;; MessageId: TRUST_E_BAD_DIGEST
;;
;; MessageText:
;;
;;  The objects digest did not verify.
;;
(TRUST_E_BAD_DIGEST #x80096010)

;; MessageId: TRUST_E_BASIC_CONSTRAINTS
;;
;; MessageText:
;;
;;  The cerficates basic constraints are invalid or missing.
;;
(TRUST_E_BASIC_CONSTRAINTS #x80096019)

;; MessageId: TRUST_E_FINANCIAL_CRITERIA
;;
;; MessageText:
;;
;;  The certificate does not meet or contain the Authenticode financial extensions.
;;
(TRUST_E_FINANCIAL_CRITERIA #x8009601E)


;; Note that additional FACILITY_SSPI errors are in issperr.h
;;
;; ******************
;; FACILITY_CERT
;; ******************
;;
;; MessageId: TRUST_E_PROVIDER_UNKNOWN
;;
;; MessageText:
;;
;;  The specified trust provider is not known on this system.
;;
(TRUST_E_PROVIDER_UNKNOWN #x800B0001)

;; MessageId: TRUST_E_ACTION_UNKNOWN
;;
;; MessageText:
;;
;;  The trust verification action specified is not supported by the specified trust provider.
;;
(TRUST_E_ACTION_UNKNOWN #x800B0002)

;; MessageId: TRUST_E_SUBJECT_FORM_UNKNOWN
;;
;; MessageText:
;;
;;  The form specified for the subject is not one supported or known by the specified trust provider.
;;
(TRUST_E_SUBJECT_FORM_UNKNOWN #x800B0003)

;; MessageId: TRUST_E_SUBJECT_NOT_TRUSTED
;;
;; MessageText:
;;
;;  The subject is not trusted for the specified action.
;;
(TRUST_E_SUBJECT_NOT_TRUSTED #x800B0004)

;; MessageId: DIGSIG_E_ENCODE
;;
;; MessageText:
;;
;;  Error due to problem in ASN.1 encoding process.
;;
(DIGSIG_E_ENCODE #x800B0005)

;; MessageId: DIGSIG_E_DECODE
;;
;; MessageText:
;;
;;  Error due to problem in ASN.1 decoding process.
;;
(DIGSIG_E_DECODE #x800B0006)

;; MessageId: DIGSIG_E_EXTENSIBILITY
;;
;; MessageText:
;;
;;  Reading / writing Extensions where Attributes are appropriate, and visa versa.
;;
(DIGSIG_E_EXTENSIBILITY #x800B0007)

;; MessageId: DIGSIG_E_CRYPTO
;;
;; MessageText:
;;
;;  Unspecified cryptographic failure.
;;
(DIGSIG_E_CRYPTO #x800B0008)

;; MessageId: PERSIST_E_SIZEDEFINITE
;;
;; MessageText:
;;
;;  The size of the data could not be determined.
;;
(PERSIST_E_SIZEDEFINITE #x800B0009)

;; MessageId: PERSIST_E_SIZEINDEFINITE
;;
;; MessageText:
;;
;;  The size of the indefinite-sized data could not be determined.
;;
(PERSIST_E_SIZEINDEFINITE #x800B000A)

;; MessageId: PERSIST_E_NOTSELFSIZING
;;
;; MessageText:
;;
;;  This object does not read and write self-sizing data.
;;
(PERSIST_E_NOTSELFSIZING #x800B000B)

;; MessageId: TRUST_E_NOSIGNATURE
;;
;; MessageText:
;;
;;  No signature was present in the subject.
;;
(TRUST_E_NOSIGNATURE #x800B0100)

;; MessageId: CERT_E_EXPIRED
;;
;; MessageText:
;;
;;  A required certificate is not within its validity period.
;;
(CERT_E_EXPIRED #x800B0101)

;; MessageId: CERT_E_VALIDITYPERIODNESTING
;;
;; MessageText:
;;
;;  The validity periods of the certification chain do not nest correctly.
;;
(CERT_E_VALIDITYPERIODNESTING #x800B0102)

;; MessageId: CERT_E_ROLE
;;
;; MessageText:
;;
;;  A certificate that can only be used as an end-entity is being used as a CA or visa versa.
;;
(CERT_E_ROLE #x800B0103)

;; MessageId: CERT_E_PATHLENCONST
;;
;; MessageText:
;;
;;  A path length constraint in the certification chain has been violated.
;;
(CERT_E_PATHLENCONST #x800B0104)

;; MessageId: CERT_E_CRITICAL
;;
;; MessageText:
;;
;;  An extension of unknown type that is labeled 'critical' is present in a certificate.
;;
(CERT_E_CRITICAL #x800B0105)

;; MessageId: CERT_E_PURPOSE
;;
;; MessageText:
;;
;;  A certificate is being used for a purpose other than that for which it is permitted.
;;
(CERT_E_PURPOSE #x800B0106)

;; MessageId: CERT_E_ISSUERCHAINING
;;
;; MessageText:
;;
;;  A parent of a given certificate in fact did not issue that child certificate.
;;
(CERT_E_ISSUERCHAINING #x800B0107)

;; MessageId: CERT_E_MALFORMED
;;
;; MessageText:
;;
;;  A certificate is missing or has an empty value for an important field, such as a subject or issuer name.
;;
(CERT_E_MALFORMED #x800B0108)

;; MessageId: CERT_E_UNTRUSTEDROOT
;;
;; MessageText:
;;
;;  A certification chain processed correctly, but terminated in a root certificate which isn't trusted by the trust provider.
;;
(CERT_E_UNTRUSTEDROOT #x800B0109)

;; MessageId: CERT_E_CHAINING
;;
;; MessageText:
;;
;;  A chain of certs didn't chain as they should in a certain application of chaining.
;;
(CERT_E_CHAINING #x800B010A)

;; MessageId: TRUST_E_FAIL
;;
;; MessageText:
;;
;;  Generic Trust Failure.
;;
(TRUST_E_FAIL #x800B010B)

;; MessageId: CERT_E_REVOKED
;;
;; MessageText:
;;
;;  A certificate was explicitly revoked by its issuer.
;;
(CERT_E_REVOKED #x800B010C)

;; MessageId: CERT_E_UNTRUSTEDTESTROOT
;;
;; MessageText:
;;
;;  The root certificate is a testing certificate and the policy settings disallow test certificates.
;;
(CERT_E_UNTRUSTEDTESTROOT #x800B010D)

;; MessageId: CERT_E_REVOCATION_FAILURE
;;
;; MessageText:
;;
;;  The revocation process could not continue - the certificate(s) could not be checked.
;;
(CERT_E_REVOCATION_FAILURE #x800B010E)

;; MessageId: CERT_E_CN_NO_MATCH
;;
;; MessageText:
;;
;;  The certificate's CN name does not match the passed value.
;;
(CERT_E_CN_NO_MATCH #x800B010F)

;; MessageId: CERT_E_WRONG_USAGE
;;
;; MessageText:
;;
;;  The certificate is not valid for the requested usage.
;;
(CERT_E_WRONG_USAGE #x800B0110)

;; FACILITY_SETUPAPI
;; *****************
;;
;; Since these error codes aren't in the standard Win32 range (i.e., 0-64K), define a
;; macro to map either Win32 or SetupAPI error codes into an HRESULT.
;;



;;
;; MessageId: SPAPI_E_EXPECTED_SECTION_NAME
;;
;; MessageText:
;;
;;  A non-empty line was encountered in the INF before the start of a section.
;;
(SPAPI_E_EXPECTED_SECTION_NAME #x800F0000)

;; MessageId: SPAPI_E_BAD_SECTION_NAME_LINE
;;
;; MessageText:
;;
;;  A section name marker in the INF is not complete, or does not exist on a line by itself.
;;
(SPAPI_E_BAD_SECTION_NAME_LINE #x800F0001)

;; MessageId: SPAPI_E_SECTION_NAME_TOO_LONG
;;
;; MessageText:
;;
;;  An INF section was encountered whose name exceeds the maximum section name length.
;;
(SPAPI_E_SECTION_NAME_TOO_LONG #x800F0002)

;; MessageId: SPAPI_E_GENERAL_SYNTAX
;;
;; MessageText:
;;
;;  The syntax of the INF is invalid.
;;
(SPAPI_E_GENERAL_SYNTAX #x800F0003)

;; MessageId: SPAPI_E_WRONG_INF_STYLE
;;
;; MessageText:
;;
;;  The style of the INF is different than what was requested.
;;
(SPAPI_E_WRONG_INF_STYLE #x800F0100)

;; MessageId: SPAPI_E_SECTION_NOT_FOUND
;;
;; MessageText:
;;
;;  The required section was not found in the INF.
;;
(SPAPI_E_SECTION_NOT_FOUND #x800F0101)

;; MessageId: SPAPI_E_LINE_NOT_FOUND
;;
;; MessageText:
;;
;;  The required line was not found in the INF.
;;
(SPAPI_E_LINE_NOT_FOUND #x800F0102)

;; MessageId: SPAPI_E_NO_BACKUP
;;
;; MessageText:
;;
;;  The files affected by the installation of this file queue have not been backed up for uninstall.
;;
(SPAPI_E_NO_BACKUP #x800F0103)

;; MessageId: SPAPI_E_NO_ASSOCIATED_CLASS
;;
;; MessageText:
;;
;;  The INF or the device information set or element does not have an associated install class.
;;
(SPAPI_E_NO_ASSOCIATED_CLASS #x800F0200)

;; MessageId: SPAPI_E_CLASS_MISMATCH
;;
;; MessageText:
;;
;;  The INF or the device information set or element does not match the specified install class.
;;
(SPAPI_E_CLASS_MISMATCH #x800F0201)

;; MessageId: SPAPI_E_DUPLICATE_FOUND
;;
;; MessageText:
;;
;;  An existing device was found that is a duplicate of the device being manually installed.
;;
(SPAPI_E_DUPLICATE_FOUND #x800F0202)

;; MessageId: SPAPI_E_NO_DRIVER_SELECTED
;;
;; MessageText:
;;
;;  There is no driver selected for the device information set or element.
;;
(SPAPI_E_NO_DRIVER_SELECTED #x800F0203)

;; MessageId: SPAPI_E_KEY_DOES_NOT_EXIST
;;
;; MessageText:
;;
;;  The requested device registry key does not exist.
;;
(SPAPI_E_KEY_DOES_NOT_EXIST #x800F0204)

;; MessageId: SPAPI_E_INVALID_DEVINST_NAME
;;
;; MessageText:
;;
;;  The device instance name is invalid.
;;
(SPAPI_E_INVALID_DEVINST_NAME #x800F0205)

;; MessageId: SPAPI_E_INVALID_CLASS
;;
;; MessageText:
;;
;;  The install class is not present or is invalid.
;;
(SPAPI_E_INVALID_CLASS #x800F0206)

;; MessageId: SPAPI_E_DEVINST_ALREADY_EXISTS
;;
;; MessageText:
;;
;;  The device instance cannot be created because it already exists.
;;
(SPAPI_E_DEVINST_ALREADY_EXISTS #x800F0207)

;; MessageId: SPAPI_E_DEVINFO_NOT_REGISTERED
;;
;; MessageText:
;;
;;  The operation cannot be performed on a device information element that has not been registered.
;;
(SPAPI_E_DEVINFO_NOT_REGISTERED #x800F0208)

;; MessageId: SPAPI_E_INVALID_REG_PROPERTY
;;
;; MessageText:
;;
;;  The device property code is invalid.
;;
(SPAPI_E_INVALID_REG_PROPERTY #x800F0209)

;; MessageId: SPAPI_E_NO_INF
;;
;; MessageText:
;;
;;  The INF from which a driver list is to be built does not exist.
;;
(SPAPI_E_NO_INF #x800F020A)

;; MessageId: SPAPI_E_NO_SUCH_DEVINST
;;
;; MessageText:
;;
;;  The device instance does not exist in the hardware tree.
;;
(SPAPI_E_NO_SUCH_DEVINST #x800F020B)

;; MessageId: SPAPI_E_CANT_LOAD_CLASS_ICON
;;
;; MessageText:
;;
;;  The icon representing this install class cannot be loaded.
;;
(SPAPI_E_CANT_LOAD_CLASS_ICON #x800F020C)

;; MessageId: SPAPI_E_INVALID_CLASS_INSTALLER
;;
;; MessageText:
;;
;;  The class installer registry entry is invalid.
;;
(SPAPI_E_INVALID_CLASS_INSTALLER #x800F020D)

;; MessageId: SPAPI_E_DI_DO_DEFAULT
;;
;; MessageText:
;;
;;  The class installer has indicated that the default action should be performed for this installation request.
;;
(SPAPI_E_DI_DO_DEFAULT #x800F020E)

;; MessageId: SPAPI_E_DI_NOFILECOPY
;;
;; MessageText:
;;
;;  The operation does not require any files to be copied.
;;
(SPAPI_E_DI_NOFILECOPY #x800F020F)

;; MessageId: SPAPI_E_INVALID_HWPROFILE
;;
;; MessageText:
;;
;;  The specified hardware profile does not exist.
;;
(SPAPI_E_INVALID_HWPROFILE #x800F0210)

;; MessageId: SPAPI_E_NO_DEVICE_SELECTED
;;
;; MessageText:
;;
;;  There is no device information element currently selected for this device information set.
;;
(SPAPI_E_NO_DEVICE_SELECTED #x800F0211)

;; MessageId: SPAPI_E_DEVINFO_LIST_LOCKED
;;
;; MessageText:
;;
;;  The operation cannot be performed because the device information set is locked.
;;
(SPAPI_E_DEVINFO_LIST_LOCKED #x800F0212)

;; MessageId: SPAPI_E_DEVINFO_DATA_LOCKED
;;
;; MessageText:
;;
;;  The operation cannot be performed because the device information element is locked.
;;
(SPAPI_E_DEVINFO_DATA_LOCKED #x800F0213)

;; MessageId: SPAPI_E_DI_BAD_PATH
;;
;; MessageText:
;;
;;  The specified path does not contain any applicable device INFs.
;;
(SPAPI_E_DI_BAD_PATH #x800F0214)

;; MessageId: SPAPI_E_NO_CLASSINSTALL_PARAMS
;;
;; MessageText:
;;
;;  No class installer parameters have been set for the device information set or element.
;;
(SPAPI_E_NO_CLASSINSTALL_PARAMS #x800F0215)

;; MessageId: SPAPI_E_FILEQUEUE_LOCKED
;;
;; MessageText:
;;
;;  The operation cannot be performed because the file queue is locked.
;;
(SPAPI_E_FILEQUEUE_LOCKED #x800F0216)

;; MessageId: SPAPI_E_BAD_SERVICE_INSTALLSECT
;;
;; MessageText:
;;
;;  A service installation section in this INF is invalid.
;;
(SPAPI_E_BAD_SERVICE_INSTALLSECT #x800F0217)

;; MessageId: SPAPI_E_NO_CLASS_DRIVER_LIST
;;
;; MessageText:
;;
;;  There is no class driver list for the device information element.
;;
(SPAPI_E_NO_CLASS_DRIVER_LIST #x800F0218)

;; MessageId: SPAPI_E_NO_ASSOCIATED_SERVICE
;;
;; MessageText:
;;
;;  The installation failed because a function driver was not specified for this device instance.
;;
(SPAPI_E_NO_ASSOCIATED_SERVICE #x800F0219)

;; MessageId: SPAPI_E_NO_DEFAULT_DEVICE_INTERFACE
;;
;; MessageText:
;;
;;  There is presently no default device interface designated for this interface class.
;;
(SPAPI_E_NO_DEFAULT_DEVICE_INTERFACE #x800F021A)

;; MessageId: SPAPI_E_DEVICE_INTERFACE_ACTIVE
;;
;; MessageText:
;;
;;  The operation cannot be performed because the device interface is currently active.
;;
(SPAPI_E_DEVICE_INTERFACE_ACTIVE #x800F021B)

;; MessageId: SPAPI_E_DEVICE_INTERFACE_REMOVED
;;
;; MessageText:
;;
;;  The operation cannot be performed because the device interface has been removed from the system.
;;
(SPAPI_E_DEVICE_INTERFACE_REMOVED #x800F021C)

;; MessageId: SPAPI_E_BAD_INTERFACE_INSTALLSECT
;;
;; MessageText:
;;
;;  An interface installation section in this INF is invalid.
;;
(SPAPI_E_BAD_INTERFACE_INSTALLSECT #x800F021D)

;; MessageId: SPAPI_E_NO_SUCH_INTERFACE_CLASS
;;
;; MessageText:
;;
;;  This interface class does not exist in the system.
;;
(SPAPI_E_NO_SUCH_INTERFACE_CLASS #x800F021E)

;; MessageId: SPAPI_E_INVALID_REFERENCE_STRING
;;
;; MessageText:
;;
;;  The reference string supplied for this interface device is invalid.
;;
(SPAPI_E_INVALID_REFERENCE_STRING #x800F021F)

;; MessageId: SPAPI_E_INVALID_MACHINENAME
;;
;; MessageText:
;;
;;  The specified machine name does not conform to UNC naming conventions.
;;
(SPAPI_E_INVALID_MACHINENAME #x800F0220)

;; MessageId: SPAPI_E_REMOTE_COMM_FAILURE
;;
;; MessageText:
;;
;;  A general remote communication error occurred.
;;
(SPAPI_E_REMOTE_COMM_FAILURE #x800F0221)

;; MessageId: SPAPI_E_MACHINE_UNAVAILABLE
;;
;; MessageText:
;;
;;  The machine selected for remote communication is not available at this time.
;;
(SPAPI_E_MACHINE_UNAVAILABLE #x800F0222)

;; MessageId: SPAPI_E_NO_CONFIGMGR_SERVICES
;;
;; MessageText:
;;
;;  The Plug and Play service is not available on the remote machine.
;;
(SPAPI_E_NO_CONFIGMGR_SERVICES #x800F0223)

;; MessageId: SPAPI_E_INVALID_PROPPAGE_PROVIDER
;;
;; MessageText:
;;
;;  The property page provider registry entry is invalid.
;;
(SPAPI_E_INVALID_PROPPAGE_PROVIDER #x800F0224)

;; MessageId: SPAPI_E_NO_SUCH_DEVICE_INTERFACE
;;
;; MessageText:
;;
;;  The requested device interface is not present in the system.
;;
(SPAPI_E_NO_SUCH_DEVICE_INTERFACE #x800F0225)

;; MessageId: SPAPI_E_DI_POSTPROCESSING_REQUIRED
;;
;; MessageText:
;;
;;  The device's co-installer has additional work to perform after installation is complete.
;;
(SPAPI_E_DI_POSTPROCESSING_REQUIRED #x800F0226)

;; MessageId: SPAPI_E_INVALID_COINSTALLER
;;
;; MessageText:
;;
;;  The device's co-installer is invalid.
;;
(SPAPI_E_INVALID_COINSTALLER #x800F0227)

;; MessageId: SPAPI_E_NO_COMPAT_DRIVERS
;;
;; MessageText:
;;
;;  There are no compatible drivers for this device.
;;
(SPAPI_E_NO_COMPAT_DRIVERS #x800F0228)

;; MessageId: SPAPI_E_NO_DEVICE_ICON
;;
;; MessageText:
;;
;;  There is no icon that represents this device or device type.
;;
(SPAPI_E_NO_DEVICE_ICON #x800F0229)

;; MessageId: SPAPI_E_INVALID_INF_LOGCONFIG
;;
;; MessageText:
;;
;;  A logical configuration specified in this INF is invalid.
;;
(SPAPI_E_INVALID_INF_LOGCONFIG #x800F022A)

;; MessageId: SPAPI_E_DI_DONT_INSTALL
;;
;; MessageText:
;;
;;  The class installer has denied the request to install or upgrade this device.
;;
(SPAPI_E_DI_DONT_INSTALL #x800F022B)

;; MessageId: SPAPI_E_INVALID_FILTER_DRIVER
;;
;; MessageText:
;;
;;  One of the filter drivers installed for this device is invalid.
;;
(SPAPI_E_INVALID_FILTER_DRIVER #x800F022C)

;; MessageId: SPAPI_E_NON_WINDOWS_NT_DRIVER
;;
;; MessageText:
;;
;;  The driver selected for this device does not support Windows NT.
;;
(SPAPI_E_NON_WINDOWS_NT_DRIVER #x800F022D)

;; MessageId: SPAPI_E_NON_WINDOWS_DRIVER
;;
;; MessageText:
;;
;;  The driver selected for this device does not support Windows.
;;
(SPAPI_E_NON_WINDOWS_DRIVER #x800F022E)

;; MessageId: SPAPI_E_NO_CATALOG_FOR_OEM_INF
;;
;; MessageText:
;;
;;  This third-party INF does not contain digital signature information.
;;
(SPAPI_E_NO_CATALOG_FOR_OEM_INF #x800F022F)

;; MessageId: SPAPI_E_DEVINSTALL_QUEUE_NONNATIVE
;;
;; MessageText:
;;
;;  An invalid attempt was made to use a device installation file queue for verification of digital signatures relative to other platforms.
;;
(SPAPI_E_DEVINSTALL_QUEUE_NONNATIVE #x800F0230)

;; MessageId: SPAPI_E_ERROR_NOT_INSTALLED
;;
;; MessageText:
;;
;;  No installed components were detected.
;;
(SPAPI_E_ERROR_NOT_INSTALLED #x800F1000)

;; FACILITY_SCARD
;; *****************
;;
;; =============================
;; Facility SCARD Error Messages
;; =============================
;;

;;
;; MessageId: SCARD_F_INTERNAL_ERROR
;;
;; MessageText:
;;
;;  An internal consistency check failed
;;
(SCARD_F_INTERNAL_ERROR #x80100001)

;; MessageId: SCARD_E_CANCELLED
;;
;; MessageText:
;;
;;  The action was cancelled by an SCardCancel request
;;
(SCARD_E_CANCELLED #x80100002)

;; MessageId: SCARD_E_INVALID_HANDLE
;;
;; MessageText:
;;
;;  The supplied handle was invalid
;;
(SCARD_E_INVALID_HANDLE #x80100003)

;; MessageId: SCARD_E_INVALID_PARAMETER
;;
;; MessageText:
;;
;;  One or more of the supplied parameters could not be properly interpreted
;;
(SCARD_E_INVALID_PARAMETER #x80100004)

;; MessageId: SCARD_E_INVALID_TARGET
;;
;; MessageText:
;;
;;  Registry startup information is missing or invalid
;;
(SCARD_E_INVALID_TARGET #x80100005)

;; MessageId: SCARD_E_NO_MEMORY
;;
;; MessageText:
;;
;;  Not enough memory available to complete this command
;;
(SCARD_E_NO_MEMORY #x80100006)

;; MessageId: SCARD_F_WAITED_TOO_LONG
;;
;; MessageText:
;;
;;  An internal consistency timer has expired
;;
(SCARD_F_WAITED_TOO_LONG #x80100007)

;; MessageId: SCARD_E_INSUFFICIENT_BUFFER
;;
;; MessageText:
;;
;;  The data buffer to receive returned data is too small for the returned data
;;
(SCARD_E_INSUFFICIENT_BUFFER #x80100008)

;; MessageId: SCARD_E_UNKNOWN_READER
;;
;; MessageText:
;;
;;  The specified reader name is not recognized
;;
(SCARD_E_UNKNOWN_READER #x80100009)

;; MessageId: SCARD_E_TIMEOUT
;;
;; MessageText:
;;
;;  The user-specified timeout value has expired
;;
(SCARD_E_TIMEOUT #x8010000A)

;; MessageId: SCARD_E_SHARING_VIOLATION
;;
;; MessageText:
;;
;;  The smart card cannot be accessed because of other connections outstanding
;;
(SCARD_E_SHARING_VIOLATION #x8010000B)

;; MessageId: SCARD_E_NO_SMARTCARD
;;
;; MessageText:
;;
;;  The operation requires a Smart Card, but no Smart Card is currently in the device
;;
(SCARD_E_NO_SMARTCARD #x8010000C)

;; MessageId: SCARD_E_UNKNOWN_CARD
;;
;; MessageText:
;;
;;  The specified smart card name is not recognized
;;
(SCARD_E_UNKNOWN_CARD #x8010000D)

;; MessageId: SCARD_E_CANT_DISPOSE
;;
;; MessageText:
;;
;;  The system could not dispose of the media in the requested manner
;;
(SCARD_E_CANT_DISPOSE #x8010000E)

;; MessageId: SCARD_E_PROTO_MISMATCH
;;
;; MessageText:
;;
;;  The requested protocols are incompatible with the protocol currently in use with the smart card
;;
(SCARD_E_PROTO_MISMATCH #x8010000F)

;; MessageId: SCARD_E_NOT_READY
;;
;; MessageText:
;;
;;  The reader or smart card is not ready to accept commands
;;
(SCARD_E_NOT_READY #x80100010)

;; MessageId: SCARD_E_INVALID_VALUE
;;
;; MessageText:
;;
;;  One or more of the supplied parameters values could not be properly interpreted
;;
(SCARD_E_INVALID_VALUE #x80100011)

;; MessageId: SCARD_E_SYSTEM_CANCELLED
;;
;; MessageText:
;;
;;  The action was cancelled by the system, presumably to log off or shut down
;;
(SCARD_E_SYSTEM_CANCELLED #x80100012)

;; MessageId: SCARD_F_COMM_ERROR
;;
;; MessageText:
;;
;;  An internal communications error has been detected
;;
(SCARD_F_COMM_ERROR #x80100013)

;; MessageId: SCARD_F_UNKNOWN_ERROR
;;
;; MessageText:
;;
;;  An internal error has been detected, but the source is unknown
;;
(SCARD_F_UNKNOWN_ERROR #x80100014)

;; MessageId: SCARD_E_INVALID_ATR
;;
;; MessageText:
;;
;;  An ATR obtained from the registry is not a valid ATR string
;;
(SCARD_E_INVALID_ATR #x80100015)

;; MessageId: SCARD_E_NOT_TRANSACTED
;;
;; MessageText:
;;
;;  An attempt was made to end a non-existent transaction
;;
(SCARD_E_NOT_TRANSACTED #x80100016)

;; MessageId: SCARD_E_READER_UNAVAILABLE
;;
;; MessageText:
;;
;;  The specified reader is not currently available for use
;;
(SCARD_E_READER_UNAVAILABLE #x80100017)

;; MessageId: SCARD_P_SHUTDOWN
;;
;; MessageText:
;;
;;  PRIVATE -- Internal flag to force server termination
;;
(SCARD_P_SHUTDOWN #x80100018)

;; MessageId: SCARD_E_PCI_TOO_SMALL
;;
;; MessageText:
;;
;;  The PCI Receive buffer was too small
;;
(SCARD_E_PCI_TOO_SMALL #x80100019)

;; MessageId: SCARD_E_READER_UNSUPPORTED
;;
;; MessageText:
;;
;;  The reader driver does not meet minimal requirements for support
;;
(SCARD_E_READER_UNSUPPORTED #x8010001A)

;; MessageId: SCARD_E_DUPLICATE_READER
;;
;; MessageText:
;;
;;  The reader driver did not produce a unique reader name
;;
(SCARD_E_DUPLICATE_READER #x8010001B)

;; MessageId: SCARD_E_CARD_UNSUPPORTED
;;
;; MessageText:
;;
;;  The smart card does not meet minimal requirements for support
;;
(SCARD_E_CARD_UNSUPPORTED #x8010001C)

;; MessageId: SCARD_E_NO_SERVICE
;;
;; MessageText:
;;
;;  The Smart card resource manager is not running
;;
(SCARD_E_NO_SERVICE #x8010001D)

;; MessageId: SCARD_E_SERVICE_STOPPED
;;
;; MessageText:
;;
;;  The Smart card resource manager has shut down
;;
(SCARD_E_SERVICE_STOPPED #x8010001E)

;; MessageId: SCARD_E_UNEXPECTED
;;
;; MessageText:
;;
;;  An unexpected card error has occurred
;;
(SCARD_E_UNEXPECTED #x8010001F)

;; MessageId: SCARD_E_ICC_INSTALLATION
;;
;; MessageText:
;;
;;  No Primary Provider can be found for the smart card
;;
(SCARD_E_ICC_INSTALLATION #x80100020)

;; MessageId: SCARD_E_ICC_CREATEORDER
;;
;; MessageText:
;;
;;  The requested order of object creation is not supported
;;
(SCARD_E_ICC_CREATEORDER #x80100021)

;; MessageId: SCARD_E_UNSUPPORTED_FEATURE
;;
;; MessageText:
;;
;;  This smart card does not support the reqested feature
;;
(SCARD_E_UNSUPPORTED_FEATURE #x80100022)

;; MessageId: SCARD_E_DIR_NOT_FOUND
;;
;; MessageText:
;;
;;  The identified directory does not exist in the smart card
;;
(SCARD_E_DIR_NOT_FOUND #x80100023)

;; MessageId: SCARD_E_FILE_NOT_FOUND
;;
;; MessageText:
;;
;;  The identified file does not exist in the smart card
;;
(SCARD_E_FILE_NOT_FOUND #x80100024)

;; MessageId: SCARD_E_NO_DIR
;;
;; MessageText:
;;
;;  The supplied path does not represent a smart card directory
;;
(SCARD_E_NO_DIR #x80100025)

;; MessageId: SCARD_E_NO_FILE
;;
;; MessageText:
;;
;;  The supplied path does not represent a smart card file
;;
(SCARD_E_NO_FILE #x80100026)

;; MessageId: SCARD_E_NO_ACCESS
;;
;; MessageText:
;;
;;  Access is denied to this file
;;
(SCARD_E_NO_ACCESS #x80100027)

;; MessageId: SCARD_E_WRITE_TOO_MANY
;;
;; MessageText:
;;
;;  An attempt was made to write more data than would fit in the target object
;;
(SCARD_E_WRITE_TOO_MANY #x80100028)

;; MessageId: SCARD_E_BAD_SEEK
;;
;; MessageText:
;;
;;  There was an error trying to set the smart card file object pointer
;;
(SCARD_E_BAD_SEEK #x80100029)

;; MessageId: SCARD_E_INVALID_CHV
;;
;; MessageText:
;;
;;  The supplied PIN is incorrect
;;
(SCARD_E_INVALID_CHV #x8010002A)

;; MessageId: SCARD_E_UNKNOWN_RES_MNG
;;
;; MessageText:
;;
;;  An unrecognized error code was returned from a layered component
;;
(SCARD_E_UNKNOWN_RES_MNG #x8010002B)

;; MessageId: SCARD_E_NO_SUCH_CERTIFICATE
;;
;; MessageText:
;;
;;  The requested certificate does not exist.
;;
(SCARD_E_NO_SUCH_CERTIFICATE #x8010002C)

;; MessageId: SCARD_E_CERTIFICATE_UNAVAILABLE
;;
;; MessageText:
;;
;;  The requested certificate could not be obtained.
;;
(SCARD_E_CERTIFICATE_UNAVAILABLE #x8010002D)

;; MessageId: SCARD_E_NO_READERS_AVAILABLE
;;
;; MessageText:
;;
;;  None of the specified readers are currently available for use
;;
(SCARD_E_NO_READERS_AVAILABLE #x8010002E)

;; MessageId: SCARD_E_COMM_DATA_LOST
;;
;; MessageText:
;;
;;  A communications error with the smart card has been detected.  Retry the operation.
;;
(SCARD_E_COMM_DATA_LOST #x8010002F)

;; These are warning codes.
;;
;;
;; MessageId: SCARD_W_UNSUPPORTED_CARD
;;
;; MessageText:
;;
;;  The reader cannot communicate with the smart card, due to ATR configuration conflicts
;;
(SCARD_W_UNSUPPORTED_CARD #x80100065)

;; MessageId: SCARD_W_UNRESPONSIVE_CARD
;;
;; MessageText:
;;
;;  The smart card is not responding to a reset
;;
(SCARD_W_UNRESPONSIVE_CARD #x80100066)

;; MessageId: SCARD_W_UNPOWERED_CARD
;;
;; MessageText:
;;
;;  Power has been removed from the smart card, so that further communication is not possible
;;
(SCARD_W_UNPOWERED_CARD #x80100067)

;; MessageId: SCARD_W_RESET_CARD
;;
;; MessageText:
;;
;;  The smart card has been reset, so any shared state information is invalid
;;
(SCARD_W_RESET_CARD #x80100068)

;; MessageId: SCARD_W_REMOVED_CARD
;;
;; MessageText:
;;
;;  The smart card has been removed, so that further communication is not possible
;;
(SCARD_W_REMOVED_CARD #x80100069)

;; MessageId: SCARD_W_SECURITY_VIOLATION
;;
;; MessageText:
;;
;;  Access was denied because of a security violation
;;
(SCARD_W_SECURITY_VIOLATION #x8010006A)

;; MessageId: SCARD_W_WRONG_CHV
;;
;; MessageText:
;;
;;  The card cannot be accessed because the wrong PIN was presented
;;
(SCARD_W_WRONG_CHV #x8010006B)

;; MessageId: SCARD_W_CHV_BLOCKED
;;
;; MessageText:
;;
;;  The card cannot be accessed because the maximum number of PIN entry attempts has been reached
;;
(SCARD_W_CHV_BLOCKED #x8010006C)

;; MessageId: SCARD_W_EOF
;;
;; MessageText:
;;
;;  The end of the smart card file has been reached
;;
(SCARD_W_EOF #x8010006D)

;; MessageId: SCARD_W_CANCELLED_BY_USER
;;
;; MessageText:
;;
;;  The action was cancelled by the user
;;
(SCARD_W_CANCELLED_BY_USER #x8010006E)))