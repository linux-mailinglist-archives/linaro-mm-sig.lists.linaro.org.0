Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BB68CCD344F
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 20 Dec 2025 18:15:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85B7D3F75A
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 20 Dec 2025 17:15:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
	by lists.linaro.org (Postfix) with ESMTPS id 6253B3F75A
	for <linaro-mm-sig@lists.linaro.org>; Sat, 20 Dec 2025 17:15:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=S8phQJ1J;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1766250935; x=1797786935;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Hcqx9K9e2DdZM+fc4kG1hUDJm+AVPCZc+SF3IRp/b7A=;
  b=S8phQJ1JVVKq1xaksOH/tKV2tsSO/+vETjCCmZBLGdFae+MnrWF2/EoV
   6EdowpKCX4i+KrgK68Sv9wjaeZdynZgH0MX7MuNOQ5/WDS2GEymwq2+/x
   LZ81N27FirK8mVsLaxJq+GGNyWqLMGTNbQWWeQco1IYO4cq170R4NRipD
   +llU5z3E7c3Zv7HlI9fd7AcDq+B06oiqXzgm0fep6rVba8COMcWMCamr8
   8QmVDSYaKZoUQMBOAHETeI7q1AHJP70S9TCz1NKI4BGFmTsuDn1+7MxwN
   oo3SrtZ2kv0mRzlJJaGohS84ayMoARRWdKEjc7ai3XsPr8PcrxROquf0t
   A==;
X-CSE-ConnectionGUID: ApkbtLGkQ9KwiFjORiJgmQ==
X-CSE-MsgGUID: z8iMTHXOQxKlIvz9SdouBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11648"; a="67931021"
X-IronPort-AV: E=Sophos;i="6.21,164,1763452800";
   d="scan'208";a="67931021"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Dec 2025 09:15:34 -0800
X-CSE-ConnectionGUID: xj9DdeaKSq6vz1gN+HADYg==
X-CSE-MsgGUID: upGwtnYiSQCeULUBwleOSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,164,1763452800";
   d="scan'208";a="199046442"
Received: from lkp-server01.sh.intel.com (HELO 0d09efa1b85f) ([10.239.97.150])
  by fmviesa006.fm.intel.com with ESMTP; 20 Dec 2025 09:15:30 -0800
Received: from kbuild by 0d09efa1b85f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vX0YB-000000004vl-3lXj;
	Sat, 20 Dec 2025 17:15:27 +0000
Date: Sun, 21 Dec 2025 01:15:12 +0800
From: kernel test robot <lkp@intel.com>
To: Alain Volmat <alain.volmat@foss.st.com>,
	Hugues Fruchet <hugues.fruchet@foss.st.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202512210044.xNNW6QJZ-lkp@intel.com>
References: <20251218-stm32-dcmi-dma-chaining-v1-1-39948ca6cbf6@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251218-stm32-dcmi-dma-chaining-v1-1-39948ca6cbf6@foss.st.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[198.175.65.20:server fail];
	FREEMAIL_TO(0.00)[foss.st.com,kernel.org,gmail.com,linaro.org,amd.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[19];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6253B3F75A
X-Spamd-Bar: ------
Message-ID-Hash: EDD2RYUXOWNYZMJDFWO3V5W2O4GVJTY3
X-Message-ID-Hash: EDD2RYUXOWNYZMJDFWO3V5W2O4GVJTY3
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, linux-media@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Alain Volmat <alain.volmat@foss.st.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/12] media: stm32: dcmi: Switch from __maybe_unused to pm_sleep_ptr()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EDD2RYUXOWNYZMJDFWO3V5W2O4GVJTY3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Alain,

kernel test robot noticed the following build warnings:

[auto build test WARNING on atorgue-stm32/stm32-next]
[also build test WARNING on robh/for-next linus/master v6.19-rc1 next-20251219]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Alain-Volmat/media-stm32-dcmi-Switch-from-__maybe_unused-to-pm_sleep_ptr/20251219-024836
base:   https://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git stm32-next
patch link:    https://lore.kernel.org/r/20251218-stm32-dcmi-dma-chaining-v1-1-39948ca6cbf6%40foss.st.com
patch subject: [PATCH 01/12] media: stm32: dcmi: Switch from __maybe_unused to pm_sleep_ptr()
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20251221/202512210044.xNNW6QJZ-lkp@intel.com/config)
compiler: arc-linux-gcc (GCC) 15.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251221/202512210044.xNNW6QJZ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512210044.xNNW6QJZ-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/media/platform/st/stm32/stm32-dcmi.c:2127:12: warning: 'dcmi_resume' defined but not used [-Wunused-function]
    2127 | static int dcmi_resume(struct device *dev)
         |            ^~~~~~~~~~~
>> drivers/media/platform/st/stm32/stm32-dcmi.c:2116:12: warning: 'dcmi_suspend' defined but not used [-Wunused-function]
    2116 | static int dcmi_suspend(struct device *dev)
         |            ^~~~~~~~~~~~


vim +/dcmi_resume +2127 drivers/media/platform/st/stm32/stm32-dcmi.c

  2115	
> 2116	static int dcmi_suspend(struct device *dev)
  2117	{
  2118		/* disable clock */
  2119		pm_runtime_force_suspend(dev);
  2120	
  2121		/* change pinctrl state */
  2122		pinctrl_pm_select_sleep_state(dev);
  2123	
  2124		return 0;
  2125	}
  2126	
> 2127	static int dcmi_resume(struct device *dev)
  2128	{
  2129		/* restore pinctl default state */
  2130		pinctrl_pm_select_default_state(dev);
  2131	
  2132		/* clock enable */
  2133		pm_runtime_force_resume(dev);
  2134	
  2135		return 0;
  2136	}
  2137	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
