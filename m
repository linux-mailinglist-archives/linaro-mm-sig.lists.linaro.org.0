Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0F06D573E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 05:34:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA09C3F6B6
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 03:34:26 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by lists.linaro.org (Postfix) with ESMTPS id 4FD8C3E89F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Apr 2023 03:34:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=F8RXHigc;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1680579255; x=1712115255;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=y95LcMuCpo5c7PKsq3CMbqvqoeAr4Ga5Vqhi17tTnUM=;
  b=F8RXHigcTmfHq94GTM0IgYaQcIx0WouWV5xN8Ej4xjTqtkrslF8JvDim
   jUFzxXiQNo1TJ4sCGMG3B5YTa4rJVTpz/WQnDjem0ImV/a3tOFt5R15OB
   4QMwRtJiqfrVC/UoAkJrLoWQTqU25Fo5CMpqhhc+AHP03L96sqv2N7Q1b
   RCjEEENQY/X/3BHIOvd/jf3wnagBrivbtVDADfitxwpXI7jeV1ncPd5Rw
   ge3N+RpE1yKsOjPJ5rnMA7CEHi/GREJkffFXuzUU4FlLkoZuE2tiSEMkq
   LKoxx/YLI29xysZxHgbgvgCAfK9JzvLca/NRpnK5t7XtVkoTMhTD2S/Pc
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="322472775"
X-IronPort-AV: E=Sophos;i="5.98,316,1673942400";
   d="scan'208";a="322472775"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2023 20:34:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="755494807"
X-IronPort-AV: E=Sophos;i="5.98,316,1673942400";
   d="scan'208";a="755494807"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 03 Apr 2023 20:33:59 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pjXQk-000P7Q-1I;
	Tue, 04 Apr 2023 03:33:58 +0000
Date: Tue, 4 Apr 2023 11:33:39 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Davis <afd@ti.com>, Arnd Bergmann <arnd@arndb.de>,
	Christian Gmeiner <christian.gmeiner@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	John Stultz <jstultz@google.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sumit Semwal <sumit.semwal@linaro.org>
Message-ID: <202304041144.t5JCOGsE-lkp@intel.com>
References: <20230403192433.26648-1-afd@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230403192433.26648-1-afd@ti.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4FD8C3E89F
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.55.52.151/32];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	FREEMAIL_TO(0.00)[ti.com,arndb.de,gmail.com,linuxfoundation.org,google.com,pengutronix.de,linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ARC_NA(0.00)[]
Message-ID-Hash: HZMGD7PN27YUHOLA4N6WJJLA2HI57JO7
X-Message-ID-Hash: HZMGD7PN27YUHOLA4N6WJJLA2HI57JO7
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Andrew Davis <afd@ti.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] misc: sram: Add DMA-BUF Heap exporting of SRAM areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HZMGD7PN27YUHOLA4N6WJJLA2HI57JO7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Andrew,

kernel test robot noticed the following build warnings:

[auto build test WARNING on char-misc/char-misc-testing]
[also build test WARNING on char-misc/char-misc-next char-misc/char-misc-linus soc/for-next pza/reset/next linus/master v6.3-rc5 next-20230403]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Andrew-Davis/misc-sram-Add-DMA-BUF-Heap-exporting-of-SRAM-areas/20230404-032607
patch link:    https://lore.kernel.org/r/20230403192433.26648-1-afd%40ti.com
patch subject: [PATCH v2] misc: sram: Add DMA-BUF Heap exporting of SRAM areas
config: loongarch-allyesconfig (https://download.01.org/0day-ci/archive/20230404/202304041144.t5JCOGsE-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/6fcaa3c7cfbc144dd982f9abaa1c5af50dde24a8
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Andrew-Davis/misc-sram-Add-DMA-BUF-Heap-exporting-of-SRAM-areas/20230404-032607
        git checkout 6fcaa3c7cfbc144dd982f9abaa1c5af50dde24a8
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=loongarch olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=loongarch SHELL=/bin/bash drivers/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202304041144.t5JCOGsE-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/misc/sram-dma-heap.c:161:17: warning: no previous prototype for 'sram_dma_heap_allocate' [-Wmissing-prototypes]
     161 | struct dma_buf *sram_dma_heap_allocate(struct dma_heap *heap,
         |                 ^~~~~~~~~~~~~~~~~~~~~~


vim +/sram_dma_heap_allocate +161 drivers/misc/sram-dma-heap.c

   160	
 > 161	struct dma_buf *sram_dma_heap_allocate(struct dma_heap *heap,
   162					       unsigned long len,
   163					       unsigned long fd_flags,
   164					       unsigned long heap_flags)
   165	{
   166		struct sram_dma_heap *sram_dma_heap = dma_heap_get_drvdata(heap);
   167		struct sram_dma_heap_buffer *buffer;
   168	
   169		DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
   170		struct dma_buf *dmabuf;
   171		int ret;
   172	
   173		buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
   174		if (!buffer)
   175			return ERR_PTR(-ENOMEM);
   176		buffer->pool = sram_dma_heap->pool;
   177		INIT_LIST_HEAD(&buffer->attachments);
   178		mutex_init(&buffer->attachments_lock);
   179		buffer->len = len;
   180	
   181		buffer->vaddr = (void *)gen_pool_alloc(buffer->pool, buffer->len);
   182		if (!buffer->vaddr) {
   183			ret = -ENOMEM;
   184			goto free_buffer;
   185		}
   186	
   187		buffer->paddr = gen_pool_virt_to_phys(buffer->pool, (unsigned long)buffer->vaddr);
   188		if (buffer->paddr == -1) {
   189			ret = -ENOMEM;
   190			goto free_pool;
   191		}
   192	
   193		/* create the dmabuf */
   194		exp_info.exp_name = dma_heap_get_name(heap);
   195		exp_info.ops = &sram_dma_heap_buf_ops;
   196		exp_info.size = buffer->len;
   197		exp_info.flags = fd_flags;
   198		exp_info.priv = buffer;
   199		dmabuf = dma_buf_export(&exp_info);
   200		if (IS_ERR(dmabuf)) {
   201			ret = PTR_ERR(dmabuf);
   202			goto free_pool;
   203		}
   204	
   205		return dmabuf;
   206	
   207	free_pool:
   208		gen_pool_free(buffer->pool, (unsigned long)buffer->vaddr, buffer->len);
   209	free_buffer:
   210		kfree(buffer);
   211	
   212		return ERR_PTR(ret);
   213	}
   214	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
