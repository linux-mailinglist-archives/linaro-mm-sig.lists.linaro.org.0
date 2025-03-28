Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D70AEA75273
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Mar 2025 23:22:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C89E44A78
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Mar 2025 22:22:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	by lists.linaro.org (Postfix) with ESMTPS id 54A4F4425A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Mar 2025 22:22:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="VOVHyTn/";
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.11 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1743200530; x=1774736530;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=G98Z3WGYvhW2A7hi2E5Ks/YG6A7og48XM823kzIjspc=;
  b=VOVHyTn/vEz+VJLp2FCM7U194U0Hqz/aoBvuc8f9KjIaJ1C/9Ot2iMml
   uf653bncUY6/DhhCKXNbbGlq5fERCT2bhszCET/X0fRTWSCB/V4llZlL+
   x+lG1k8bTwqF+FBDPA17Cvz3/QLcO7EWUbdL7+vbhwOF0qS09JyPBo9w5
   vSTvKF1bzFyDrQxADbpBe3VL3fYK5pTJdGziVb6dvPvODQxXbQQHQwDB6
   2ixnyynAsWNfDyP019yE111JexohkLpbFARoSiyLG3jCpPyoyCOqQ3STx
   g58SKqHTpvQTBLeQovTqNGgO5hbmxaLe0wP8a1MulrSacSxMdepk/m8pA
   w==;
X-CSE-ConnectionGUID: REAXst8gTki7DxmlxXy31g==
X-CSE-MsgGUID: 8rD0neNcSMy68LiQX8vQfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11387"; a="54771483"
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600";
   d="scan'208";a="54771483"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2025 15:22:09 -0700
X-CSE-ConnectionGUID: KYawj+qMRMyHBjjedYu1Iw==
X-CSE-MsgGUID: ZOy7Bdi5RhSgFN2XMyjDdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600";
   d="scan'208";a="156553352"
Received: from lkp-server02.sh.intel.com (HELO e98e3655d6d2) ([10.239.97.151])
  by fmviesa001.fm.intel.com with ESMTP; 28 Mar 2025 15:22:04 -0700
Received: from kbuild by e98e3655d6d2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tyI5R-0007ju-2g;
	Fri, 28 Mar 2025 22:22:01 +0000
Date: Sat, 29 Mar 2025 06:21:16 +0800
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
Message-ID: <202503290620.2KJEcZM6-lkp@intel.com>
References: <20250327-qcom-tee-using-tee-ss-without-mem-obj-v3-8-7f457073282d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250327-qcom-tee-using-tee-ss-without-mem-obj-v3-8-7f457073282d@oss.qualcomm.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 54A4F4425A
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: VXEBL5WMT7PLDZP4TB66XMG2DQPCIVPY
X-Message-ID-Hash: VXEBL5WMT7PLDZP4TB66XMG2DQPCIVPY
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 08/11] tee: add Qualcomm TEE driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VXEBL5WMT7PLDZP4TB66XMG2DQPCIVPY/>
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

[auto build test WARNING on db8da9da41bced445077925f8a886c776a47440c]

url:    https://github.com/intel-lab-lkp/linux/commits/Amirreza-Zarrabi/tee-allow-a-driver-to-allocate-a-tee_device-without-a-pool/20250328-104950
base:   db8da9da41bced445077925f8a886c776a47440c
patch link:    https://lore.kernel.org/r/20250327-qcom-tee-using-tee-ss-without-mem-obj-v3-8-7f457073282d%40oss.qualcomm.com
patch subject: [PATCH v3 08/11] tee: add Qualcomm TEE driver
config: s390-allyesconfig (https://download.01.org/0day-ci/archive/20250329/202503290620.2KJEcZM6-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250329/202503290620.2KJEcZM6-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202503290620.2KJEcZM6-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/tee/qcomtee/core.c:310: warning: Function parameter or struct member 'oic' not described in 'qcomtee_object_qtee_init'


vim +310 drivers/tee/qcomtee/core.c

   298	
   299	/**
   300	 * qcomtee_object_qtee_init() - Initialize an object for QTEE.
   301	 * @object: object returned.
   302	 * @object_id: object ID received from QTEE.
   303	 *
   304	 * Return: On failure, returns < 0 and sets @object to %NULL_QCOMTEE_OBJECT.
   305	 *         On success, returns 0
   306	 */
   307	static int qcomtee_object_qtee_init(struct qcomtee_object_invoke_ctx *oic,
   308					    struct qcomtee_object **object,
   309					    unsigned int object_id)
 > 310	{
   311		int ret = 0;
   312	
   313		switch (qcomtee_object_type(object_id)) {
   314		case QCOMTEE_OBJECT_TYPE_NULL:
   315			*object = NULL_QCOMTEE_OBJECT;
   316	
   317			break;
   318		case QCOMTEE_OBJECT_TYPE_CB:
   319			*object = qcomtee_local_object_get(object_id);
   320			if (*object == NULL_QCOMTEE_OBJECT)
   321				ret = -EINVAL;
   322	
   323			break;
   324	
   325		default: /* QCOMTEE_OBJECT_TYPE_TEE */
   326			*object = qcomtee_qtee_object_alloc(oic, object_id);
   327			if (*object == NULL_QCOMTEE_OBJECT)
   328				ret = -ENOMEM;
   329	
   330			break;
   331		}
   332	
   333		return ret;
   334	}
   335	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
