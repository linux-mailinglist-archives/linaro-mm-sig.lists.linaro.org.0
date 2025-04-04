Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B87AA7BF9C
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 16:38:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D6B944552
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 14:38:33 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lists.linaro.org (Postfix) with ESMTPS id BA1F74582B
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Apr 2025 14:35:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=qNHWRWB0;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.45 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5ed43460d6bso3468589a12.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Apr 2025 07:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743777148; x=1744381948; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5X2I1MlNrc8OtxTMPdYsTmJ1JjM0sba198ISiH4P8wU=;
        b=qNHWRWB0oZKtK5vBI+SlRIvKB0Jeb7tZ4Q2g3ALB02Abdme7S21gOHKrn0DHAjinlv
         joB/tdRYN0oU3ZKM2cgSq71vvMdVmli3j/HcFM81KZ3liV0oExcTOs41I8uKkRVuVtp1
         d/q4E+gcHoycbxT/IsE9zwKzPYV0X2Ekp1HDQGPztskvOV44Yo1ShhiapBYuBnLHUvWy
         i6eRBT5iN3i4K/gZwvJZ2yTMoYM0Bdr0fmJYa1dgU1HX8F5GkND+629RvsomqIUvkBns
         MuceiaDclhjpHNVQ+IwF86osm8t6Tyzz7XFpzHDxzqq7ouxzX038EUvESooe9yljq/El
         nnBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743777148; x=1744381948;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5X2I1MlNrc8OtxTMPdYsTmJ1JjM0sba198ISiH4P8wU=;
        b=OqbnyIGug4OekKzfjNhzgm5tYFYsp8MDe78ZF3MJM/EnuDj5zyWPpVv/OLY4cn2ORA
         aWKryiwvgzuGZSjuByOawKagD7q7tI0BN+ofxelLFKrAKre1YGOs6Wjfb+oDcFcQwHjK
         cyIOHQdOfTwWwx6QI/AceHPIl2duKBhXPvnk23U0vIVfswcYR2EbukaKiWxHejjlSUW1
         IuhGkAe4lX66Pz6+r/hyh0+TkTc2IZWMdaLLWTG3tfRDrmnSSeVOl0vhBfYzlVYl00Ut
         3WNnjaw+1Z0EiKuEoD81+csKzT+LOekxzNufs9ryB9YdGlDPkwyi1XoeXVEPR6WrU56o
         Woig==
X-Forwarded-Encrypted: i=1; AJvYcCUJyhb3DPCo1/rV6bWa4gTvMzIe+7dB2xmFjF/gNxEdkPMFRUqswJ2GbzV5uO+XP4DK4T+H2/p0DDM+c4ng@lists.linaro.org
X-Gm-Message-State: AOJu0YzPghwu9wMrO9RMYc+VKTiLwMRYytv1H9JyjKS12jOP9wsH/cDx
	CsC2Ns+wieedtxNtwKUCGL3eQVyWQauFpbhjKRhUgFYhqz0JSeyFry6IyoY5EShTL/q4ynN7VhI
	Fz1A9xg==
X-Gm-Gg: ASbGncviFx7wunsWHBSanoOt5tyuxWKDP5STVd4qUu5c5hakSDKHims9IsPiP2HurIG
	uexL92ZfQsXodnRp5JhJDppXn2cq3gUJcdfh4ZPQeCcI5oHxuQWvRMHmcPLi63Oq4K6Q+KoZO9D
	c07PpVJ1A1iyEkgqu9zX6/b3h780AVLPdLsS5F3CAZouuvj++y22a+AqtsaUqJbNubZVA9CHhhY
	ajLnIhwvZ5r5tjBCWYNGEbn9FFgAFyzN02d2NMSASAIPnc5eXwBFrQBd8Xb6vv39HM4q4DMdkuN
	xlza3/uD13d+Bko5cCnLSvAPUtod4A58ogFIKRJ3/0vzn60XXJQErGRcaN0em2MAk1OaxvDcNgD
	ZFLeS3qBXnQ4azGRnbXzoFg==
X-Google-Smtp-Source: AGHT+IFkJLuZYKHkFqitQEQ3Yg1FLEq81E4C9if1/VM+Yaec4v2BrToG7RwujiSsE0q6nDmGLkPdOA==
X-Received: by 2002:a05:6402:4415:b0:5e5:e396:3f6e with SMTP id 4fb4d7f45d1cf-5f0b661aaebmr2120030a12.26.1743777148470;
        Fri, 04 Apr 2025 07:32:28 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f087f0a0f3sm2567450a12.43.2025.04.04.07.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 07:32:27 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Fri,  4 Apr 2025 16:31:25 +0200
Message-ID: <20250404143215.2281034-3-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250404143215.2281034-1-jens.wiklander@linaro.org>
References: <20250404143215.2281034-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BA1F74582B
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[22];
	URIBL_BLOCKED(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,mail-ed1-f45.google.com:helo,mail-ed1-f45.google.com:rdns];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[98.128.140.123:received,209.85.208.45:from];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.45:from];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.208.45:from]
X-Spamd-Bar: -
X-Rspamd-Action: no action
Message-ID-Hash: 3NBGGF7OXBG4VFXJLP7SFY4VOU5WFH6V
X-Message-ID-Hash: 3NBGGF7OXBG4VFXJLP7SFY4VOU5WFH6V
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 02/11] optee: pass parent device to tee_device_alloc()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
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
Reviewed-by: Sumit Garg <sumit.garg@kernel.org>
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
