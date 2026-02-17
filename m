Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMsWDx/gk2n09QEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Feb 2026 04:27:27 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A59A91489D7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Feb 2026 04:27:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5265E400F8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Feb 2026 03:27:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
	by lists.linaro.org (Postfix) with ESMTPS id F03E43F961
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Feb 2026 03:27:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="W0qZ/8zD";
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.7 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771298839; x=1802834839;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=2m6koxxuM7n6l/jOLQFHEQ1o9KyPZ+dboD1swuR9uQY=;
  b=W0qZ/8zD4e4WbxL7kPH6LsGXJSrwhgF4vyJ5kmMf3/hFIy+U1n1qFp/0
   MGBybQHZgwcy9qrpyqrfbu2xiVAcji7cDHjoRFZRrsyonMJYw7NyYnXs3
   cA+No+tdFY/G2tr45HXA0yd8hq7peT7FqT+0pQ5iU+1clBe8avJAWb3OU
   CGL3qFokUXc8t0XpH1ml8sREKG/IQZGrkF2r5SYGCPBXzi57MnmIQCf0R
   gw486BK6qzYvopj03Hwe8JHVOqcrU2jDFOb+xnex1se2QNzEW7JMYAg2l
   C+kHFT9lVrwXY2P+WhA+5G277H8RXzdDYecSr3ICIQVPv+4Kw9Ymo9GKX
   A==;
X-CSE-ConnectionGUID: UqlDrhWrTWOd4GSkotK8Dw==
X-CSE-MsgGUID: F5GGx6sJQC+OY1CLSdcnOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="97829867"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800";
   d="scan'208";a="97829867"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2026 19:27:18 -0800
X-CSE-ConnectionGUID: DlXPHptKQkOBfFFlFw7TwA==
X-CSE-MsgGUID: DTibiXF/SNqAIcHhtzd3Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800";
   d="scan'208";a="217726185"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by fmviesa004.fm.intel.com with ESMTP; 16 Feb 2026 19:27:11 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vsBjx-000000010aG-0HmP;
	Tue, 17 Feb 2026 03:27:09 +0000
Date: Tue, 17 Feb 2026 11:26:28 +0800
From: kernel test robot <lkp@intel.com>
To: Larisa Grigore <larisa.grigore@oss.nxp.com>, gregkh@linuxfoundation.org,
	jirislaby@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, sumit.semwal@linaro.org,
	christian.koenig@amd.com, chester62515@gmail.com,
	cosmin.stoica@nxp.com, adrian.nitu@freescale.com,
	stefan-gabriel.mirea@nxp.com, Mihaela.Martinas@freescale.com
Message-ID: <202602171112.rMhRspEp-lkp@intel.com>
References: <20260216150205.212318-13-larisa.grigore@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260216150205.212318-13-larisa.grigore@oss.nxp.com>
X-Spamd-Bar: -----
Message-ID-Hash: G6H6CIVXMBUULHB5SOS6RTVUB6V3TTSK
X-Message-ID-Hash: G6H6CIVXMBUULHB5SOS6RTVUB6V3TTSK
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com, aruizrui@redhat.com, eballetb@redhat.com, echanude@redhat.com, jkangas@redhat.com, Larisa Grigore <larisa.grigore@oss.nxp.com>, Radu Pirea <radu-nicolae.pirea@nxp.com>, Phu Luu An <phu.luuan@nxp.com>, Js Ha <js.ha@nxp.com>, Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/13] serial: linflexuart: Add DMA support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G6H6CIVXMBUULHB5SOS6RTVUB6V3TTSK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[oss.nxp.com,linuxfoundation.org,kernel.org,linaro.org,amd.com,gmail.com,nxp.com,freescale.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,git-scm.com:url,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: A59A91489D7
X-Rspamd-Action: no action

Hi Larisa,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tty/tty-testing]
[also build test WARNING on tty/tty-next tty/tty-linus usb/usb-testing usb/=
usb-next usb/usb-linus robh/for-next linus/master v6.19 next-20260216]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Larisa-Grigore/seria=
l-linflexuart-Fix-locking-in-set_termios/20260216-231403
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git tty-=
testing
patch link:    https://lore.kernel.org/r/20260216150205.212318-13-larisa.gr=
igore%40oss.nxp.com
patch subject: [PATCH 12/13] serial: linflexuart: Add DMA support
config: i386-buildonly-randconfig-002-20260217 (https://download.01.org/0da=
y-ci/archive/20260217/202602171112.rMhRspEp-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f022=
7cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20260217/202602171112.rMhRspEp-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602171112.rMhRspEp-lkp@i=
ntel.com/

All warnings (new ones prefixed by >>):

>> drivers/tty/serial/fsl_linflexuart.c:1095:6: warning: variable 'baud' is=
 used uninitialized whenever 'if' condition is false [-Wsometimes-uninitial=
ized]
    1095 |         if (port->uartclk) {
         |             ^~~~~~~~~~~~~
   drivers/tty/serial/fsl_linflexuart.c:1113:67: note: uninitialized use oc=
curs here
    1113 |         lfport->dma_rx_timeout =3D msecs_to_jiffies(DIV_ROUND_UP=
(10000000, baud));
         |                                                                 =
         ^~~~
   include/linux/math.h:49:22: note: expanded from macro 'DIV_ROUND_UP'
      49 | #define DIV_ROUND_UP __KERNEL_DIV_ROUND_UP
         |                      ^
   include/uapi/linux/const.h:51:46: note: expanded from macro '__KERNEL_DI=
V_ROUND_UP'
      51 | #define __KERNEL_DIV_ROUND_UP(n, d) (((n) + (d) - 1) / (d))
         |                                              ^
   drivers/tty/serial/fsl_linflexuart.c:1095:2: note: remove the 'if' if it=
s condition is always true
    1095 |         if (port->uartclk) {
         |         ^~~~~~~~~~~~~~~~~~
   drivers/tty/serial/fsl_linflexuart.c:970:19: note: initialize the variab=
le 'baud' to silence this warning
     970 |         unsigned int baud;
         |                          ^
         |                           =3D 0
   drivers/tty/serial/fsl_linflexuart.c:205:13: warning: unused function 'l=
inflex_console_putchar' [-Wunused-function]
     205 | static void linflex_console_putchar(struct uart_port *port, unsi=
gned char ch);
         |             ^~~~~~~~~~~~~~~~~~~~~~~
   2 warnings generated.


vim +1095 drivers/tty/serial/fsl_linflexuart.c

1d3f5f07fafc712 Radu Pirea           2026-02-16   959 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   960  static void
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   961  linflex_set_termios(=
struct uart_port *port, struct ktermios *termios,
bec5b814d46c2a7 Ilpo J=E4rvinen        2022-08-16   962  		    const struct=
 ktermios *old)
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   963  {
0b34325c5f79f1f Larisa Grigore       2026-02-16   964  	struct linflex_port=
 *lfport =3D to_linflex_port(port);
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   965  	unsigned long flags;
1312e6586227421 Larisa Grigore       2026-02-16   966  	unsigned long cr, o=
ld_cr, cr1, gcr;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   967  	unsigned int old_cs=
ize =3D old ? old->c_cflag & CSIZE : CS8;
1d3f5f07fafc712 Radu Pirea           2026-02-16   968  	unsigned long ibr, =
fbr, divisr, dividr;
1d3f5f07fafc712 Radu Pirea           2026-02-16   969  	unsigned char ldiv_=
mul;
1d3f5f07fafc712 Radu Pirea           2026-02-16   970  	unsigned int baud;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   971 =20
a75137a58feb092 Radu Pirea           2026-02-16   972  	uart_port_lock_irqs=
ave(port, &flags);
a75137a58feb092 Radu Pirea           2026-02-16   973 =20
0b34325c5f79f1f Larisa Grigore       2026-02-16   974  	_linflex_stop_rx(po=
rt);
0b34325c5f79f1f Larisa Grigore       2026-02-16   975  	_linflex_stop_tx(po=
rt);
0b34325c5f79f1f Larisa Grigore       2026-02-16   976 =20
fb1da4d7f0bec28 Larisa Grigore       2026-02-16   977  	old_cr =3D readl(po=
rt->membase + UARTCR) &
fb1da4d7f0bec28 Larisa Grigore       2026-02-16   978  		~(LINFLEXD_UARTCR_=
RXEN | LINFLEXD_UARTCR_TXEN);
fb1da4d7f0bec28 Larisa Grigore       2026-02-16   979  	cr =3D old_cr;
fb1da4d7f0bec28 Larisa Grigore       2026-02-16   980 =20
fb1da4d7f0bec28 Larisa Grigore       2026-02-16   981  	/* In FIFO mode, we=
 should make sure the fifo is empty
fb1da4d7f0bec28 Larisa Grigore       2026-02-16   982  	 * before entering =
INITM.
fb1da4d7f0bec28 Larisa Grigore       2026-02-16   983  	 */
fb1da4d7f0bec28 Larisa Grigore       2026-02-16   984  	linflex_wait_tx_fif=
o_empty(port);
fb1da4d7f0bec28 Larisa Grigore       2026-02-16   985 =20
fb1da4d7f0bec28 Larisa Grigore       2026-02-16   986  	/* disable transmit=
 and receive */
fb1da4d7f0bec28 Larisa Grigore       2026-02-16   987  	writel(old_cr, port=
->membase + UARTCR);
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   988 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   989  	/* Enter initializa=
tion mode by setting INIT bit */
5e8e1ccacae0470 Larisa Grigore       2026-02-16   990  	cr1 =3D LINFLEXD_LI=
NCR1_INIT | LINFLEXD_LINCR1_MME;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   991  	writel(cr1, port->m=
embase + LINCR1);
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   992 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   993  	/* wait for init mo=
de entry */
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   994  	while ((readl(port-=
>membase + LINSR)
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   995  		& LINFLEXD_LINSR_L=
INS_MASK)
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   996  		!=3D LINFLEXD_LINS=
R_LINS_INITMODE)
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   997  		;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   998 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09   999  	/*
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1000  	 * only support CS8=
 and CS7, and for CS7 must enable PE.
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1001  	 * supported mode:
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1002  	 *	- (7,e/o,1)
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1003  	 *	- (8,n,1)
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1004  	 *	- (8,e/o,1)
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1005  	 */
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1006  	/* enter the UART i=
nto configuration mode */
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1007 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1008  	while ((termios->c_=
cflag & CSIZE) !=3D CS8 &&
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1009  	       (termios->c_=
cflag & CSIZE) !=3D CS7) {
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1010  		termios->c_cflag &=
=3D ~CSIZE;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1011  		termios->c_cflag |=
=3D old_csize;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1012  		old_csize =3D CS8;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1013  	}
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1014 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1015  	if ((termios->c_cfl=
ag & CSIZE) =3D=3D CS7) {
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1016  		/* Word length: WL=
1WL0:00 */
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1017  		cr =3D old_cr & ~L=
INFLEXD_UARTCR_WL1 & ~LINFLEXD_UARTCR_WL0;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1018  	}
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1019 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1020  	if ((termios->c_cfl=
ag & CSIZE) =3D=3D CS8) {
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1021  		/* Word length: WL=
1WL0:01 */
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1022  		cr =3D (old_cr | L=
INFLEXD_UARTCR_WL0) & ~LINFLEXD_UARTCR_WL1;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1023  	}
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1024 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1025  	if (termios->c_cfla=
g & CMSPAR) {
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1026  		if ((termios->c_cf=
lag & CSIZE) !=3D CS8) {
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1027  			termios->c_cflag =
&=3D ~CSIZE;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1028  			termios->c_cflag =
|=3D CS8;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1029  		}
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1030  		/* has a space/sti=
cky bit */
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1031  		cr |=3D LINFLEXD_U=
ARTCR_WL0;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1032  	}
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1033 =20
1312e6586227421 Larisa Grigore       2026-02-16  1034  	gcr =3D readl(port-=
>membase + GCR);
1312e6586227421 Larisa Grigore       2026-02-16  1035 =20
1312e6586227421 Larisa Grigore       2026-02-16  1036  	if (termios->c_cfla=
g & CSTOPB) {
1312e6586227421 Larisa Grigore       2026-02-16  1037  		/* Use 2 stop bits=
. */
1312e6586227421 Larisa Grigore       2026-02-16  1038  		cr =3D (cr & ~LINF=
LEXD_UARTCR_SBUR_MASK) |
1312e6586227421 Larisa Grigore       2026-02-16  1039  			LINFLEXD_UARTCR_S=
BUR_2SBITS;
1312e6586227421 Larisa Grigore       2026-02-16  1040  		/* Set STOP in GCR=
 field for 2 stop bits. */
1312e6586227421 Larisa Grigore       2026-02-16  1041  		gcr =3D (gcr & ~LI=
NFLEXD_GCR_STOP_MASK) |
1312e6586227421 Larisa Grigore       2026-02-16  1042  			LINFLEXD_GCR_STOP=
_2SBITS;
1312e6586227421 Larisa Grigore       2026-02-16  1043  	} else {
1312e6586227421 Larisa Grigore       2026-02-16  1044  		/* Use 1 stop bit.=
 */
1312e6586227421 Larisa Grigore       2026-02-16  1045  		cr =3D (cr & ~LINF=
LEXD_UARTCR_SBUR_MASK) |
1312e6586227421 Larisa Grigore       2026-02-16  1046  			LINFLEXD_UARTCR_S=
BUR_1SBITS;
1312e6586227421 Larisa Grigore       2026-02-16  1047  		/* Set STOP in GCR=
 field for 1 stop bit. */
1312e6586227421 Larisa Grigore       2026-02-16  1048  		gcr =3D (gcr & ~LI=
NFLEXD_GCR_STOP_MASK) |
1312e6586227421 Larisa Grigore       2026-02-16  1049  			LINFLEXD_GCR_STOP=
_1SBITS;
1312e6586227421 Larisa Grigore       2026-02-16  1050  	}
1312e6586227421 Larisa Grigore       2026-02-16  1051  	/* Update GCR regis=
ter. */
1312e6586227421 Larisa Grigore       2026-02-16  1052  	writel(gcr, port->m=
embase + GCR);
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1053 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1054  	/* parity must be e=
nabled when CS7 to match 8-bits format */
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1055  	if ((termios->c_cfl=
ag & CSIZE) =3D=3D CS7)
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1056  		termios->c_cflag |=
=3D PARENB;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1057 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1058  	if ((termios->c_cfl=
ag & PARENB)) {
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1059  		cr |=3D LINFLEXD_U=
ARTCR_PCE;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1060  		if (termios->c_cfl=
ag & PARODD)
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1061  			cr =3D (cr | LINF=
LEXD_UARTCR_PC0) &
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1062  			     (~LINFLEXD_U=
ARTCR_PC1);
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1063  		else
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1064  			cr =3D cr & (~LIN=
FLEXD_UARTCR_PC1 &
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1065  				   ~LINFLEXD_UAR=
TCR_PC0);
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1066  	} else {
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1067  		cr &=3D ~LINFLEXD_=
UARTCR_PCE;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1068  	}
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1069 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1070  	port->read_status_m=
ask =3D 0;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1071 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1072  	if (termios->c_ifla=
g & INPCK)
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1073  		port->read_status_=
mask |=3D	(LINFLEXD_UARTSR_FEF |
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1074  						 LINFLEXD_UART=
SR_PE0 |
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1075  						 LINFLEXD_UART=
SR_PE1 |
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1076  						 LINFLEXD_UART=
SR_PE2 |
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1077  						 LINFLEXD_UART=
SR_PE3);
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1078  	if (termios->c_ifla=
g & (IGNBRK | BRKINT | PARMRK))
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1079  		port->read_status_=
mask |=3D LINFLEXD_UARTSR_FEF;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1080 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1081  	/* characters to ig=
nore */
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1082  	port->ignore_status=
_mask =3D 0;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1083  	if (termios->c_ifla=
g & IGNPAR)
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1084  		port->ignore_statu=
s_mask |=3D LINFLEXD_UARTSR_PE;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1085  	if (termios->c_ifla=
g & IGNBRK) {
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1086  		port->ignore_statu=
s_mask |=3D LINFLEXD_UARTSR_PE;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1087  		/*
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1088  		 * if we're ignori=
ng parity and break indicators,
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1089  		 * ignore overruns=
 too (for real raw support).
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1090  		 */
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1091  		if (termios->c_ifl=
ag & IGNPAR)
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1092  			port->ignore_stat=
us_mask |=3D LINFLEXD_UARTSR_BOF;
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1093  	}
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1094 =20
1d3f5f07fafc712 Radu Pirea           2026-02-16 @1095  	if (port->uartclk) {
1d3f5f07fafc712 Radu Pirea           2026-02-16  1096  		ldiv_mul =3D linfl=
ex_ldiv_multiplier(port);
1d3f5f07fafc712 Radu Pirea           2026-02-16  1097  		baud =3D uart_get_=
baud_rate(port, termios, old, 0,
1d3f5f07fafc712 Radu Pirea           2026-02-16  1098  					  port->uartclk=
 / ldiv_mul);
1d3f5f07fafc712 Radu Pirea           2026-02-16  1099 =20
1d3f5f07fafc712 Radu Pirea           2026-02-16  1100  		/* update the per-=
port timeout */
1d3f5f07fafc712 Radu Pirea           2026-02-16  1101  		uart_update_timeou=
t(port, termios->c_cflag, baud);
1d3f5f07fafc712 Radu Pirea           2026-02-16  1102 =20
1d3f5f07fafc712 Radu Pirea           2026-02-16  1103  		divisr =3D port->u=
artclk;
1d3f5f07fafc712 Radu Pirea           2026-02-16  1104  		dividr =3D ((unsig=
ned long)baud * ldiv_mul);
1d3f5f07fafc712 Radu Pirea           2026-02-16  1105 =20
1d3f5f07fafc712 Radu Pirea           2026-02-16  1106  		ibr =3D divisr / d=
ividr;
1d3f5f07fafc712 Radu Pirea           2026-02-16  1107  		fbr =3D ((divisr %=
 dividr) * 16 / dividr) & 0xF;
1d3f5f07fafc712 Radu Pirea           2026-02-16  1108 =20
1d3f5f07fafc712 Radu Pirea           2026-02-16  1109  		writel(ibr, port->=
membase + LINIBRR);
1d3f5f07fafc712 Radu Pirea           2026-02-16  1110  		writel(fbr, port->=
membase + LINFBRR);
1d3f5f07fafc712 Radu Pirea           2026-02-16  1111  	}
1d3f5f07fafc712 Radu Pirea           2026-02-16  1112 =20
0b34325c5f79f1f Larisa Grigore       2026-02-16  1113  	lfport->dma_rx_time=
out =3D msecs_to_jiffies(DIV_ROUND_UP(10000000, baud));
0b34325c5f79f1f Larisa Grigore       2026-02-16  1114 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1115  	writel(cr, port->me=
mbase + UARTCR);
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1116 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1117  	cr1 &=3D ~(LINFLEXD=
_LINCR1_INIT);
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1118 =20
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1119  	writel(cr1, port->m=
embase + LINCR1);
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1120 =20
fb1da4d7f0bec28 Larisa Grigore       2026-02-16  1121  	cr |=3D (LINFLEXD_U=
ARTCR_TXEN) | (LINFLEXD_UARTCR_RXEN);
fb1da4d7f0bec28 Larisa Grigore       2026-02-16  1122  	writel(cr, port->me=
mbase + UARTCR);
fb1da4d7f0bec28 Larisa Grigore       2026-02-16  1123 =20
0b34325c5f79f1f Larisa Grigore       2026-02-16  1124  	_linflex_start_rx(p=
ort);
0b34325c5f79f1f Larisa Grigore       2026-02-16  1125  	_linflex_start_tx(p=
ort);
0b34325c5f79f1f Larisa Grigore       2026-02-16  1126 =20
7c6725ffd581335 Thomas Gleixner      2023-09-14  1127  	uart_port_unlock_ir=
qrestore(port, flags);
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1128  }
09864c1cdf5c537 Stefan-gabriel Mirea 2019-08-09  1129 =20

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
