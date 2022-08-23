Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B289159CD4C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Aug 2022 02:46:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADAD43F944
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Aug 2022 00:46:29 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by lists.linaro.org (Postfix) with ESMTPS id 7C8F13EDB5
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Aug 2022 00:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1661215582; x=1692751582;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=2g8nN0jrK8PfdCkNhbKM2KDBhQ6tYPvqKN20IXskZ5c=;
  b=lmNHF4qcmoEoqzEy4B1DKntMNt3WRqhYyGt4L5ZVVZLRDjcObQ23790X
   9K7DpKeLr0YqoLzdLi5HewipYZKum9F25YY2EQjzHBGKo2bOXHujvF4Yp
   zDSMc/0nQpnq1kowQsr1ZM9TOsddKO75w5SCxjWS3KGqBvJPuIcDKI+ZI
   D7byRFf6xnoEJtg2y5V2YcrNKNunEZQQGpbDseQwBY+XfJAT6VT78zEOH
   jMDHN5IxZtHCmsJFuo1FP8cwgRWrVdb2JxviBJlwkIkwoPj343X7Zk5Qx
   Pnd4/p89zwa52pfwbX6MHSpwd+LSke+jHmxVpLWQKIKEO2C7MPPzlZP37
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273310928"
X-IronPort-AV: E=Sophos;i="5.93,256,1654585200";
   d="scan'208";a="273310928"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Aug 2022 17:46:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200";
   d="scan'208";a="735292102"
Received: from lkp-server01.sh.intel.com (HELO dd9b29378baa) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 22 Aug 2022 17:46:18 -0700
Received: from kbuild by dd9b29378baa with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oQI3d-0000vH-1A;
	Tue, 23 Aug 2022 00:46:17 +0000
Date: Tue, 23 Aug 2022 08:45:36 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Davis <afd@ti.com>, Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org
Message-ID: <202208230840.npLcmvVn-lkp@intel.com>
References: <20220822233025.3965-1-afd@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220822233025.3965-1-afd@ti.com>
Message-ID-Hash: MCO56QOELXAZRYSLHQBQYAWT4P3HDNQN
X-Message-ID-Hash: MCO56QOELXAZRYSLHQBQYAWT4P3HDNQN
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, Andrew Davis <afd@ti.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: cma_heap: Check for device max segment size when attaching
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MCO56QOELXAZRYSLHQBQYAWT4P3HDNQN/>
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
[also build test WARNING on linus/master v6.0-rc2 next-20220822]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Andrew-Davis/dma-buf-cma_heap-Check-for-device-max-segment-size-when-attaching/20220823-073240
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
config: s390-allyesconfig (https://download.01.org/0day-ci/archive/20220823/202208230840.npLcmvVn-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/f390cef50ba6681ea767283e413cb8e9f8f2b426
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Andrew-Davis/dma-buf-cma_heap-Check-for-device-max-segment-size-when-attaching/20220823-073240
        git checkout f390cef50ba6681ea767283e413cb8e9f8f2b426
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=s390 SHELL=/bin/bash drivers/dma-buf/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/dma-buf/heaps/cma_heap.c: In function 'cma_heap_attach':
>> drivers/dma-buf/heaps/cma_heap.c:61:9: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
      61 |         size_t max_segment = dma_get_max_seg_size(attachment->dev);
         |         ^~~~~~


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
