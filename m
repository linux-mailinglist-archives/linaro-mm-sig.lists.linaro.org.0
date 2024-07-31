Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3536194325C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2024 16:45:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2146E40F28
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2024 14:45:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
	by lists.linaro.org (Postfix) with ESMTPS id 417F140F28
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2024 14:44:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Um9Gn1D6;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.14 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1722437089; x=1753973089;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=0i7+5bg5UJif9MuAVh7inaS5qO0L8EjfbCHmxXjjGzw=;
  b=Um9Gn1D6z4S7CfKEYSQp8v6zI7Rh0rX1boQ7+t3QbgSXPEaRqKxV3uOB
   KWjixxPpz788Oj23fEi640LftDT6GDPWXUl+itcwJRHJ/NUSS+yDFIVIt
   hIX0uIN3ody9goSMdyoQIAOfRO/DP8//AdN5Yr/eYCEl4aLREYns33rms
   5RsOWn3CFaNeqG/omknKS5Aop4VUAS8LLZ93omvEme/pcgsDNtMCnnlZe
   t5M/q3JriUBXCUxdXMoJbBHjMXDPvgACdmmsq1Q+uFxmnJdI8cH0wbr+W
   h6wePPJM3ibFzFVuOpMckKrN+FctY5SJjOkCGGyAA27Hbeq8RgjeAbRVR
   Q==;
X-CSE-ConnectionGUID: BWRj2T6BQcqvvuElPQ0XFw==
X-CSE-MsgGUID: 2vBw5XLFQJyrpH8pSZK3PQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="24113202"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800";
   d="scan'208";a="24113202"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jul 2024 07:44:47 -0700
X-CSE-ConnectionGUID: hHDcSOkuRsy4to6rLrrfkw==
X-CSE-MsgGUID: LgsJcSNcR1GywUDW+A2Zqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800";
   d="scan'208";a="77975585"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by fmviesa002.fm.intel.com with ESMTP; 31 Jul 2024 07:44:43 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sZAZF-000uTe-07;
	Wed, 31 Jul 2024 14:44:41 +0000
Date: Wed, 31 Jul 2024 22:44:18 +0800
From: kernel test robot <lkp@intel.com>
To: Huan Yang <link@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Message-ID: <202407312202.LhLTLEhX-lkp@intel.com>
References: <20240730075755.10941-4-link@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240730075755.10941-4-link@vivo.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 417F140F28
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: LYR5WJAVTY2WV4CLENOUBQ3SECSSXLUI
X-Message-ID-Hash: LYR5WJAVTY2WV4CLENOUBQ3SECSSXLUI
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, opensource.kernel@vivo.com, Huan Yang <link@vivo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/5] dma-buf: heaps: support alloc async read file
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LYR5WJAVTY2WV4CLENOUBQ3SECSSXLUI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Huan,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 931a3b3bccc96e7708c82b30b2b5fa82dfd04890]

url:    https://github.com/intel-lab-lkp/linux/commits/Huan-Yang/dma-buf-heaps-Introduce-DMA_HEAP_ALLOC_AND_READ_FILE-heap-flag/20240730-170340
base:   931a3b3bccc96e7708c82b30b2b5fa82dfd04890
patch link:    https://lore.kernel.org/r/20240730075755.10941-4-link%40vivo.com
patch subject: [PATCH v2 3/5] dma-buf: heaps: support alloc async read file
config: xtensa-allyesconfig (https://download.01.org/0day-ci/archive/20240731/202407312202.LhLTLEhX-lkp@intel.com/config)
compiler: xtensa-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240731/202407312202.LhLTLEhX-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202407312202.LhLTLEhX-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/dma-buf/dma-heap.c:45: warning: Function parameter or struct member 'priv' not described in 'dma_heap'
   drivers/dma-buf/dma-heap.c:45: warning: Function parameter or struct member 'heap_devt' not described in 'dma_heap'
   drivers/dma-buf/dma-heap.c:45: warning: Function parameter or struct member 'list' not described in 'dma_heap'
   drivers/dma-buf/dma-heap.c:45: warning: Function parameter or struct member 'heap_cdev' not described in 'dma_heap'
>> drivers/dma-buf/dma-heap.c:158: warning: Function parameter or struct member 'lock' not described in 'dma_heap_file_control'
   drivers/dma-buf/dma-heap.c:482: warning: expecting prototype for Trigger sync file read, read into dma(). Prototype was for dma_heap_read_file_sync() instead


vim +158 drivers/dma-buf/dma-heap.c

   133	
   134	/**
   135	 * struct dma_heap_file_control - global control of dma_heap file read.
   136	 * @works:		@dma_heap_file_work's list head.
   137	 *
   138	 * @threadwq:		wait queue for @work_thread, if commit work, @work_thread
   139	 *			wakeup and read this work's file contains.
   140	 *
   141	 * @workwq:		used for main thread wait for file read end, if allocation
   142	 *			end before file read. @dma_heap_file_task ref effect this.
   143	 *
   144	 * @work_thread:	file read kthread. the dma_heap_file_task work's consumer.
   145	 *
   146	 * @heap_fwork_cachep:	@dma_heap_file_work's cachep, it's alloc/free frequently.
   147	 *
   148	 * @nr_work:		global number of how many work committed.
   149	 */
   150	struct dma_heap_file_control {
   151		struct list_head works;
   152		spinlock_t lock; // only lock for @works.
   153		wait_queue_head_t threadwq;
   154		wait_queue_head_t workwq;
   155		struct task_struct *work_thread;
   156		struct kmem_cache *heap_fwork_cachep;
   157		atomic_t nr_work;
 > 158	};
   159	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
