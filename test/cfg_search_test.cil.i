# 1 "./cfg_search_test.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./cfg_search_test.cil.c"
# 17 "cfg_search_test.c"
void __globinit_cfg_search_test(void) ;
extern void __CrestInit(void) __attribute__((__crest_skip__)) ;
extern void __CrestHandleReturn(int id , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestReturn(int id ) __attribute__((__crest_skip__)) ;
extern void __CrestCall(int id , unsigned int fid ) __attribute__((__crest_skip__)) ;
extern void __CrestBranch(int id , int bid , unsigned char b ) __attribute__((__crest_skip__)) ;
extern void __CrestApply2(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestApply1(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestClearStack(int id ) __attribute__((__crest_skip__)) ;
extern void __CrestStore(int id , unsigned long addr ) __attribute__((__crest_skip__)) ;
extern void __CrestLoad(int id , unsigned long addr , long long val ) __attribute__((__crest_skip__)) ;
# 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
typedef unsigned long size_t;
# 131 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off_t;
# 132 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off64_t;
# 44 "/usr/include/stdio.h"
struct _IO_FILE;
# 44 "/usr/include/stdio.h"
struct _IO_FILE;
# 48 "/usr/include/stdio.h"
typedef struct _IO_FILE FILE;
# 144 "/usr/include/libio.h"
struct _IO_FILE;
# 154 "/usr/include/libio.h"
typedef void _IO_lock_t;
# 160 "/usr/include/libio.h"
struct _IO_marker {
   struct _IO_marker *_next ;
   struct _IO_FILE *_sbuf ;
   int _pos ;
};
# 245 "/usr/include/libio.h"
struct _IO_FILE {
   int _flags ;
   char *_IO_read_ptr ;
   char *_IO_read_end ;
   char *_IO_read_base ;
   char *_IO_write_base ;
   char *_IO_write_ptr ;
   char *_IO_write_end ;
   char *_IO_buf_base ;
   char *_IO_buf_end ;
   char *_IO_save_base ;
   char *_IO_backup_base ;
   char *_IO_save_end ;
   struct _IO_marker *_markers ;
   struct _IO_FILE *_chain ;
   int _fileno ;
   int _flags2 ;
   __off_t _old_offset ;
   unsigned short _cur_column ;
   signed char _vtable_offset ;
   char _shortbuf[1] ;
   _IO_lock_t *_lock ;
   __off64_t _offset ;
   void *__pad1 ;
   void *__pad2 ;
   void *__pad3 ;
   void *__pad4 ;
   size_t __pad5 ;
   int _mode ;
   char _unused2[(15UL * sizeof(int ) - 4UL * sizeof(void *)) - sizeof(size_t )] ;
};
# 197 "../bin/../include/crest.h"
extern void __CrestUChar(unsigned char *x ) __attribute__((__crest_skip__)) ;
# 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 170 "/usr/include/stdio.h"
extern struct _IO_FILE *stderr ;
# 356 "/usr/include/stdio.h"
extern int fprintf(FILE * __restrict __stream , char const * __restrict __format
                   , ...) ;
# 15 "cfg_search_test.c"
int data[200] ;
# 17 "cfg_search_test.c"
int main(void)
{
  unsigned char c ;
  int i ;
  int i___0 ;
  int a ;
  int __retres5 ;

  {
  __globinit_cfg_search_test();
  __CrestCall(1, 1);
# 19 "cfg_search_test.c"
  __CrestUChar(& c);
  __CrestLoad(2, (unsigned long )0, (long long )0);
  __CrestStore(3, (unsigned long )(& i));
# 21 "cfg_search_test.c"
  i = 0;
  __CrestLoad(6, (unsigned long )(& i), (long long )i);
  __CrestLoad(5, (unsigned long )0, (long long )200);
  __CrestApply2(4, 16, (long long )(i < 200));
  if (i < 200) {
    __CrestBranch(7, 4, 1);
    __CrestLoad(9, (unsigned long )0, (long long )400);
    __CrestStore(10, (unsigned long )(& data[i]));
    data[i] = 400;
    __CrestLoad(13, (unsigned long )(& i), (long long )i);
    __CrestLoad(12, (unsigned long )0, (long long )1);
    __CrestApply2(11, 0, (long long )(i + 1));
    __CrestStore(14, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(8, 5, 0);

  }
  __CrestLoad(17, (unsigned long )(& i), (long long )i);
  __CrestLoad(16, (unsigned long )0, (long long )200);
  __CrestApply2(15, 16, (long long )(i < 200));
  if (i < 200) {
    __CrestBranch(18, 7, 1);
    __CrestLoad(20, (unsigned long )0, (long long )400);
    __CrestStore(21, (unsigned long )(& data[i]));
    data[i] = 400;
    __CrestLoad(24, (unsigned long )(& i), (long long )i);
    __CrestLoad(23, (unsigned long )0, (long long )1);
    __CrestApply2(22, 0, (long long )(i + 1));
    __CrestStore(25, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(19, 8, 0);

  }
  __CrestLoad(26, (unsigned long )0, (long long )13);
  __CrestStore(27, (unsigned long )(& data[100]));
# 24 "cfg_search_test.c"
  data[100] = 13;
  __CrestLoad(28, (unsigned long )0, (long long )0);
  __CrestStore(29, (unsigned long )(& i___0));
# 26 "cfg_search_test.c"
  i___0 = 0;
  __CrestLoad(32, (unsigned long )(& i___0), (long long )i___0);
  __CrestLoad(31, (unsigned long )0, (long long )200);
  __CrestApply2(30, 16, (long long )(i___0 < 200));
  if (i___0 < 200) {
    __CrestBranch(33, 12, 1);
    {
    __CrestLoad(37, (unsigned long )(& c), (long long )c);
    __CrestLoad(36, (unsigned long )(& data[i___0]), (long long )data[i___0]);
    __CrestApply2(35, 12, (long long )((int )c == data[i___0]));
    if ((int )c == data[i___0]) {
      __CrestBranch(38, 13, 1);
      fprintf((FILE * __restrict )stderr, (char const * __restrict )"GOAL!\n");
      __CrestClearStack(40);
    } else {
      __CrestBranch(39, 14, 0);

    }
    }
    __CrestInt(& a);
    __CrestLoad(43, (unsigned long )(& i___0), (long long )i___0);
    __CrestLoad(42, (unsigned long )0, (long long )1);
    __CrestApply2(41, 0, (long long )(i___0 + 1));
    __CrestStore(44, (unsigned long )(& i___0));
    i___0 ++;
  } else {
    __CrestBranch(34, 16, 0);

  }
  __CrestLoad(47, (unsigned long )(& i___0), (long long )i___0);
  __CrestLoad(46, (unsigned long )0, (long long )200);
  __CrestApply2(45, 16, (long long )(i___0 < 200));
  if (i___0 < 200) {
    __CrestBranch(48, 18, 1);
    {
    __CrestLoad(52, (unsigned long )(& c), (long long )c);
    __CrestLoad(51, (unsigned long )(& data[i___0]), (long long )data[i___0]);
    __CrestApply2(50, 12, (long long )((int )c == data[i___0]));
    if ((int )c == data[i___0]) {
      __CrestBranch(53, 19, 1);
      fprintf((FILE * __restrict )stderr, (char const * __restrict )"GOAL!\n");
      __CrestClearStack(55);
    } else {
      __CrestBranch(54, 20, 0);

    }
    }
    __CrestInt(& a);
    __CrestLoad(58, (unsigned long )(& i___0), (long long )i___0);
    __CrestLoad(57, (unsigned long )0, (long long )1);
    __CrestApply2(56, 0, (long long )(i___0 + 1));
    __CrestStore(59, (unsigned long )(& i___0));
    i___0 ++;
  } else {
    __CrestBranch(49, 22, 0);

  }
  __CrestLoad(60, (unsigned long )0, (long long )0);
  __CrestStore(61, (unsigned long )(& __retres5));
# 38 "cfg_search_test.c"
  __retres5 = 0;
  __CrestLoad(62, (unsigned long )(& __retres5), (long long )__retres5);
  __CrestReturn(63);
# 17 "cfg_search_test.c"
  return (__retres5);
}
}
void __globinit_cfg_search_test(void)
{


  {
  __CrestInit();
}
}
