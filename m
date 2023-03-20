Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 437996C0B3B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 08:15:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54F2643CB4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 07:15:51 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by lists.linaro.org (Postfix) with ESMTPS id 0116A3E94D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Mar 2023 07:15:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=CNXOKRv5;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679296539; x=1710832539;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=96gp98CgPmdI61qm0TB29Gzv3LWLZoLSpLgfOEYGVIo=;
  b=CNXOKRv5x5jIVLlJMpmAzmyIqiB5Kb/ClSkJyQpeodnVSfb0akzSwoeW
   Cv/k+WswK3lb/fUbaBnLbfqUvNxeKFmUbGkg/uaH4G7lD73hz2NGK3d4r
   1+V5hQTL9CFzXXztiEwlF07fW53tt/yNUzIiJP1jnxE9f84wR7a1BJIMa
   EuJG8JVAJxL5ON0IWWjBfLSrkho6srvDwu/nYrBssABc/h60gFP4gbMtn
   b+2xpcDqNYelpNj9VpY6mzedRKl79o+ijOjXbLmqY0XlEvBPwpDuCDyBk
   yijZWW9iAG8PQKSqPp8AgOzdNJZwW1VWjr6fjduY9LnbdvhG97obmAyuP
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="337308504"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400";
   d="scan'208";a="337308504"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2023 00:15:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="1010362285"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400";
   d="scan'208";a="1010362285"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 20 Mar 2023 00:15:33 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pe9jx-000AtG-0G;
	Mon, 20 Mar 2023 07:15:33 +0000
Date: Mon, 20 Mar 2023 15:15:26 +0800
From: kernel test robot <lkp@intel.com>
To: Yongqiang Niu <yongqiang.niu@mediatek.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Message-ID: <202303201543.ahrAhliY-lkp@intel.com>
References: <20230320030449.5397-1-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230320030449.5397-1-yongqiang.niu@mediatek.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0116A3E94D
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.55.52.120/32];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,mediatek.com,suse.de,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,cerno.tech,chromium.org,gmail.com,linaro.org,collabora.com];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[]
Message-ID-Hash: LLWZWRAIZKVJ4J6OZLYSPEKMNMEHB5NR
X-Message-ID-Hash: LLWZWRAIZKVJ4J6OZLYSPEKMNMEHB5NR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, Project_Global_Chrome_Upstream_Group@mediatek.com, Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Yongqiang Niu <yongqiang.niu@mediatek.com>, linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>, Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v3, PATCH] drm/mediatek: add dma buffer control for drm plane disable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LLWZWRAIZKVJ4J6OZLYSPEKMNMEHB5NR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Yongqiang,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-misc/drm-misc-next]
[also build test ERROR on linus/master v6.3-rc3 next-20230320]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Yongqiang-Niu/drm-mediatek-add-dma-buffer-control-for-drm-plane-disable/20230320-110649
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20230320030449.5397-1-yongqiang.niu%40mediatek.com
patch subject: [v3, PATCH] drm/mediatek: add dma buffer control for drm plane disable
config: arm64-randconfig-r001-20230320 (https://download.01.org/0day-ci/archive/20230320/202303201543.ahrAhliY-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project 67409911353323ca5edf2049ef0df54132fa1ca7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/ae19fefd6d548a2766bc6d1902c46d5baa39a202
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Yongqiang-Niu/drm-mediatek-add-dma-buffer-control-for-drm-plane-disable/20230320-110649
        git checkout ae19fefd6d548a2766bc6d1902c46d5baa39a202
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303201543.ahrAhliY-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: module mediatek-drm uses symbol dma_buf_put from namespace DMA_BUF, but does not import it.

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
