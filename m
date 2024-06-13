Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C42169061C2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jun 2024 04:27:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CBBA640B8E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jun 2024 02:27:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
	by lists.linaro.org (Postfix) with ESMTPS id F31F040B8E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jun 2024 02:27:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=mGKrUmA9;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.18 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718245661; x=1749781661;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Nh2RzwaSTxJgbNfHmt3JRc0uEjv3nRlrnUDcdTPlwq8=;
  b=mGKrUmA9eoCgHZeUTycxqp17UihwPgxBrKfu5cxwIZqztQm6h4jLCN4z
   vAHvlO0xqKg5zLbCSU2Q64Nv0dB/+6mjP84Kxo/SdmtvXQ5Ybgfr7pBTs
   zr6rqab59WFkDc4s0JiWYzg+4j+99ZVpERQvbIiTie6bU6EhjfpINvFM5
   lllOC0pYgoCmj/kiF+BgVArUjgpIhnwBZWac7rJRdY90uuO1FCJK5jBh3
   hwq0Tm3Aw93hEjrCcCb4Q/L1fykOcRk7LU7Sl+4w8aGm9CTNx+OA6qaA2
   3ulnfO+Xjrg17MH1f5gSTFJBfdFUP07RwrUkegSX/YSoDdCcFjeqgdjHx
   w==;
X-CSE-ConnectionGUID: Up3Nv1eGRfGoREjhHGFqxQ==
X-CSE-MsgGUID: OUrg/Tl9TWSjdraVuTGTGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14762599"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000";
   d="scan'208";a="14762599"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2024 19:27:32 -0700
X-CSE-ConnectionGUID: Hfsi00ypS3ujyFebs+qM4w==
X-CSE-MsgGUID: ZXcO7e85TC+r/0EEzcI5Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000";
   d="scan'208";a="44371511"
Received: from lkp-server01.sh.intel.com (HELO 628d7d8b9fc6) ([10.239.97.150])
  by fmviesa003.fm.intel.com with ESMTP; 12 Jun 2024 19:27:26 -0700
Received: from kbuild by 628d7d8b9fc6 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sHaBP-00027m-2g;
	Thu, 13 Jun 2024 02:27:23 +0000
Date: Thu, 13 Jun 2024 10:27:17 +0800
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
Message-ID: <202406131022.1JKNS7me-lkp@intel.com>
References: <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F31F040B8E
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[27];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
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
Message-ID-Hash: ILG23S63G5YVLUEPT4PYCP66GVDMXRJK
X-Message-ID-Hash: ILG23S63G5YVLUEPT4PYCP66GVDMXRJK
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/9] accel/rocket: Add a new driver for Rockchip's NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ILG23S63G5YVLUEPT4PYCP66GVDMXRJK/>
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
config: s390-allyesconfig (https://download.01.org/0day-ci/archive/20240613/202406131022.1JKNS7me-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240613/202406131022.1JKNS7me-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406131022.1JKNS7me-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from include/linux/clk.h:13,
                    from drivers/accel/rocket/rocket_drv.c:4:
>> drivers/accel/rocket/rocket_drv.c:213:31: error: 'rocket_pm_ops' undeclared here (not in a function); did you mean 'rocket_probe'?
     213 |                 .pm = pm_ptr(&rocket_pm_ops),
         |                               ^~~~~~~~~~~~~
   include/linux/kernel.h:48:44: note: in definition of macro 'PTR_IF'
      48 | #define PTR_IF(cond, ptr)       ((cond) ? (ptr) : NULL)
         |                                            ^~~
   drivers/accel/rocket/rocket_drv.c:213:23: note: in expansion of macro 'pm_ptr'
     213 |                 .pm = pm_ptr(&rocket_pm_ops),
         |                       ^~~~~~


vim +213 drivers/accel/rocket/rocket_drv.c

   207	
   208	static struct platform_driver rocket_driver = {
   209		.probe = rocket_probe,
   210		.remove_new = rocket_remove,
   211		.driver	 = {
   212			.name = "rocket",
 > 213			.pm = pm_ptr(&rocket_pm_ops),
   214			.of_match_table = dt_match,
   215		},
   216	};
   217	module_platform_driver(rocket_driver);
   218	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
