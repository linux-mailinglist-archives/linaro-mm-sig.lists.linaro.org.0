Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DD481950F77
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2024 00:00:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5202344937
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Aug 2024 22:00:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
	by lists.linaro.org (Postfix) with ESMTPS id 477DD3F65B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Aug 2024 21:59:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=m8vm42l5;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.10 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1723586386; x=1755122386;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=smDF0r7mvpJmOBP+6nWfU55YrbMwWFuJ1tY+3DSe/84=;
  b=m8vm42l5ddhRTLPa9UUzhGCtYZjYC/5haVGXggF1h1gr8Tk++gwPDQfv
   gsYu28GRARuVSqXOFZ8ao/BZJHrBX98QvKzV09OqP/jS++CTReBG0hrrl
   7HVNh3G4faKGYI3sc9qG2DpOdN3xDNLSuSp5mPgg0CaFpxiZRKhDG1ZtB
   l6F/zoImg1XiF0NdEaeKlINpoEMeuXHdhhqgZKwg1OmKNKo0LXTmFOOAk
   g2CM2DqrDS2/iHCdx5HMAdbE/vzjkj6YGS6ucDewmpO6ZSMbH/ODwkFmd
   GJSOWWFzZfmZLh8c8g9dzX4VyHkJ6VsgR2W15dKTcHpp5/XZYcTTruDXd
   Q==;
X-CSE-ConnectionGUID: W5K5akgmRFyE/0nS9VmgvQ==
X-CSE-MsgGUID: cESPN3x2RfOdP3BTRF0L0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="33185788"
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800";
   d="scan'208";a="33185788"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2024 14:59:45 -0700
X-CSE-ConnectionGUID: czxnPOqVQaaAwqDB554ucw==
X-CSE-MsgGUID: ho2IFztlTnWPog2fiZlSQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800";
   d="scan'208";a="58737265"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
  by orviesa009.jf.intel.com with ESMTP; 13 Aug 2024 14:59:40 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sdzYH-0000kA-2n;
	Tue, 13 Aug 2024 21:59:37 +0000
Date: Wed, 14 Aug 2024 05:59:05 +0800
From: kernel test robot <lkp@intel.com>
To: Hui-Ping Chen <hpchen0nvt@gmail.com>, miquel.raynal@bootlin.com,
	richard@nod.at, vigneshr@ti.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org,
	christian.koenig@amd.com, esben@geanix.com
Message-ID: <202408140515.pbHkvxZD-lkp@intel.com>
References: <20240812030045.20831-3-hpchen0nvt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240812030045.20831-3-hpchen0nvt@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 477DD3F65B
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[intel.com:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	URIBL_BLOCKED(0.00)[mgamail.intel.com:helo,mgamail.intel.com:rdns];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,bootlin.com,nod.at,ti.com,kernel.org,linaro.org,amd.com,geanix.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.infradead.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_RCPT(0.00)[dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 6QBOC3XNTF4SVAIZSRXY55VMK6EAONZX
X-Message-ID-Hash: 6QBOC3XNTF4SVAIZSRXY55VMK6EAONZX
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Hui-Ping Chen <hpchen0nvt@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] mtd: rawnand: nuvoton: add new driver for the Nuvoton MA35 SoC
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6QBOC3XNTF4SVAIZSRXY55VMK6EAONZX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Hui-Ping,

kernel test robot noticed the following build warnings:

[auto build test WARNING on mtd/nand/next]
[also build test WARNING on linus/master v6.11-rc3 next-20240813]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Hui-Ping-Chen/dt-bindings-mtd-nuvoton-ma35d1-nand-add-new-bindings/20240812-110259
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next
patch link:    https://lore.kernel.org/r/20240812030045.20831-3-hpchen0nvt%40gmail.com
patch subject: [PATCH 2/2] mtd: rawnand: nuvoton: add new driver for the Nuvoton MA35 SoC
config: arc-randconfig-r133-20240813 (https://download.01.org/0day-ci/archive/20240814/202408140515.pbHkvxZD-lkp@intel.com/config)
compiler: arc-elf-gcc (GCC) 13.2.0
reproduce: (https://download.01.org/0day-ci/archive/20240814/202408140515.pbHkvxZD-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408140515.pbHkvxZD-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:119:3: sparse: sparse: symbol 'E_BCHALGORITHM' was not declared. Should it be static?
>> drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:333:28: sparse: sparse: cast removes address space '__iomem' of expression
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:348:39: sparse: sparse: cast removes address space '__iomem' of expression
>> drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:746:41: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected char *register ptr @@     got void [noderef] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:746:41: sparse:     expected char *register ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:746:41: sparse:     got void [noderef] __iomem *
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:760:18: sparse: sparse: cast removes address space '__iomem' of expression
>> drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:774:32: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected char *ptr @@     got void [noderef] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:774:32: sparse:     expected char *ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:774:32: sparse:     got void [noderef] __iomem *
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:813:32: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected char *ptr @@     got void [noderef] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:813:32: sparse:     expected char *ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:813:32: sparse:     got void [noderef] __iomem *
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:516:49: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected char *register ptr @@     got void [noderef] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:516:49: sparse:     expected char *register ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:516:49: sparse:     got void [noderef] __iomem *
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:516:49: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected char *register ptr @@     got void [noderef] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:516:49: sparse:     expected char *register ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:516:49: sparse:     got void [noderef] __iomem *
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:516:49: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected char *register ptr @@     got void [noderef] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:516:49: sparse:     expected char *register ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:516:49: sparse:     got void [noderef] __iomem *
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:516:49: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected char *register ptr @@     got void [noderef] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:516:49: sparse:     expected char *register ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:516:49: sparse:     got void [noderef] __iomem *

vim +/E_BCHALGORITHM +119 drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c

   111	
   112	/* BCH algorithm related constants and variables */
   113	enum {
   114		eBCH_NONE = 0,
   115		eBCH_T8,
   116		eBCH_T12,
   117		eBCH_T24,
   118		eBCH_CNT
 > 119	} E_BCHALGORITHM;
   120	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
