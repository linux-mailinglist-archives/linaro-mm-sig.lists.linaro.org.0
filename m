Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E53F7A0181
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Sep 2023 12:19:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F274B3F358
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Sep 2023 10:19:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
	by lists.linaro.org (Postfix) with ESMTPS id 2E2D63EE13
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Sep 2023 10:19:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="iVJxmp/A";
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1694686751; x=1726222751;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=O1LLvMPKGNc5ZFEUOpVx7SNJUHBbUo3ACKo6XHAjDn8=;
  b=iVJxmp/A/9oSW71W4SGHUbB+g1aYOecdNtcZvcyBg/Nj7QBoVXIbADZf
   W7BxnH/FH9CBLZtW/OAVpsWaztqbp21DbOreL28cF2An0lhbEHHUkduDP
   4HGkLzAqLXe2EF074Pld/v5CMB4dQofkwbEiPUs2QZgjYJkmD83MfLhej
   pl0Ebf7G/QMLQezPWHQhLvFMzPRo1MypCJ3PBSUjcxoRy7h16E1+a4w/7
   H/z37Vx2ui3W/t66xebcIgZlrh3JdYy0N8RWlgDQ7bbWuJNLGOgRbc3C7
   smrxWpzpwpSf1JTtlW4UseSWPSJ3J6UVBGABaxAZXiYrnRH8JehrGjg0/
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="363949208"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000";
   d="scan'208";a="363949208"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Sep 2023 03:18:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="773840738"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000";
   d="scan'208";a="773840738"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 14 Sep 2023 03:18:44 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qgjQo-0001Tp-0F;
	Thu, 14 Sep 2023 10:18:42 +0000
Date: Thu, 14 Sep 2023 18:18:03 +0800
From: kernel test robot <lkp@intel.com>
To: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com,
	Matthias Brugger <matthias.bgg@gmail.com>
Message-ID: <202309141707.zdT0yuMT-lkp@intel.com>
References: <20230911023038.30649-7-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230911023038.30649-7-yong.wu@mediatek.com>
X-Rspamd-Queue-Id: 2E2D63EE13
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:134.134.136.126/32];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,linaro.org,amd.com,gmail.com];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7FYI7IBFXXBSHFEWICKHEUSWCBPLQGW3
X-Message-ID-Hash: 7FYI7IBFXXBSHFEWICKHEUSWCBPLQGW3
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Anan Sun <anan.sun@mediatek.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, jianjiao.zeng@mediatek.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, tjmercier@google.com, linaro-mm-sig@lists.linaro.org, John Stultz <jstultz@google.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, Yong Wu <yong.wu@mediatek.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/9] dma-buf: heaps: mtk_sec_heap: Add tee service call for buffer allocating/freeing
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7FYI7IBFXXBSHFEWICKHEUSWCBPLQGW3/>
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
[also build test ERROR on robh/for-next linus/master v6.6-rc1 next-20230914]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Yong-Wu/dma-buf-heaps-Deduplicate-docs-and-adopt-common-format/20230911-103308
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20230911023038.30649-7-yong.wu%40mediatek.com
patch subject: [PATCH 6/9] dma-buf: heaps: mtk_sec_heap: Add tee service call for buffer allocating/freeing
config: loongarch-allmodconfig (https://download.01.org/0day-ci/archive/20230914/202309141707.zdT0yuMT-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230914/202309141707.zdT0yuMT-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309141707.zdT0yuMT-lkp@intel.com/

All errors (new ones prefixed by >>):

   loongarch64-linux-ld: drivers/dma-buf/heaps/mtk_secure_heap.o: in function `mtk_kree_secure_session_init':
   mtk_secure_heap.c:(.text+0x130): undefined reference to `tee_client_open_context'
   loongarch64-linux-ld: drivers/dma-buf/heaps/mtk_secure_heap.o: in function `.L10':
   mtk_secure_heap.c:(.text+0x19c): undefined reference to `tee_client_open_session'
   loongarch64-linux-ld: drivers/dma-buf/heaps/mtk_secure_heap.o: in function `.L12':
   mtk_secure_heap.c:(.text+0x1dc): undefined reference to `tee_client_close_context'
   loongarch64-linux-ld: drivers/dma-buf/heaps/mtk_secure_heap.o: in function `mtk_sec_mem_tee_service_call.constprop.0':
>> mtk_secure_heap.c:(.text+0x274): undefined reference to `tee_client_invoke_func'
   loongarch64-linux-ld: drivers/dma-buf/heaps/mtk_secure_heap.o: in function `mtk_sec_mem_release.isra.0':
   mtk_secure_heap.c:(.text+0x464): undefined reference to `tee_client_invoke_func'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
