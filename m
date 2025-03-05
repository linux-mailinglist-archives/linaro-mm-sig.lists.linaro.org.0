Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F944A4FFAA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Mar 2025 14:09:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 608C444179
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Mar 2025 13:09:28 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id 6B04A44525
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Mar 2025 13:07:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=zdKVV5jq;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.53 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e52c1c3599so5858902a12.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Mar 2025 05:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741180021; x=1741784821; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GV+1CN9mTm6W0e8GwrPdwh4pOa9jooWXILMnvo8a19M=;
        b=zdKVV5jqnnhJb2Xki9EWpkKJFK34omHtVd2JqI97mohel7X5fVeMnyKvKpNC/Ozw0U
         BOk0R5sH71yYUAbpkwkl5sEU9yq7BQKWloOg5bB9mw7RIhN77agOOQ9Wq5BGwCuZokvR
         q7oqu0ZQ/Dt8l/5m1SsGz8V64fRIMdWtlKgh54w80vMtkqdQQR6P94eJhmqjx64GUgi4
         OAEWzOgoRI8Uz/xrRYJSMR/zKIO4uoS7jPqIUjeMtbBqsCNQSmBmv1FQpv2/lC93AxZN
         cUX2X71g4ms035ldeOemZM1HgdBZl7mZ1603357gYUa36u0NxnkW3b70WQ9LLd1U2l1A
         ENIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741180021; x=1741784821;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GV+1CN9mTm6W0e8GwrPdwh4pOa9jooWXILMnvo8a19M=;
        b=r5+Yt0rQ+uzb9rJR5gVwKlZIk8GRS1yjY/teRuVBfc0q4cy4g45yyL+MmWur6qwpx0
         YqfEfdH024tSvhCWTi6K4q7tzvtjtKj8sZSMEE4nsQ7817Ji4JtFxhPTbsdtGP5I/qzc
         F6d147sONjqqYbsHnXobMbnuo7SKOOr9A3Eb8fAfy06B7VTJca8qHoZ3DBdDeaCmcudK
         eN7Hbkpglw+3l+m0ZU9tJfzW8vhbg/L4owTtFtf027aiEm8y/TMOP7H0A24/4UWzbO8B
         jeyexIwvukGGkCgqQiAxxlorX+GAJilx3+rKzfgO+Jvx1GkJre2DikWhQd0FyY/EOolk
         fg2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWqQR/qc3ojmS1dUmmf21OXy4NDy8SXivHDD0Ee+rYz7iuFt0P7emtIA6GdEnTRZ6w1E0/NWzGaeiiDSATj@lists.linaro.org
X-Gm-Message-State: AOJu0YxcEdABE60KbCn2fccCz4p50b9RIJAIvMAxESjPO63B81FRKwt2
	r8a/zZxltD67hMGicLgE9N0Ws/IeSgfX83DzR8Rg20NY/F5XzRc77SgGZSM60LeENw==
X-Gm-Gg: ASbGncuSMerea4az7GThsuv+Rz+DJOKTjrvVYX80Jh471Irul6IK2uzHeROHMo1K0Ov
	ghMA76gm3GdbVW27TBgur3BF7pEi1o6B/JP1bUDZA9FzzJbqgLTLKYNe8rdG8s//JQZxf+nu7uJ
	cbZSZaSgY4GaYYFjqUOXWnSLzHhQ5CHsM/OjORsvfAEy9V8C8tsSLUpZ9X0aF/IPjS5woj8tyRz
	eLqNI2b770OV6TE+5aGSJnmUvvzn6niaoEYIUE/kp/GuTbL5JgQtlaAZLNeyTOUb5eDxUPBDHEL
	heHeAfGmmCg880qcVyiRcKZ3mAKZxYYY2LNKZyc9tomr8loHDnDFCoEASAP0u32GKyNhD/K/W+I
	YB8i+SIjf4arsiFoxTh+pBQ==
X-Google-Smtp-Source: AGHT+IFZCxWXYzGPaJ+Fpyr5pD44xJg3mO/vEGV3TFHnOgghMwA++b6wko/XdNnqusONUByGqiK4lg==
X-Received: by 2002:a05:6402:4302:b0:5de:dc08:9cc5 with SMTP id 4fb4d7f45d1cf-5e59f35eab4mr2661989a12.7.1741180021272;
        Wed, 05 Mar 2025 05:07:01 -0800 (PST)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5bcd1595bsm65714a12.42.2025.03.05.05.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 05:07:00 -0800 (PST)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Wed,  5 Mar 2025 14:04:14 +0100
Message-ID: <20250305130634.1850178-9-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250305130634.1850178-1-jens.wiklander@linaro.org>
References: <20250305130634.1850178-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6B04A44525
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	DKIM_TRACE(0.00)[linaro.org:+];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.208.53:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[98.128.140.123:received,209.85.208.53:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.53:from];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: BJSF6TV4ABQIH3YR63VITUMVYPDLBE6R
X-Message-ID-Hash: BJSF6TV4ABQIH3YR63VITUMVYPDLBE6R
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 08/10] optee: support restricted memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BJSF6TV4ABQIH3YR63VITUMVYPDLBE6R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add support in the OP-TEE backend driver for restricted memory
allocation. The support is limited to only the SMC ABI and for secure
video buffers.

OP-TEE is probed for the range of restricted physical memory and a
memory pool allocator is initialized if OP-TEE have support for such
memory.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/optee/core.c    |  1 +
 drivers/tee/optee/smc_abi.c | 44 +++++++++++++++++++++++++++++++++++--
 2 files changed, 43 insertions(+), 2 deletions(-)

diff --git a/drivers/tee/optee/core.c b/drivers/tee/optee/core.c
index c75fddc83576..c7fd8040480e 100644
--- a/drivers/tee/optee/core.c
+++ b/drivers/tee/optee/core.c
@@ -181,6 +181,7 @@ void optee_remove_common(struct optee *optee)
 	tee_device_unregister(optee->supp_teedev);
 	tee_device_unregister(optee->teedev);
 
+	tee_device_unregister_all_dma_heaps(optee->teedev);
 	tee_shm_pool_free(optee->pool);
 	optee_supp_uninit(&optee->supp);
 	mutex_destroy(&optee->call_queue.mutex);
diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
index cfdae266548b..a14ff0b7d3b3 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -1620,6 +1620,41 @@ static inline int optee_load_fw(struct platform_device *pdev,
 }
 #endif
 
+static int optee_sdp_pool_init(struct optee *optee)
+{
+	enum tee_dma_heap_id heap_id = TEE_DMA_HEAP_SECURE_VIDEO_PLAY;
+	struct tee_rstmem_pool *pool;
+	int rc;
+
+	if (optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_SDP) {
+		union {
+			struct arm_smccc_res smccc;
+			struct optee_smc_get_sdp_config_result result;
+		} res;
+
+		optee->smc.invoke_fn(OPTEE_SMC_GET_SDP_CONFIG, 0, 0, 0, 0, 0, 0,
+				     0, &res.smccc);
+		if (res.result.status != OPTEE_SMC_RETURN_OK) {
+			pr_err("Secure Data Path service not available\n");
+			return 0;
+		}
+
+		pool = tee_rstmem_static_pool_alloc(res.result.start,
+						    res.result.size);
+		if (IS_ERR(pool))
+			return PTR_ERR(pool);
+
+		rc = tee_device_register_dma_heap(optee->teedev, heap_id, pool);
+		if (rc)
+			goto err;
+	}
+
+	return 0;
+err:
+	pool->ops->destroy_pool(pool);
+	return rc;
+}
+
 static int optee_probe(struct platform_device *pdev)
 {
 	optee_invoke_fn *invoke_fn;
@@ -1715,7 +1750,7 @@ static int optee_probe(struct platform_device *pdev)
 	optee = kzalloc(sizeof(*optee), GFP_KERNEL);
 	if (!optee) {
 		rc = -ENOMEM;
-		goto err_free_pool;
+		goto err_free_shm_pool;
 	}
 
 	optee->ops = &optee_ops;
@@ -1788,6 +1823,10 @@ static int optee_probe(struct platform_device *pdev)
 		pr_info("Asynchronous notifications enabled\n");
 	}
 
+	rc = optee_sdp_pool_init(optee);
+	if (rc)
+		goto err_notif_uninit;
+
 	/*
 	 * Ensure that there are no pre-existing shm objects before enabling
 	 * the shm cache so that there's no chance of receiving an invalid
@@ -1823,6 +1862,7 @@ static int optee_probe(struct platform_device *pdev)
 		optee_disable_shm_cache(optee);
 	optee_smc_notif_uninit_irq(optee);
 	optee_unregister_devices();
+	tee_device_unregister_all_dma_heaps(optee->teedev);
 err_notif_uninit:
 	optee_notif_uninit(optee);
 err_close_ctx:
@@ -1839,7 +1879,7 @@ static int optee_probe(struct platform_device *pdev)
 	tee_device_unregister(optee->teedev);
 err_free_optee:
 	kfree(optee);
-err_free_pool:
+err_free_shm_pool:
 	tee_shm_pool_free(pool);
 	if (memremaped_shm)
 		memunmap(memremaped_shm);
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
