Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 50738942CDF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2024 13:09:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A52A4438E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2024 11:09:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	by lists.linaro.org (Postfix) with ESMTPS id 3412540B82
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2024 11:08:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=lrJhEu7y;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.13 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1722424128; x=1753960128;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Y/jwTbl8exAJcAQjeSQ75R4nQbjTbH7374EjfkBBvVQ=;
  b=lrJhEu7ywsNi3eaWM3YAnx/VzDvb8uMJ0p9gn0bvPt1w6Ms3ArC4PJ5g
   DVNDNSw3DiuNowFRunwx+8/VfYHG/iaSkmDHJa9+1rRFSSAIYCewtibAE
   sjvF+b2N+cvIeAbljbvNwUjj/kxMQ2CDwibXsV3yUTi01oospyiBqoFf2
   SfCDHZd3YnbsnWkiDQkGdvwa5X9GQWDkXzzWl5/weJo9UdvWVTbKXW0wX
   f7E8Uex/Zc2Lf0vyKFOSSF+BjJJxmGLwtgjwe2COw77fhWbYGlexPVQZs
   HC9C/t2jjzhsgatrHoJCJ9CNCRfd4DBix4ivDaHtRv643ar3xpkv66O9E
   w==;
X-CSE-ConnectionGUID: z8w7z/fmQKiTL5KRB2LjrA==
X-CSE-MsgGUID: UeY3aUS+RIKobRbPKSQzEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="23209727"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800";
   d="scan'208";a="23209727"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jul 2024 04:08:35 -0700
X-CSE-ConnectionGUID: ZtK+kAqRSp6niW97SVmTxA==
X-CSE-MsgGUID: y27S1BV/Tl2KF+5Kv81JYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800";
   d="scan'208";a="54707963"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by fmviesa010.fm.intel.com with ESMTP; 31 Jul 2024 04:08:32 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sZ7C2-000uAO-0P;
	Wed, 31 Jul 2024 11:08:30 +0000
Date: Wed, 31 Jul 2024 19:08:05 +0800
From: kernel test robot <lkp@intel.com>
To: Huan Yang <link@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Message-ID: <202407311822.ZneNMq5I-lkp@intel.com>
References: <20240730075755.10941-2-link@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240730075755.10941-2-link@vivo.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3412540B82
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mgamail.intel.com:helo,mgamail.intel.com:rdns];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 5EFBCARKMU6EQRBYJOLOTIQFXH6LVJ52
X-Message-ID-Hash: 5EFBCARKMU6EQRBYJOLOTIQFXH6LVJ52
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, opensource.kernel@vivo.com, Huan Yang <link@vivo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/5] dma-buf: heaps: Introduce DMA_HEAP_ALLOC_AND_READ_FILE heap flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5EFBCARKMU6EQRBYJOLOTIQFXH6LVJ52/>
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
patch link:    https://lore.kernel.org/r/20240730075755.10941-2-link%40vivo.com
patch subject: [PATCH v2 1/5] dma-buf: heaps: Introduce DMA_HEAP_ALLOC_AND_READ_FILE heap flag
config: xtensa-allyesconfig (https://download.01.org/0day-ci/archive/20240731/202407311822.ZneNMq5I-lkp@intel.com/config)
compiler: xtensa-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240731/202407311822.ZneNMq5I-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202407311822.ZneNMq5I-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/dma-buf/dma-heap.c:44: warning: Function parameter or struct member 'priv' not described in 'dma_heap'
   drivers/dma-buf/dma-heap.c:44: warning: Function parameter or struct member 'heap_devt' not described in 'dma_heap'
   drivers/dma-buf/dma-heap.c:44: warning: Function parameter or struct member 'list' not described in 'dma_heap'
   drivers/dma-buf/dma-heap.c:44: warning: Function parameter or struct member 'heap_cdev' not described in 'dma_heap'
>> drivers/dma-buf/dma-heap.c:104: warning: expecting prototype for Trigger sync file read, read into dma(). Prototype was for dma_heap_read_file_sync() instead


vim +104 drivers/dma-buf/dma-heap.c

    86	
    87	/**
    88	 * Trigger sync file read, read into dma-buf.
    89	 *
    90	 * @dmabuf:			which we done alloced and export.
    91	 * @heap_file:			file info wrapper to read from.
    92	 *
    93	 * Whether to use buffer I/O or direct I/O depends on the mode when the
    94	 * file is opened.
    95	 * Remember, if use direct I/O, file must be page aligned.
    96	 * Since the buffer used for file reading is provided by dma-buf, when
    97	 * using direct I/O, the file content will be directly filled into
    98	 * dma-buf without the need for additional CPU copying.
    99	 *
   100	 * 0 on success, negative if anything wrong.
   101	 */
   102	static int dma_heap_read_file_sync(struct dma_buf *dmabuf,
   103					   struct dma_heap_file *heap_file)
 > 104	{
   105		struct iosys_map map;
   106		ssize_t bytes;
   107		int ret;
   108	
   109		ret = dma_buf_vmap(dmabuf, &map);
   110		if (ret)
   111			return ret;
   112	
   113		/**
   114		 * The kernel_read_file function can handle file reading effectively,
   115		 * and if the return value does not match the file size,
   116		 * then it indicates an error.
   117		 */
   118		bytes = kernel_read_file(heap_file->file, 0, &map.vaddr, dmabuf->size,
   119					 &heap_file->fsize, READING_POLICY);
   120		if (bytes != heap_file->fsize)
   121			ret = -EIO;
   122	
   123		dma_buf_vunmap(dmabuf, &map);
   124	
   125		return ret;
   126	}
   127	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
