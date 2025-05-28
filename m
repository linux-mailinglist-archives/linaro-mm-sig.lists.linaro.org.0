Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6530BAC612C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 May 2025 07:22:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE0F94463C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 May 2025 05:22:22 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id 27A5C444A7
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 May 2025 05:22:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=TUJDJb0x;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.128.46 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43ede096d73so31449075e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 22:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748409730; x=1749014530; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hQoa0JY92XB83bF0hiIU1JdZJVH9XdUX6CbZ3gHnktA=;
        b=TUJDJb0x9C5PdrEKWE70k/IyJ4y2ukXiMj9X7ompSz8shMzt2NN3fgyKWMEbn5JEq4
         ZwkbzdYEz0mcoiuiuGg+wrE98vyudK4XOqWe3jdPoQtqOsITeNoj/pA+GTH++piy8LBg
         tPiDNZIgQIE+olSRaVz/UgS57y1zv/pS7yGJeiVRI+1uS9plPIqlTsIwM8eyRSK7iGbR
         MT4YmjuMCFFF86sEk8wTOJbprW0tjSF7Jj2J3nItEU/QktjaMlrRppYHImFWd9GW/YSw
         7EYxF23t1W1S6NGVOVuCGkKw50ZZUjN7nQQMZLDUcyAzx6ORYzvivOL1/LUqdclmDQnW
         7a0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748409730; x=1749014530;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hQoa0JY92XB83bF0hiIU1JdZJVH9XdUX6CbZ3gHnktA=;
        b=bPt72xNcSW+RFmp4EN6N38SD8SnbyxJRW8D54PYEnTXV/JMv5Oei64CkJXLSTamutg
         OgRmSfnMAq0xVYga69uhf0ulEUJV6aAsOEIjm0upZK2AaIOiKRxaXtt3lQKs2JlA0B5R
         zRsdIb2xGcJNBxUNmqvwEkAhIWWrtZMnHJGp2HijH4fLjGef0HCYdWUSxexXPdPOziue
         p7K4RtUtnxMGAElEL4dz6Nqk2VZfCcrXZNeQsMRlem3XbN2DJB4u01pCp1kg+uxS4ojY
         Id42lYVEFikbGjIMY92MCuoNDWMxIttZwT+nw6le15NR/SdySzPgKhQCNBpjQdWsop8u
         jsUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxR5tMBJjHi2YasLlYMwrhT9qmWhF4hZRkt1xRPYdrLDsfwPLUocT0U9/BNYp4Kv20uvN+79nrXML2Xas6@lists.linaro.org
X-Gm-Message-State: AOJu0YywKPstCaAfBHb/qZRWqWO/aI/EMc7JBeZC1fM9nALpP8k630rG
	pv2kRwTfWEhdQXL7npPV7yBdyfVcw5i+Gf9+yeba4LLsp3QJil88PDOpZhxjsX7RZHN74g==
X-Gm-Gg: ASbGnctDoZ6WfPhHjXcylA/3xOKIP9omZkt4edr+rEYDbW5G8cZOw6c+QznXdjjw3E7
	tr3a5Soz5cHuCIvBZ78qxepMm3CYHODdxDsRJTg7RTOixVYWIOO0TjMiVjlG2x7GUpyZk8cgBdM
	i0nDJzCduPBCEt+m6cVLkqaViwntmtBpaNUAfXzEqyDftci01S+9OAGTScDMcULFcgW0EISasSY
	ezHYnmbTvWURVPkctyr8O0C84d5xpWA8yeNf57Zu7Z3FNTdEH83YZ8F19fs/+fpp33aqzDCe2g2
	5AOFe0HgMn3ZUN0jOcR9U7uLZGn4vsV/sBIxrCSs8bEPmghMgdctxoEw
X-Google-Smtp-Source: AGHT+IFRt79F9Nml3doFVgCAm1e3lBsDWSa75/5HWtnFCBSWr87OHZCH/XypCJ2QyEheeH/6O/16gw==
X-Received: by 2002:a05:600c:621b:b0:43c:fffc:786c with SMTP id 5b1f17b1804b1-44fafbf883dmr53519405e9.19.1748409729976;
        Tue, 27 May 2025 22:22:09 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45072559736sm5617525e9.19.2025.05.27.22.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 22:22:09 -0700 (PDT)
Date: Wed, 28 May 2025 08:22:06 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>,
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
Message-ID: <202505280653.Y79JKqDd-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250526-qcom-tee-using-tee-ss-without-mem-obj-v5-9-024e3221b0b9@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.46:from];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,linaro.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Queue-Id: 27A5C444A7
X-Spamd-Bar: ----
Message-ID-Hash: AB3TBEFW5SML6AQ6S6CDJLLEBBV64ROE
X-Message-ID-Hash: AB3TBEFW5SML6AQ6S6CDJLLEBBV64ROE
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: lkp@intel.com, oe-kbuild-all@lists.linux.dev, Harshal Dev <quic_hdev@quicinc.com>, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 09/12] tee: add Qualcomm TEE driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AB3TBEFW5SML6AQ6S6CDJLLEBBV64ROE/>
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

url:    https://github.com/intel-lab-lkp/linux/commits/Amirreza-Zarrabi/tee-allow-a-driver-to-allocate-a-tee_device-without-a-pool/20250527-151020
base:   3be1a7a31fbda82f3604b6c31e4f390110de1b46
patch link:    https://lore.kernel.org/r/20250526-qcom-tee-using-tee-ss-without-mem-obj-v5-9-024e3221b0b9%40oss.qualcomm.com
patch subject: [PATCH v5 09/12] tee: add Qualcomm TEE driver
config: x86_64-randconfig-161-20250528 (https://download.01.org/0day-ci/archive/20250528/202505280653.Y79JKqDd-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202505280653.Y79JKqDd-lkp@intel.com/

smatch warnings:
drivers/tee/qcomtee/call.c:748 qcomtee_probe() warn: missing error code 'err'

vim +/err +748 drivers/tee/qcomtee/call.c

accd33ce59c3367 Amirreza Zarrabi 2025-05-26  711  static int qcomtee_probe(struct platform_device *pdev)
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  712  {
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  713  	struct workqueue_struct *async_wq;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  714  	struct tee_device *teedev;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  715  	struct tee_shm_pool *pool;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  716  	struct tee_context *ctx;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  717  	struct qcomtee *qcomtee;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  718  	int err;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  719  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  720  	qcomtee = kzalloc(sizeof(*qcomtee), GFP_KERNEL);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  721  	if (!qcomtee)
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  722  		return -ENOMEM;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  723  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  724  	pool = qcomtee_shm_pool_alloc();
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  725  	if (IS_ERR(pool)) {
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  726  		err = PTR_ERR(pool);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  727  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  728  		goto err_free_qcomtee;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  729  	}
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  730  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  731  	teedev = tee_device_alloc(&qcomtee_desc, NULL, pool, qcomtee);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  732  	if (IS_ERR(teedev)) {
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  733  		err = PTR_ERR(teedev);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  734  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  735  		goto err_pool_destroy;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  736  	}
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  737  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  738  	qcomtee->teedev = teedev;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  739  	qcomtee->pool = pool;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  740  	err = tee_device_register(qcomtee->teedev);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  741  	if (err)
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  742  		goto err_unreg_teedev;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  743  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  744  	platform_set_drvdata(pdev, qcomtee);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  745  	/* Start async wq. */
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  746  	async_wq = alloc_ordered_workqueue("qcomtee_wq", 0);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  747  	if (!async_wq)
accd33ce59c3367 Amirreza Zarrabi 2025-05-26 @748  		goto err_unreg_teedev;

err = -ENOMEM;

accd33ce59c3367 Amirreza Zarrabi 2025-05-26  749  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  750  	qcomtee->wq = async_wq;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  751  	/* Driver context used for async operations of teedev. */
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  752  	ctx = teedev_open(qcomtee->teedev);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  753  	if (IS_ERR(ctx)) {
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  754  		err = PTR_ERR(ctx);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  755  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  756  		goto err_dest_wq;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  757  	}
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  758  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  759  	qcomtee->ctx = ctx;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  760  	/* Init Object table. */
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  761  	qcomtee->xa_last_id = 0;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  762  	xa_init_flags(&qcomtee->xa_local_objects, XA_FLAGS_ALLOC);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  763  	/* Get QTEE verion. */
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  764  	qcomtee_get_qtee_feature_list(qcomtee->ctx,
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  765  				      QCOMTEE_FEATURE_VER_OP_GET_QTEE_ID,
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  766  				      &qtee_version);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  767  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  768  	pr_info("QTEE version %u.%u.%u\n",
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  769  		QTEE_VERSION_GET_MAJOR(qtee_version),
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  770  		QTEE_VERSION_GET_MINOR(qtee_version),
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  771  		QTEE_VERSION_GET_PATCH(qtee_version));
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  772  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  773  	return 0;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  774  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  775  err_dest_wq:
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  776  	destroy_workqueue(qcomtee->wq);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  777  err_unreg_teedev:
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  778  	tee_device_unregister(qcomtee->teedev);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  779  err_pool_destroy:
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  780  	tee_shm_pool_free(pool);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  781  err_free_qcomtee:
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  782  	kfree(qcomtee);
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  783  
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  784  	return err;
accd33ce59c3367 Amirreza Zarrabi 2025-05-26  785  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
