Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD6FA4FFB2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Mar 2025 14:10:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 006A2444D6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Mar 2025 13:10:04 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by lists.linaro.org (Postfix) with ESMTPS id E3D8644B23
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Mar 2025 13:07:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=vHEzLMuy;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.42 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5e4d50ed90aso7978241a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Mar 2025 05:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741180028; x=1741784828; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SZWcwQgxJYl5xqresVhiMdi9+ZPx9Y4Kk8m/1lcEjeM=;
        b=vHEzLMuyg1ZNoWtrA1XhmIUVZy47b4LFtkElDr/ohrOsG42/eQlqPTKoGqHVAf7acw
         DOp1KX9648x4JM731dg5mkSzKOmom+9gwsyNxhU8qr80o7kyY9lwDKOyKM7MWbP/XhgW
         QVL5fdskuFG3hMw5/yM85nEaDXoX7o6klPrFC6MxKB+NgcybQ3VDAiV8O0D6irv0bb+h
         g8+Vuv7bYTapYzZJK2LnV2Vgxp7FjzNhEyuLnV0lxcMnMQXipvLh5Asi1x/LxJCPHenx
         WoXDDSk/gp2cEEHH41BDvbVE7C0o96tUZgFG2j2kcCuSRTqol/nseGm5Q1y9u8Wa4fWz
         nyIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741180028; x=1741784828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SZWcwQgxJYl5xqresVhiMdi9+ZPx9Y4Kk8m/1lcEjeM=;
        b=UaOyn36iUskjI+PF+/r1FrOSgsBbKPGxQ49joz7vR+u+gY6/QvDSkZq0iMF3aX5Fwm
         eTTF+tOOQNxYff1J5Lw2ZSEngKyQulEajs8q3TUnLHBfiQB+1Rqxrnp9T9gxBUOAwqzL
         xl6tvGUfeTb/mI3bvmppn8stE8kFmhTPRDe5AaOZ2HQh8IMG91ljTj9oOpTL+Rrjm+9j
         7Mx6MiQ6yoLVNECkMRZaU8oX8rGuI6I8inW8QzwrG4LAT2evg26OT5hB3lxv91J3YZ/R
         Lqp8SdEG3icT+/Z1d0Omp/joOY60NPHzQ6S7XbpOSWGF0Y7dx38PvLuFpwnkhdJAiRx8
         4F9w==
X-Forwarded-Encrypted: i=1; AJvYcCXF3VBfkEKXlTTp5nt3ry3FMtu2z48dv06a78HgLqMoT7Ffv4nq+zrtDZ5zpwEl2+34VX7SZEuBAq303451@lists.linaro.org
X-Gm-Message-State: AOJu0Yw+kGxA/G7oRdu42VMzz2BbjXmV4wKw4RJrd90yI8BGT6dCUkjI
	EphrZhIYKdjrsjqD7su0WE8+vjdA0QGO/DkQ8400D9d9RzmgTe8rcfCbCaLcSFMsUw==
X-Gm-Gg: ASbGncu6rkUL6CgH+puMYVGFh6BRobJ8JwTysMXzpucNu6AQwpIMIysAMoLpdukyDTf
	ymos8cn50O2O0IMuBVcJGPcDxeEn4WDKI2NI1zq56VhQPdx2A3ZCxKjaG6Q1wvKATlFM31bgxO8
	R52C4XX0HhVJSrpuEz+ru8eUDz3NlFc2f2NFCTZ7fH3Xa4BVv+N5qypIjHVfAJiEIYQKylsenUN
	7ot68K77sBB+pYz25y2MDvTHXjh3jBIZUI9y0WboKF6wxGn6MYcrlYxmvTdtP3ZAHL6trEUTTVy
	XGL0wohR+GwHdUsqxYfPDUeMbXu1kykavdqNPashhL6E7RC5UQawQxHDVczhFsM8Kn1YfV/U3jt
	FGt2bgJy+x0eZUAi9TqriAA==
X-Google-Smtp-Source: AGHT+IEU8qhj3jZr5pC33H3BKUPYoPOJwyx39WdATtL+5/RDhfCQ1+ckzcmgDPihiiWE9zWeUGcUMw==
X-Received: by 2002:a05:6402:13d1:b0:5e4:99af:b7c with SMTP id 4fb4d7f45d1cf-5e59f384aebmr3091724a12.9.1741180027839;
        Wed, 05 Mar 2025 05:07:07 -0800 (PST)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5bcd1595bsm65714a12.42.2025.03.05.05.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 05:07:06 -0800 (PST)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Wed,  5 Mar 2025 14:04:16 +0100
Message-ID: <20250305130634.1850178-11-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250305130634.1850178-1-jens.wiklander@linaro.org>
References: <20250305130634.1850178-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E3D8644B23
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.208.42:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[98.128.140.123:received,209.85.208.42:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.42:from];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: OEXTUKW73YVAILGHGF4J3RG5ADMSWO3B
X-Message-ID-Hash: OEXTUKW73YVAILGHGF4J3RG5ADMSWO3B
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 10/10] optee: smc abi: dynamic restricted memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OEXTUKW73YVAILGHGF4J3RG5ADMSWO3B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add support in the OP-TEE backend driver for dynamic restricted memory
allocation using the SMC ABI.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/optee/smc_abi.c | 96 +++++++++++++++++++++++++++++++------
 1 file changed, 81 insertions(+), 15 deletions(-)

diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
index a14ff0b7d3b3..aa574ee6e277 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -1001,6 +1001,69 @@ static int optee_smc_do_call_with_arg(struct tee_context *ctx,
 	return rc;
 }
 
+static int optee_smc_lend_rstmem(struct optee *optee, struct tee_shm *rstmem,
+				 u16 *end_points, unsigned int ep_count,
+				 u32 use_case)
+{
+	struct optee_shm_arg_entry *entry;
+	struct optee_msg_arg *msg_arg;
+	struct tee_shm *shm;
+	u_int offs;
+	int rc;
+
+	msg_arg = optee_get_msg_arg(optee->ctx, 2, &entry, &shm, &offs);
+	if (IS_ERR(msg_arg))
+		return PTR_ERR(msg_arg);
+
+	msg_arg->cmd = OPTEE_MSG_CMD_LEND_RSTMEM;
+	msg_arg->params[0].attr = OPTEE_MSG_ATTR_TYPE_VALUE_INPUT;
+	msg_arg->params[0].u.value.a = use_case;
+	msg_arg->params[1].attr = OPTEE_MSG_ATTR_TYPE_TMEM_INPUT;
+	msg_arg->params[1].u.tmem.buf_ptr = rstmem->paddr;
+	msg_arg->params[1].u.tmem.size = rstmem->size;
+	msg_arg->params[1].u.tmem.shm_ref = (u_long)rstmem;
+
+	rc = optee->ops->do_call_with_arg(optee->ctx, shm, offs, false);
+	if (rc)
+		goto out;
+	if (msg_arg->ret != TEEC_SUCCESS) {
+		rc = -EINVAL;
+		goto out;
+	}
+	rstmem->sec_world_id = (u_long)rstmem;
+
+out:
+	optee_free_msg_arg(optee->ctx, entry, offs);
+	return rc;
+}
+
+static int optee_smc_reclaim_rstmem(struct optee *optee, struct tee_shm *rstmem)
+{
+	struct optee_shm_arg_entry *entry;
+	struct optee_msg_arg *msg_arg;
+	struct tee_shm *shm;
+	u_int offs;
+	int rc;
+
+	msg_arg = optee_get_msg_arg(optee->ctx, 1, &entry, &shm, &offs);
+	if (IS_ERR(msg_arg))
+		return PTR_ERR(msg_arg);
+
+	msg_arg->cmd = OPTEE_MSG_CMD_RECLAIM_RSTMEM;
+	msg_arg->params[0].attr = OPTEE_MSG_ATTR_TYPE_RMEM_INPUT;
+	msg_arg->params[0].u.rmem.shm_ref = (u_long)rstmem;
+
+	rc = optee->ops->do_call_with_arg(optee->ctx, shm, offs, false);
+	if (rc)
+		goto out;
+	if (msg_arg->ret != TEEC_SUCCESS)
+		rc = -EINVAL;
+
+out:
+	optee_free_msg_arg(optee->ctx, entry, offs);
+	return rc;
+}
+
 /*
  * 5. Asynchronous notification
  */
@@ -1252,6 +1315,8 @@ static const struct optee_ops optee_ops = {
 	.do_call_with_arg = optee_smc_do_call_with_arg,
 	.to_msg_param = optee_to_msg_param,
 	.from_msg_param = optee_from_msg_param,
+	.lend_rstmem = optee_smc_lend_rstmem,
+	.reclaim_rstmem = optee_smc_reclaim_rstmem,
 };
 
 static int enable_async_notif(optee_invoke_fn *invoke_fn)
@@ -1622,11 +1687,13 @@ static inline int optee_load_fw(struct platform_device *pdev,
 
 static int optee_sdp_pool_init(struct optee *optee)
 {
+	bool sdp = optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_SDP;
+	bool dyn_sdp = optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_DYNAMIC_RSTMEM;
 	enum tee_dma_heap_id heap_id = TEE_DMA_HEAP_SECURE_VIDEO_PLAY;
-	struct tee_rstmem_pool *pool;
-	int rc;
+	struct tee_rstmem_pool *pool = ERR_PTR(-EINVAL);
+	int rc = -EINVAL;
 
-	if (optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_SDP) {
+	if (sdp) {
 		union {
 			struct arm_smccc_res smccc;
 			struct optee_smc_get_sdp_config_result result;
@@ -1634,25 +1701,24 @@ static int optee_sdp_pool_init(struct optee *optee)
 
 		optee->smc.invoke_fn(OPTEE_SMC_GET_SDP_CONFIG, 0, 0, 0, 0, 0, 0,
 				     0, &res.smccc);
-		if (res.result.status != OPTEE_SMC_RETURN_OK) {
-			pr_err("Secure Data Path service not available\n");
-			return 0;
-		}
+		if (res.result.status == OPTEE_SMC_RETURN_OK)
+			pool = tee_rstmem_static_pool_alloc(res.result.start,
+							    res.result.size);
+	}
 
-		pool = tee_rstmem_static_pool_alloc(res.result.start,
-						    res.result.size);
-		if (IS_ERR(pool))
-			return PTR_ERR(pool);
+	if (dyn_sdp && IS_ERR(pool))
+		pool = optee_rstmem_alloc_cma_pool(optee, heap_id);
 
+	if (!IS_ERR(pool)) {
 		rc = tee_device_register_dma_heap(optee->teedev, heap_id, pool);
 		if (rc)
-			goto err;
+			pool->ops->destroy_pool(pool);
 	}
 
+	if (rc && (sdp || dyn_sdp))
+		pr_err("Secure Data Path service not available\n");
+
 	return 0;
-err:
-	pool->ops->destroy_pool(pool);
-	return rc;
 }
 
 static int optee_probe(struct platform_device *pdev)
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
