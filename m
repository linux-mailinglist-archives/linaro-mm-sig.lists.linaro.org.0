Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F438B03940
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Jul 2025 10:22:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEED745759
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Jul 2025 08:22:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	by lists.linaro.org (Postfix) with ESMTPS id 66F08440CE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Jul 2025 08:22:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=GA9ew2ME;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.17 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1752481353; x=1784017353;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=9FsRu860H4W8OcEf2wpkIXNWWM6nplf11dSrJZDLgQo=;
  b=GA9ew2MEHpMjmhO4xz7yYL3hefsbIhIdxLD8faYaRAQElH8UfSqzNBe/
   pE/LT+9ZvFTH2rS4805im55eqnxDvxzqRxdLszgNMbKIUnsCVHLK4U+au
   B//qpzpstjxvGM5VMD15ZyIQqPuiX0XojuSBij73G+7BZw6shjRCQecdW
   2U7TwhvTulHRlGYbbKfcfjazMEzOmFWP6CMiNEn0JVIv2kiBoy16VlXjs
   v0CZWR5aL8/pQoGIeiXCA06cCrmP8mFR+gmLhcTD0Jjc37chRl/hJAXdu
   uSM+dAt0Kmr662vrByBpeP/vCRwjyZ9AGbBDImqmLstLOmzVfsR0yO1s1
   Q==;
X-CSE-ConnectionGUID: TgnhN6JxS0aU93+sFBzoTw==
X-CSE-MsgGUID: 3Okv6LZlTpyq/p2dpxI+rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54602480"
X-IronPort-AV: E=Sophos;i="6.16,310,1744095600";
   d="scan'208";a="54602480"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2025 01:22:32 -0700
X-CSE-ConnectionGUID: FhSDe/JRREeFxD2jxZltkg==
X-CSE-MsgGUID: 5L5J8xCsTwSdnL9D+kQEwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,310,1744095600";
   d="scan'208";a="162544044"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
  by orviesa005.jf.intel.com with ESMTP; 14 Jul 2025 01:22:27 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ubES8-0008gJ-1W;
	Mon, 14 Jul 2025 08:22:24 +0000
Date: Mon, 14 Jul 2025 16:22:15 +0800
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
Message-ID: <202507141458.kBLqFFYk-lkp@intel.com>
References: <20250713-qcom-tee-using-tee-ss-without-mem-obj-v6-8-697fb7d41c36@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250713-qcom-tee-using-tee-ss-without-mem-obj-v6-8-697fb7d41c36@oss.qualcomm.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 66F08440CE
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[intel.com:dkim];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[192.198.163.17:from];
	URIBL_BLOCKED(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: M74HKWNEJMKKLFLC5OM4MFEEYAYTPXEB
X-Message-ID-Hash: M74HKWNEJMKKLFLC5OM4MFEEYAYTPXEB
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Harshal Dev <quic_hdev@quicinc.com>, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 08/12] firmware: qcom: tzmem: export shm_bridge create/delete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M74HKWNEJMKKLFLC5OM4MFEEYAYTPXEB/>
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

[auto build test WARNING on 835244aba90de290b4b0b1fa92b6734f3ee7b3d9]

url:    https://github.com/intel-lab-lkp/linux/commits/Amirreza-Zarrabi/tee-allow-a-driver-to-allocate-a-tee_device-without-a-pool/20250714-085215
base:   835244aba90de290b4b0b1fa92b6734f3ee7b3d9
patch link:    https://lore.kernel.org/r/20250713-qcom-tee-using-tee-ss-without-mem-obj-v6-8-697fb7d41c36%40oss.qualcomm.com
patch subject: [PATCH v6 08/12] firmware: qcom: tzmem: export shm_bridge create/delete
config: arc-randconfig-001-20250714 (https://download.01.org/0day-ci/archive/20250714/202507141458.kBLqFFYk-lkp@intel.com/config)
compiler: arc-linux-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250714/202507141458.kBLqFFYk-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507141458.kBLqFFYk-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from include/linux/device.h:15,
                    from include/linux/dma-mapping.h:5,
                    from drivers/firmware/qcom/qcom_tzmem.c:10:
   drivers/firmware/qcom/qcom_tzmem.c: In function 'qcom_tzmem_shm_bridge_create':
>> drivers/firmware/qcom/qcom_tzmem.c:139:27: warning: format '%llx' expects argument of type 'long long unsigned int', but argument 4 has type 'phys_addr_t' {aka 'unsigned int'} [-Wformat=]
      dev_err(qcom_tzmem_dev, "SHM Bridge failed: ret %d paddr 0x%llx, size%zu\n",
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:16: note: in definition of macro 'dev_printk_index_wrap'
      _p_func(dev, fmt, ##__VA_ARGS__);   \
                   ^~~
   include/linux/dev_printk.h:154:49: note: in expansion of macro 'dev_fmt'
     dev_printk_index_wrap(_dev_err, KERN_ERR, dev, dev_fmt(fmt), ##__VA_ARGS__)
                                                    ^~~~~~~
   drivers/firmware/qcom/qcom_tzmem.c:139:3: note: in expansion of macro 'dev_err'
      dev_err(qcom_tzmem_dev, "SHM Bridge failed: ret %d paddr 0x%llx, size%zu\n",
      ^~~~~~~


vim +139 drivers/firmware/qcom/qcom_tzmem.c

   110	
   111	/**
   112	 * qcom_tzmem_shm_bridge_create() - Create a SHM bridge.
   113	 * @paddr: Physical address of the memory to share.
   114	 * @size: Size of the memory to share.
   115	 * @handle: Handle to the SHM bridge.
   116	 *
   117	 * On platforms that support SHM bridge, this function creates a SHM bridge
   118	 * for the given memory region with QTEE. The handle returned by this function
   119	 * must be passed to qcom_tzmem_shm_bridge_delete() to free the SHM bridge.
   120	 *
   121	 * Return: On success, returns 0; on failure, returns < 0.
   122	 */
   123	int qcom_tzmem_shm_bridge_create(phys_addr_t paddr, size_t size, u64 *handle)
   124	{
   125		u64 pfn_and_ns_perm, ipfn_and_s_perm, size_and_flags;
   126		int ret;
   127	
   128		if (!qcom_tzmem_using_shm_bridge)
   129			return 0;
   130	
   131		pfn_and_ns_perm = paddr | QCOM_SCM_PERM_RW;
   132		ipfn_and_s_perm = paddr | QCOM_SCM_PERM_RW;
   133		size_and_flags = size | (1 << QCOM_SHM_BRIDGE_NUM_VM_SHIFT);
   134	
   135		ret = qcom_scm_shm_bridge_create(pfn_and_ns_perm, ipfn_and_s_perm,
   136						 size_and_flags, QCOM_SCM_VMID_HLOS,
   137						 handle);
   138		if (ret) {
 > 139			dev_err(qcom_tzmem_dev, "SHM Bridge failed: ret %d paddr 0x%llx, size%zu\n",
   140				ret, paddr, size);
   141	
   142			return ret;
   143		}
   144	
   145		return 0;
   146	}
   147	EXPORT_SYMBOL_GPL(qcom_tzmem_shm_bridge_create);
   148	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
