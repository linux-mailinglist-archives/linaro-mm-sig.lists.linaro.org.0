Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D22B8C76DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 14:49:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 835164475F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 12:49:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	by lists.linaro.org (Postfix) with ESMTPS id 4CD753F624
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 12:49:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Krhiy3u7;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.17 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1715863744; x=1747399744;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/iRbkuVATe5k/WXAjHoSspHziFV+5t4MrNeTh/j+A4I=;
  b=Krhiy3u7NDhRNUF5+TZmznYTQ7/H3cqF+ntZsLe+oFBXmJbawYU3cwFA
   5YWYZ88ZnCHUuNimcxktOK6xC7jXnPLfhpEdv5z4Ilx6VpXIVeU406EnM
   dw5WBp9n1MyocWycR5abJAoIBMcdsduAa3UNFpkeq9LFl8ue4x2TMBqoX
   HYLVE5tACPXCi109/ee5blnVmP8r5OxSLdEHhzqHzHNWYDADYIUe00qJN
   lvQnsqHCRsvRLvWhKI/FT9qeOO45VyrWNIezt65hK4SD2h10+ywak5bew
   PDUOggkvzNW5lAltfnClKuClWTTmyPOhDhLZMQTvpkjRTzGu2mrxzzvzn
   w==;
X-CSE-ConnectionGUID: N2VcLI3VTba3afn8aPggmQ==
X-CSE-MsgGUID: d9x2zsurQaaGgO9vV2vzGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11835145"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000";
   d="scan'208";a="11835145"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 May 2024 05:49:03 -0700
X-CSE-ConnectionGUID: VGW6IyLTSF6Dv0zZz0FjKg==
X-CSE-MsgGUID: h+5SZJRHSE2BXyiG3EgmAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000";
   d="scan'208";a="36150958"
Received: from lkp-server01.sh.intel.com (HELO f8b243fe6e68) ([10.239.97.150])
  by orviesa003.jf.intel.com with ESMTP; 16 May 2024 05:48:59 -0700
Received: from kbuild by f8b243fe6e68 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1s7aXY-000EEo-1i;
	Thu, 16 May 2024 12:48:56 +0000
Date: Thu, 16 May 2024 20:48:15 +0800
From: kernel test robot <lkp@intel.com>
To: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202405162048.CExrV8yy-lkp@intel.com>
References: <20240515-dma-buf-ecc-heap-v1-7-54cbbd049511@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240515-dma-buf-ecc-heap-v1-7-54cbbd049511@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4CD753F624
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.70 / 15.00];
	REPLY(-4.00)[];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RCVD_IN_DNSWL_MED(-0.20)[192.198.163.17:from];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: Q2DCQZ37IMZOYVU2PSA6BJR5WQUTSULG
X-Message-ID-Hash: Q2DCQZ37IMZOYVU2PSA6BJR5WQUTSULG
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 7/8] dma-buf: heaps: cma: Handle ECC flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q2DCQZ37IMZOYVU2PSA6BJR5WQUTSULG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Maxime,

kernel test robot noticed the following build errors:

[auto build test ERROR on a38297e3fb012ddfa7ce0321a7e5a8daeb1872b6]

url:    https://github.com/intel-lab-lkp/linux/commits/Maxime-Ripard/dma-buf-heaps-Introduce-a-new-heap-for-reserved-memory/20240515-215850
base:   a38297e3fb012ddfa7ce0321a7e5a8daeb1872b6
patch link:    https://lore.kernel.org/r/20240515-dma-buf-ecc-heap-v1-7-54cbbd049511%40kernel.org
patch subject: [PATCH 7/8] dma-buf: heaps: cma: Handle ECC flags
config: mips-allmodconfig (https://download.01.org/0day-ci/archive/20240516/202405162048.CExrV8yy-lkp@intel.com/config)
compiler: mips-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240516/202405162048.CExrV8yy-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202405162048.CExrV8yy-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/dma-buf/heaps/cma_heap.c: In function 'cma_heap_allocate':
   drivers/dma-buf/heaps/cma_heap.c:293:24: warning: returning 'int' from a function with return type 'struct dma_buf *' makes pointer from integer without a cast [-Wint-conversion]
     293 |                 return -EINVAL;
         |                        ^
   drivers/dma-buf/heaps/cma_heap.c:296:24: warning: returning 'int' from a function with return type 'struct dma_buf *' makes pointer from integer without a cast [-Wint-conversion]
     296 |                 return -EINVAL;
         |                        ^
   drivers/dma-buf/heaps/cma_heap.c: In function '__add_cma_heap':
>> drivers/dma-buf/heaps/cma_heap.c:386:13: error: implicit declaration of function 'of_memory_get_ecc_correction_bits' [-Werror=implicit-function-declaration]
     386 |         if (of_memory_get_ecc_correction_bits() > 0)
         |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +/of_memory_get_ecc_correction_bits +386 drivers/dma-buf/heaps/cma_heap.c

   275	
   276	static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
   277						 unsigned long len,
   278						 unsigned long fd_flags,
   279						 unsigned long heap_flags)
   280	{
   281		struct cma_heap *cma_heap = dma_heap_get_drvdata(heap);
   282		struct cma_heap_buffer *buffer;
   283		DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
   284		size_t size = PAGE_ALIGN(len);
   285		pgoff_t pagecount = size >> PAGE_SHIFT;
   286		unsigned long align = get_order(size);
   287		struct page *cma_pages;
   288		struct dma_buf *dmabuf;
   289		int ret = -ENOMEM;
   290		pgoff_t pg;
   291	
   292		if (!cma_heap->ecc_enabled && (heap_flags & DMA_HEAP_FLAG_ECC_PROTECTED))
 > 293			return -EINVAL;
   294	
   295		if (cma_heap->ecc_enabled && (heap_flags & DMA_HEAP_FLAG_ECC_UNPROTECTED))
   296			return -EINVAL;
   297	
   298		buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
   299		if (!buffer)
   300			return ERR_PTR(-ENOMEM);
   301	
   302		INIT_LIST_HEAD(&buffer->attachments);
   303		mutex_init(&buffer->lock);
   304		buffer->len = size;
   305	
   306		if (align > CONFIG_CMA_ALIGNMENT)
   307			align = CONFIG_CMA_ALIGNMENT;
   308	
   309		cma_pages = cma_alloc(cma_heap->cma, pagecount, align, false);
   310		if (!cma_pages)
   311			goto free_buffer;
   312	
   313		/* Clear the cma pages */
   314		if (PageHighMem(cma_pages)) {
   315			unsigned long nr_clear_pages = pagecount;
   316			struct page *page = cma_pages;
   317	
   318			while (nr_clear_pages > 0) {
   319				void *vaddr = kmap_atomic(page);
   320	
   321				memset(vaddr, 0, PAGE_SIZE);
   322				kunmap_atomic(vaddr);
   323				/*
   324				 * Avoid wasting time zeroing memory if the process
   325				 * has been killed by by SIGKILL
   326				 */
   327				if (fatal_signal_pending(current))
   328					goto free_cma;
   329				page++;
   330				nr_clear_pages--;
   331			}
   332		} else {
   333			memset(page_address(cma_pages), 0, size);
   334		}
   335	
   336		buffer->pages = kmalloc_array(pagecount, sizeof(*buffer->pages), GFP_KERNEL);
   337		if (!buffer->pages) {
   338			ret = -ENOMEM;
   339			goto free_cma;
   340		}
   341	
   342		for (pg = 0; pg < pagecount; pg++)
   343			buffer->pages[pg] = &cma_pages[pg];
   344	
   345		buffer->cma_pages = cma_pages;
   346		buffer->heap = cma_heap;
   347		buffer->pagecount = pagecount;
   348	
   349		/* create the dmabuf */
   350		exp_info.exp_name = dma_heap_get_name(heap);
   351		exp_info.ops = &cma_heap_buf_ops;
   352		exp_info.size = buffer->len;
   353		exp_info.flags = fd_flags;
   354		exp_info.priv = buffer;
   355		dmabuf = dma_buf_export(&exp_info);
   356		if (IS_ERR(dmabuf)) {
   357			ret = PTR_ERR(dmabuf);
   358			goto free_pages;
   359		}
   360		return dmabuf;
   361	
   362	free_pages:
   363		kfree(buffer->pages);
   364	free_cma:
   365		cma_release(cma_heap->cma, cma_pages, pagecount);
   366	free_buffer:
   367		kfree(buffer);
   368	
   369		return ERR_PTR(ret);
   370	}
   371	
   372	static const struct dma_heap_ops cma_heap_ops = {
   373		.allocate = cma_heap_allocate,
   374	};
   375	
   376	static int __add_cma_heap(struct cma *cma, void *data)
   377	{
   378		struct cma_heap *cma_heap;
   379		struct dma_heap_export_info exp_info;
   380	
   381		cma_heap = kzalloc(sizeof(*cma_heap), GFP_KERNEL);
   382		if (!cma_heap)
   383			return -ENOMEM;
   384		cma_heap->cma = cma;
   385	
 > 386		if (of_memory_get_ecc_correction_bits() > 0)
   387			cma_heap->ecc_enabled = true;
   388	
   389		exp_info.name = cma_get_name(cma);
   390		exp_info.ops = &cma_heap_ops;
   391		exp_info.priv = cma_heap;
   392	
   393		cma_heap->heap = dma_heap_add(&exp_info);
   394		if (IS_ERR(cma_heap->heap)) {
   395			int ret = PTR_ERR(cma_heap->heap);
   396	
   397			kfree(cma_heap);
   398			return ret;
   399		}
   400	
   401		return 0;
   402	}
   403	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
