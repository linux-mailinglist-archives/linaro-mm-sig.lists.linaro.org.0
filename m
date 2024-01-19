Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 99761832A1C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 14:11:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84F8243E57
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 13:11:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	by lists.linaro.org (Postfix) with ESMTPS id DC8D53E930
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jan 2024 13:11:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=A9VDgZOm;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.11 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1705669868; x=1737205868;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=J/z83Xg047XGvf3ennA+Sk+uHgqEASMgOJ1cSPBD8MU=;
  b=A9VDgZOmwpNiGZxc75WYUoSh93L/9gq1xeFeilfPKl+Kc4qQ5CXw40Qr
   829ZCdi1tsgqFERF3IElYS1uOZiWDPzj4BtGyTDCGHaIFvQlkpYjVfhZ9
   /mYLXfLJMn7/IfA2c7qMBxMWwCwQbvuaoxIwvts7HVVR5yuH2RhIFIRbL
   kSiiUKiJtLE+7+4EF2ZNgNh6t5ofMTPv6cyJ1ELpU75OR45aZX0hLlM20
   BRD2V5pif4xV72uDLq7crYEPawAQUN9vKhppW3OWwvmaiwCD8PIYW7dmb
   YJTMIi59omNd9DqkJMfGJ+O/YagDgEf+G7t+EQXVnc+iIoHDfu9bKvZXj
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="7443368"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400";
   d="scan'208";a="7443368"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jan 2024 05:11:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="785069304"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400";
   d="scan'208";a="785069304"
Received: from lkp-server01.sh.intel.com (HELO 961aaaa5b03c) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 19 Jan 2024 05:11:01 -0800
Received: from kbuild by 961aaaa5b03c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rQoeA-00044W-37;
	Fri, 19 Jan 2024 13:10:58 +0000
Date: Fri, 19 Jan 2024 21:10:06 +0800
From: kernel test robot <lkp@intel.com>
To: Paul Cercueil <paul@crapouillou.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202401192043.6DTnLlKn-lkp@intel.com>
References: <20240117122646.41616-4-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240117122646.41616-4-paul@crapouillou.net>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,crapouillou.net,analog.com,vger.kernel.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,gmail.com,kernel.org];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DC8D53E930
X-Spamd-Bar: ----
Message-ID-Hash: LYR6PB7Q7PD4ZY4AWO5FOCLVMI2MSSDJ
X-Message-ID-Hash: LYR6PB7Q7PD4ZY4AWO5FOCLVMI2MSSDJ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Paul Cercueil <paul@crapouillou.net>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 3/4] usb: gadget: functionfs: Add DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LYR6PB7Q7PD4ZY4AWO5FOCLVMI2MSSDJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Paul,

kernel test robot noticed the following build errors:

[auto build test ERROR on usb/usb-testing]
[also build test ERROR on usb/usb-next usb/usb-linus lwn/docs-next linus/master v6.7 next-20240119]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-Cercueil/usb-gadget-Support-already-mapped-DMA-SGs/20240117-203111
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
patch link:    https://lore.kernel.org/r/20240117122646.41616-4-paul%40crapouillou.net
patch subject: [PATCH v4 3/4] usb: gadget: functionfs: Add DMABUF import interface
config: arm-randconfig-r112-20240119 (https://download.01.org/0day-ci/archive/20240119/202401192043.6DTnLlKn-lkp@intel.com/config)
compiler: ClangBuiltLinux clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce: (https://download.01.org/0day-ci/archive/20240119/202401192043.6DTnLlKn-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202401192043.6DTnLlKn-lkp@intel.com/

All errors (new ones prefixed by >>):

>> ld.lld: error: undefined symbol: dma_buf_get
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
--
>> ld.lld: error: undefined symbol: dma_buf_detach
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
   >>> referenced 2 more times
--
>> ld.lld: error: undefined symbol: dma_fence_init
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
--
>> ld.lld: error: undefined symbol: dma_resv_add_fence
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
--
>> ld.lld: error: undefined symbol: dma_fence_signal
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_dmabuf_io_complete) in archive vmlinux.a
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_dmabuf_signal_done) in archive vmlinux.a
--
>> ld.lld: error: undefined symbol: dma_fence_release
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(dma_fence_put) in archive vmlinux.a
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_dmabuf_unmap_work) in archive vmlinux.a
--
>> ld.lld: error: undefined symbol: dma_buf_put
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
   >>> referenced 2 more times
--
>> ld.lld: error: undefined symbol: dma_buf_attach
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
--
>> ld.lld: error: undefined symbol: dma_fence_context_alloc
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
--
>> ld.lld: error: undefined symbol: dma_resv_test_signaled
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
--
>> ld.lld: error: undefined symbol: dma_buf_map_attachment
   >>> referenced by f_fs.c
   >>>               drivers/usb/gadget/function/f_fs.o:(ffs_epfile_ioctl) in archive vmlinux.a
..

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
