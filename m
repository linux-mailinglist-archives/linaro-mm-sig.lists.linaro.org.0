Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDA/Mhe2omma5AQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 28 Feb 2026 10:32:07 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C7A1C1C0C
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 28 Feb 2026 10:32:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31A76401DB
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 28 Feb 2026 09:32:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	by lists.linaro.org (Postfix) with ESMTPS id 3ABED401CF
	for <linaro-mm-sig@lists.linaro.org>; Sat, 28 Feb 2026 09:32:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Pn8OEm8F;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.9 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772271122; x=1803807122;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Rrx8y/C17jrzfE6kvyZzwZwuPU1bRbyLhVZrjF/dgcs=;
  b=Pn8OEm8FZ+ZYdXCvTbA95qzxmrp6F7CiVEktOyzhmn13OCW4MjtbHKk9
   9Rd8vhhaQPcaYiXjMIzTIayKlIcEgU2lwPJNPIYGLPJUf3bYd5QDHo/80
   hZTK21QFYc06xp7nvoOf79O8MLKpj2prfduLMcR56SZkf+wUU0fNt4/VG
   K1XsbRCiCr3neIoddkmLugHNWj1SWi0xaMY8VSlVcopaMfjINuhaDKavB
   +Z6C/0PaJEBvKVgVawr/To4ZuJ4OtaYY+YkQ26Dh1QcMucW1VNjdaBenX
   e8oTL+TQKukBwfrFsSHeqqBaHQyafD7LvExiUFMSUfkhqzWORIVdciamV
   Q==;
X-CSE-ConnectionGUID: gABwndpwR0SwCTGD6Q32WQ==
X-CSE-MsgGUID: Uu84V+dtQsurMZBCwpaYAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11714"; a="84053352"
X-IronPort-AV: E=Sophos;i="6.21,315,1763452800";
   d="scan'208";a="84053352"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Feb 2026 01:32:01 -0800
X-CSE-ConnectionGUID: pykYmDP9SDaeLcRLYXMDlw==
X-CSE-MsgGUID: M64QioP1Qv+fcwnEXOpsQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,315,1763452800";
   d="scan'208";a="222113504"
Received: from lkp-server02.sh.intel.com (HELO a3936d6a266d) ([10.239.97.151])
  by orviesa005.jf.intel.com with ESMTP; 28 Feb 2026 01:31:55 -0800
Received: from kbuild by a3936d6a266d with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vwGfw-00000000BQt-0KRK;
	Sat, 28 Feb 2026 09:31:52 +0000
Date: Sat, 28 Feb 2026 17:31:40 +0800
From: kernel test robot <lkp@intel.com>
To: Maxime Ripard <mripard@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	David Hildenbrand <david@kernel.org>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	"Liam R. Howlett" <Liam.Howlett@oracle.com>,
	Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>,
	Suren Baghdasaryan <surenb@google.com>,
	Michal Hocko <mhocko@suse.com>
Message-ID: <202602281751.KRAYsRVG-lkp@intel.com>
References: <20260227-dma-buf-heaps-as-modules-v2-8-454aee7e06cc@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260227-dma-buf-heaps-as-modules-v2-8-454aee7e06cc@kernel.org>
X-Spamd-Bar: --------
Message-ID-Hash: 57ENC2APKXMD4R7CYU5W5WZXK2S4UEWA
X-Message-ID-Hash: 57ENC2APKXMD4R7CYU5W5WZXK2S4UEWA
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, Linux Memory Management List <linux-mm@kvack.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 8/9] dma-buf: heaps: cma: Turn the heap into a module
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/57ENC2APKXMD4R7CYU5W5WZXK2S4UEWA/>
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
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[intel.com:-]
X-Rspamd-Queue-Id: 40C7A1C1C0C
X-Rspamd-Action: no action

Hi Maxime,

kernel test robot noticed the following build errors:

[auto build test ERROR on 499a718536dc0e1c1d1b6211847207d58acd9916]

url:    https://github.com/intel-lab-lkp/linux/commits/Maxime-Ripard/dma-contiguous-Turn-heap-registration-logic-around/20260227-212606
base:   499a718536dc0e1c1d1b6211847207d58acd9916
patch link:    https://lore.kernel.org/r/20260227-dma-buf-heaps-as-modules-v2-8-454aee7e06cc%40kernel.org
patch subject: [PATCH v2 8/9] dma-buf: heaps: cma: Turn the heap into a module
config: x86_64-randconfig-002-20260227 (https://download.01.org/0day-ci/archive/20260228/202602281751.KRAYsRVG-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260228/202602281751.KRAYsRVG-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602281751.KRAYsRVG-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "dma_contiguous_get_reserved_region" [drivers/dma-buf/heaps/cma_heap.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
