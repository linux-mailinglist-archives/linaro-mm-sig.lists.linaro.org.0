Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D4C59D2B0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Aug 2022 09:54:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1778E3F5F9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Aug 2022 07:54:45 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by lists.linaro.org (Postfix) with ESMTPS id C78D53F0CE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Aug 2022 07:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1661241277; x=1692777277;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=cEOZdzegwHLzQIT58dSZ/XXOqg0uoIRUya/QlSkPQJU=;
  b=FW29uWs9nFvIqUM38iwxP1g88ikz/Xkwq3PpGLVxoFcDWeVu63MLaa/j
   DNCc9oh2VM1LeV8BsiUM54PTXu1d/hRgyFysPtujU/aik4OMLDsyfbAxS
   FgNymZ3/e8Sl9kbq1xWrdm0s442eS4DBD2t/oc/wZEhW8QyFsZ/XGFsGK
   BH4/BBfWJfyFAmJX7Vl+hj0CFdbQdkmc4BCl/ewdwaukG7f5UI52Hj9X7
   f5Yx7Yp/HGQEoajaeGHuQNvJT/Vb0zWwrzTd6iO9ZTyvnuJFQ4cbNBsCE
   mvJHPDBQ+ZtkRB3biDF0igLNfEb8A3v2od3RDfRkvKlsEF5ONgXyb6bbs
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="319660801"
X-IronPort-AV: E=Sophos;i="5.93,256,1654585200";
   d="scan'208";a="319660801"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2022 00:52:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200";
   d="scan'208";a="609256215"
Received: from lkp-server02.sh.intel.com (HELO 9bbcefcddf9f) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 23 Aug 2022 00:52:44 -0700
Received: from kbuild by 9bbcefcddf9f with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oQOiJ-00001O-34;
	Tue, 23 Aug 2022 07:52:43 +0000
Date: Tue, 23 Aug 2022 15:52:39 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Davis <afd@ti.com>, Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org
Message-ID: <202208231555.eczOE9TV-lkp@intel.com>
References: <20220822233025.3965-1-afd@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220822233025.3965-1-afd@ti.com>
Message-ID-Hash: JQMQSTB6JMSTZYNTJPP6B24AQIOZODIK
X-Message-ID-Hash: JQMQSTB6JMSTZYNTJPP6B24AQIOZODIK
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, kbuild-all@lists.01.org, Andrew Davis <afd@ti.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: cma_heap: Check for device max segment size when attaching
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JQMQSTB6JMSTZYNTJPP6B24AQIOZODIK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Andrew,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on linus/master v6.0-rc2 next-20220823]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Andrew-Davis/dma-buf-cma_heap-Check-for-device-max-segment-size-when-attaching/20220823-073240
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
config: x86_64-randconfig-a002-20220822 (https://download.01.org/0day-ci/archive/20220823/202208231555.eczOE9TV-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/f390cef50ba6681ea767283e413cb8e9f8f2b426
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Andrew-Davis/dma-buf-cma_heap-Check-for-device-max-segment-size-when-attaching/20220823-073240
        git checkout f390cef50ba6681ea767283e413cb8e9f8f2b426
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/dma-buf/heaps/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/dma-buf/heaps/cma_heap.c:61:9: warning: mixing declarations and code is incompatible with standards before C99 [-Wdeclaration-after-statement]
           size_t max_segment = dma_get_max_seg_size(attachment->dev);
                  ^
   1 warning generated.


vim +61 drivers/dma-buf/heaps/cma_heap.c

    49	
    50	static int cma_heap_attach(struct dma_buf *dmabuf,
    51				   struct dma_buf_attachment *attachment)
    52	{
    53		struct cma_heap_buffer *buffer = dmabuf->priv;
    54		struct dma_heap_attachment *a;
    55		int ret;
    56	
    57		a = kzalloc(sizeof(*a), GFP_KERNEL);
    58		if (!a)
    59			return -ENOMEM;
    60	
  > 61		size_t max_segment = dma_get_max_seg_size(attachment->dev);
    62		ret = sg_alloc_table_from_pages_segment(&a->table, buffer->pages,
    63							buffer->pagecount, 0,
    64							buffer->pagecount << PAGE_SHIFT,
    65							max_segment, GFP_KERNEL);
    66		if (ret) {
    67			kfree(a);
    68			return ret;
    69		}
    70	
    71		a->dev = attachment->dev;
    72		INIT_LIST_HEAD(&a->list);
    73		a->mapped = false;
    74	
    75		attachment->priv = a;
    76	
    77		mutex_lock(&buffer->lock);
    78		list_add(&a->list, &buffer->attachments);
    79		mutex_unlock(&buffer->lock);
    80	
    81		return 0;
    82	}
    83	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
