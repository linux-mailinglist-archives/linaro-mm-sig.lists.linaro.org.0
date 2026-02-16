Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJQPIO+Ck2k46AEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Feb 2026 21:49:51 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 106281478AB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Feb 2026 21:49:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E70D040140
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Feb 2026 20:49:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	by lists.linaro.org (Postfix) with ESMTPS id 8F8743F7EC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Feb 2026 20:49:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=XFjumcAS;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.18 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771274980; x=1802810980;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=kLdYIq6SYQsYCiukpbRLt9V5tJH5I16KOa7znlZAcK4=;
  b=XFjumcASHQfSdkigZLGg4FRKoqbLw4cI8UzywbNBoEl0ZmWbfewOleV1
   iLco+wDHdTxGMpDPaIcFu4vaQ0vdQax5FHdv6LQ5cT2iVcPC+TJGFxfJh
   ji50C0VKPfiBoUL9itbnnSfaPu2i+JiwZyJm9VM7wx1p62i/z+4V1SA2M
   IPy3Px6zBP2UaBveeKyl8MCbngmjP7oBfwpiVUIdEvMZ1nuekyRkdmfH3
   LA8oogSrDdTEHimoHBGR6tYK60+gWM/wR/GLjR4+M5FgQZyWG8c868ZJ/
   fFfrpnt0x3GDglHASUBsX7pG+2z7d99QghrfcqhzGyUMzEYVkHgSupTmn
   A==;
X-CSE-ConnectionGUID: vsPKkqTUSveaegeE5Xcb1w==
X-CSE-MsgGUID: g0JgChKwRaGnY6jn5OIJFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="72399703"
X-IronPort-AV: E=Sophos;i="6.21,294,1763452800";
   d="scan'208";a="72399703"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2026 12:49:39 -0800
X-CSE-ConnectionGUID: nahu5ToeTQ2eopx+iuUz6g==
X-CSE-MsgGUID: ogXU4/T0T/uV3GV2X23/Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,294,1763452800";
   d="scan'208";a="218232127"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by fmviesa005.fm.intel.com with ESMTP; 16 Feb 2026 12:49:32 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vs5X8-000000010H2-0ZIN;
	Mon, 16 Feb 2026 20:49:30 +0000
Date: Tue, 17 Feb 2026 04:48:56 +0800
From: kernel test robot <lkp@intel.com>
To: Larisa Grigore <larisa.grigore@oss.nxp.com>, gregkh@linuxfoundation.org,
	jirislaby@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, sumit.semwal@linaro.org,
	christian.koenig@amd.com, chester62515@gmail.com,
	cosmin.stoica@nxp.com, adrian.nitu@freescale.com,
	stefan-gabriel.mirea@nxp.com, Mihaela.Martinas@freescale.com
Message-ID: <202602170428.SOCWu0Wb-lkp@intel.com>
References: <20260216150205.212318-13-larisa.grigore@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260216150205.212318-13-larisa.grigore@oss.nxp.com>
X-Spamd-Bar: ----
Message-ID-Hash: NYJ2NIMSINCASNUC5DNDC7O42ZIED5C2
X-Message-ID-Hash: NYJ2NIMSINCASNUC5DNDC7O42ZIED5C2
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com, aruizrui@redhat.com, eballetb@redhat.com, echanude@redhat.com, jkangas@redhat.com, Larisa Grigore <larisa.grigore@oss.nxp.com>, Radu Pirea <radu-nicolae.pirea@nxp.com>, Phu Luu An <phu.luuan@nxp.com>, Js Ha <js.ha@nxp.com>, Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/13] serial: linflexuart: Add DMA support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NYJ2NIMSINCASNUC5DNDC7O42ZIED5C2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
	RCPT_COUNT_TWELVE(0.00)[32];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,intel.com:mid,intel.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 106281478AB
X-Rspamd-Action: no action

Hi Larisa,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tty/tty-testing]
[also build test WARNING on tty/tty-next tty/tty-linus usb/usb-testing usb/usb-next usb/usb-linus robh/for-next linus/master v6.19 next-20260216]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Larisa-Grigore/serial-linflexuart-Fix-locking-in-set_termios/20260216-231403
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git tty-testing
patch link:    https://lore.kernel.org/r/20260216150205.212318-13-larisa.grigore%40oss.nxp.com
patch subject: [PATCH 12/13] serial: linflexuart: Add DMA support
config: parisc-randconfig-001-20260217 (https://download.01.org/0day-ci/archive/20260217/202602170428.SOCWu0Wb-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 15.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260217/202602170428.SOCWu0Wb-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602170428.SOCWu0Wb-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/tty/serial/fsl_linflexuart.c:205:13: warning: 'linflex_console_putchar' declared 'static' but never defined [-Wunused-function]
     205 | static void linflex_console_putchar(struct uart_port *port, unsigned char ch);
         |             ^~~~~~~~~~~~~~~~~~~~~~~


vim +205 drivers/tty/serial/fsl_linflexuart.c

   202	
   203	static void linflex_dma_tx_complete(void *arg);
   204	static void linflex_dma_rx_complete(void *arg);
 > 205	static void linflex_console_putchar(struct uart_port *port, unsigned char ch);
   206	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
