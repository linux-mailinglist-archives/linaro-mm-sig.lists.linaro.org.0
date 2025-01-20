Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 398ACA16D9F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Jan 2025 14:44:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 570DC3F604
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Jan 2025 13:44:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
	by lists.linaro.org (Postfix) with ESMTPS id 4C3A53F604
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Jan 2025 13:44:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=nLQjmOU8;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.14 as permitted sender) smtp.mailfrom=lkp@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1737380666; x=1768916666;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=cgcjeJqRGJz4GlV5cJ3RHuisU44Rm/xRJru7KeMM8fc=;
  b=nLQjmOU8xvhxnkT+O3gnoAvEylwDkb/Brg3fC2fFrVtAyXP+4ZNIDq9+
   C5jwJCt2M3svtExh9G3i26pYaUZXEgy7/EA1Z689XZ7P2HK62gvYF11O6
   xD7dl7718IST224YDcnL+8Gfyu8M1jsZHs3t7aGATJXoO39ASzSdYiwTf
   PLU2XF/1/XW/XvZuRK+F8YfkoHC04UtNMM1qrlTlzGP5MKWrTK8nSr9bL
   spJig7m5hhllXZBY/0g/rleDBrI9YKbfAmX98bQE9uQKn1tp3kfVuQ4dJ
   vbaNxBSKv+EU+Mit7b+67cPOSUptLgaqWmuqJ9YD8zBzkgXK157Dc3BE7
   Q==;
X-CSE-ConnectionGUID: gIZtO0QQRqukJ0cYAiU9BQ==
X-CSE-MsgGUID: 9IJkzZccRbmc5OtTwpvaEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="41534327"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000";
   d="scan'208";a="41534327"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2025 05:44:24 -0800
X-CSE-ConnectionGUID: 3FqYEmPEScyjJjUUcYzsGQ==
X-CSE-MsgGUID: NZzcij3ZT6mfY+EkgX3RUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600";
   d="scan'208";a="137417816"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
  by fmviesa001.fm.intel.com with ESMTP; 20 Jan 2025 05:44:20 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tZs4g-000War-0f;
	Mon, 20 Jan 2025 13:44:18 +0000
Date: Mon, 20 Jan 2025 21:43:45 +0800
From: kernel test robot <lkp@intel.com>
To: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202501202159.wLRVO16t-lkp@intel.com>
References: <20250120095753.25539-3-quic_jseerapu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250120095753.25539-3-quic_jseerapu@quicinc.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4C3A53F604
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[198.175.65.14:from];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
Message-ID-Hash: QBAZZVYDQQTULOFD3UTGI3YLHHRS447N
X-Message-ID-Hash: QBAZZVYDQQTULOFD3UTGI3YLHHRS447N
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/2] i2c: i2c-qcom-geni: Add Block event interrupt support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QBAZZVYDQQTULOFD3UTGI3YLHHRS447N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Jyothi,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 55bcd2e0d04c1171d382badef1def1fd04ef66c5]

url:    https://github.com/intel-lab-lkp/linux/commits/Jyothi-Kumar-Seerapu/dmaengine-qcom-gpi-Add-GPI-Block-event-interrupt-support/20250120-180058
base:   55bcd2e0d04c1171d382badef1def1fd04ef66c5
patch link:    https://lore.kernel.org/r/20250120095753.25539-3-quic_jseerapu%40quicinc.com
patch subject: [PATCH v5 2/2] i2c: i2c-qcom-geni: Add Block event interrupt support
config: arc-randconfig-001-20250120 (https://download.01.org/0day-ci/archive/20250120/202501202159.wLRVO16t-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250120/202501202159.wLRVO16t-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202501202159.wLRVO16t-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/i2c/busses/i2c-qcom-geni.c:599: warning: Excess function parameter 'dev' description in 'geni_i2c_gpi_multi_desc_unmap'

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for OMAP2PLUS_MBOX
   Depends on [n]: MAILBOX [=y] && (ARCH_OMAP2PLUS || ARCH_K3)
   Selected by [m]:
   - TI_K3_M4_REMOTEPROC [=m] && REMOTEPROC [=y] && (ARCH_K3 || COMPILE_TEST [=y])


vim +599 drivers/i2c/busses/i2c-qcom-geni.c

   589	
   590	/**
   591	 * geni_i2c_gpi_multi_desc_unmap() - unmaps the buffers post multi message TX transfers
   592	 * @dev: pointer to the corresponding dev node
   593	 * @gi2c: i2c dev handle
   594	 * @msgs: i2c messages array
   595	 * @peripheral: pointer to the gpi_i2c_config
   596	 */
   597	static void geni_i2c_gpi_multi_desc_unmap(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
   598						  struct gpi_i2c_config *peripheral)
 > 599	{
   600		u32 msg_xfer_cnt, wr_idx = 0;
   601		struct geni_i2c_gpi_multi_desc_xfer *tx_multi_xfer = &gi2c->i2c_multi_desc_config;
   602	
   603		/*
   604		 * In error case, need to unmap all messages based on the msg_idx_cnt.
   605		 * Non-error case unmap all the processed messages.
   606		 */
   607		if (gi2c->err)
   608			msg_xfer_cnt = tx_multi_xfer->msg_idx_cnt;
   609		else
   610			msg_xfer_cnt = tx_multi_xfer->irq_cnt * QCOM_I2C_GPI_NUM_MSGS_PER_IRQ;
   611	
   612		/* Unmap the processed DMA buffers based on the received interrupt count */
   613		for (; tx_multi_xfer->unmap_msg_cnt < msg_xfer_cnt; tx_multi_xfer->unmap_msg_cnt++) {
   614			if (tx_multi_xfer->unmap_msg_cnt == gi2c->num_msgs)
   615				break;
   616			wr_idx = tx_multi_xfer->unmap_msg_cnt % QCOM_I2C_GPI_MAX_NUM_MSGS;
   617			geni_i2c_gpi_unmap(gi2c, &msgs[tx_multi_xfer->unmap_msg_cnt],
   618					   tx_multi_xfer->dma_buf[wr_idx],
   619					   tx_multi_xfer->dma_addr[wr_idx],
   620					   NULL, (dma_addr_t)NULL);
   621			tx_multi_xfer->freed_msg_cnt++;
   622		}
   623	}
   624	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
