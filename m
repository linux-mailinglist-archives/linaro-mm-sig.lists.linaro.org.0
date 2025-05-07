Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EB2AAD942
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 09:59:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 564B4459AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 07:59:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	by lists.linaro.org (Postfix) with ESMTPS id DE3EB3F57F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 May 2025 07:59:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=fCiXWS+F;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.15 as permitted sender) smtp.mailfrom=lkp@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1746604742; x=1778140742;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=pc9ZnpfpNAW8KOYgspYmh8RTXqehB+edtu1UuEUhwVw=;
  b=fCiXWS+FphLuH8p/ardWVmN2K3rxql3v/YdeJx+Fq1jA2jEuJVuzwJ5b
   u2koIiC1v/lPvXqohzgK37EI1o3nv0zrPidkHejXl+vAPk5VLSkijocKk
   8VAotCr0rHqFOcpu4Jnzx1/lR5aDNUd9jvOtKGSA4LPnA0Q9fine+k+5w
   n7/TrARTDFxQ3UKxN4MV9x9LN1VauU/FSumOputJ79C62P6oWnZjOQalX
   VQnV7m4x9JyQkvqV9er4jBF2ggU1YwFNnd5aJIXNgulnsg/EmBF6vvk8W
   7zVG4dFn+jQ+7/4Uc1nNobWJn5bnohV35YoirKwoYseeLoFvq+TmxVeqM
   w==;
X-CSE-ConnectionGUID: SZh6Uv0FQO6V7D41AO0ZGQ==
X-CSE-MsgGUID: 3X5rUQKoT4GnOJEqAm7Jhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="51969521"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600";
   d="scan'208";a="51969521"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 May 2025 00:59:01 -0700
X-CSE-ConnectionGUID: qCHCQ2hDQBu1dMXhuqOWpw==
X-CSE-MsgGUID: HwB8VYUgR8ivGlALf/bRSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600";
   d="scan'208";a="159175157"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
  by fmviesa002.fm.intel.com with ESMTP; 07 May 2025 00:58:58 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uCZg6-0007Mz-26;
	Wed, 07 May 2025 07:58:54 +0000
Date: Wed, 7 May 2025 15:58:20 +0800
From: kernel test robot <lkp@intel.com>
To: Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>,
	Jens Wiklander <jens.wiklander@linaro.org>,
	Sumit Garg <sumit.garg@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Apurupa Pattapu <quic_apurupa@quicinc.com>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202505071540.hAeEOUWt-lkp@intel.com>
References: <20250428-qcom-tee-using-tee-ss-without-mem-obj-v4-8-6a143640a6cb@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250428-qcom-tee-using-tee-ss-without-mem-obj-v4-8-6a143640a6cb@oss.qualcomm.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DE3EB3F57F
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[intel.com:dkim];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[198.175.65.15:from];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: JRAFEUNTDTGSWPGZB6GAGF7ZZN2PEVRU
X-Message-ID-Hash: JRAFEUNTDTGSWPGZB6GAGF7ZZN2PEVRU
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 08/11] tee: add Qualcomm TEE driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JRAFEUNTDTGSWPGZB6GAGF7ZZN2PEVRU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Amirreza,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 33035b665157558254b3c21c3f049fd728e72368]

url:    https://github.com/intel-lab-lkp/linux/commits/Amirreza-Zarrabi/tee-allow-a-driver-to-allocate-a-tee_device-without-a-pool/20250429-140908
base:   33035b665157558254b3c21c3f049fd728e72368
patch link:    https://lore.kernel.org/r/20250428-qcom-tee-using-tee-ss-without-mem-obj-v4-8-6a143640a6cb%40oss.qualcomm.com
patch subject: [PATCH v4 08/11] tee: add Qualcomm TEE driver
config: sh-allmodconfig (https://download.01.org/0day-ci/archive/20250507/202505071540.hAeEOUWt-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250507/202505071540.hAeEOUWt-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202505071540.hAeEOUWt-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/tee/qcomtee/async.c:101 function parameter 'async_msg' not described in 'async_release'
>> Warning: drivers/tee/qcomtee/async.c:101 Excess function parameter 'msg' description in 'async_release'

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for DRM_AUX_HPD_BRIDGE
   Depends on [n]: HAS_IOMEM [=y] && DRM [=n] && DRM_BRIDGE [=n] && OF [=y]
   Selected by [m]:
   - UCSI_HUAWEI_GAOKUN [=m] && USB_SUPPORT [=y] && TYPEC [=m] && TYPEC_UCSI [=m] && EC_HUAWEI_GAOKUN [=m]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
