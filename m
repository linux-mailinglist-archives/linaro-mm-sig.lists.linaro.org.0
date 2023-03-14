Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF5A6B9693
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Mar 2023 14:43:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 987DA3F527
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Mar 2023 13:43:07 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by lists.linaro.org (Postfix) with ESMTPS id 340423EA31
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Mar 2023 13:42:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=MgfNeHBL;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678801368; x=1710337368;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=UButox8DsgHsAktpejVz/McnXXMI5zf9XAuDW8i/fMU=;
  b=MgfNeHBLnprjE1O9A3RAWZUivx7H6YjAE48q85eMhJmQ/PVKwnj8K5QH
   3MU+7YNOa8ETsxqtGQx7yZKjC6HFYtABZO/aORbKyqOJmdevRvSE3/53K
   WttjyIU6ZR/Qo+G7qwzwug7mc9z4zi2Rae9rtUpq4kt7LVEjtEfJcOljL
   lCoCQloMwaxLreGvsEVgJpfvfapBG9+EJNAdf/7Z4QHjuKlZxbcj+18iq
   Ul9l80gU2UIhNyaXcY4LrBof9MfakEYiqV9OTRrtUZdlxXRBQDE/jaKml
   uZ134u22URo3y8+nWaiAhsaepQsGgA/6PTYWqsmVV0E6d+BKBLld3GbhF
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="317815145"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400";
   d="scan'208";a="317815145"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2023 06:42:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="672341803"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400";
   d="scan'208";a="672341803"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 14 Mar 2023 06:42:43 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pc4vG-0006wz-0R;
	Tue, 14 Mar 2023 13:42:38 +0000
Date: Tue, 14 Mar 2023 21:41:42 +0800
From: kernel test robot <lkp@intel.com>
To: Paul Cercueil <paul@crapouillou.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202303142140.ZQsw4C4V-lkp@intel.com>
References: <20230314105257.17345-3-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230314105257.17345-3-paul@crapouillou.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 340423EA31
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.55.52.151/32];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mga17.intel.com:rdns,mga17.intel.com:helo,intel.com:dkim,intel.com:email];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[]
Message-ID-Hash: 3PBNL5ZAPLVBOIBRVWPIBQSQAXDDAVDW
X-Message-ID-Hash: 3PBNL5ZAPLVBOIBRVWPIBQSQAXDDAVDW
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Paul Cercueil <paul@crapouillou.net>, michael.hennerich@analog.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nuno.sa@analog.com, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] usb: gadget: functionfs: Add DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3PBNL5ZAPLVBOIBRVWPIBQSQAXDDAVDW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Paul,

I love your patch! Perhaps something to improve:

[auto build test WARNING on usb/usb-testing]
[also build test WARNING on usb/usb-next usb/usb-linus linus/master v6.3-rc2 next-20230314]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-Cercueil/usb-gadget-Support-already-mapped-DMA-SGs/20230314-185522
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
patch link:    https://lore.kernel.org/r/20230314105257.17345-3-paul%40crapouillou.net
patch subject: [PATCH 2/2] usb: gadget: functionfs: Add DMABUF import interface
config: m68k-allyesconfig (https://download.01.org/0day-ci/archive/20230314/202303142140.ZQsw4C4V-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/4ee364ed5d112c4550344fd037f4e1ef7cc41878
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Paul-Cercueil/usb-gadget-Support-already-mapped-DMA-SGs/20230314-185522
        git checkout 4ee364ed5d112c4550344fd037f4e1ef7cc41878
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k SHELL=/bin/bash drivers/usb/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303142140.ZQsw4C4V-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/usb/gadget/function/f_fs.c:1401:5: warning: no previous prototype for 'ffs_dma_resv_lock' [-Wmissing-prototypes]
    1401 | int ffs_dma_resv_lock(struct dma_buf *dmabuf, bool nonblock)
         |     ^~~~~~~~~~~~~~~~~


vim +/ffs_dma_resv_lock +1401 drivers/usb/gadget/function/f_fs.c

  1400	
> 1401	int ffs_dma_resv_lock(struct dma_buf *dmabuf, bool nonblock)
  1402	{
  1403		int ret;
  1404	
  1405		ret = dma_resv_lock_interruptible(dmabuf->resv, NULL);
  1406		if (ret) {
  1407			if (ret != -EDEADLK)
  1408				goto out;
  1409			if (nonblock) {
  1410				ret = -EBUSY;
  1411				goto out;
  1412			}
  1413	
  1414			ret = dma_resv_lock_slow_interruptible(dmabuf->resv, NULL);
  1415		}
  1416	
  1417	out:
  1418		return ret;
  1419	}
  1420	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
