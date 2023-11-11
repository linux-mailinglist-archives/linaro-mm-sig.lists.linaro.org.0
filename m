Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BD37E8BC6
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 17:56:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D00340C99
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 16:56:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
	by lists.linaro.org (Postfix) with ESMTPS id B357D40C99
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Nov 2023 16:56:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=eY+aEa5c;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1699721770; x=1731257770;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=X1K4nrfzoAfrPqvT537HLIANMJRwbCdUtldsJzklx6Y=;
  b=eY+aEa5cek7DAiGUvKoqJCMaTFGJoiZ31xy9pvKOJM3y7B+BjOV68Zlv
   VuPXvZFAn04N6QTkOAdT1FdxTlfF1eYjOrIT0h5TyL70hx9sDELlA64xc
   bj1ZLW4HTccpYGZlaW/Xi6ansxf6o6QzE1UCFUHog1uVTlFv28Qz+Ib+R
   XEuL9tCkOPDICrJp/b+UrzIbBjZTI8DhNLh8ZCv2BBYwoXD/aqaLRUuiQ
   hDlOCMF8e33myQDmazrMra9I7cXoTUJ7aoNUigm9EdAuZKjPj9m5rS0Qy
   SC9hMy6piR9HwEW0S5/3HUNdD3l52WU/VAZ/6ND35UFXR2rOnKXSDkzeM
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10891"; a="380674578"
X-IronPort-AV: E=Sophos;i="6.03,295,1694761200";
   d="scan'208";a="380674578"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Nov 2023 08:56:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,295,1694761200";
   d="scan'208";a="5091496"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 11 Nov 2023 08:56:01 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1r1rH5-000Ad0-0U;
	Sat, 11 Nov 2023 16:55:59 +0000
Date: Sun, 12 Nov 2023 00:55:03 +0800
From: kernel test robot <lkp@intel.com>
To: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com,
	Matthias Brugger <matthias.bgg@gmail.com>
Message-ID: <202311120053.qXNIYBzk-lkp@intel.com>
References: <20231111111559.8218-4-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231111111559.8218-4-yong.wu@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B357D40C99
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.60 / 15.00];
	REPLY(-4.00)[];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:134.134.136.20/32];
	RWL_MAILSPIKE_GOOD(-0.10)[134.134.136.20:from];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[mgamail.intel.com:rdns,mgamail.intel.com:helo];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,linaro.org,amd.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.freedesktop.org,google.com,kernel.org,collabora.com,quicinc.com,ndufresne.ca,mediatek.com,vger.kernel.org,gmail.com,lists.linaro.org,lists.infradead.org,linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	DWL_DNSWL_BLOCKED(0.00)[intel.com:dkim];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	TAGGED_RCPT(0.00)[dt];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: OVU2SCGAJAX3JRYNIXIYGJR6KZ4VDVBC
X-Message-ID-Hash: OVU2SCGAJAX3JRYNIXIYGJR6KZ4VDVBC
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>, Krzysztof Kozlowski <krzk@kernel.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, Yong Wu <yong.wu@mediatek.com>, jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org, Joakim Bech <joakim.bech@linaro.org>, tjmercier@google.com, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/8] dma-buf: heaps: secure_heap: Initialize tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OVU2SCGAJAX3JRYNIXIYGJR6KZ4VDVBC/>
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
config: m68k-allmodconfig (https://download.01.org/0day-ci/archive/20231112/202311120053.qXNIYBzk-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231112/202311120053.qXNIYBzk-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311120053.qXNIYBzk-lkp@intel.com/

All errors (new ones prefixed by >>):

   m68k-linux-ld: drivers/dma-buf/heaps/secure_heap.o: in function `secure_heap_tee_session_init':
   secure_heap.c:(.text+0xc0): undefined reference to `tee_client_open_context'
>> m68k-linux-ld: secure_heap.c:(.text+0x134): undefined reference to `tee_client_open_session'
>> m68k-linux-ld: secure_heap.c:(.text+0x180): undefined reference to `tee_client_close_context'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
