Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CADBCA4FF93
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Mar 2025 14:07:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0183D44D48
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Mar 2025 13:07:20 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by lists.linaro.org (Postfix) with ESMTPS id 6DD3D44179
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Mar 2025 13:06:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=uAeRqR3i;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.49 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e04064af07so12695702a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Mar 2025 05:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741180002; x=1741784802; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BvA69GRM940nbh4WvjTd5eG8jH1Ow0PBoCzHHS2i3Ls=;
        b=uAeRqR3iIebgWm3GLWID/SVq5UBXnJi+piMASnlf2GD37clQL/GsjDIBI9WfktfJMk
         pkbDz8Bhktv9ZW7akNkPpc6S7i+FS01zQSpEJNaoegDG2DNbDqZTPT2u1yifZjAg82+k
         +sSp3T2HCVyttsA4PYVO73Jq0/oNveR2teWhdX5sfJYSdBpsbH21dPf7PRpnsnfrvNYE
         +UoUcjlVBZ01dpx022pfMx4oQHtU3kwQi7BdFxJ0kLndPlDHWzFX/g0brrzVYHNyMujZ
         7gfFDdBqFrleWRxJQItCMHFz3Gspy5yEplhcaA3i4+8h/m1Q70I7Kl0o7MZlrSOAYZ3c
         Uh6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741180002; x=1741784802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BvA69GRM940nbh4WvjTd5eG8jH1Ow0PBoCzHHS2i3Ls=;
        b=DFrZZMHMWLafAof/e+YAqBclcfT+XtNJPgNKmKB0EWelSMfAGlPmX7ewDV1tjeDkM4
         C5WgUn1MSBnt0fKKVAxa9dkqQfmlqSGyfGOucbT91O3s3GgcfMKTfVwxPFaqpSEn94Pj
         UWp2qyuPCpaqb4gZVjapgIAk0FKz3aGjcnzJN9QoXL/fWH4kyB+rs29HPXQcozGstWxZ
         /6uiUFTam4qYwmV2sX+elDh5HHMOdEhypb7dy0K5deXb7fpHegwkGGCcOBuXTPKYHtwN
         YpEZCU5EiI4tB1jaI+8GympCXG9OzmE9TKKqhHXldnIQu3jHdWcYbrSqONYBw1AYtsUI
         BWrw==
X-Forwarded-Encrypted: i=1; AJvYcCWd3mra/knAC+/ARjNPrpme79MZ8yVT4Th2e39BJ4rJQQwOJl0Lom4TcgYu8jS+mn+CiveKvIHAgpUdCZZ4@lists.linaro.org
X-Gm-Message-State: AOJu0YxzH6ymG/7xh0c4JIi7rzOMJq6QbhNJF54ViQo799nEMmhq0hKA
	an94kRYWPmZYne0xip/nZB5EMF+UkB1GC2+zTGcE/W8ddnJbEy3HAJ2zLRvalz6FUw==
X-Gm-Gg: ASbGncsR1HXdyMrUeElug4j6qO+G1vYaAX5GgDvCxDtGnq1SCrP+QTg5CDfZRnK9YV0
	4cXGm1x8AW00U+2Il4W4jbW4q+VHZDAJJ1BSRMNaIQurRXzvP1B131J4IUZ/c0t+VcPeFc/nFZy
	FcBInVX6790Z1Oil7Q1/8gwp/W/4c2grKWSxPJaO92CdqbBtO5vo80wd2lKF5nLsImmzVWPAyTC
	3wYZTCkpJgpA+OH6/Gp/nzXKnfxn5fExgd2vp+h5Ik1bzugi+F+bWnCNNy7WtQCb1kfWAaszUsi
	oVHZdc6HgZzsck132wjjzK98yaV/XEkiHyc3BN3O/WpGEzh8mbetv76rX3weyLPHq3d1QnzA3Rf
	8dwIcBftsAMFcVJI/DdzP8Q==
X-Google-Smtp-Source: AGHT+IEjtiBAYCTH0+e95UXzOpV6Qk/1lP6TuM4iQbwFmlqCq9fGF9wURhaIIhsi+UMHMk8/oJkTeQ==
X-Received: by 2002:a50:c8cd:0:b0:5e5:bcd6:4ad8 with SMTP id 4fb4d7f45d1cf-5e5bcd64d5amr155764a12.9.1741180002364;
        Wed, 05 Mar 2025 05:06:42 -0800 (PST)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5bcd1595bsm65714a12.42.2025.03.05.05.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 05:06:41 -0800 (PST)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Wed,  5 Mar 2025 14:04:07 +0100
Message-ID: <20250305130634.1850178-2-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250305130634.1850178-1-jens.wiklander@linaro.org>
References: <20250305130634.1850178-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6DD3D44179
X-Spamd-Bar: /
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.208.49:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[98.128.140.123:received,209.85.208.49:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.49:from];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: HW75SYII5JB5IDFQXGH5BFW6JBL7MYR6
X-Message-ID-Hash: HW75SYII5JB5IDFQXGH5BFW6JBL7MYR6
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 01/10] tee: tee_device_alloc(): copy dma_mask from parent device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HW75SYII5JB5IDFQXGH5BFW6JBL7MYR6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If a parent device is supplied to tee_device_alloc(), copy the dma_mask
field into the new device. This avoids future warnings when mapping a
DMA-buf for the device.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/tee_core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index d113679b1e2d..685afcaa3ea1 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -922,6 +922,8 @@ struct tee_device *tee_device_alloc(const struct tee_desc *teedesc,
 	teedev->dev.class = &tee_class;
 	teedev->dev.release = tee_release_device;
 	teedev->dev.parent = dev;
+	if (dev)
+		teedev->dev.dma_mask = dev->dma_mask;
 
 	teedev->dev.devt = MKDEV(MAJOR(tee_devt), teedev->id);
 
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
