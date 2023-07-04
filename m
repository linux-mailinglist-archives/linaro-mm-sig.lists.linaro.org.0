Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F18A2747893
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Jul 2023 21:11:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAA5640439
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Jul 2023 19:11:27 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by lists.linaro.org (Postfix) with ESMTPS id 0D0883E916
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Jul 2023 19:11:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=TahlfA6P;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1688497871; x=1720033871;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=N+jEsHLauGx61KnltWviK6hcwVBEgkMktElW+SHC/C4=;
  b=TahlfA6Pts1Jd/COI60XXSaRzo3erQuDHdITXdUPdlUO65k/OPQ9CBHj
   pe27ZB29KLikxTo7rbrRPWyFDJDQ+jwcZm2bDed+fgAbel4LLtI8IjFM4
   MODhtV3h+ZemTht89t6LDhk5U/TOnaHQY4iRW4dbRDsjPmZfqVAPj3/M0
   /ESiG4k+Shi+hwPxZB8TOY/zm1ArnGeS11vLih4hX1HaYIqLMV2XdQw95
   dHUiT/erUCYgz6eb/SFrLtFCMyolljbxLTsSWKW/NYgTlaQDsDoO2Elhi
   Ef9L3/2Z41a7Iv9dtlq9qVArv6+noQPFn4pVPvgHpEYCRos0mu+5WQ36L
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="429218478"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200";
   d="scan'208";a="429218478"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jul 2023 12:11:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="832249738"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200";
   d="scan'208";a="832249738"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 04 Jul 2023 12:11:05 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qGlQW-000ITj-28;
	Tue, 04 Jul 2023 19:11:04 +0000
Date: Wed, 5 Jul 2023 03:11:03 +0800
From: kernel test robot <lkp@intel.com>
To: Yongqiang Niu <yongqiang.niu@mediatek.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Message-ID: <202307050325.QZv71se7-lkp@intel.com>
References: <20230704090432.5844-1-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230704090432.5844-1-yongqiang.niu@mediatek.com>
X-Spamd-Result: default: False [-13.50 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[intel.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[134.134.136.100:from];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:134.134.136.100/32];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[lists.linux.dev,mediatek.com,suse.de,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,cerno.tech,chromium.org,gmail.com,linaro.org,collabora.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0D0883E916
X-Spamd-Bar: -------------
Message-ID-Hash: XAI3EA76H6PRO5VX7BX6P3CW72MILYLT
X-Message-ID-Hash: XAI3EA76H6PRO5VX7BX6P3CW72MILYLT
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Project_Global_Chrome_Upstream_Group@mediatek.com, Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Yongqiang Niu <yongqiang.niu@mediatek.com>, linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>, Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v4, PATCH] drm/mediatek: add dma buffer control for drm plane disable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XAI3EA76H6PRO5VX7BX6P3CW72MILYLT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Yongqiang,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-misc/drm-misc-next]
[also build test ERROR on linus/master v6.4 next-20230704]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Yongqiang-Niu/drm-mediatek-add-dma-buffer-control-for-drm-plane-disable/20230704-170623
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20230704090432.5844-1-yongqiang.niu%40mediatek.com
patch subject: [v4, PATCH] drm/mediatek: add dma buffer control for drm plane disable
config: arm64-defconfig (https://download.01.org/0day-ci/archive/20230705/202307050325.QZv71se7-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230705/202307050325.QZv71se7-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202307050325.QZv71se7-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: module mediatek-drm uses symbol dma_buf_put from namespace DMA_BUF, but does not import it.

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
