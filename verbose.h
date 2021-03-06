/*
 * $Source: e:/source/tools/verbose.h,v $
 * $Revision: 1.2 $
 * $Date: 1997/01/22 00:42:25 $
 * $Author: vitus $
 *
 * Interface to verbose.c
 *
 * $Log: verbose.h,v $
 * Revision 1.2  1997/01/22 00:42:25  vitus
 * Added LOGBUFSIZ
 * Loglevel now unsigned
 *
 * Revision 1.1  1996/01/27 02:53:40  vitus
 * Initial revision
 *
 */

#if !defined(LOGBUFSIZ)
# define LOGBUFSIZ	1024
#endif


#define VL_FATAL	0			/* fatal error */
#define VL_ERROR	1			/* prohibits normal operation */
#define VL_WARN		2			/* nice to know */
#define VL_OTHER	3			/* 'quassel' */


extern void	Verbose(unsigned level,char *fmt,...);
extern HFILE	SetLogfile(HFILE);
extern unsigned	SetLoglevel(unsigned);


