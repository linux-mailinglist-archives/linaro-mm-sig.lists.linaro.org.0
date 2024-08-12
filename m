Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8762094ED6B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Aug 2024 14:53:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 931C140F50
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Aug 2024 12:53:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	by lists.linaro.org (Postfix) with ESMTPS id 5CA543F975
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Aug 2024 12:53:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Qn9eRj+5;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.19 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1723467189; x=1755003189;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Sf7fii3Uk5dXCYdQrY2jiMwoeseQxuJiZtqIZOoSKZ4=;
  b=Qn9eRj+5eJ5YJ/hPjmZi+UyawNmPcrx5vpv/kMyMa/NM/fUKmfua4xpB
   hDarTx0IY7oP2QnkkmSjc3TcNYynPmM+FWM3sAFGwnA+1OFYGBrlCXAjU
   IgaGoigGudDLcRLSTM938rwyXY2eAT9P0F26nC/iXrCkeWvVTCmtxTnzh
   hPBFOHzcepu1GLUHwyIRTAx4x0wkZ6BAQOxYX6jPpAp8WM3Ibmu6q2eKp
   sIPVodhbnvkVp689WpDFx/HKOT9JzAWcNv1dsaGLVrbaML/Te6vFzFPcl
   raR9aCB1zHPIegYYHLKs1NSR7E8d8/S0d3VI1G99UkiuXKfASCD1B3e5X
   Q==;
X-CSE-ConnectionGUID: SGXazQSzTsqCLlMb/HvaZw==
X-CSE-MsgGUID: ba5/B4DuQFyvcXSCQt1ImQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21426116"
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800";
   d="scan'208";a="21426116"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Aug 2024 05:53:07 -0700
X-CSE-ConnectionGUID: orTAER7nTNqDVXXYoMVpUA==
X-CSE-MsgGUID: PxMXHWnoT4aGV9ihNublwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800";
   d="scan'208";a="63089626"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
  by orviesa003.jf.intel.com with ESMTP; 12 Aug 2024 05:53:02 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sdUXk-000Bo3-0Q;
	Mon, 12 Aug 2024 12:53:00 +0000
Date: Mon, 12 Aug 2024 20:52:33 +0800
From: kernel test robot <lkp@intel.com>
To: Hui-Ping Chen <hpchen0nvt@gmail.com>, miquel.raynal@bootlin.com,
	richard@nod.at, vigneshr@ti.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org,
	christian.koenig@amd.com, esben@geanix.com
Message-ID: <202408122007.quTiDXPR-lkp@intel.com>
References: <20240812030045.20831-3-hpchen0nvt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240812030045.20831-3-hpchen0nvt@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5CA543F975
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.infradead.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[gmail.com,bootlin.com,nod.at,ti.com,kernel.org,linaro.org,amd.com,geanix.com];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 3PDILWBHWONBDAQMEU5K37A7HC42HWTN
X-Message-ID-Hash: 3PDILWBHWONBDAQMEU5K37A7HC42HWTN
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Hui-Ping Chen <hpchen0nvt@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] mtd: rawnand: nuvoton: add new driver for the Nuvoton MA35 SoC
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3PDILWBHWONBDAQMEU5K37A7HC42HWTN/>
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
[also build test WARNING on linus/master v6.11-rc3 next-20240812]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Hui-Ping-Chen/dt-bindings-mtd-nuvoton-ma35d1-nand-add-new-bindings/20240812-110259
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next
patch link:    https://lore.kernel.org/r/20240812030045.20831-3-hpchen0nvt%40gmail.com
patch subject: [PATCH 2/2] mtd: rawnand: nuvoton: add new driver for the Nuvoton MA35 SoC
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20240812/202408122007.quTiDXPR-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240812/202408122007.quTiDXPR-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408122007.quTiDXPR-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:991:29: warning: cast from 'irqreturn_t (*)(int, struct ma35_nand_info *)' (aka 'enum irqreturn (*)(int, struct ma35_nand_info *)') to 'irq_handler_t' (aka 'enum irqreturn (*)(int, void *)') converts to incompatible function type [-Wcast-function-type-strict]
     991 |         if (request_irq(nand->irq, (irq_handler_t)&ma35_nand_irq,
         |                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +991 drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c

   921	
   922	static int ma35_nand_probe(struct platform_device *pdev)
   923	{
   924		struct ma35_nand_info *nand;
   925		struct nand_chip *chip;
   926		struct mtd_info *mtd;
   927		int retval = 0;
   928	
   929		nand = devm_kzalloc(&pdev->dev, sizeof(struct ma35_nand_info), GFP_KERNEL);
   930		if (!nand)
   931			return -ENOMEM;
   932	
   933		nand_controller_init(&nand->controller);
   934	
   935		nand->regs = devm_platform_ioremap_resource(pdev, 0);
   936		if (IS_ERR(nand->regs))
   937			return PTR_ERR(nand->regs);
   938	
   939		nand->dev = &pdev->dev;
   940		chip = &nand->chip;
   941		mtd = nand_to_mtd(chip);
   942		nand_set_controller_data(chip, nand);
   943		nand_set_flash_node(chip, pdev->dev.of_node);
   944	
   945		mtd->priv = chip;
   946		mtd->owner = THIS_MODULE;
   947		mtd->dev.parent = &pdev->dev;
   948	
   949		nand->clk = of_clk_get(pdev->dev.of_node, 0);
   950		if (IS_ERR(nand->clk))
   951			return dev_err_probe(&pdev->dev, PTR_ERR(nand->clk),
   952					     "failed to find nand clock\n");
   953	
   954		retval = clk_prepare_enable(nand->clk);
   955		if (retval < 0) {
   956			dev_err(&pdev->dev, "Failed to enable clock\n");
   957			return -ENXIO;
   958		}
   959	
   960		nand->chip.controller    = &nand->controller;
   961	
   962		chip->legacy.cmdfunc     = ma35_nand_command;
   963		chip->legacy.waitfunc    = ma35_waitfunc;
   964		chip->legacy.read_byte   = ma35_nand_read_byte;
   965		chip->legacy.select_chip = ma35_nand_select_chip;
   966		chip->legacy.read_buf    = ma35_read_buf_dma;
   967		chip->legacy.write_buf   = ma35_write_buf_dma;
   968		chip->legacy.dev_ready   = ma35_nand_devready;
   969		chip->legacy.chip_delay  = 25; /* us */
   970	
   971		/* Read OOB data first, then HW read page */
   972		chip->ecc.hwctl      = ma35_nand_enable_hwecc;
   973		chip->ecc.calculate  = ma35_nand_calculate_ecc;
   974		chip->ecc.correct    = ma35_nand_correct_data;
   975		chip->ecc.write_page = ma35_nand_write_page_hwecc;
   976		chip->ecc.read_page  = ma35_nand_read_page_hwecc_oob_first;
   977		chip->ecc.read_oob   = ma35_nand_read_oob_hwecc;
   978		chip->options |= (NAND_NO_SUBPAGE_WRITE | NAND_USES_DMA);
   979	
   980		ma35_nand_initialize(nand);
   981		platform_set_drvdata(pdev, nand);
   982	
   983		nand->controller.ops = &ma35_nand_controller_ops;
   984	
   985		nand->irq = platform_get_irq(pdev, 0);
   986		if (nand->irq < 0) {
   987			dev_err(&pdev->dev, "failed to get platform irq\n");
   988			return -EINVAL;
   989		}
   990	
 > 991		if (request_irq(nand->irq, (irq_handler_t)&ma35_nand_irq,
   992				IRQF_TRIGGER_HIGH, "ma35d1-nand", nand)) {
   993			dev_err(&pdev->dev, "Error requesting NAND IRQ\n");
   994			return -ENXIO;
   995		}
   996	
   997		retval = nand_scan(chip, 1);
   998		if (retval)
   999			return retval;
  1000	
  1001		if (mtd_device_register(mtd, nand->parts, nand->nr_parts)) {
  1002			nand_cleanup(chip);
  1003			devm_kfree(&pdev->dev, nand);
  1004			return retval;
  1005		}
  1006	
  1007		pr_info("ma35-nfi: registered successfully! mtdid=%s\n", mtd->name);
  1008	
  1009		return retval;
  1010	}
  1011	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
