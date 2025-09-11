Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3CAB5347D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 15:53:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0605E4493C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 13:53:23 +0000 (UTC)
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	by lists.linaro.org (Postfix) with ESMTPS id 5A68B44641
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 13:51:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=diTYGopw;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 74.125.224.54 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-601f279a7f5so234978d50.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 06:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757598663; x=1758203463; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YC/jPvTDCH7V0MdE5QEYPuycikAgoYKWyE534nDYx4M=;
        b=diTYGopwJGOxP8BgkH6CkOeXabDGsG3y22iueJAM811jqmqsoy3BuwPuMHOz2LVTi3
         XNKs7CIteyBAbClnNI71oO/KMMVNtl4RB/0rBx1oErGMSa6ZCQAxS57bQjiZb04O7Rvi
         41GGxrsI6YjbXgI/T5c3P8YHuUeG1MCDU2t4XVHWQHAwAniNNdGoOehgKbxT4ma9KDjc
         6G9TvkDdf4iPH41kMgDaQhGQI7AByAkpXZmNcOVD0mlc8lgQj0lg6eVA9B1gGaZ65Mjv
         mHLRixTBVtEWaqgW5FvsYdVDk0cFPsXD0zfpgczoNsmoVRjmJblcVuwcP8zBQM1d5BjX
         yaiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757598663; x=1758203463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YC/jPvTDCH7V0MdE5QEYPuycikAgoYKWyE534nDYx4M=;
        b=bvXx8w41VnHDgdkCqlsOfh8F8gtYuzKsno8wyAE5CBI9QG2P6SXgFh/jrjdcj5bFTX
         r6aLrmBu+MIZcJPmoSzL6TQ4YEs1HnWSCaY3jXW9aOpNTjA/NSgoWhQ+37iGEDfikgsa
         XlAuf/qvC4HLaPJDIQQePwQ6iNckoH4UyRfMr6RKOq1lX7jk0Q2SJIzkmjzeQCZ4nvGt
         GDm2KKpvp83keHjXrkTJpWP/9MQFcE1d5d+QLznzxAE6HVbM1ACRuJl0dS3y+i4yaQMV
         VkGzEMZ36gpL9rAltMuAayMGm1e5FPIx+Bhkh0PfWsX9vhMhTasT4YBbF3x5xY5WRHXY
         6GTw==
X-Forwarded-Encrypted: i=1; AJvYcCUE1ZsRp2Lcq9wkSqrJSEZ+ibvThCfzVPwnBJZ4kpir+x9FGaKZzYGsKy4VGY2LZZSIlYVxZWofFc8rwdgQ@lists.linaro.org
X-Gm-Message-State: AOJu0YyMC+3bLv6/J/8t93uun057/dXZpArfSMyvxgrqvadYWmGVSxbO
	tung9oclsc6icRR4Jd8/an5PrpbECqUGnoI5hzZZTXCpdfsy2Jl0aFOwntfCJlziYG3tLg==
X-Gm-Gg: ASbGncviGzZOK8WNrvgrun3Ul0ZAJA1FVcwoPj8lZFqJ8JKnF14yeeP4Zmn6DW/9IuA
	CsgDatx88UlZ7OfEMwaw4SEY53LifUVXPcb10AdNDXC8o3hJno1AiCA+EPkn/6KudUJc7wqiq++
	WOp7ScdMv0se/HFE8Ee5JkdLlp5O4Blgk07+oJYakRaDmInlnvfJAirzH7dkTF+SyGTaxw7BcRR
	7RgVKEPHqWnkqt/o7YEhCpCaMRfKPL+hSgSbrlxslWdMV84ejgnNI2yVpub4RrgVNYn9Vv6kF76
	J2y1Y2/D3h0Zw1XO2e8QSy6VVVWQ8ulqTubvR3R+UR5Gqg8WR3D6j/Fo9kE7MMC6Qx0OMCZtRI/
	O/QpYlEZnZ05CfuV24zZW9tj8ZY9mkn0A7Y3SQP9541B6/5AATzynksPE59rLg8AFK5IenMiF8U
	Q=
X-Google-Smtp-Source: AGHT+IHZBm0VWF5Q2HiB0+9X7Vnwcu0dm3iI+l+WvOP7Jt3IX2w3wk8CNJ5VHY3b6oDMOP/vs9Jw5w==
X-Received: by 2002:a53:b3c8:0:b0:5fb:957d:d74f with SMTP id 956f58d0204a3-6102163daa0mr12706114d50.3.1757598662617;
        Thu, 11 Sep 2025 06:51:02 -0700 (PDT)
Received: from rayden.urgonet (h-37-123-177-177.A175.priv.bahnhof.se. [37.123.177.177])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-72f7623434csm3526257b3.11.2025.09.11.06.50.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 06:51:01 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Thu, 11 Sep 2025 15:49:50 +0200
Message-ID: <20250911135007.1275833-10-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250911135007.1275833-1-jens.wiklander@linaro.org>
References: <20250911135007.1275833-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: **
X-Rspamd-Queue-Id: 5A68B44641
X-Spamd-Bar: ++
X-Spamd-Result: default: False [2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_VIRUSFREE_BOTNET(2.00)[74.125.224.54:from];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	R_DKIM_ALLOW(0.00)[linaro.org:s=google];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:74.125.0.0/16, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[74.125.224.54:from];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:74.125.0.0/16:c];
	FROM_HAS_DN(0.00)[]
Message-ID-Hash: JZEN6X3ILSN6LVLGAZYIXZZKEVMNTRTY
X-Message-ID-Hash: JZEN6X3ILSN6LVLGAZYIXZZKEVMNTRTY
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Jens Wiklander <jens.wiklander@linaro.org>, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v12 9/9] optee: smc abi: dynamic protected memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JZEN6X3ILSN6LVLGAZYIXZZKEVMNTRTY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add support in the OP-TEE backend driver for dynamic protected memory
allocation using the SMC ABI.

Reviewed-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/optee/smc_abi.c | 78 +++++++++++++++++++++++++++++++++++--
 1 file changed, 75 insertions(+), 3 deletions(-)

diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
index b4c007ed3b94..0be663fcd52b 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -965,6 +965,70 @@ static int optee_smc_do_call_with_arg(struct tee_context *ctx,
 	return rc;
 }
 
+static int optee_smc_lend_protmem(struct optee *optee, struct tee_shm *protmem,
+				  u32 *mem_attrs, unsigned int ma_count,
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
@@ -1216,6 +1280,8 @@ static const struct optee_ops optee_ops = {
 	.do_call_with_arg = optee_smc_do_call_with_arg,
 	.to_msg_param = optee_to_msg_param,
 	.from_msg_param = optee_from_msg_param,
+	.lend_protmem = optee_smc_lend_protmem,
+	.reclaim_protmem = optee_smc_reclaim_protmem,
 };
 
 static int enable_async_notif(optee_invoke_fn *invoke_fn)
@@ -1627,14 +1693,20 @@ static struct tee_protmem_pool *static_protmem_pool_init(struct optee *optee)
 
 static int optee_protmem_pool_init(struct optee *optee)
 {
+	bool protm = optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_PROTMEM;
+	bool dyn_protm = optee->smc.sec_caps &
+			 OPTEE_SMC_SEC_CAP_DYNAMIC_PROTMEM;
 	enum tee_dma_heap_id heap_id = TEE_DMA_HEAP_SECURE_VIDEO_PLAY;
 	struct tee_protmem_pool *pool = ERR_PTR(-EINVAL);
-	int rc;
+	int rc = -EINVAL;
 
-	if (!(optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_PROTMEM))
+	if (!protm && !dyn_protm)
 		return 0;
 
-	pool = static_protmem_pool_init(optee);
+	if (protm)
+		pool = static_protmem_pool_init(optee);
+	if (dyn_protm && IS_ERR(pool))
+		pool = optee_protmem_alloc_dyn_pool(optee, heap_id);
 	if (IS_ERR(pool))
 		return PTR_ERR(pool);
 
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
