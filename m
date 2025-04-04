Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BDCA7BF90
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 16:37:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE60344A64
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 14:37:38 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by lists.linaro.org (Postfix) with ESMTPS id C27A445836
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Apr 2025 14:35:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=K1rpIjTX;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.48 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e6c18e2c7dso4077323a12.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Apr 2025 07:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743777166; x=1744381966; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vPfYhkbEaDQyvItBPqD6f0Sef9tTAM/sN3gZBFbfI4Q=;
        b=K1rpIjTXKO8AyPUlKJk4m1uwmAChO8Jl0P2nZt9K9HjyurT5/sDv03sVc9KcCRhoDt
         vfbUsafOry+xHT1JXUx+JuKfpcp4NXz21dDUM4/9T4cRkedNkT5TMfHXKUPAl+2F1N/d
         SjGeTRh7pmX+xnoVkCN5xkVJ+BbyZxXl5xvUM/M/U8/xS7r6DHjTgzSAS3H0ONYnSfy8
         JbwwRc9KzwkDWrp0pYiMVDp2T5uhIEha+0fGUilPZA3oW8fb/bF8tWDv207dBhIFmMGi
         oKi2vLWIu8NKR6KbU5OKpqmb/zQ5pzdNLTsiCU+/YWQEtGuuk9n1vGuKRi/Ahpx2y66C
         bNQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743777166; x=1744381966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vPfYhkbEaDQyvItBPqD6f0Sef9tTAM/sN3gZBFbfI4Q=;
        b=Mvj/XJQRqvaOjbeyWc/ivJf6RSiAXAJGQyL4duWzkwJkjbgWepGjkCQ9HMYuYfEmap
         bJwJV3h2O+4YxBtoWwVIT2Qp71JFzhMj6zcshW1lR+0z77zfm1GX1jA/8bYkRwcJAzXX
         ej3g9iB1YI1+MVxsGXgW/uNleCY+pDUQbsAxmPY1BEtSaQnjG6Zi7RBjZ/6NjzJ3bWof
         F4OATzQC4EtLXxtEWO1PUeOMr6ZG6WHRL2q9KFvnE8KVVOwvNgJMhUlS0YZuIfd3+K1q
         A1RuNqgD6hDEC/z3gGRorTyaR0fEGRYxjnqWHhnkpBiaKDEY4zduAz2/0yWYpVBjpVC6
         PTSA==
X-Forwarded-Encrypted: i=1; AJvYcCVwRMTieA1fBP6SdHadfvgIT1LIIj5W3WXdGAexG+5KzgW3o66u1NIlGZvQbS9IKM4x5bnGezeAAcRRvdz2@lists.linaro.org
X-Gm-Message-State: AOJu0YzrQPVq0SNjR+qiH2gZRzBaw8J9fuCzV3J+LeRiErcH6KqzDOx9
	+JrOme4LBsEzFZsSDU0w5mURDJ/dbLF2F9D/Rqs5uM6s1BE6fTO2uR9M8WoBvejsQQ==
X-Gm-Gg: ASbGnct7FEZDfXyIChA4k6UrjxKtHxTmpd35CVMAKz7usth9bkR35vooVRjHnmY/EJh
	Trz0aBWzX2vNg3B8jyGVTygYNIE3oKg4QuUjeRM/6fSXSyIJH7Z5rYiKUjlhDXB26PgCe1e/nVL
	ZnPUAbgCtqGYTC/p/jD8sh9tXrmgydT9iSQlQi/pIHfbxPL3baNtjvTjexiLAStf2Xf8xtDewuw
	Y3HltSXkg3NzqzvGbJ3RnVax1lym1odVT8Mu8QjOVOqwAel8nURItF2S+jWtwUvmirlfFCIhgS8
	5nO6SbW22VP3snnvfWacxOK2CgE1lo6qtLfdbun82ocvnV7qXsCw6e1eRmMnd0dg24MDWQarc+a
	EoQLP2NXSwstuz9pzbQdoiA==
X-Google-Smtp-Source: AGHT+IExyXHbOf2taNxw2yz+3CcX0NYoBCdJtwB6sr0Vv5nuFXnktNWKFMtHaLzI32Tb9SdvBjUavw==
X-Received: by 2002:a05:6402:380c:b0:5f0:8551:9790 with SMTP id 4fb4d7f45d1cf-5f0b3bcd2c0mr2481680a12.16.1743777165747;
        Fri, 04 Apr 2025 07:32:45 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f087f0a0f3sm2567450a12.43.2025.04.04.07.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 07:32:45 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Fri,  4 Apr 2025 16:31:34 +0200
Message-ID: <20250404143215.2281034-12-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250404143215.2281034-1-jens.wiklander@linaro.org>
References: <20250404143215.2281034-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C27A445836
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	URIBL_BLOCKED(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,mail-ed1-f48.google.com:helo,mail-ed1-f48.google.com:rdns];
	DKIM_TRACE(0.00)[linaro.org:+];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.208.48:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[98.128.140.123:received,209.85.208.48:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.48:from];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Spamd-Bar: -
X-Rspamd-Action: no action
Message-ID-Hash: IXXLQAOPZPWLZXKWWOP2F43QVU6IT435
X-Message-ID-Hash: IXXLQAOPZPWLZXKWWOP2F43QVU6IT435
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 11/11] optee: smc abi: dynamic protected memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add support in the OP-TEE backend driver for dynamic protected memory
allocation using the SMC ABI.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/optee/smc_abi.c | 102 ++++++++++++++++++++++++++++++------
 1 file changed, 85 insertions(+), 17 deletions(-)

diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
index c10b38b23586..dd9887826590 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -1001,6 +1001,70 @@ static int optee_smc_do_call_with_arg(struct tee_context *ctx,
 	return rc;
 }
 
+static int optee_smc_lend_protmem(struct optee *optee, struct tee_shm *protmem,
+				  u16 *end_points, unsigned int ep_count,
+				  u32 use_case)
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
+	msg_arg->cmd = OPTEE_MSG_CMD_LEND_PROTMEM;
+	msg_arg->params[0].attr = OPTEE_MSG_ATTR_TYPE_VALUE_INPUT;
+	msg_arg->params[0].u.value.a = use_case;
+	msg_arg->params[1].attr = OPTEE_MSG_ATTR_TYPE_TMEM_INPUT;
+	msg_arg->params[1].u.tmem.buf_ptr = protmem->paddr;
+	msg_arg->params[1].u.tmem.size = protmem->size;
+	msg_arg->params[1].u.tmem.shm_ref = (u_long)protmem;
+
+	rc = optee->ops->do_call_with_arg(optee->ctx, shm, offs, false);
+	if (rc)
+		goto out;
+	if (msg_arg->ret != TEEC_SUCCESS) {
+		rc = -EINVAL;
+		goto out;
+	}
+	protmem->sec_world_id = (u_long)protmem;
+
+out:
+	optee_free_msg_arg(optee->ctx, entry, offs);
+	return rc;
+}
+
+static int optee_smc_reclaim_protmem(struct optee *optee,
+				     struct tee_shm *protmem)
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
+	msg_arg->cmd = OPTEE_MSG_CMD_RECLAIM_PROTMEM;
+	msg_arg->params[0].attr = OPTEE_MSG_ATTR_TYPE_RMEM_INPUT;
+	msg_arg->params[0].u.rmem.shm_ref = (u_long)protmem;
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
@@ -1252,6 +1316,8 @@ static const struct optee_ops optee_ops = {
 	.do_call_with_arg = optee_smc_do_call_with_arg,
 	.to_msg_param = optee_to_msg_param,
 	.from_msg_param = optee_from_msg_param,
+	.lend_protmem = optee_smc_lend_protmem,
+	.reclaim_protmem = optee_smc_reclaim_protmem,
 };
 
 static int enable_async_notif(optee_invoke_fn *invoke_fn)
@@ -1620,13 +1686,16 @@ static inline int optee_load_fw(struct platform_device *pdev,
 }
 #endif
 
-static int optee_rstmem_pool_init(struct optee *optee)
+static int optee_protmem_pool_init(struct optee *optee)
 {
+	bool protm = optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_PROTMEM;
+	bool dyn_protm = optee->smc.sec_caps &
+			 OPTEE_SMC_SEC_CAP_DYNAMIC_PROTMEM;
 	enum tee_dma_heap_id heap_id = TEE_DMA_HEAP_SECURE_VIDEO_PLAY;
-	struct tee_protmem_pool *pool;
-	int rc;
+	struct tee_protmem_pool *pool = ERR_PTR(-EINVAL);
+	int rc = -EINVAL;
 
-	if (optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_PROTMEM) {
+	if (protm) {
 		union {
 			struct arm_smccc_res smccc;
 			struct optee_smc_get_protmem_config_result result;
@@ -1634,25 +1703,24 @@ static int optee_rstmem_pool_init(struct optee *optee)
 
 		optee->smc.invoke_fn(OPTEE_SMC_GET_PROTMEM_CONFIG, 0, 0, 0, 0,
 				     0, 0, 0, &res.smccc);
-		if (res.result.status != OPTEE_SMC_RETURN_OK) {
-			pr_err("Secure Data Path service not available\n");
-			return 0;
-		}
+		if (res.result.status == OPTEE_SMC_RETURN_OK)
+			pool = tee_protmem_static_pool_alloc(res.result.start,
+							     res.result.size);
+	}
 
-		pool = tee_protmem_static_pool_alloc(res.result.start,
-						     res.result.size);
-		if (IS_ERR(pool))
-			return PTR_ERR(pool);
+	if (dyn_protm && IS_ERR(pool))
+		pool = optee_protmem_alloc_cma_pool(optee, heap_id);
 
+	if (!IS_ERR(pool)) {
 		rc = tee_device_register_dma_heap(optee->teedev, heap_id, pool);
 		if (rc)
-			goto err;
+			pool->ops->destroy_pool(pool);
 	}
 
+	if (rc && (protm || dyn_protm))
+		pr_info("Protected memory service not available\n");
+
 	return 0;
-err:
-	pool->ops->destroy_pool(pool);
-	return rc;
 }
 
 static int optee_probe(struct platform_device *pdev)
@@ -1823,7 +1891,7 @@ static int optee_probe(struct platform_device *pdev)
 		pr_info("Asynchronous notifications enabled\n");
 	}
 
-	rc = optee_rstmem_pool_init(optee);
+	rc = optee_protmem_pool_init(optee);
 	if (rc)
 		goto err_notif_uninit;
 
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
