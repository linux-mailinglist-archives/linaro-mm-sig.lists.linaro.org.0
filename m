Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 447197E8BFA
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 18:45:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4BB5140C99
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 17:45:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	by lists.linaro.org (Postfix) with ESMTPS id 75C1A40C99
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Nov 2023 17:45:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Q2air+zg;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.10 as permitted sender) smtp.mailfrom=lkp@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1699724715; x=1731260715;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=JCkyLUFSiAGNSLRbnliFr9Cc7vWp3ub6eb46sIme+qs=;
  b=Q2air+zgexZo09UzdodYKSzQ1vWzV4TtUZJbEd/kbP7ncfqxe8gT8u2v
   m8IeELC2W0mR+4j42ZhU9NTSmzk4v75XIoAs1Pmf+KuPgd4bceYoVgEhI
   C10vPj0fw9igF6gERsHtB21aJKC0ezvfmGO+qF402ma0oICGRzqErNDLb
   2ho+Pq6p6NN4dbr9gYuUe92/GID+YOccV4JWPELIxGL5lJfGWdUZwE84u
   vjpqaqN+YNRP0mJ4uIYzA6C+6eB3t7jUnUxFYpPENaREQzaH2qFwII0zu
   NBt4Jb7vO5bXNkjlkTAbkXLfOVvWvXgbOLe9XFrp6TnzcF/TYYAgjoF10
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10891"; a="3346746"
X-IronPort-AV: E=Sophos;i="6.03,295,1694761200";
   d="scan'208";a="3346746"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Nov 2023 09:45:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10891"; a="763989254"
X-IronPort-AV: E=Sophos;i="6.03,295,1694761200";
   d="scan'208";a="763989254"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 11 Nov 2023 09:45:07 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1r1s2b-000Aee-0Z;
	Sat, 11 Nov 2023 17:45:05 +0000
Date: Sun, 12 Nov 2023 01:44:23 +0800
From: kernel test robot <lkp@intel.com>
To: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com,
	Matthias Brugger <matthias.bgg@gmail.com>
Message-ID: <202311120136.o1VqalXm-lkp@intel.com>
References: <20231111111559.8218-4-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231111111559.8218-4-yong.wu@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 75C1A40C99
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.50 / 15.00];
	REPLY(-4.00)[];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.freedesktop.org,google.com,kernel.org,collabora.com,quicinc.com,ndufresne.ca,mediatek.com,vger.kernel.org,gmail.com,lists.linaro.org,lists.infradead.org,linaro.org];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,linaro.org,amd.com,gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: NP7XVO7GTBMTF3B62KGYS7BMAUU2FTBS
X-Message-ID-Hash: NP7XVO7GTBMTF3B62KGYS7BMAUU2FTBS
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>, Krzysztof Kozlowski <krzk@kernel.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, Yong Wu <yong.wu@mediatek.com>, jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org, Joakim Bech <joakim.bech@linaro.org>, tjmercier@google.com, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/8] dma-buf: heaps: secure_heap: Initialize tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NP7XVO7GTBMTF3B62KGYS7BMAUU2FTBS/>
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
[also build test ERROR on robh/for-next drm-tip/drm-tip linus/master v6.6 next-20231110]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Yong-Wu/dma-buf-heaps-Initialize-a-secure-heap/20231111-192115
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20231111111559.8218-4-yong.wu%40mediatek.com
patch subject: [PATCH v2 3/8] dma-buf: heaps: secure_heap: Initialize tee session
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20231112/202311120136.o1VqalXm-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231112/202311120136.o1VqalXm-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311120136.o1VqalXm-lkp@intel.com/

All errors (new ones prefixed by >>):

   s390-linux-ld: drivers/dma-buf/heaps/secure_heap.o: in function `secure_heap_tee_session_init':
   secure_heap.c:(.text+0x256): undefined reference to `tee_client_open_context'
>> s390-linux-ld: secure_heap.c:(.text+0x3e0): undefined reference to `tee_client_open_session'
>> s390-linux-ld: secure_heap.c:(.text+0x52a): undefined reference to `tee_client_close_context'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
