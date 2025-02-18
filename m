Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEF7A3A012
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2025 15:37:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7617245588
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2025 14:37:48 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by lists.linaro.org (Postfix) with ESMTPS id 4F81544981
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2025 14:35:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=WNCcA4zT;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.167.50 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5454f00fc8dso2632927e87.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2025 06:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739889352; x=1740494152; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K8kowqzBNNR30VBKvjQTsvLxpaN4SxkdbGASJgFBpcA=;
        b=WNCcA4zTYtOb6EdXaRm36MXmfNfTqZ8kyckmnt79vmPFUJ1b+D4PX3EmXkT53iYQQ+
         MRr8RgEY5gcUiDQNBQwsH+GUT1L2w0HXaUrRHkX3ahAffKBZG6CC4/VmVV6XwHb8wKuP
         SlDJnK7K2QPy1XAG/lKxCgnviHXvnymj5zbMtKs+NFrzujWQB9l96zVNNTQrbdvnMCFf
         l+c4f+aCbMT3R9WOiq01jfXBtWBFTWGnaPnOMBqQonu/tSdlyC6YNAfvQwMKTnM7W3HW
         5RoIdXKz+Z6JTPVSlnSUJhBRq76SuZmBdgGbzdN03z7m8Kmcr0vDxDsICe0YCW10lbox
         AZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739889352; x=1740494152;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K8kowqzBNNR30VBKvjQTsvLxpaN4SxkdbGASJgFBpcA=;
        b=AHMxMGZ6Ww2khrzY6MOkCq+1f4wDaAPMK9RKywTmuITx7VNL5xiWEGFZI07xwkus0A
         jXrluVG92iWFgdoCjp/FeEnn8PnK483divc/QQvAAC+ZHDB6PRX2yxZ/IXJ6ha9hz0JD
         qRgd9Uh69pQ8UeocjwRpZ/Ivmr62CKA7xUxGXomGyaV7tBhcndiTGDOMY9CMp3J8BzHM
         UEV9hJg41KuksCzaYNzEd6myGS+sIqvjCIrYGvqUmUzTLgpLCZ05TY40XX8A4P1rkmx7
         5LbOLBgpzLoLX+5FcevmLKvNk8SkuTkXnn6WuagUaT55O1oUzVdhtC9NUBAmtXO9tDFz
         NR+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVNua4vfG76VKdfvNiGiDacfMTJdcFRI6diEEquFbFEj6+EWA5SKR2v6vc1jCFsAb9PTX64XdGsirHyufk6@lists.linaro.org
X-Gm-Message-State: AOJu0YxTgKDNo8gdeOzCMMj4JFyACyc9z222Z7UwTQRcay5q7QooydDf
	ER8mu7HoAuRSAedvMnpGG3O+e/YmrbF5i9ODzTNPRRbCdJX2PU7gfssZO8WZK0ohhQ==
X-Gm-Gg: ASbGncszOAO+Bk+oDtt1q9+KwMmf9S4hytyXXoqGvNGr4QuOOeW+z0A/fPydVPNUHZ1
	rFH2pGTg6y3pwyKvoj5hB1hdnnot238vO9AHrRp+hqwc+HvuOifsKQKR9LeA3OCG/49u3vp+4Lj
	HCanWvpcAEWSsUWypzB8ENlk1LUIGJ5vCf6BKGHwbdc1DPUJNXOTlWsvtr14JkWTW6LgjzwkR4l
	Ii19PuO0mUO02X/q2GNvoGjZuKWSTv0Wp+ASgncvsFEltzhArpLIJvE7wowolwtc4Ev35G9o3/u
	41+5Ew3vLSdaKC47u6bhK51LANi+swX+8Jyq37qOP9ddW7wRf92qiH9eFpiitlIktUKK
X-Google-Smtp-Source: AGHT+IG2QSia+pqq7pQb/RgZH7dPW4LfCNk4j/lwNSmjg+mmOj+PY1NlVhF5Eyeo9wfiKu01ckwckA==
X-Received: by 2002:a05:6512:ba6:b0:545:2fa7:5a8b with SMTP id 2adb3069b0e04-5452fe3aaafmr5144347e87.27.1739889351902;
        Tue, 18 Feb 2025 06:35:51 -0800 (PST)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-309311777a8sm12360831fa.25.2025.02.18.06.35.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 06:35:50 -0800 (PST)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Tue, 18 Feb 2025 15:34:56 +0100
Message-ID: <20250218143527.1236668-8-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250218143527.1236668-1-jens.wiklander@linaro.org>
References: <20250218143527.1236668-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4F81544981
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
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,linaro.org:mid,linaro.org:email];
	DKIM_TRACE(0.00)[linaro.org:+];
	RBL_NIXSPAM_FAIL(0.00)[209.85.167.50:server fail];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.50:from];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.167.50:from];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: ZXWL42EPEARTRISI2BDDMZUNSE7CXVFM
X-Message-ID-Hash: ZXWL42EPEARTRISI2BDDMZUNSE7CXVFM
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 7/7] optee: smc abi: dynamic restricted memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZXWL42EPEARTRISI2BDDMZUNSE7CXVFM/>
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
 drivers/tee/optee/smc_abi.c | 76 +++++++++++++++++++++++++++++++++++--
 1 file changed, 73 insertions(+), 3 deletions(-)

diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
index 11589e5120c9..ca0cb5045f5b 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -1001,6 +1001,67 @@ static int optee_smc_do_call_with_arg(struct tee_context *ctx,
 	return rc;
 }
 
+static int optee_smc_lend_rstmem(struct optee *optee, struct tee_shm *rstmem,
+				 u16 *end_points, unsigned int ep_count)
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
+	msg_arg->params[0].u.value.a = OPTEE_MSG_RSTMEM_SECURE_VIDEO_PLAY;
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
@@ -1258,6 +1319,8 @@ static const struct optee_ops optee_ops = {
 	.do_call_with_arg = optee_smc_do_call_with_arg,
 	.to_msg_param = optee_to_msg_param,
 	.from_msg_param = optee_from_msg_param,
+	.lend_rstmem = optee_smc_lend_rstmem,
+	.reclaim_rstmem = optee_smc_reclaim_rstmem,
 };
 
 static int enable_async_notif(optee_invoke_fn *invoke_fn)
@@ -1628,6 +1691,9 @@ static inline int optee_load_fw(struct platform_device *pdev,
 
 static int optee_sdp_pool_init(struct optee *optee)
 {
+	bool dyn_sdp = (optee->smc.sec_caps &
+			OPTEE_SMC_SEC_CAP_DYNAMIC_RSTMEM) &&
+		       IS_ENABLED(CONFIG_CMA) && !IS_MODULE(CONFIG_OPTEE);
 	bool sdp = optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_SDP;
 	struct tee_shm_pool *pool;
 	int rc;
@@ -1635,9 +1701,11 @@ static int optee_sdp_pool_init(struct optee *optee)
 	/*
 	 * optee_sdp_pools_init() must be called if secure world has any
 	 * SDP capability. If the static carvout is available initialize
-	 * and add a pool for that.
+	 * and add a pool for that. If there's an error from secure world
+	 * we complain but don't call optee_sdp_pools_uninit() unless we
+	 * know that there is no SDP capability left.
 	 */
-	if (!sdp)
+	if (!dyn_sdp && !sdp)
 		return 0;
 
 	rc = optee_rstmem_pools_init(optee);
@@ -1654,7 +1722,9 @@ static int optee_sdp_pool_init(struct optee *optee)
 				     0, &res.smccc);
 		if (res.result.status != OPTEE_SMC_RETURN_OK) {
 			pr_err("Secure Data Path service not available\n");
-			goto err;
+			if (!dyn_sdp)
+				goto err;
+			return 0;
 		}
 
 		pool = tee_rstmem_gen_pool_alloc(res.result.start,
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
