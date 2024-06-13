Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD83906184
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jun 2024 04:06:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83478448B1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jun 2024 02:06:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	by lists.linaro.org (Postfix) with ESMTPS id 6114540B8E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jun 2024 02:06:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=bfFqKemz;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.18 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718244392; x=1749780392;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=8sFmvQ7Z83X7NLUoXzzUfw6X3sNAVrct6codoq1wV7Q=;
  b=bfFqKemzSpHAwpWkAhhRA8u13LrcyIN0epm8S0ng3X3YLj8yfP0dVyaj
   l/oK+E7hGplSxnnTN9ueEoKZbv0e2cPTxENTnEBpqbUMjEaRTVvDZ6vPi
   Q5WgJSRCI0nZsWb0Src1dcdPRH1CDmfG0EWoDildHi/ygGZ83luZojsWH
   oJ5akucmi2UaeuCMiJ/qjQ+cTFCIQV4I6AmdLfy38VdldaoqPqmXnVEtr
   H2/gIYTju99qYJyuXj6cAEZJDqIp2F3VcqLiNooaKAxEeVAEMLZQEo4Tf
   c7tO9zzwFEGSKkRgFtZ5LdeOe8yD/Xld2a0OAoPUeAu+f9W1W2SKY0kHa
   g==;
X-CSE-ConnectionGUID: orQ+ycv3QmCuKFfYHtpJ6Q==
X-CSE-MsgGUID: ojuqzSNiQ9CwoHNMumF3Nw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="15194302"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000";
   d="scan'208";a="15194302"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2024 19:06:30 -0700
X-CSE-ConnectionGUID: S0kNdoNXTeaDmFV2fIXYpQ==
X-CSE-MsgGUID: 6aVpmYIvR1+lJTRSNmEW5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000";
   d="scan'208";a="44427853"
Received: from lkp-server01.sh.intel.com (HELO 628d7d8b9fc6) ([10.239.97.150])
  by fmviesa005.fm.intel.com with ESMTP; 12 Jun 2024 19:06:24 -0700
Received: from kbuild by 628d7d8b9fc6 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sHZr4-000270-15;
	Thu, 13 Jun 2024 02:06:22 +0000
Date: Thu, 13 Jun 2024 10:05:59 +0800
From: kernel test robot <lkp@intel.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Oded Gabbay <ogabbay@kernel.org>,
	Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202406130901.oiofrkFe-lkp@intel.com>
References: <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6114540B8E
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[27];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_TO(0.00)[tomeuvizoso.net,8bytes.org,kernel.org,arm.com,sntech.de,gmail.com,ffwll.ch,linux.intel.com,suse.de,pengutronix.de,linaro.org,amd.com];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
Message-ID-Hash: HLKDHK3NBL6N4PSQD3EIG7BDDCIFIOOA
X-Message-ID-Hash: HLKDHK3NBL6N4PSQD3EIG7BDDCIFIOOA
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/9] accel/rocket: Add a new driver for Rockchip's NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HLKDHK3NBL6N4PSQD3EIG7BDDCIFIOOA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Tomeu,

kernel test robot noticed the following build errors:

[auto build test ERROR on 83a7eefedc9b56fe7bfeff13b6c7356688ffa670]

url:    https://github.com/intel-lab-lkp/linux/commits/Tomeu-Vizoso/iommu-rockchip-Add-compatible-for-rockchip-rk3588-iommu/20240612-215814
base:   83a7eefedc9b56fe7bfeff13b6c7356688ffa670
patch link:    https://lore.kernel.org/r/20240612-6-10-rocket-v1-6-060e48eea250%40tomeuvizoso.net
patch subject: [PATCH 6/9] accel/rocket: Add a new driver for Rockchip's NPU
config: loongarch-allmodconfig (https://download.01.org/0day-ci/archive/20240613/202406130901.oiofrkFe-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240613/202406130901.oiofrkFe-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406130901.oiofrkFe-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from arch/loongarch/include/asm/processor.h:17,
                    from arch/loongarch/include/asm/thread_info.h:15,
                    from include/linux/thread_info.h:60,
                    from include/asm-generic/current.h:6,
                    from ./arch/loongarch/include/generated/asm/current.h:1,
                    from include/linux/mutex.h:14,
                    from include/linux/notifier.h:14,
                    from include/linux/clk.h:14,
                    from drivers/accel/rocket/rocket_core.c:6:
>> arch/loongarch/include/uapi/asm/ptrace.h:25:25: error: expected identifier before '(' token
      25 | #define PC              (GPR_END + 2)
         |                         ^
   drivers/accel/rocket/rocket_registers.h:53:9: note: in expansion of macro 'PC'
      53 |         PC = 0x00000100,
         |         ^~


vim +25 arch/loongarch/include/uapi/asm/ptrace.h

803b0fc5c3f2ba Huacai Chen 2022-05-31  16  
803b0fc5c3f2ba Huacai Chen 2022-05-31  17  /*
803b0fc5c3f2ba Huacai Chen 2022-05-31  18   * For PTRACE_{POKE,PEEK}USR. 0 - 31 are GPRs,
803b0fc5c3f2ba Huacai Chen 2022-05-31  19   * 32 is syscall's original ARG0, 33 is PC, 34 is BADVADDR.
803b0fc5c3f2ba Huacai Chen 2022-05-31  20   */
803b0fc5c3f2ba Huacai Chen 2022-05-31  21  #define GPR_BASE	0
803b0fc5c3f2ba Huacai Chen 2022-05-31  22  #define GPR_NUM		32
803b0fc5c3f2ba Huacai Chen 2022-05-31  23  #define GPR_END		(GPR_BASE + GPR_NUM - 1)
803b0fc5c3f2ba Huacai Chen 2022-05-31  24  #define ARG0		(GPR_END + 1)
803b0fc5c3f2ba Huacai Chen 2022-05-31 @25  #define PC		(GPR_END + 2)
803b0fc5c3f2ba Huacai Chen 2022-05-31  26  #define BADVADDR	(GPR_END + 3)
803b0fc5c3f2ba Huacai Chen 2022-05-31  27  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
