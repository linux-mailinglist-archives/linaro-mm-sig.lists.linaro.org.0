Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A7A9A4B13
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 19 Oct 2024 05:13:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CDB733F56A
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 19 Oct 2024 03:13:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	by lists.linaro.org (Postfix) with ESMTPS id E8FDD3F319
	for <linaro-mm-sig@lists.linaro.org>; Sat, 19 Oct 2024 03:13:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=cP8Ik9YA;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.11 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1729307606; x=1760843606;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Nw3ZARuhUlLWhZ7CyTkiVyEjbUt6Fu7cg8I9r+R5VI0=;
  b=cP8Ik9YARgoogct951WJ8tdaAHq3JujpF2eVNOm/7SzzsA99rDVIvbyW
   1dBekcH13iUeoc5eBA75LEh+6DFFtRZKpqUN7pv/5rAHxk2dPPHHrWFei
   1xuWRAqur2Lj8OtDpBRtENtHkdeDvXiI5DK55vOWnXnEbJ2a7bfm4Fx1k
   zcxwZfpn1o4Gdtj9e9s1/jpPzFsB72TcIurysL33K2ucUKlk+yl+DnEC4
   ixpkcqbYpC3jCmIx5D8AqJKczXJOijsWHof5wM3OmeaFSu9IjjskotIR0
   WBLHt7aIuNIKe1yTBxCF7fD6X79qRNIb7tmllzlJh8UHJhWEOKfMexLF8
   Q==;
X-CSE-ConnectionGUID: Tfe/3LPkS4aGUYNpUce7EA==
X-CSE-MsgGUID: aTZdsunCTkK4Mg6/gIf1tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39407545"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800";
   d="scan'208";a="39407545"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2024 20:13:25 -0700
X-CSE-ConnectionGUID: zU/2lXNsSzONR+XlL9WhmA==
X-CSE-MsgGUID: Qo61ij+pQxybXMvAQ6hbMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,215,1725346800";
   d="scan'208";a="83827604"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by orviesa005.jf.intel.com with ESMTP; 18 Oct 2024 20:13:20 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1t1zu1-000Ode-1s;
	Sat, 19 Oct 2024 03:13:17 +0000
Date: Sat, 19 Oct 2024 11:12:19 +0800
From: kernel test robot <lkp@intel.com>
To: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202410191055.bi1pWTAY-lkp@intel.com>
References: <20241015120750.21217-6-quic_jseerapu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241015120750.21217-6-quic_jseerapu@quicinc.com>
X-Spamd-Result: default: False [-5.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[198.175.65.11:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E8FDD3F319
X-Spamd-Bar: -----
Message-ID-Hash: OYR6SGR7HJ3VK2DSTJXLFGIPNNLBCWBF
X-Message-ID-Hash: OYR6SGR7HJ3VK2DSTJXLFGIPNNLBCWBF
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 5/5] i2c: i2c-qcom-geni: Add Block event interrupt support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OYR6SGR7HJ3VK2DSTJXLFGIPNNLBCWBF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Jyothi,

kernel test robot noticed the following build errors:

[auto build test ERROR on 55bcd2e0d04c1171d382badef1def1fd04ef66c5]

url:    https://github.com/intel-lab-lkp/linux/commits/Jyothi-Kumar-Seerapu/dt-bindings-dmaengine-qcom-gpi-Add-additional-arg-to-dma-cell-property/20241015-202637
base:   55bcd2e0d04c1171d382badef1def1fd04ef66c5
patch link:    https://lore.kernel.org/r/20241015120750.21217-6-quic_jseerapu%40quicinc.com
patch subject: [PATCH v1 5/5] i2c: i2c-qcom-geni: Add Block event interrupt support
config: i386-allmodconfig (https://download.01.org/0day-ci/archive/20241019/202410191055.bi1pWTAY-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241019/202410191055.bi1pWTAY-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410191055.bi1pWTAY-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "gpi_multi_desc_process" [drivers/i2c/busses/i2c-qcom-geni.ko] undefined!

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for GET_FREE_REGION
   Depends on [n]: SPARSEMEM [=n]
   Selected by [m]:
   - RESOURCE_KUNIT_TEST [=m] && RUNTIME_TESTING_MENU [=y] && KUNIT [=m]
   WARNING: unmet direct dependencies detected for OMAP2PLUS_MBOX
   Depends on [n]: MAILBOX [=y] && (ARCH_OMAP2PLUS || ARCH_K3)
   Selected by [m]:
   - TI_K3_M4_REMOTEPROC [=m] && REMOTEPROC [=y] && (ARCH_K3 || COMPILE_TEST [=y])

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
