Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA6D832B4D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 15:26:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 069773E930
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 14:26:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	by lists.linaro.org (Postfix) with ESMTPS id 49C913E930
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jan 2024 14:26:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=CfDz30Yj;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.9 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1705674376; x=1737210376;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=6ZyFttJi9Pj6gtg9DPLGs15qvrUf2pvBuDiSTNdqKfw=;
  b=CfDz30Yjrl4bozpSwNI61bq301uuyg3EA3Mk1j5+a6nxiJbOgz/lnYTO
   nL4cyLKW2j1qL0uJgJX8Vf4mCz4fsuQpgRFv8mZ3oSqOYgPt3mUsr5+Bh
   7zHJmtxIGAUjUOB5gF79vTSow+rW/9TJ9bk0p/Co9f3nrZi/x7Q7b50Gf
   /z9MQJ6R5mmXiAmB4qzWazRw+za8dxBW9lipb/U+YPWk9vo+GAVOzwDFf
   LiY6avqwrttoMEuO4/Xj8twcuvdpacIkYM8wyCRi95mFQPTCFpYNwIF+5
   gIPaiAcpHEdDmSXTM0NLa+Kcvy8qcqTTlwXVu0Rpk4TRI5115J6Q2lCoH
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="7513044"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400";
   d="scan'208";a="7513044"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jan 2024 06:26:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="778000589"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400";
   d="scan'208";a="778000589"
Received: from lkp-server01.sh.intel.com (HELO 961aaaa5b03c) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 19 Jan 2024 06:26:04 -0800
Received: from kbuild by 961aaaa5b03c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rQpon-000492-2J;
	Fri, 19 Jan 2024 14:26:01 +0000
Date: Fri, 19 Jan 2024 22:25:50 +0800
From: kernel test robot <lkp@intel.com>
To: Paul Cercueil <paul@crapouillou.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202401192234.0uzq25ka-lkp@intel.com>
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
X-Rspamd-Queue-Id: 49C913E930
X-Spamd-Bar: ----
Message-ID-Hash: 7SRLY4F354M4355ZYWXABMRQUVKJIGAU
X-Message-ID-Hash: 7SRLY4F354M4355ZYWXABMRQUVKJIGAU
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Paul Cercueil <paul@crapouillou.net>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 3/4] usb: gadget: functionfs: Add DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7SRLY4F354M4355ZYWXABMRQUVKJIGAU/>
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
config: sh-randconfig-r052-20240119 (https://download.01.org/0day-ci/archive/20240119/202401192234.0uzq25ka-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240119/202401192234.0uzq25ka-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202401192234.0uzq25ka-lkp@intel.com/

All errors (new ones prefixed by >>):

   sh4-linux-ld: drivers/usb/gadget/function/f_fs.o: in function `ffs_dmabuf_signal_done':
>> f_fs.c:(.text+0x254c): undefined reference to `dma_fence_begin_signalling'
>> sh4-linux-ld: f_fs.c:(.text+0x2560): undefined reference to `dma_fence_signal'
>> sh4-linux-ld: f_fs.c:(.text+0x2564): undefined reference to `dma_fence_end_signalling'
   sh4-linux-ld: drivers/usb/gadget/function/f_fs.o: in function `ffs_epfile_release':
>> f_fs.c:(.text+0x28a0): undefined reference to `dma_buf_detach'
>> sh4-linux-ld: f_fs.c:(.text+0x28a4): undefined reference to `dma_buf_put'
   sh4-linux-ld: drivers/usb/gadget/function/f_fs.o: in function `ffs_dmabuf_unmap_work':
>> f_fs.c:(.text+0x2c6c): undefined reference to `dma_buf_unmap_attachment'
>> sh4-linux-ld: f_fs.c:(.text+0x2c70): undefined reference to `dma_resv_reset_max_fences'
>> sh4-linux-ld: f_fs.c:(.text+0x2c84): undefined reference to `dma_buf_detach'
   sh4-linux-ld: f_fs.c:(.text+0x2c88): undefined reference to `dma_buf_put'
>> sh4-linux-ld: f_fs.c:(.text+0x2c94): undefined reference to `dma_fence_release'
   sh4-linux-ld: drivers/usb/gadget/function/f_fs.o: in function `ffs_dmabuf_transfer':
>> f_fs.c:(.text+0x2e30): undefined reference to `dma_buf_get'
   sh4-linux-ld: f_fs.c:(.text+0x2e3c): undefined reference to `dma_buf_put'
>> sh4-linux-ld: f_fs.c:(.text+0x2ef4): undefined reference to `dma_resv_test_signaled'
>> sh4-linux-ld: f_fs.c:(.text+0x2efc): undefined reference to `dma_buf_map_attachment'
>> sh4-linux-ld: f_fs.c:(.text+0x3098): undefined reference to `dma_resv_reserve_fences'
>> sh4-linux-ld: f_fs.c:(.text+0x30bc): undefined reference to `dma_fence_init'
>> sh4-linux-ld: f_fs.c:(.text+0x30c0): undefined reference to `dma_resv_add_fence'
   sh4-linux-ld: f_fs.c:(.text+0x30c4): undefined reference to `dma_resv_reset_max_fences'
>> sh4-linux-ld: f_fs.c:(.text+0x30d4): undefined reference to `dma_fence_begin_signalling'
   sh4-linux-ld: f_fs.c:(.text+0x30e0): undefined reference to `dma_fence_end_signalling'
   sh4-linux-ld: f_fs.c:(.text+0x30f0): undefined reference to `dma_buf_put'
   sh4-linux-ld: f_fs.c:(.text+0x321c): undefined reference to `dma_fence_release'
>> sh4-linux-ld: f_fs.c:(.text+0x3224): undefined reference to `dma_buf_unmap_attachment'
   sh4-linux-ld: f_fs.c:(.text+0x3228): undefined reference to `dma_resv_reset_max_fences'
   sh4-linux-ld: f_fs.c:(.text+0x3230): undefined reference to `dma_buf_detach'
   sh4-linux-ld: f_fs.c:(.text+0x3234): undefined reference to `dma_buf_put'
   sh4-linux-ld: drivers/usb/gadget/function/f_fs.o: in function `ffs_epfile_ioctl':
   f_fs.c:(.text+0x41f0): undefined reference to `dma_buf_get'
>> sh4-linux-ld: f_fs.c:(.text+0x41f4): undefined reference to `dma_buf_attach'
   sh4-linux-ld: f_fs.c:(.text+0x4200): undefined reference to `dma_buf_detach'
>> sh4-linux-ld: f_fs.c:(.text+0x4210): undefined reference to `dma_fence_context_alloc'
   sh4-linux-ld: f_fs.c:(.text+0x4220): undefined reference to `dma_buf_put'
   sh4-linux-ld: f_fs.c:(.text+0x43b0): undefined reference to `dma_buf_detach'
   sh4-linux-ld: f_fs.c:(.text+0x43b4): undefined reference to `dma_buf_put'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
