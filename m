Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 95812ABDEF0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 May 2025 17:26:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC25A46009
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 May 2025 15:26:45 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id D82C24606D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 May 2025 15:24:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=k30yJw9A;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.52 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ad51ba0af48so897854966b.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 May 2025 08:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747754694; x=1748359494; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bld2F8yZ54kGs1+iy6D0HdLuVG17oYynXY/XfJVpzy4=;
        b=k30yJw9AJwdmigSlJs5+7cLFyemVML/66glF28kgv3zwgRJr3dA8FhchT8k+jLqhb/
         gD8dvnlSX+FVnfijnbKVaJybQ2sksKMg2p0FlA+xCLOrIRXWlplFl8NopTgVbPbSqXc+
         kgckirQqwP0sOpZny/v9YzIW+HbG0NdrvCGgQnjgCExq9nSU1yfDpUmnjsolgT9EWuCj
         xRC15uBeQ7g5ZIK3Zt0DHXhcX0XS9axa9US5yveNQtQQ+fhxSFV57+Lh+eyvwEpQgdwh
         lSeD3zfRV7t0+Tdrw+MjG1EYNxtLFY4kKqKMY3eKKfuUJ900R1g0otYVxZMcnRxr1KYP
         UIQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747754694; x=1748359494;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bld2F8yZ54kGs1+iy6D0HdLuVG17oYynXY/XfJVpzy4=;
        b=FXgG7P+69GPuqLWUNe7VgE3dKWeRsKOqP6BMGrAU37dnYw8qWhMCU9PbJ+p1Ntk9G/
         jawvtYoGY9/bFlPXPSWd/lmS/lwicKmBxg/xHsiK6Yqz8dF7YiyCStnz6LjxmlaZff0N
         V2d9M5LbUzcONtdM1Lm2oYO6aWvud7wpvVCy5pCE59giSdNdCWbgYzE4g116ue1Dutz8
         LItjhMqAJ02iniVFw7c65Us/mxlCZEI6JMYvOUyVM61pnH1efh/tTWlmg+ls1zz09/rO
         bdV9QrSc8cUVemWQkxDlpKxDHSgml+o/v0FYixAYXh6Q/WuCcVcJmXVvIhZ+piCrrqex
         CHfw==
X-Forwarded-Encrypted: i=1; AJvYcCVV5rwAO7jLyvqDFxYcz6ripbOVxj4DAKaoz0CbH7GwN9FcZiiPoPkud1r5r4Ddvb+nlR3dL1Qc1rIe99vu@lists.linaro.org
X-Gm-Message-State: AOJu0YwYgjXIMfSsxunRZXrBZBPDPgZSR0FjhEWEGr6wi0O/xmaL8ule
	aFg2+OrfgbODUzfVB/NXW0oLwBr/rYeCycJ3ls8Z66Aza/t/nTDB92XPKJl67U7CBL3I6Q==
X-Gm-Gg: ASbGnct7zg+Y/WxWYsYhBISSFHQPo4a7w0VhDY7q/K/r9GpsyoAIhjxs187g1HSIC2s
	8BD6OEbDA8sS3rqitEbmBaZ2r6u8/l4XnFqryv0CG9dnHAEbvJ3Lr5HmU7zVeOMLlj1aD2/8lx7
	6MvSYZgdBZuVA+czyEMLUxyyPptHmAi3ph7uIJwKtPKEYE4d6hjVewt4yJ2eUqNQ3/RVmDkor4r
	YKZieN+bagsnxyOKhnrWhyNzCy3nViwU4dgiGID7uqE527uY0AtV5HYpAcVDQF46qS8zQ5NgQuS
	ObiL8Ww7ghTTT+chHXKtVTu2Pupj68bR5s5nrtdVDrXkNQsPvFYr24j7iBC7plgiCmq2+SESfIh
	8XKGe/LWeAPKvdYRvmRc0wOGciuov
X-Google-Smtp-Source: AGHT+IE+oU//7EkaWaSVnBEAmENTiykO6EjOUBrIKYl9jX9zjcRr0m/0LP96+ZckH975FqdkGFgQKA==
X-Received: by 2002:a17:907:3e28:b0:ad5:2d5d:206f with SMTP id a640c23a62f3a-ad52fa567ccmr1750869866b.19.1747754693784;
        Tue, 20 May 2025 08:24:53 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d278257sm742608766b.82.2025.05.20.08.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 08:24:53 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Tue, 20 May 2025 17:16:50 +0200
Message-ID: <20250520152436.474778-8-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250520152436.474778-1-jens.wiklander@linaro.org>
References: <20250520152436.474778-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-5.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.52:from];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.218.52:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: D82C24606D
X-Spamd-Bar: -----
Message-ID-Hash: ZQPCGAEOGW2ENID5NBW47DNCNZNPOGKZ
X-Message-ID-Hash: ZQPCGAEOGW2ENID5NBW47DNCNZNPOGKZ
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v9 7/9] optee: support protected memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZQPCGAEOGW2ENID5NBW47DNCNZNPOGKZ/>
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
 drivers/tee/optee/core.c          | 10 +++++++
 drivers/tee/optee/optee_private.h |  2 ++
 drivers/tee/optee/smc_abi.c       | 45 +++++++++++++++++++++++++++++--
 3 files changed, 55 insertions(+), 2 deletions(-)

diff --git a/drivers/tee/optee/core.c b/drivers/tee/optee/core.c
index c75fddc83576..4b14a7ac56f9 100644
--- a/drivers/tee/optee/core.c
+++ b/drivers/tee/optee/core.c
@@ -56,6 +56,15 @@ int optee_rpmb_intf_rdev(struct notifier_block *intf, unsigned long action,
 	return 0;
 }
 
+int optee_set_dma_mask(struct optee *optee, u_int pa_width)
+{
+	u64 mask = DMA_BIT_MASK(min(64, pa_width));
+
+	optee->teedev->dev.dma_mask = &optee->teedev->dev.coherent_dma_mask;
+
+	return dma_set_mask_and_coherent(&optee->teedev->dev, mask);
+}
+
 static void optee_bus_scan(struct work_struct *work)
 {
 	WARN_ON(optee_enumerate_devices(PTA_CMD_GET_DEVICES_SUPP));
@@ -181,6 +190,7 @@ void optee_remove_common(struct optee *optee)
 	tee_device_unregister(optee->supp_teedev);
 	tee_device_unregister(optee->teedev);
 
+	tee_device_unregister_all_dma_heaps(optee->teedev);
 	tee_shm_pool_free(optee->pool);
 	optee_supp_uninit(&optee->supp);
 	mutex_destroy(&optee->call_queue.mutex);
diff --git a/drivers/tee/optee/optee_private.h b/drivers/tee/optee/optee_private.h
index dc0f355ef72a..5e3c34802121 100644
--- a/drivers/tee/optee/optee_private.h
+++ b/drivers/tee/optee/optee_private.h
@@ -272,6 +272,8 @@ struct optee_call_ctx {
 
 extern struct blocking_notifier_head optee_rpmb_intf_added;
 
+int optee_set_dma_mask(struct optee *optee, u_int pa_width);
+
 int optee_notif_init(struct optee *optee, u_int max_key);
 void optee_notif_uninit(struct optee *optee);
 int optee_notif_wait(struct optee *optee, u_int key, u32 timeout);
diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
index f0c3ac1103bb..f3cae8243785 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -1584,6 +1584,42 @@ static inline int optee_load_fw(struct platform_device *pdev,
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
+		rc = optee_set_dma_mask(optee, res.result.pa_width);
+		if (!rc)
+			pool = tee_protmem_static_pool_alloc(res.result.start,
+							     res.result.size);
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
@@ -1679,7 +1715,7 @@ static int optee_probe(struct platform_device *pdev)
 	optee = kzalloc(sizeof(*optee), GFP_KERNEL);
 	if (!optee) {
 		rc = -ENOMEM;
-		goto err_free_pool;
+		goto err_free_shm_pool;
 	}
 
 	optee->ops = &optee_ops;
@@ -1752,6 +1788,10 @@ static int optee_probe(struct platform_device *pdev)
 		pr_info("Asynchronous notifications enabled\n");
 	}
 
+	rc = optee_protmem_pool_init(optee);
+	if (rc)
+		goto err_notif_uninit;
+
 	/*
 	 * Ensure that there are no pre-existing shm objects before enabling
 	 * the shm cache so that there's no chance of receiving an invalid
@@ -1787,6 +1827,7 @@ static int optee_probe(struct platform_device *pdev)
 		optee_disable_shm_cache(optee);
 	optee_smc_notif_uninit_irq(optee);
 	optee_unregister_devices();
+	tee_device_unregister_all_dma_heaps(optee->teedev);
 err_notif_uninit:
 	optee_notif_uninit(optee);
 err_close_ctx:
@@ -1803,7 +1844,7 @@ static int optee_probe(struct platform_device *pdev)
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
