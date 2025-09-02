Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A2900B40F7E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 23:35:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BC2745775
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 21:35:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	by lists.linaro.org (Postfix) with ESMTPS id 8840D443B9
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 21:35:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=QxqCNRQr;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.19 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1756848933; x=1788384933;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=feSylG8v5RU948ye3Aa4+gNuJQDlGa8ABq1tWoE+Wc4=;
  b=QxqCNRQrh9bw0gFuYrwwij1jnuj1v23W5Q1zPIHSb7h//9oxMc0oPugD
   8GZ8eXzxi7rs3hR/bDX1CEXHkhWIm+dkBCbwAyDHWFxUtxSnyxSJabFfn
   MUOIT5xSQHvdi7H4Ul941aPI3tnb24N6jmZNoDnClXyeVa9i6+UbvM7+U
   xKp7YB7KACyBbiZRKPQS90sQ1ctVq9VZzypcawPFlytvvwH/8dTSPImbj
   p0WWGehwG1pL5Dr/q76kxTGHdLCadkfHgmtZi4Dz0qiI58FB8+1WfD5Ps
   f+LjuC+wpFQ76bvaIt45LBz6uOQCB9vc35Ohka8qShwU03Mm7sRqsS0eF
   g==;
X-CSE-ConnectionGUID: Kn+dT3a1SDyBZcFgG0yPqg==
X-CSE-MsgGUID: jvTjuux9RdeKLUDxxeohFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="59001797"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800";
   d="scan'208";a="59001797"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2025 14:35:32 -0700
X-CSE-ConnectionGUID: DLHUacnhR3mqLdlPaKYduA==
X-CSE-MsgGUID: /Bh1eTHdThyfOCxrG7T+XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800";
   d="scan'208";a="171553507"
Received: from lkp-server02.sh.intel.com (HELO 06ba48ef64e9) ([10.239.97.151])
  by orviesa008.jf.intel.com with ESMTP; 02 Sep 2025 14:35:15 -0700
Received: from kbuild by 06ba48ef64e9 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1utYeh-00033D-0S;
	Tue, 02 Sep 2025 21:35:07 +0000
Date: Wed, 3 Sep 2025 05:35:05 +0800
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
Message-ID: <202509030554.WR3MNpCE-lkp@intel.com>
References: <20250901-qcom-tee-using-tee-ss-without-mem-obj-v9-6-a2af23f132d5@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250901-qcom-tee-using-tee-ss-without-mem-obj-v9-6-a2af23f132d5@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8840D443B9
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
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
Message-ID-Hash: T6K6OAQA4ICHLR2KQNOKCKF6XZQFDADB
X-Message-ID-Hash: T6K6OAQA4ICHLR2KQNOKCKF6XZQFDADB
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Harshal Dev <quic_hdev@quicinc.com>, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 06/11] firmware: qcom: scm: add support for object invocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T6K6OAQA4ICHLR2KQNOKCKF6XZQFDADB/>
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

[auto build test WARNING on 33bcf93b9a6b028758105680f8b538a31bc563cf]

url:    https://github.com/intel-lab-lkp/linux/commits/Amirreza-Zarrabi/tee-allow-a-driver-to-allocate-a-tee_device-without-a-pool/20250902-125821
base:   33bcf93b9a6b028758105680f8b538a31bc563cf
patch link:    https://lore.kernel.org/r/20250901-qcom-tee-using-tee-ss-without-mem-obj-v9-6-a2af23f132d5%40oss.qualcomm.com
patch subject: [PATCH v9 06/11] firmware: qcom: scm: add support for object invocation
config: i386-buildonly-randconfig-001-20250903 (https://download.01.org/0day-ci/archive/20250903/202509030554.WR3MNpCE-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14+deb12u1) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250903/202509030554.WR3MNpCE-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202509030554.WR3MNpCE-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from include/linux/device.h:15,
                    from include/linux/dma-mapping.h:5,
                    from drivers/firmware/qcom/qcom_scm.c:13:
   drivers/firmware/qcom/qcom_scm.c: In function 'qcom_scm_qtee_init':
>> drivers/firmware/qcom/qcom_scm.c:2208:35: warning: format '%d' expects argument of type 'int', but argument 3 has type 'long int' [-Wformat=]
    2208 |                 dev_err(scm->dev, "qcomtee: register failed: %d\n",
         |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:30: note: in definition of macro 'dev_printk_index_wrap'
     110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
         |                              ^~~
   include/linux/dev_printk.h:154:56: note: in expansion of macro 'dev_fmt'
     154 |         dev_printk_index_wrap(_dev_err, KERN_ERR, dev, dev_fmt(fmt), ##__VA_ARGS__)
         |                                                        ^~~~~~~
   drivers/firmware/qcom/qcom_scm.c:2208:17: note: in expansion of macro 'dev_err'
    2208 |                 dev_err(scm->dev, "qcomtee: register failed: %d\n",
         |                 ^~~~~~~
   drivers/firmware/qcom/qcom_scm.c:2208:63: note: format string is defined here
    2208 |                 dev_err(scm->dev, "qcomtee: register failed: %d\n",
         |                                                              ~^
         |                                                               |
         |                                                               int
         |                                                              %ld


vim +2208 drivers/firmware/qcom/qcom_scm.c

  2188	
  2189	static void qcom_scm_qtee_init(struct qcom_scm *scm)
  2190	{
  2191		struct platform_device *qtee_dev;
  2192		u64 result, response_type;
  2193		int ret;
  2194	
  2195		/*
  2196		 * Probe for smcinvoke support. This will fail due to invalid buffers,
  2197		 * but first, it checks whether the call is supported in QTEE syscall
  2198		 * handler. If it is not supported, -EIO is returned.
  2199		 */
  2200		ret = qcom_scm_qtee_invoke_smc(0, 0, 0, 0, &result, &response_type);
  2201		if (ret == -EIO)
  2202			return;
  2203	
  2204		/* Setup QTEE interface device. */
  2205		qtee_dev = platform_device_register_data(scm->dev, "qcomtee",
  2206							 PLATFORM_DEVID_NONE, NULL, 0);
  2207		if (IS_ERR(qtee_dev)) {
> 2208			dev_err(scm->dev, "qcomtee: register failed: %d\n",
  2209				PTR_ERR(qtee_dev));
  2210			return;
  2211		}
  2212	
  2213		ret = devm_add_action_or_reset(scm->dev, qcom_scm_qtee_free, qtee_dev);
  2214		if (ret)
  2215			dev_err(scm->dev, "qcomtee: add action failed: %d\n", ret);
  2216	}
  2217	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
