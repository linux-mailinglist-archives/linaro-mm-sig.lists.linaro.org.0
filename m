Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 543F6B46D09
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  6 Sep 2025 14:50:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 812E9456BB
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  6 Sep 2025 12:49:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	by lists.linaro.org (Postfix) with ESMTPS id 3367A4449C
	for <linaro-mm-sig@lists.linaro.org>; Sat,  6 Sep 2025 12:49:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=OS41MSDs;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.14 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1757162984; x=1788698984;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=FGhroKiv+4xuX6AwZtAlp9mlzfwdRYEJPq+jCneMv/A=;
  b=OS41MSDsH5ON3ScEjbdBsuYnK3oOuBMfg7wVmhx1decpWoujYtxBd8qF
   k3daR5jx/m4r2aQ4oEHkKdf+tteuAvoM+ryQyTxmUlS3I9kbl2NFx+AHT
   gsQDWtjlvOivFpw8xhDB4/0BCIcMnr3k03bdXt8R6VF1lb4uAtva/q+Gi
   Liac/pqoiSFFOpzqhqM9q0BfCKs1RKLkG9SQII9C78es2D0gsA1LJejVn
   gSTIrZNNFYbROhrGwFsYpoaHkoRzqnUsYv6vWBMe7h4J5la3pklNM0aBE
   EE9GZcwBh5pOHPZ0zjXgixgPu0RpABRTN4tPKvdRTuAeCi/xC9cC98Zc1
   Q==;
X-CSE-ConnectionGUID: t99NpD6FRhuRhWTIXVxvOQ==
X-CSE-MsgGUID: 0lwhzlR+T1mkJE1hJjDD6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="59563136"
X-IronPort-AV: E=Sophos;i="6.18,244,1751266800";
   d="scan'208";a="59563136"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Sep 2025 05:49:43 -0700
X-CSE-ConnectionGUID: bYM0iKV3TQW7Ok4R3aOEnw==
X-CSE-MsgGUID: GySrpnKUQ3a8jrCQrRq2WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,244,1751266800";
   d="scan'208";a="171652643"
Received: from lkp-server01.sh.intel.com (HELO 114d98da2b6c) ([10.239.97.150])
  by orviesa010.jf.intel.com with ESMTP; 06 Sep 2025 05:49:39 -0700
Received: from kbuild by 114d98da2b6c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uusMK-0001SJ-1J;
	Sat, 06 Sep 2025 12:49:36 +0000
Date: Sat, 6 Sep 2025 20:49:26 +0800
From: kernel test robot <lkp@intel.com>
To: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>,
	Viken Dadhaniya <quic_vdadhani@quicinc.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202509062008.lSOdhd4U-lkp@intel.com>
References: <20250903073059.2151837-3-quic_jseerapu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250903073059.2151837-3-quic_jseerapu@quicinc.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3367A4449C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	DWL_DNSWL_BLOCKED(0.00)[intel.com:dkim];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
Message-ID-Hash: YTVUVZ45BXHPMJJ5KDCW7XOEXU2SWAYP
X-Message-ID-Hash: YTVUVZ45BXHPMJJ5KDCW7XOEXU2SWAYP
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, quic_vtanuku@quicinc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 2/2] i2c: i2c-qcom-geni: Add Block event interrupt support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YTVUVZ45BXHPMJJ5KDCW7XOEXU2SWAYP/>
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

[auto build test WARNING on vkoul-dmaengine/next]
[also build test WARNING on andi-shyti/i2c/i2c-host linus/master v6.17-rc4 next-20250905]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jyothi-Kumar-Seerapu/dmaengine-qcom-gpi-Add-GPI-Block-event-interrupt-support/20250903-153745
base:   https://git.kernel.org/pub/scm/linux/kernel/git/vkoul/dmaengine.git next
patch link:    https://lore.kernel.org/r/20250903073059.2151837-3-quic_jseerapu%40quicinc.com
patch subject: [PATCH v7 2/2] i2c: i2c-qcom-geni: Add Block event interrupt support
config: i386-allmodconfig (https://download.01.org/0day-ci/archive/20250906/202509062008.lSOdhd4U-lkp@intel.com/config)
compiler: gcc-13 (Debian 13.3.0-16) 13.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250906/202509062008.lSOdhd4U-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202509062008.lSOdhd4U-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/i2c/busses/i2c-qcom-geni.c: In function 'geni_i2c_gpi_multi_desc_unmap':
>> drivers/i2c/busses/i2c-qcom-geni.c:576:42: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
     576 |                                    NULL, (dma_addr_t)NULL);
         |                                          ^


vim +576 drivers/i2c/busses/i2c-qcom-geni.c

   555	
   556	/**
   557	 * geni_i2c_gpi_multi_desc_unmap() - Unmaps DMA buffers post multi message TX transfers
   558	 * @gi2c: I2C dev handle
   559	 * @msgs: Array of I2C  messages
   560	 * @peripheral: Pointer to gpi_i2c_config
   561	 */
   562	static void geni_i2c_gpi_multi_desc_unmap(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
   563						  struct gpi_i2c_config *peripheral)
   564	{
   565		u32 msg_xfer_cnt, wr_idx = 0;
   566		struct geni_i2c_gpi_multi_desc_xfer *tx_multi_xfer = &gi2c->i2c_multi_desc_config;
   567	
   568		msg_xfer_cnt = gi2c->err ? tx_multi_xfer->msg_idx_cnt : tx_multi_xfer->irq_cnt;
   569	
   570		/* Unmap the processed DMA buffers based on the received interrupt count */
   571		for (; tx_multi_xfer->unmap_msg_cnt < msg_xfer_cnt; tx_multi_xfer->unmap_msg_cnt++) {
   572			wr_idx = tx_multi_xfer->unmap_msg_cnt;
   573			geni_i2c_gpi_unmap(gi2c, &msgs[wr_idx],
   574					   tx_multi_xfer->dma_buf[wr_idx],
   575					   tx_multi_xfer->dma_addr[wr_idx],
 > 576					   NULL, (dma_addr_t)NULL);
   577	
   578			if (tx_multi_xfer->unmap_msg_cnt == gi2c->num_msgs - 1) {
   579				kfree(tx_multi_xfer->dma_buf);
   580				kfree(tx_multi_xfer->dma_addr);
   581				break;
   582			}
   583		}
   584	}
   585	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
