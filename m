Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1516299E39F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Oct 2024 12:18:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2235843C71
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Oct 2024 10:18:43 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by lists.linaro.org (Postfix) with ESMTPS id B90F843C8E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Oct 2024 10:17:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=EY27HCNU;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.171 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2fb559b0b00so12992701fa.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Oct 2024 03:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728987457; x=1729592257; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I2ibku35XfRoL4gdWqARoGjujLJu475s8gK+je/2VF8=;
        b=EY27HCNUI8oNJt97EqpoY6V5+650WO2Sz+gBXRiMK8nGz2DAeupjBU8Z/5S/M7LZUw
         3UzL2zIx5zyXjV+t7gY+LYGbzTW4dPtbC+mEh5JIKkCMnkxDUe9WSz+NWQkI6ogYjARg
         IZDxqU+IHdOrwLCfzrcy0c9KGrt/NJto62OrEe08XAN1Xz1faUaNLknUpqw/0JFdTgWo
         9r/mQ2oCPjaEsINnuxY6f6Zx03Lqwdoh0YlaCTKvsnCQPjStxWeLPG/Pg6/3+kW2Ebvl
         CSq1OM4IvHWhFz9bbUgdodJJ6k4k5a8ftjdJdx73HAcUuGGmbEQkGP9mqzw4cjwVwhxg
         Aghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728987457; x=1729592257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I2ibku35XfRoL4gdWqARoGjujLJu475s8gK+je/2VF8=;
        b=K4W3KHXHMAVFWcM6ygVV2SWZpEVvuJeqv1oolEnEagRG3aH1jZfR12U57WNi/1+uNe
         hgRE0CZpEVGw0/dtwlk5hEbREb+8FIbIkg04R48iN9EVroxBabJSzYQ+vTdomIrCGsYR
         txKj0kfW0GR6ualA8logMth93t+KXp3uCwu/ubNMMxPRWUn24EwXA/Eo5DhX1XnRCxYQ
         zqSv+bEGJXCaNt+8uHVDTYoE4wEhEmxdNtBR+shOdlSXxR6AU+ErXRP0wjaFux/U87af
         xmRRg/ssY+DoFwAXAYO7qi9iT/685BeO8yOMPY3A9VEvvL6QGeeUIt41VM7SDSA9zDDA
         eSCg==
X-Forwarded-Encrypted: i=1; AJvYcCWkJAIZV7A8PGR0Qpa6Eh0l7zFih1wcT0I8TcVEKWCl5TTyoXk8U9cd3IflhQ3CmPnQO3HuuJsOFicKA6KY@lists.linaro.org
X-Gm-Message-State: AOJu0YzATvspfcxmb7q1RV+A/6I/GclnaVUL3a2zmYd76sDqrke04ozA
	NmT13TIIG739rMlpNoa+erdX1R9vHV+AZhMJsXv/1FfcEMgHS8xGmw38pJYFD5ELkg==
X-Google-Smtp-Source: AGHT+IF1icYPKVUi+ffxNCNwQ/1dlOgggGFAfeclFmEIheFtkq+viYW9Qa/IQJvlG2RlfXfT8I8gJw==
X-Received: by 2002:a2e:4609:0:b0:2f7:64b9:ff90 with SMTP id 38308e7fff4ca-2fb3f16fad9mr36545921fa.9.1728987457330;
        Tue, 15 Oct 2024 03:17:37 -0700 (PDT)
Received: from rayden.urgonet (h-217-31-164-171.A175.priv.bahnhof.se. [217.31.164.171])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c98d778b80sm519581a12.78.2024.10.15.03.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 03:17:36 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Tue, 15 Oct 2024 12:15:34 +0200
Message-ID: <20241015101716.740829-3-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241015101716.740829-1-jens.wiklander@linaro.org>
References: <20241015101716.740829-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B90F843C8E
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
	URIBL_BLOCKED(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.171:from];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: WETT3ZTAXVX7ADHUBNGGOGA7NGA64K2Z
X-Message-ID-Hash: WETT3ZTAXVX7ADHUBNGGOGA7NGA64K2Z
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH v2 2/2] optee: support restricted memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WETT3ZTAXVX7ADHUBNGGOGA7NGA64K2Z/>
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
 drivers/tee/optee/core.c          | 21 +++++++++++++++
 drivers/tee/optee/optee_private.h |  6 +++++
 drivers/tee/optee/optee_smc.h     | 35 ++++++++++++++++++++++++
 drivers/tee/optee/smc_abi.c       | 45 ++++++++++++++++++++++++++++---
 4 files changed, 104 insertions(+), 3 deletions(-)

diff --git a/drivers/tee/optee/core.c b/drivers/tee/optee/core.c
index 39e688d4e974..b6d5cbc6728d 100644
--- a/drivers/tee/optee/core.c
+++ b/drivers/tee/optee/core.c
@@ -95,6 +95,25 @@ void optee_release_supp(struct tee_context *ctx)
 	optee_supp_release(&optee->supp);
 }
 
+int optee_rstmem_alloc(struct tee_context *ctx, struct tee_shm *shm,
+		       u32 flags, size_t size)
+{
+	struct optee *optee = tee_get_drvdata(ctx->teedev);
+
+	if (!optee->sdp_pool)
+		return -EINVAL;
+	if (flags != TEE_IOC_FLAG_SECURE_VIDEO)
+		return -EINVAL;
+	return optee->sdp_pool->ops->alloc(optee->sdp_pool, shm, size, 0);
+}
+
+void optee_rstmem_free(struct tee_context *ctx, struct tee_shm *shm)
+{
+	struct optee *optee = tee_get_drvdata(ctx->teedev);
+
+	optee->sdp_pool->ops->free(optee->sdp_pool, shm);
+}
+
 void optee_remove_common(struct optee *optee)
 {
 	/* Unregister OP-TEE specific client devices on TEE bus */
@@ -111,6 +130,8 @@ void optee_remove_common(struct optee *optee)
 	tee_device_unregister(optee->teedev);
 
 	tee_shm_pool_free(optee->pool);
+	if (optee->sdp_pool)
+		optee->sdp_pool->ops->destroy_pool(optee->sdp_pool);
 	optee_supp_uninit(&optee->supp);
 	mutex_destroy(&optee->call_queue.mutex);
 }
diff --git a/drivers/tee/optee/optee_private.h b/drivers/tee/optee/optee_private.h
index 424898cdc4e9..1f6b2cc992a9 100644
--- a/drivers/tee/optee/optee_private.h
+++ b/drivers/tee/optee/optee_private.h
@@ -200,6 +200,7 @@ struct optee_ops {
  * @notif:		notification synchronization struct
  * @supp:		supplicant synchronization struct for RPC to supplicant
  * @pool:		shared memory pool
+ * @sdp_pool:		restricted memory pool for secure data path
  * @rpc_param_count:	If > 0 number of RPC parameters to make room for
  * @scan_bus_done	flag if device registation was already done.
  * @scan_bus_work	workq to scan optee bus and register optee drivers
@@ -218,6 +219,7 @@ struct optee {
 	struct optee_notif notif;
 	struct optee_supp supp;
 	struct tee_shm_pool *pool;
+	struct tee_shm_pool *sdp_pool;
 	unsigned int rpc_param_count;
 	bool   scan_bus_done;
 	struct work_struct scan_bus_work;
@@ -340,6 +342,10 @@ void optee_rpc_cmd(struct tee_context *ctx, struct optee *optee,
 int optee_do_bottom_half(struct tee_context *ctx);
 int optee_stop_async_notif(struct tee_context *ctx);
 
+int optee_rstmem_alloc(struct tee_context *ctx, struct tee_shm *shm,
+		       u32 flags, size_t size);
+void optee_rstmem_free(struct tee_context *ctx, struct tee_shm *shm);
+
 /*
  * Small helpers
  */
diff --git a/drivers/tee/optee/optee_smc.h b/drivers/tee/optee/optee_smc.h
index 7d9fa426505b..c3b8a1c204af 100644
--- a/drivers/tee/optee/optee_smc.h
+++ b/drivers/tee/optee/optee_smc.h
@@ -234,6 +234,39 @@ struct optee_smc_get_shm_config_result {
 	unsigned long settings;
 };
 
+/*
+ * Get Secure Data Path memory config
+ *
+ * Returns the Secure Data Path memory config.
+ *
+ * Call register usage:
+ * a0   SMC Function ID, OPTEE_SMC_GET_SDP_CONFIG
+ * a2-6 Not used, must be zero
+ * a7   Hypervisor Client ID register
+ *
+ * Have config return register usage:
+ * a0   OPTEE_SMC_RETURN_OK
+ * a1   Physical address of start of SDP memory
+ * a2   Size of SDP memory
+ * a3   Not used
+ * a4-7 Preserved
+ *
+ * Not available register usage:
+ * a0   OPTEE_SMC_RETURN_ENOTAVAIL
+ * a1-3 Not used
+ * a4-7 Preserved
+ */
+#define OPTEE_SMC_FUNCID_GET_SDP_CONFIG	20
+#define OPTEE_SMC_GET_SDP_CONFIG \
+	OPTEE_SMC_FAST_CALL_VAL(OPTEE_SMC_FUNCID_GET_SDP_CONFIG)
+
+struct optee_smc_get_sdp_config_result {
+	unsigned long status;
+	unsigned long start;
+	unsigned long size;
+	unsigned long flags;
+};
+
 /*
  * Exchanges capabilities between normal world and secure world
  *
@@ -278,6 +311,8 @@ struct optee_smc_get_shm_config_result {
 #define OPTEE_SMC_SEC_CAP_ASYNC_NOTIF		BIT(5)
 /* Secure world supports pre-allocating RPC arg struct */
 #define OPTEE_SMC_SEC_CAP_RPC_ARG		BIT(6)
+/* Secure world supports Secure Data Path */
+#define OPTEE_SMC_SEC_CAP_SDP			BIT(7)
 
 #define OPTEE_SMC_FUNCID_EXCHANGE_CAPABILITIES	9
 #define OPTEE_SMC_EXCHANGE_CAPABILITIES \
diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
index 844285d4f03c..05068c70c791 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -1164,6 +1164,8 @@ static void optee_get_version(struct tee_device *teedev,
 		v.gen_caps |= TEE_GEN_CAP_REG_MEM;
 	if (optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_MEMREF_NULL)
 		v.gen_caps |= TEE_GEN_CAP_MEMREF_NULL;
+	if (optee->sdp_pool)
+		v.gen_caps |= TEE_GEN_CAP_RSTMEM;
 	*vers = v;
 }
 
@@ -1186,6 +1188,8 @@ static const struct tee_driver_ops optee_clnt_ops = {
 	.cancel_req = optee_cancel_req,
 	.shm_register = optee_shm_register,
 	.shm_unregister = optee_shm_unregister,
+	.rstmem_alloc = optee_rstmem_alloc,
+	.rstmem_free = optee_rstmem_free,
 };
 
 static const struct tee_desc optee_clnt_desc = {
@@ -1202,6 +1206,8 @@ static const struct tee_driver_ops optee_supp_ops = {
 	.supp_send = optee_supp_send,
 	.shm_register = optee_shm_register_supp,
 	.shm_unregister = optee_shm_unregister_supp,
+	.rstmem_alloc = optee_rstmem_alloc,
+	.rstmem_free = optee_rstmem_free,
 };
 
 static const struct tee_desc optee_supp_desc = {
@@ -1582,6 +1588,32 @@ static inline int optee_load_fw(struct platform_device *pdev,
 }
 #endif
 
+static int optee_sdp_pool_init(struct optee *optee)
+{
+	struct tee_shm_pool *pool;
+	union {
+		struct arm_smccc_res smccc;
+		struct optee_smc_get_sdp_config_result result;
+	} res;
+
+	if (!(optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_SDP))
+		return 0;
+
+	optee->smc.invoke_fn(OPTEE_SMC_GET_SDP_CONFIG, 0, 0, 0, 0, 0, 0, 0,
+			     &res.smccc);
+	if (res.result.status != OPTEE_SMC_RETURN_OK) {
+		pr_err("Secure Data Path service not available\n");
+		return 0;
+	}
+
+	pool = tee_rstmem_gen_pool_alloc(res.result.start, res.result.size);
+	if (IS_ERR(pool))
+		return PTR_ERR(pool);
+	optee->sdp_pool = pool;
+
+	return 0;
+}
+
 static int optee_probe(struct platform_device *pdev)
 {
 	optee_invoke_fn *invoke_fn;
@@ -1677,7 +1709,7 @@ static int optee_probe(struct platform_device *pdev)
 	optee = kzalloc(sizeof(*optee), GFP_KERNEL);
 	if (!optee) {
 		rc = -ENOMEM;
-		goto err_free_pool;
+		goto err_free_shm_pool;
 	}
 
 	optee->ops = &optee_ops;
@@ -1685,10 +1717,14 @@ static int optee_probe(struct platform_device *pdev)
 	optee->smc.sec_caps = sec_caps;
 	optee->rpc_param_count = rpc_param_count;
 
+	rc = optee_sdp_pool_init(optee);
+	if (rc)
+		goto err_free_optee;
+
 	teedev = tee_device_alloc(&optee_clnt_desc, NULL, pool, optee);
 	if (IS_ERR(teedev)) {
 		rc = PTR_ERR(teedev);
-		goto err_free_optee;
+		goto err_sdp_pool_uninit;
 	}
 	optee->teedev = teedev;
 
@@ -1786,9 +1822,12 @@ static int optee_probe(struct platform_device *pdev)
 	tee_device_unregister(optee->supp_teedev);
 err_unreg_teedev:
 	tee_device_unregister(optee->teedev);
+err_sdp_pool_uninit:
+	if (optee->sdp_pool)
+		optee->sdp_pool->ops->destroy_pool(optee->sdp_pool);
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
