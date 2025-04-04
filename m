Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8143BA7BF95
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 16:37:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A34284495B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 14:37:53 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id BC7CB4582D
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Apr 2025 14:35:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=VkKIzpF8;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.53 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e677f59438so3334666a12.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Apr 2025 07:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743777146; x=1744381946; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ItVLbwXh6klaFZ4DOTZKuJkyifurR/QGuqAr/eTlGU=;
        b=VkKIzpF87mp4xc+164BqjaeKRd33pIDFosXTc2gZ2HMPQD95SACewAKW8kJUOmn+12
         kiRzCnqs3BpZOhF0DNj9NF7AR/IoalhKv7PYoznXvpDdpn25l8rRo+FWBClWYFKghVis
         PYK2lrx0BEQjLNPqWDptTk6k39HxbFqoGz3Uu1V2OlTuFsV5gvrCrdr7SQX6tkb9MmYz
         VblK/OT+6/G18vXxdriyR0rcF+pn3jLyqt32j8HY6jnUu/WfSi5V88YvTe2ymA+BSVz1
         qUE31XzDRPIKkZYmomrVzjv6eAwKKT8czLBbHefwkWHKNnw1S2uB/ERdgrgKjn/0mYb9
         of8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743777146; x=1744381946;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ItVLbwXh6klaFZ4DOTZKuJkyifurR/QGuqAr/eTlGU=;
        b=kVl1HNtd+YNmN06K2iqYKp7YxgLtliseGMb5tj4q16LcBvPKloeuQPZyXyJun1QHOf
         2mqt6dTtqdIIF2u0/lIvZcwMPzAwLap98goA6YRJQrHB6vvJExLekjeLOcKakVwzpwdQ
         6nwlZOY2dvbNOgTyj4vocg200RJAFYH7ijlLXvbq/KT2ACxKbewxyu35kepVOLRuzO05
         UmNzp1zInqU/Wa+wNors20w1xesCpZrT69ShyP1H9qjAQOa6GiSoiGin0LMXhPdnD2U3
         NWvgS7puxESz/4nuqGXrRk5gHQvQct7dj+E8ImQ2rZD8EkFV92tpz7lR2+Hn/21dwg1l
         i9Ew==
X-Forwarded-Encrypted: i=1; AJvYcCUWcEGetZxiuH2M+R+M7chOmKMRibLY3cWxHiuzvad/WpK/33A0fSl1B7yBN/AYo1KTF/A7HiilWhg3x7EE@lists.linaro.org
X-Gm-Message-State: AOJu0YxHs2IophBZnxeXz4Cgan/EpFIMHfyKLhlKUQZR8rCLBk4WgxG/
	VGRUf0P5/NaGMsWNR9SNWE97n4jZvWelsFsgjSaRQj2dubXsC11fiUiNK4teJTCpGF/O7x76dQN
	Qf1p0yg==
X-Gm-Gg: ASbGncuB40e+mKZqR26zqUc+jEwD+FD9ERsjxIM3uGaU9RtcODIRkDr0PHd6+8mAF5E
	u6CB1jJm9yaR9zCaIQ34Py/E6TQZoWi6VNJsnXS+2qA1CChACpFkTbv1Aqps2VVVEd3IKvt1moG
	PvRPB2xEyxcHvdxbPPen3HD/vWbVIA22He8KyitNDhTA43azKVxyaFI+GVHu8ED4T4pybGZ6cf0
	zUR3nBhLbMEnmyXnXEPHNbd/Sk5uDUo8lKgqswn7vrn5fPZc/coXBhRYPqSIjagk8TUILGpnD8a
	oIe79maizQ6MRCZ7lhPtHHP0FC3RIKrJ+2mTtysgzPq7SIUmQTx4HWPTSFj7CKj9HHx+aKsLrs4
	vdBYjUg8PE+DNvmpqKvXPWg==
X-Google-Smtp-Source: AGHT+IHJ/1I/ptH3pCVDAQfcdNx5KHUGy5Tb2VN4inalxBPszr0OVkQ817HOYwXzW+KxBXdP3/CVtg==
X-Received: by 2002:a05:6402:234e:b0:5e7:b081:aa7c with SMTP id 4fb4d7f45d1cf-5f0b5ebbc4emr2568089a12.12.1743777145883;
        Fri, 04 Apr 2025 07:32:25 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f087f0a0f3sm2567450a12.43.2025.04.04.07.32.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 07:32:25 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Fri,  4 Apr 2025 16:31:24 +0200
Message-ID: <20250404143215.2281034-2-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250404143215.2281034-1-jens.wiklander@linaro.org>
References: <20250404143215.2281034-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BC7CB4582D
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[22];
	URIBL_BLOCKED(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,mail-ed1-f53.google.com:helo,mail-ed1-f53.google.com:rdns];
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
	DNSWL_BLOCKED(0.00)[98.128.140.123:received,209.85.208.53:from];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.53:from];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.208.53:from]
X-Spamd-Bar: /
X-Rspamd-Action: no action
Message-ID-Hash: U2PENVHK5D2NPIQQSSR2PKI5H5VZU3LS
X-Message-ID-Hash: U2PENVHK5D2NPIQQSSR2PKI5H5VZU3LS
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 01/11] tee: tee_device_alloc(): copy dma_mask from parent device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
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
Reviewed-by: Sumit Garg <sumit.garg@kernel.org>
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
