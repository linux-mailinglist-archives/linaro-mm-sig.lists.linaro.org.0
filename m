Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 237DB79A57C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 10:06:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 071683F204
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 08:06:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
	by lists.linaro.org (Postfix) with ESMTPS id 5BCF63F09C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 08:06:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=RS3Uj6xM;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1694419613; x=1725955613;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=EKc2l8u/kKBul3gNAYJEk/Ck38NKo2uvJewBdyW546M=;
  b=RS3Uj6xMs7Lu3fPoUv4ItJcYkMLwj1MNGmh17VDPbUjOhJicE01s30lQ
   lS1BxPkLo8plMuafVS9MgavAbjYVNzMGBLBO2GpXN/xX94DxbVB/Vh/WU
   McIEfRZHuGmrf22f4lg+Wcqc3oF+zq1kT86iWl+7dkBiCL/M/FGzUqG9g
   +bk51+dt8oHaUBzcttmyqM9FJrpGiQSBI6DkfHv9+ZurqXAAyanKJ4zuu
   f2OkXQv+MwL9E7P6lH+h+NubaCdi+WFhkJg6th1rZrRUQ336PfLmhSwht
   MGEaTxyAHCBIb7IUcb1vNdeyzB1gDbTIXsJMVPBK0F0doszpbeQAeRUxW
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="444438893"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000";
   d="scan'208";a="444438893"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Sep 2023 01:06:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="693005175"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000";
   d="scan'208";a="693005175"
Received: from lkp-server01.sh.intel.com (HELO 59b3c6e06877) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 11 Sep 2023 01:06:47 -0700
Received: from kbuild by 59b3c6e06877 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qfbwS-0005yc-30;
	Mon, 11 Sep 2023 08:06:44 +0000
Date: Mon, 11 Sep 2023 16:05:45 +0800
From: kernel test robot <lkp@intel.com>
To: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com,
	Matthias Brugger <matthias.bgg@gmail.com>
Message-ID: <202309111534.u4wfJ4vk-lkp@intel.com>
References: <20230911023038.30649-5-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230911023038.30649-5-yong.wu@mediatek.com>
X-Rspamd-Queue-Id: 5BCF63F09C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:134.134.136.100/32];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_RCPT(0.00)[dt];
	BLOCKLISTDE_FAIL(0.00)[134.134.136.100:server fail];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mgamail.intel.com:helo,mgamail.intel.com:rdns,01.org:url,intel.com:dkim,intel.com:email];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,linaro.org,amd.com,gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5IYSIKUIVYB7RAYOV7IGZGF7VBYJ2GBN
X-Message-ID-Hash: 5IYSIKUIVYB7RAYOV7IGZGF7VBYJ2GBN
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, jianjiao.zeng@mediatek.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, tjmercier@google.com, linaro-mm-sig@lists.linaro.org, John Stultz <jstultz@google.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, Yong Wu <yong.wu@mediatek.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] dma-buf: heaps: Initialise MediaTek secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5IYSIKUIVYB7RAYOV7IGZGF7VBYJ2GBN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Yong,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-misc/drm-misc-next]
[also build test ERROR on robh/for-next linus/master v6.6-rc1 next-20230911]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Yong-Wu/dma-buf-heaps-Deduplicate-docs-and-adopt-common-format/20230911-103308
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20230911023038.30649-5-yong.wu%40mediatek.com
patch subject: [PATCH 4/9] dma-buf: heaps: Initialise MediaTek secure heap
config: openrisc-allmodconfig (https://download.01.org/0day-ci/archive/20230911/202309111534.u4wfJ4vk-lkp@intel.com/config)
compiler: or1k-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230911/202309111534.u4wfJ4vk-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309111534.u4wfJ4vk-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/dma-buf/heaps/mtk_secure_heap.c:68:27: error: initialization of 'struct dma_buf * (*)(struct dma_heap *, long unsigned int,  long unsigned int,  long unsigned int)' from incompatible pointer type 'struct dma_buf * (*)(struct dma_heap *, size_t,  long unsigned int,  long unsigned int)' {aka 'struct dma_buf * (*)(struct dma_heap *, unsigned int,  long unsigned int,  long unsigned int)'} [-Werror=incompatible-pointer-types]
      68 |         .allocate       = mtk_sec_heap_allocate,
         |                           ^~~~~~~~~~~~~~~~~~~~~
   drivers/dma-buf/heaps/mtk_secure_heap.c:68:27: note: (near initialization for 'mtk_sec_heap_ops.allocate')
   cc1: some warnings being treated as errors


vim +68 drivers/dma-buf/heaps/mtk_secure_heap.c

    66	
    67	static const struct dma_heap_ops mtk_sec_heap_ops = {
  > 68		.allocate	= mtk_sec_heap_allocate,
    69	};
    70	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
