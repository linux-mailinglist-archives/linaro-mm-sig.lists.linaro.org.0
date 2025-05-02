Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFD7AA6EAD
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 12:01:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B308454DD
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 10:01:49 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by lists.linaro.org (Postfix) with ESMTPS id B2A0945951
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 May 2025 10:00:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=HGgLcOk2;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.54 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ac29fd22163so312098366b.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 02 May 2025 03:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746180057; x=1746784857; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5X2I1MlNrc8OtxTMPdYsTmJ1JjM0sba198ISiH4P8wU=;
        b=HGgLcOk2M+LnOwokMXXuTbCmFRzybOg0S4MQNud2qOIFCDTbvuspjiAy7Ppg6Wpetw
         0Fm9Z6n+Utq8dRgg4nnTP4/kRVEknJXZBfUfPOITux3PHSxd0WvRCsTDdWthTz4uZMqZ
         +cwmP49rEtuHyy/pmR5FzCRkgDGs4+jWkRLQ05//IYbwqlpajiBFSJb0obBZle9Urq5x
         Dii2Khdu5RGkJ6sVT6yBJj+wQGYgWSBqp4khCXqYOMZgBvzCWBX+a4pCDoWBRMZ6dKo0
         JVZAjzwlFap/DgAZWmmkhwTzivWTz1pKCqeoz5T8rjCm9C1sHqq0+SEj2Jkq18rj1e/M
         sDUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746180057; x=1746784857;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5X2I1MlNrc8OtxTMPdYsTmJ1JjM0sba198ISiH4P8wU=;
        b=lxMJoNHKm2RbjkrnvXfBUWfyKJ0alMKHapYlE5TnKCQbtDJbxRUe3iVfB5DHQ/hYMX
         ml2CIPpL/hMOV3Br4JiV+VyQ+ZpbHCLQjgRL1wxBHv2Bl5e1YIhRsyQ/8woXU6xICCLT
         huu/kVnIZ8Iya7jFCFrWBFOag2BwDL1MoHFEdnxEhAR6TlmNl3aFJ3cjuDwlA+Kg/3Lc
         NN6W/tEVXO/OqipL9QDaec7T7Dkq2FeL6iQbbT/p1jmEftVMZfAUnGTNZAb2stacE5ZB
         M7A7I4ttps10yA+EqqaVuxLMGzy8+MlgQjoF//qJJB6J4WSfPAAR3D8OemMambCdu5IR
         /ZaA==
X-Forwarded-Encrypted: i=1; AJvYcCUAcfxAXbAr8RPkZORWzYe8S/ChMd7oJw6SXdP8cguB+q/eABExSq8P1+CAy6N278TsXcJmvqG01Q/gVKKC@lists.linaro.org
X-Gm-Message-State: AOJu0YwlmsxsofbGt+tFTFoeoh5293gmPXgHQR3k2mtytBoob5bvAtS2
	RfZ7h9hYGDJMicE1AN2rMMUU9jsF/MqWKraceXW7AGb8b95eA5yFdwnjVUNMBMtJAQ==
X-Gm-Gg: ASbGncsmGvx1Hd/8ymF/CpAZ1gHkOK+NARyE0ZhTS4Qh+dOvzafHhMn22wWDLs+Qs17
	G2eY4KAEJNvnPzvh8eqz45u7P1sifAiqGOu4bd1pfB74XO+G/WHSj8k5AT5Go1p3EhN1IHvVnga
	cgP4c6N9ZKc4UJW+4b0adjQZpkzXjJ4MJl1acpMbE6g0uNtW2o64rkWpVjhlwe9YLfKonAa7VWH
	Ke3mlyZXbmytb/W5Dx5lvZ4UCttovQ/RZIAbap0xSZrPdNp+ATLQ2IVdfLjxWunIk4u1T6ul13H
	EhpyQ6E496M1DfqkCDXLM4aYr5tqQR4AnPkE5omWF0i3CRkBTHYS/Y60CwG5kp07fZtZQ9Y2Fj/
	iGisGYxWG92S8tTZBYQ==
X-Google-Smtp-Source: AGHT+IExOoNljerMnP1yPtzh01rTrQJbnwgTFzxXZMgDFfUCD64SgckGTYoDWopJzNJPBPdV4tUdDA==
X-Received: by 2002:a17:906:6a23:b0:ace:ed3b:285e with SMTP id a640c23a62f3a-ad17af80380mr236112866b.56.1746180056392;
        Fri, 02 May 2025 03:00:56 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1891473a1sm26030566b.4.2025.05.02.03.00.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 03:00:55 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Fri,  2 May 2025 11:59:16 +0200
Message-ID: <20250502100049.1746335-3-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502100049.1746335-1-jens.wiklander@linaro.org>
References: <20250502100049.1746335-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B2A0945951
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.54:from];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,linaro.org:mid,linaro.org:email];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: BKCMRUMD6EJOA6MIXOMS3BWHVJ3TURT2
X-Message-ID-Hash: BKCMRUMD6EJOA6MIXOMS3BWHVJ3TURT2
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 02/14] optee: pass parent device to tee_device_alloc()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BKCMRUMD6EJOA6MIXOMS3BWHVJ3TURT2/>
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
