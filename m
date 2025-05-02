Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A2FAA6ED2
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 12:05:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E81845504
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 10:05:12 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id C1740454DD
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 May 2025 10:01:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=x8+xQSjq;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.48 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ac2963dc379so277731966b.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 02 May 2025 03:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746180076; x=1746784876; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aeQOjVkq3EBC9GxZGgQiApE4KnUvSm/cM8uXSgvbEb0=;
        b=x8+xQSjqVuooNBPqhPPwIZzIXTo6nT6Qxx9AnLLh4JS29UPXDPUVGhEv15SOTij5P2
         SnAFjjy5ho//ExaREAUNI7O2mjRkPxJH2vjovc5rC0GFml40Dnd9PkyeOwF7EnBt3BMe
         LbMuoeFokDBR/A4d5NAr7ntpKrJRwodrmevDOBRyV8tJUCiD5eCrpu9aY04UWskjaReJ
         mh1xQyVdEbfqRFpCyaIRhiWUt9m7Zeq7hBFn0by3rKLqDnSEizWGFfZkv12MN9zR5x1m
         CdmkKVv3JnlOqvmHdQIhfV7pwJS05JiO1dUdo/sOWcFqK56cJXc2UIwv73790hh2O4iH
         TRZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746180076; x=1746784876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aeQOjVkq3EBC9GxZGgQiApE4KnUvSm/cM8uXSgvbEb0=;
        b=MYoixBYwmMHeSgYB/l+nyV1Jh7TJ/yOvbmQUl7yukXGyvlBS0gQD5Ngmq1ZfQcxc6X
         B5clo16HS3ANB9CeJisokSCgzIDW35buednSpjVQR82cXDJUes/DnR26Cxq7s5+3VR7Z
         rMfbL+xGzp5LIb+/A8MhtQ/PBAUz7SJaJR3aE9m5iWRGsGD8WhBMonKy94Ul31gBrFKV
         awqvJ/r2DO4a4wQKa9hitOS03sANKw+2vQubU63VxOz3TmquHjAYWQjVm4Zj1/QzF/K7
         IsD+KZAjIbQrGqvquZV+ARsNWShgiuDF2xQRTQ0pbPkvSlzfhBThJMXflBRxFucbjuZU
         Zynw==
X-Forwarded-Encrypted: i=1; AJvYcCVg7gmFM0KRMWk0h23hEt/u6DTwYLcp0txjUgSAy6euOeH2AFxC+Vc6q+iC8QmF/jJU2yOxyXtn08S4BArm@lists.linaro.org
X-Gm-Message-State: AOJu0Yz/h7KcZ3SxURIHGQ0WarPJnmJ1EuzcI20v777TRF2gTP21VZhV
	NMDC0RPJmwsTqMaPjpPJ0PmyfL/DGKN4km6+hXhDeq/A3c5QXgtZHnHxN4O/1Tmg4aepX5atzzk
	zIQbpBw==
X-Gm-Gg: ASbGncvPLJs0ttO691LaD0g3KJv2Ro7zeR5ZIYzsCCbyCtNAb69omeDfGM+sNBB3oh9
	Bz6t3mmgbAAAtt5GrC6oz4AGiWuWC83+KtPNmJSAsCbfTKMmzPySSGGbWPkscG4lYctfpVaE5Yz
	wdJigBSfHbJK2hAiT5M3opDpOslqsqmjrZa7ZikjDiv31AILQld2PL7zC0N3B4DnBHnpFjZYMeX
	RzhTj+nUF7edCgnPe4Tx/Xj4lr3jovbIsoqz/vCyr3NHEv4pDrABt3GerPOaVsJkcvwKRKIhiMu
	fdIheNEIlAsowM3vOoZalGcG7qlYs0XpaHmXBVGWjl3zbYsccoITJZDYHpfWj+rqgVW9NYFtSfD
	AaBFyekDK5NbZaJbHag==
X-Google-Smtp-Source: AGHT+IFF9zknIP+dqaL1V+FMTT0LVPgHDeyr+aipRO30IcpUVrj2BVxgOIBN2MQg2BYB/rbfAelPxg==
X-Received: by 2002:a17:907:96a2:b0:ace:3c0b:1947 with SMTP id a640c23a62f3a-ad17ad39db1mr215652166b.4.1746180075654;
        Fri, 02 May 2025 03:01:15 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1891473a1sm26030566b.4.2025.05.02.03.01.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 03:01:15 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Fri,  2 May 2025 11:59:26 +0200
Message-ID: <20250502100049.1746335-13-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502100049.1746335-1-jens.wiklander@linaro.org>
References: <20250502100049.1746335-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C1740454DD
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,linaro.org:mid,linaro.org:email,mail-ej1-f48.google.com:helo,mail-ej1-f48.google.com:rdns];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.48:from];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 2P5JS6NVKYF4LGIC53MJ3RUO3MNSQZR6
X-Message-ID-Hash: 2P5JS6NVKYF4LGIC53MJ3RUO3MNSQZR6
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 12/14] optee: support protected memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2P5JS6NVKYF4LGIC53MJ3RUO3MNSQZR6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add support in the OP-TEE backend driver for protected memory
allocation. The support is limited to only the SMC ABI and for secure
video buffers.

OP-TEE is probed for the range of protected physical memory and a
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
index cfdae266548b..7acb43852c4b 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -1620,6 +1620,41 @@ static inline int optee_load_fw(struct platform_device *pdev,
 }
 #endif
 
+static int optee_protmem_pool_init(struct optee *optee)
+{
+	enum tee_dma_heap_id heap_id = TEE_DMA_HEAP_SECURE_VIDEO_PLAY;
+	struct tee_protmem_pool *pool;
+	int rc;
+
+	if (optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_PROTMEM) {
+		union {
+			struct arm_smccc_res smccc;
+			struct optee_smc_get_protmem_config_result result;
+		} res;
+
+		optee->smc.invoke_fn(OPTEE_SMC_GET_PROTMEM_CONFIG, 0, 0, 0, 0,
+				     0, 0, 0, &res.smccc);
+		if (res.result.status != OPTEE_SMC_RETURN_OK) {
+			pr_err("Secure Data Path service not available\n");
+			return 0;
+		}
+
+		pool = tee_protmem_static_pool_alloc(res.result.start,
+						     res.result.size);
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
 
+	rc = optee_protmem_pool_init(optee);
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
