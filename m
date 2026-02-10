Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDKuKXIei2n7QAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 13:02:58 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA3111A856
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 13:02:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C9DF33F9B3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 12:02:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	by lists.linaro.org (Postfix) with ESMTPS id 8B70D3F721
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 12:02:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=EhZk1PNL;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.18 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770724969; x=1802260969;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=kAPSTtOVfJfIS9jV+CgJZlMJ295jsAmJD3EnF4QdBNw=;
  b=EhZk1PNL07SiiRUYjCgxbtOyzfIT7Bpt+qsY3Wslzgiyb9Z+djVa6VmH
   dqh3g+dFqRL277tDYkb+D9dDAfF8FNR+zjyKu8fXpghhTFE61O6+cmHQw
   U3I8mbXu148LHmgXKqCu0Q88ex0n7Upyua5Np6u/QX9CLWubjGqN5InzM
   +DG9tLDadBXqBwlWFOtn27QtPnbr8OCdPnWSzmrA+lX17wC7eBTCxPcOK
   bHxQhIQYu06XfLz3W2uiVZY7lrQgL6Dew50cK66VRT7SaGkXZn3SHk/ER
   UkXrcpBx4tdcfAW+HNRXZ/g7mw15NyqNQfMf3izSZy1faqgAUwhMo1F68
   A==;
X-CSE-ConnectionGUID: 1DtQZZQQS4u/rQhu3z/5fQ==
X-CSE-MsgGUID: n4l2PE5xQFOi5VilEwBMAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="71893912"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800";
   d="scan'208";a="71893912"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2026 04:02:48 -0800
X-CSE-ConnectionGUID: FHhtlCbwTlSbN4KSJ4eG9Q==
X-CSE-MsgGUID: ouaiq7hVRwuooZ1RvfqwTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800";
   d="scan'208";a="211003400"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by orviesa006.jf.intel.com with ESMTP; 10 Feb 2026 04:02:40 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vpmRw-00000000oyu-1ZR6;
	Tue, 10 Feb 2026 12:02:36 +0000
Date: Tue, 10 Feb 2026 20:02:02 +0800
From: kernel test robot <lkp@intel.com>
To: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Message-ID: <202602101926.lsquJdb1-lkp@intel.com>
References: <20260209153809.250835-6-jiri@resnulli.us>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260209153809.250835-6-jiri@resnulli.us>
X-Spamd-Bar: -------
Message-ID-Hash: VUOKXKOSMAMKNW67HUQC3SZ4S5HW2KT3
X-Message-ID-Hash: VUOKXKOSMAMKNW67HUQC3SZ4S5HW2KT3
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/5] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VUOKXKOSMAMKNW67HUQC3SZ4S5HW2KT3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.59 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,linaro.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[intel.com:-]
X-Rspamd-Queue-Id: 1AA3111A856
X-Rspamd-Action: no action

Hi Jiri,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-misc/drm-misc-next]
[also build test ERROR on drm-tip/drm-tip trace/for-next linus/master v6.19]
[cannot apply to next-20260209]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jiri-Pirko/dma-mapping-avoid-random-addr-value-print-out-on-error-path/20260209-234013
base:   https://gitlab.freedesktop.org/drm/misc/kernel.git drm-misc-next
patch link:    https://lore.kernel.org/r/20260209153809.250835-6-jiri%40resnulli.us
patch subject: [PATCH 5/5] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20260210/202602101926.lsquJdb1-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260210/202602101926.lsquJdb1-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602101926.lsquJdb1-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/dma-buf/heaps/system_heap.c:66:8: error: call to undeclared function 'set_memory_decrypted'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
      66 |         ret = set_memory_decrypted(addr, nr_pages);
         |               ^
>> drivers/dma-buf/heaps/system_heap.c:80:8: error: call to undeclared function 'set_memory_encrypted'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
      80 |         ret = set_memory_encrypted(addr, nr_pages);
         |               ^
   2 errors generated.


vim +/set_memory_decrypted +66 drivers/dma-buf/heaps/system_heap.c

    59	
    60	static int system_heap_set_page_decrypted(struct page *page)
    61	{
    62		unsigned long addr = (unsigned long)page_address(page);
    63		unsigned int nr_pages = 1 << compound_order(page);
    64		int ret;
    65	
  > 66		ret = set_memory_decrypted(addr, nr_pages);
    67		if (ret)
    68			pr_warn_ratelimited("dma-buf system heap: failed to decrypt page at %p\n",
    69					    page_address(page));
    70	
    71		return ret;
    72	}
    73	
    74	static int system_heap_set_page_encrypted(struct page *page)
    75	{
    76		unsigned long addr = (unsigned long)page_address(page);
    77		unsigned int nr_pages = 1 << compound_order(page);
    78		int ret;
    79	
  > 80		ret = set_memory_encrypted(addr, nr_pages);
    81		if (ret)
    82			pr_warn_ratelimited("dma-buf system heap: failed to re-encrypt page at %p, leaking memory\n",
    83					    page_address(page));
    84	
    85		return ret;
    86	}
    87	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
