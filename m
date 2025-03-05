Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D99A4FF94
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Mar 2025 14:07:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60D1544B23
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Mar 2025 13:07:34 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id 1652743C7C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Mar 2025 13:06:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=lx53Sle4;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.46 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5e5b572e45cso573570a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Mar 2025 05:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741180005; x=1741784805; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g64carhpN86lM7kPnuUc7tjq3kR3ZxlKeoOmJi6Slgs=;
        b=lx53Sle4m5bOscq7zRGJuRUbRybb2lkzW9MVxfLWIEz6UayhfnsBjlMwbOxFjsyxO2
         zYVEq2Zjh/6H4NTyxK3jXNj/yQ+i0fxthF/g7GVTfk+bncKSk6G8mTVUBBwq3Mx+DlRI
         CsvPtLiYQ4zYHEmOQEerlsy4fNSp6tKchH5UGsXS3d+3zTrvbAPR+PE30Oz7jWdVHhw3
         g3jCkw79jBD7wi+5DxUQ6bF1+YJUWIq0rS3XC5J11y5CFc4elhUiwC6AwKVwHgCa2QP6
         POj6smWwgUXKAsLODscKV09PFuq+V1fakEzpyEBPL7hRFz66We4pKRWzy9yLmGGdgRe1
         SWrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741180005; x=1741784805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g64carhpN86lM7kPnuUc7tjq3kR3ZxlKeoOmJi6Slgs=;
        b=W0N2zep6aA67re8ZvTXmObgKDBffy2JdoJ8CVTCywrxlwTQOdDiZrNH+PQ26UwEwkG
         cK9IIyY9E6NrlI4X9dYlvk8pSm8RSu7Z6xjM99xysWKyhg2nKc3/b9SB3vtSDuJC7gul
         vvy4R5ixyNHpjOsBneKHgs5KgVsrpr1at/K7GA/N1yLRL250vajoP/DDq5l9wAohXCax
         wiqkmDehgC5nP27FTLLuFlhoJRYe7zSPfh/vCWmALk5wdY7vKUT/iQEjhh5xBB7rTrXh
         31i4civNrhf4+nFDtHJuIOgqd1gVBpMGOZbXqSzVVQioQB3NrnyGY6asRnrOvHlr4WBs
         9ufQ==
X-Forwarded-Encrypted: i=1; AJvYcCVot5OoaitG9ypoazr2t2X8SEcaHTt1YKtQ8nJbcdT5nlp7oli99Ljils69EUhAQ7ADsCE9CUbKa8iafmFo@lists.linaro.org
X-Gm-Message-State: AOJu0Yz6JCAyAk9i7ZZcQLujH71mrscgwXJ7sIHEGQOPcxDY28JL9Rp/
	NthnoPbUYFHzhi3dJ9QZU9tig41pl38Vp4PMugyy2hJEq/RcAudgHUGBt75wMRh54A==
X-Gm-Gg: ASbGncsRq/vgppsgQIS4pKiOEQRA4zFvDILORn3OKB3av4n9SaUOp4h71+z/Z5nTB0i
	naoneWwk/iXuFt2cg0bi0IHE7tzqALJAmB4yqkud//dTblKIH/i1vyaTQ4pNy77UfZ3+EgCqtuJ
	4NwGYJMyXpEPtrQuLuIRLkSUGpstueHWxanjjpn4ug8q6JrbTQwSfKGm1c17uJDlMQ1EUxC49uK
	vFJbtXfQzjJxCk/P3Q+1j22zGgMdBSSZENEhzVp++5B/nkofp/+/4Z9o/zNHuKa0W6ALeTg8h15
	PdHaO+KJ526sh0XCviVyo4/3J/v38liBkG+jUp1bVP+dazN8zraoj7r4097hCvYdJcq+E+abX0F
	0YH8D6DDEN1u3WsjuKFDUmw==
X-Google-Smtp-Source: AGHT+IHAJQdH7f8KJt+R2ffDvxbc7sUQ+b3jomBMCSiokLRmAxj8briZ+1p+KDuEOOHd7BerJyZSMw==
X-Received: by 2002:a05:6402:5203:b0:5e1:9725:bb3e with SMTP id 4fb4d7f45d1cf-5e59f4869femr3345168a12.28.1741180005006;
        Wed, 05 Mar 2025 05:06:45 -0800 (PST)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5bcd1595bsm65714a12.42.2025.03.05.05.06.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 05:06:44 -0800 (PST)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Wed,  5 Mar 2025 14:04:08 +0100
Message-ID: <20250305130634.1850178-3-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250305130634.1850178-1-jens.wiklander@linaro.org>
References: <20250305130634.1850178-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1652743C7C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.208.46:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	R_DKIM_ALLOW(0.00)[linaro.org:s=google];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[98.128.140.123:received,209.85.208.46:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.46:from];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 2MEUE7FYZWWYCZOQ2YUNE6LHWVLVIAD5
X-Message-ID-Hash: 2MEUE7FYZWWYCZOQ2YUNE6LHWVLVIAD5
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 02/10] optee: pass parent device to tee_device_alloc()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2MEUE7FYZWWYCZOQ2YUNE6LHWVLVIAD5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

During probing of the OP-TEE driver, pass the parent device to
tee_device_alloc() so the dma_mask of the new devices can be updated
accordingly.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/optee/ffa_abi.c | 8 ++++----
 drivers/tee/optee/smc_abi.c | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/tee/optee/ffa_abi.c b/drivers/tee/optee/ffa_abi.c
index f3af5666bb11..4ca1d5161b82 100644
--- a/drivers/tee/optee/ffa_abi.c
+++ b/drivers/tee/optee/ffa_abi.c
@@ -914,16 +914,16 @@ static int optee_ffa_probe(struct ffa_device *ffa_dev)
 	    (sec_caps & OPTEE_FFA_SEC_CAP_RPMB_PROBE))
 		optee->in_kernel_rpmb_routing = true;
 
-	teedev = tee_device_alloc(&optee_ffa_clnt_desc, NULL, optee->pool,
-				  optee);
+	teedev = tee_device_alloc(&optee_ffa_clnt_desc, &ffa_dev->dev,
+				  optee->pool, optee);
 	if (IS_ERR(teedev)) {
 		rc = PTR_ERR(teedev);
 		goto err_free_pool;
 	}
 	optee->teedev = teedev;
 
-	teedev = tee_device_alloc(&optee_ffa_supp_desc, NULL, optee->pool,
-				  optee);
+	teedev = tee_device_alloc(&optee_ffa_supp_desc, &ffa_dev->dev,
+				  optee->pool, optee);
 	if (IS_ERR(teedev)) {
 		rc = PTR_ERR(teedev);
 		goto err_unreg_teedev;
diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
index f0c3ac1103bb..165fadd9abc9 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -1691,14 +1691,14 @@ static int optee_probe(struct platform_device *pdev)
 	    (sec_caps & OPTEE_SMC_SEC_CAP_RPMB_PROBE))
 		optee->in_kernel_rpmb_routing = true;
 
-	teedev = tee_device_alloc(&optee_clnt_desc, NULL, pool, optee);
+	teedev = tee_device_alloc(&optee_clnt_desc, &pdev->dev, pool, optee);
 	if (IS_ERR(teedev)) {
 		rc = PTR_ERR(teedev);
 		goto err_free_optee;
 	}
 	optee->teedev = teedev;
 
-	teedev = tee_device_alloc(&optee_supp_desc, NULL, pool, optee);
+	teedev = tee_device_alloc(&optee_supp_desc, &pdev->dev, pool, optee);
 	if (IS_ERR(teedev)) {
 		rc = PTR_ERR(teedev);
 		goto err_unreg_teedev;
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
