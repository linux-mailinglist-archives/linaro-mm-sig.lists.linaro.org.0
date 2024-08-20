Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F6E957CDC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Aug 2024 07:48:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85F0544735
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Aug 2024 05:48:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	by lists.linaro.org (Postfix) with ESMTPS id 602A03F3DF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Aug 2024 05:48:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=g7SBBy+j;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.15 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1724132904; x=1755668904;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=kioHVavi4eJx3pXSFgQY5R+2SmG3W8PhoaqTGAwxUVc=;
  b=g7SBBy+j5HXez4gH+7vGqNDCrjUv5fbv+9ujiyudAa8JIHoX762uM3bm
   +G333LsZ6B8UxgzXh7xWQujHvIIc3QsovUuuAtcPTnBAbaQRgfQxeJnvO
   Ot8pzeLZP3ff9dxjDVSXMfFMMQi9wtIz7zVV5O2o7+UuTeDE/Mp4o25SO
   9s/C8IGCM7qReaucYUBejU2eJ6GEaFoO1BpC3aZDRlrldCPyNsC82XLPE
   7w7PEj+SiO29bIbNJ0aoVdvpYS64go5bQi9TfcZOFINtyL/oMz3YmgaQI
   6+nHMZWpxXvKnEnA7CzX1ZUHNxc5zW8z9tMiS3aHKfcStMql5lNnfAB3A
   g==;
X-CSE-ConnectionGUID: UZ/yE5IuR/OdiqWIMVniOQ==
X-CSE-MsgGUID: pyEj5aC7TpCoz0hBXEG3NA==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="26162712"
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600";
   d="scan'208";a="26162712"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Aug 2024 22:48:23 -0700
X-CSE-ConnectionGUID: PgarJjMXQLS1/fA8vVZ+Dg==
X-CSE-MsgGUID: ZOASBjw8SIibnKhxYvaaRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600";
   d="scan'208";a="60759314"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
  by fmviesa010.fm.intel.com with ESMTP; 19 Aug 2024 22:48:18 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sgHj5-0009lq-2t;
	Tue, 20 Aug 2024 05:48:15 +0000
Date: Tue, 20 Aug 2024 13:47:27 +0800
From: kernel test robot <lkp@intel.com>
To: Hui-Ping Chen <hpchen0nvt@gmail.com>, miquel.raynal@bootlin.com,
	richard@nod.at, vigneshr@ti.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org,
	christian.koenig@amd.com, esben@geanix.com
Message-ID: <202408201329.v0SoF3eS-lkp@intel.com>
References: <20240819092037.110260-3-hpchen0nvt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240819092037.110260-3-hpchen0nvt@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Bar: ----
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 602A03F3DF
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,bootlin.com,nod.at,ti.com,kernel.org,linaro.org,amd.com,geanix.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.infradead.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DNSWL_BLOCKED(0.00)[198.175.65.15:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	TAGGED_RCPT(0.00)[dt];
	DWL_DNSWL_FAIL(0.00)[intel.com:server fail];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: VRU6MGU6M7RW3X46ZRAGMSFFEMUH6HVY
X-Message-ID-Hash: VRU6MGU6M7RW3X46ZRAGMSFFEMUH6HVY
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Hui-Ping Chen <hpchen0nvt@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] mtd: rawnand: nuvoton: add new driver for the Nuvoton MA35 SoC
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VRU6MGU6M7RW3X46ZRAGMSFFEMUH6HVY/>
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
[also build test WARNING on linus/master v6.11-rc4 next-20240820]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Hui-Ping-Chen/dt-bindings-mtd-nuvoton-ma35d1-nand-add-new-bindings/20240819-172155
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next
patch link:    https://lore.kernel.org/r/20240819092037.110260-3-hpchen0nvt%40gmail.com
patch subject: [PATCH v2 2/2] mtd: rawnand: nuvoton: add new driver for the Nuvoton MA35 SoC
config: parisc-randconfig-r123-20240820 (https://download.01.org/0day-ci/archive/20240820/202408201329.v0SoF3eS-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 14.1.0
reproduce: (https://download.01.org/0day-ci/archive/20240820/202408201329.v0SoF3eS-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408201329.v0SoF3eS-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:231:20: sparse: sparse: cast removes address space '__iomem' of expression
>> drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:736:20: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected unsigned char [usertype] *ptr @@     got unsigned char [noderef] [usertype] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:736:20: sparse:     expected unsigned char [usertype] *ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:736:20: sparse:     got unsigned char [noderef] [usertype] __iomem *
>> drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:764:22: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected char *ptr @@     got char [noderef] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:764:22: sparse:     expected char *ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:764:22: sparse:     got char [noderef] __iomem *
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:803:22: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected char *ptr @@     got char [noderef] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:803:22: sparse:     expected char *ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:803:22: sparse:     got char [noderef] __iomem *
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:506:28: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected unsigned char [usertype] *ptr @@     got unsigned char [noderef] [usertype] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:506:28: sparse:     expected unsigned char [usertype] *ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:506:28: sparse:     got unsigned char [noderef] [usertype] __iomem *
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:506:28: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected unsigned char [usertype] *ptr @@     got unsigned char [noderef] [usertype] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:506:28: sparse:     expected unsigned char [usertype] *ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:506:28: sparse:     got unsigned char [noderef] [usertype] __iomem *
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:506:28: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected unsigned char [usertype] *ptr @@     got unsigned char [noderef] [usertype] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:506:28: sparse:     expected unsigned char [usertype] *ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:506:28: sparse:     got unsigned char [noderef] [usertype] __iomem *
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:506:28: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected unsigned char [usertype] *ptr @@     got unsigned char [noderef] [usertype] __iomem * @@
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:506:28: sparse:     expected unsigned char [usertype] *ptr
   drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c:506:28: sparse:     got unsigned char [noderef] [usertype] __iomem *

vim +736 drivers/mtd/nand/raw/nuvoton_ma35d1_nand.c

   731	
   732	static int ma35_nand_write_page_hwecc(struct nand_chip *chip, const u8 *buf,
   733					      int oob_required, int page)
   734	{
   735		struct ma35_nand_info *nand = nand_get_controller_data(chip);
 > 736		u8 *ptr = (u8 __iomem *)(nand->regs + MA35_NFI_REG_NANDRA0);
   737		struct mtd_info *mtd = nand_to_mtd(chip);
   738		u8 *ecc_calc = chip->ecc.calc_buf;
   739	
   740		memset((void *)ptr, 0xFF, mtd->oobsize);
   741		memcpy((void *)ptr, (void *)chip->oob_poi, mtd->oobsize - chip->ecc.total);
   742	
   743		ma35_nand_command(chip, NAND_CMD_SEQIN, 0, page);
   744		ma35_nand_dma_transfer(chip, buf, mtd->writesize, 0x1);
   745		ma35_nand_command(chip, NAND_CMD_PAGEPROG, -1, -1);
   746		ma35_waitfunc(chip);
   747	
   748		/* Copy parity code in NANDRA to calc */
   749		memcpy((void *)ecc_calc,
   750			(void *)(ptr + (mtd->oobsize - chip->ecc.total)),
   751			chip->ecc.total);
   752	
   753		/* Copy parity code in calc to oob_poi */
   754		memcpy((void *)(chip->oob_poi + (mtd->oobsize - chip->ecc.total)),
   755			(void *)ecc_calc, chip->ecc.total);
   756	
   757		return 0;
   758	}
   759	
   760	static int ma35_nand_read_page_hwecc_oob_first(struct nand_chip *chip, u8 *buf,
   761							int oob_required, int page)
   762	{
   763		struct ma35_nand_info *nand = nand_get_controller_data(chip);
 > 764		char *ptr = (char __iomem *)(nand->regs + MA35_NFI_REG_NANDRA0);
   765		struct mtd_info *mtd = nand_to_mtd(chip);
   766	
   767		/* 1. read the OOB area  */
   768		ma35_nand_command(chip, NAND_CMD_READOOB, 0, page);
   769		ma35_nand_read_buf(chip, chip->oob_poi, mtd->oobsize);
   770	
   771		/* 2. copy OOB data to NANDRA for page read */
   772		memcpy((void *)ptr, (void *)chip->oob_poi, mtd->oobsize);
   773	
   774		if ((*(ptr+2) != 0) && (*(ptr+3) != 0))
   775			memset((void *)buf, 0xff, mtd->writesize);
   776		else {
   777			/* 3. read data from nand */
   778			ma35_nand_command(chip, NAND_CMD_READ0, 0, page);
   779			ma35_nand_dma_transfer(chip, buf, mtd->writesize, 0x0);
   780	
   781			/* 4. restore OOB data from SMRA */
   782			memcpy((void *)chip->oob_poi, (void *)ptr, mtd->oobsize);
   783		}
   784	
   785		return 0;
   786	}
   787	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
