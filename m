Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 92963B2555F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Aug 2025 23:29:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE5D045D25
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Aug 2025 21:29:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	by lists.linaro.org (Postfix) with ESMTPS id A9DB74413E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Aug 2025 21:28:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=FZ0XlFa2;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.17 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1755120538; x=1786656538;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ofdvNgNJdkJbmwEfKc1AUQhG3hnc8SN1vSgvqxoKNRM=;
  b=FZ0XlFa24TOob0M8jYRbC1LdDoM5YO8PWh4TVb09N3FDgvOy4NkWSoJc
   6Nt+PjbhzIbd1mNgkS+Zvo5b459TEPAYOpLSmQF+vmdyMHVs5Cb34FMpe
   ISxzl0m6UobCbx6/g3mw/pDQb9DKwGME4zKbQLsxk/Myfflbl6ywF36Ij
   yKzIRBwNdW6ponM+dFSfbGvJsiShfKN7v72rgndWm327d+wBDldc2YM4s
   m90Z+hkONCOcFst2ngrZLWtEJie/zwcvy2sX2FS8bGziRrGQSupdDxyJv
   Dtp3/dZhNne/2hIdqLyXUalH6r5yqfu1eIOsWjNhcgyL1XFiesufE1+C5
   Q==;
X-CSE-ConnectionGUID: 3Pp33vilQFqbEj9ZmpLBqQ==
X-CSE-MsgGUID: pOuei+ejRIyrF6Wp8nhnRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57351322"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400";
   d="scan'208";a="57351322"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2025 14:28:57 -0700
X-CSE-ConnectionGUID: NnWqMrE8TtWi2BeCREw8Ug==
X-CSE-MsgGUID: tloz5Ue9QdSbrGoa8xCmwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400";
   d="scan'208";a="165807755"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
  by orviesa010.jf.intel.com with ESMTP; 13 Aug 2025 14:28:52 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1umJ1d-000AKg-0i;
	Wed, 13 Aug 2025 21:28:49 +0000
Date: Thu, 14 Aug 2025 05:28:10 +0800
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
Message-ID: <202508140527.ighXikjo-lkp@intel.com>
References: <20250812-qcom-tee-using-tee-ss-without-mem-obj-v7-8-ce7a1a774803@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250812-qcom-tee-using-tee-ss-without-mem-obj-v7-8-ce7a1a774803@oss.qualcomm.com>
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A9DB74413E
X-Spamd-Bar: ------
Message-ID-Hash: 4OC74MJCFJBPB4SDXLSQCV6VZ3TNEXK7
X-Message-ID-Hash: 4OC74MJCFJBPB4SDXLSQCV6VZ3TNEXK7
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Harshal Dev <quic_hdev@quicinc.com>, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 08/11] tee: add Qualcomm TEE driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4OC74MJCFJBPB4SDXLSQCV6VZ3TNEXK7/>
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

[auto build test WARNING on 2674d1eadaa2fd3a918dfcdb6d0bb49efe8a8bb9]

url:    https://github.com/intel-lab-lkp/linux/commits/Amirreza-Zarrabi/tee-allow-a-driver-to-allocate-a-tee_device-without-a-pool/20250813-084152
base:   2674d1eadaa2fd3a918dfcdb6d0bb49efe8a8bb9
patch link:    https://lore.kernel.org/r/20250812-qcom-tee-using-tee-ss-without-mem-obj-v7-8-ce7a1a774803%40oss.qualcomm.com
patch subject: [PATCH v7 08/11] tee: add Qualcomm TEE driver
config: hexagon-randconfig-r072-20250814 (https://download.01.org/0day-ci/archive/20250814/202508140527.ighXikjo-lkp@intel.com/config)
compiler: clang version 22.0.0git (https://github.com/llvm/llvm-project 3769ce013be2879bf0b329c14a16f5cb766f26ce)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250814/202508140527.ighXikjo-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202508140527.ighXikjo-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/tee/qcomtee/user_obj.c:384:12: warning: format specifies type 'unsigned long' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
     383 |                                        &qcomtee_user_object_ops, "uo-%lu",
         |                                                                      ~~~
         |                                                                      %llu
     384 |                                        param->u.objref.id);
         |                                        ^~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +384 drivers/tee/qcomtee/user_obj.c

   355	
   356	/**
   357	 * qcomtee_user_param_to_object() - OBJREF parameter to &struct qcomtee_object.
   358	 * @object: object returned.
   359	 * @param: TEE parameter.
   360	 * @ctx: context in which the conversion should happen.
   361	 *
   362	 * @param is an OBJREF with %QCOMTEE_OBJREF_FLAG_USER flags.
   363	 *
   364	 * Return: On success, returns 0; on failure, returns < 0.
   365	 */
   366	int qcomtee_user_param_to_object(struct qcomtee_object **object,
   367					 struct tee_param *param,
   368					 struct tee_context *ctx)
   369	{
   370		struct qcomtee_user_object *user_object __free(kfree) = NULL;
   371		int err;
   372	
   373		user_object = kzalloc(sizeof(*user_object), GFP_KERNEL);
   374		if (!user_object)
   375			return -ENOMEM;
   376	
   377		user_object->ctx = ctx;
   378		user_object->object_id = param->u.objref.id;
   379		/* By default, always notify userspace upon release. */
   380		user_object->notify = true;
   381		err = qcomtee_object_user_init(&user_object->object,
   382					       QCOMTEE_OBJECT_TYPE_CB,
   383					       &qcomtee_user_object_ops, "uo-%lu",
 > 384					       param->u.objref.id);
   385		if (err)
   386			return err;
   387		/* Matching teedev_ctx_put() is in qcomtee_user_object_release(). */
   388		teedev_ctx_get(ctx);
   389	
   390		*object = &no_free_ptr(user_object)->object;
   391	
   392		return 0;
   393	}
   394	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
