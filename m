Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4584FA3A006
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2025 15:36:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62C984559A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2025 14:36:14 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by lists.linaro.org (Postfix) with ESMTPS id DF894455AA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2025 14:35:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=S6jKKeaZ;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.167.47 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5452d9d0d47so3353074e87.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2025 06:35:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739889340; x=1740494140; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5crKMExrr5c3Q5dXwzY6LzWcqdtMg4U+Mqhx5XRVtIk=;
        b=S6jKKeaZ+0Ve/1gxAPRckNMPMP5Qm1MaGNCVn0vHebJL+QovjPb/PTYrYrDVXsezrl
         2eFxW+1T3FVDRszNQCuKuhLbSE3eVJLZJtIW3I01xtD1j8zhrbMMC8zKkhYZFVnJ0zYs
         XGfjwpfzHbri4iXtRqOVMNq0UftcNDvUTHnwoYZxuCgZt2xOUQmzpXn84NM//ckZm/Ka
         CuY6uKvKsGNf8sSF/xs4aa+8lufqyX00z9SODKbFxqU72aQ7I5kAKYQRIpe1s8pmcUCe
         IhD1TL3Cj2e9bml+0pys3YeKpR9MSQLMaTeEBAX62TcZDuPVR5ERjq8ExZDiZSiZivUk
         V4XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739889340; x=1740494140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5crKMExrr5c3Q5dXwzY6LzWcqdtMg4U+Mqhx5XRVtIk=;
        b=iA3IGydpWHUhDatlwlOrUyzlhbO5I5bmbgB740Myt1USZpSVHCGXaYbrJ/ejKZBaTI
         bKUt45cxtm4swbBF62BubKRzVGBXriRErPx15JwsV/nHoyXvG6+Qnf+qxoOpncmrS6Mg
         YYQWZDSjByn8B3VlR9Tjcw3ylg28Dumv9tpzOyqCe1hqTsye5xlybu8CGtYKnM0FSPV4
         qWfS+uITrx+4o3IG0icosdpiwYwOlU1Ne3JgRxzsbpg4WeyglunXnxRWJPDC/tmqNidP
         xosKVl5KRKDoCqQdExR8jBSukdeqSSKww21hoOZokogeOT+xWGYyquEDaYXj41Ul5Kff
         4aFA==
X-Forwarded-Encrypted: i=1; AJvYcCVbk0jton3poU9gBaTc+Xg4nytrxshOfC1A4Exj3mPNx0dydOASHfEI97maY8Mp8BNXq6Gr/XsqKIMx99aN@lists.linaro.org
X-Gm-Message-State: AOJu0YzbeMeiTR+UTJ655cUbU2D3r0naxYjprmx+BGV7yN4mHkFkmeMS
	Z3x3Jw9kBJQLWh5wHs+AQN71jtlvls5XdMpJgabWsGDMbBExK6aHhaoiP0XNS6hCdw==
X-Gm-Gg: ASbGncvweixhQg2QNFv4DcSvbSYSXdVTWnmNwWX45kFkhpFICmnPHN1Km3PzytqF4vy
	TBXrwZFC9L5La9KRPGsDtbRSHHrpvbnpVxY7n67bnco4R1XP/X/J+8z+BzYsM41lFLXNhMI10K/
	38ITg0qQaV35+meaVm9+JBp4YdwCMBay/nbY8G5y7KAjXb2feQeH6DXg2CHzMRVVENV5Bfu6vhl
	lzufh0aBgA1EymgqlE9uT6Z2c1aDcLxKEguiSRdD4Rjp+YoWRfweJO9Qm2bFjmqoF9pGBy9VTA0
	WZVryqQIOuhV/RNz1xCx++VIYqqFLNVXB3SxEF+jtBiY+MnFjvgq41EVH8w1h67175Is
X-Google-Smtp-Source: AGHT+IGHuwCuQFYm4XQIVFkYY86WrwdSnRz+8agLRLCIecYLWINXh1qm1vFaOFrES19B9Zbg/l5wSA==
X-Received: by 2002:a05:6512:1092:b0:545:a1a:556b with SMTP id 2adb3069b0e04-5452fdb9988mr5179716e87.0.1739889339564;
        Tue, 18 Feb 2025 06:35:39 -0800 (PST)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-309311777a8sm12360831fa.25.2025.02.18.06.35.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 06:35:38 -0800 (PST)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Tue, 18 Feb 2025 15:34:51 +0100
Message-ID: <20250218143527.1236668-3-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250218143527.1236668-1-jens.wiklander@linaro.org>
References: <20250218143527.1236668-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DF894455AA
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch];
	URIBL_BLOCKED(0.00)[mail-lf1-f47.google.com:rdns,mail-lf1-f47.google.com:helo,data.id:url];
	DKIM_TRACE(0.00)[linaro.org:+];
	RBL_NIXSPAM_FAIL(0.00)[209.85.167.47:server fail];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.47:from];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.167.47:from]
X-Rspamd-Action: no action
Message-ID-Hash: BF46XXMIWQ3HY3AIFNQGWJJBN6Z2ELQN
X-Message-ID-Hash: BF46XXMIWQ3HY3AIFNQGWJJBN6Z2ELQN
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 2/7] tee: add TEE_IOC_RSTMEM_FD_INFO
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BF46XXMIWQ3HY3AIFNQGWJJBN6Z2ELQN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add TEE_IOC_RSTMEM_FD_INFO to retrieve information about a previously
allocated restricted memory dma-buf file descriptor. This is needed if
the file descriptor from a restricted memory allocation has been saved
due to limitations in the application.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/tee_core.c    | 31 +++++++++++++++++++++++++++++++
 drivers/tee/tee_private.h |  2 ++
 drivers/tee/tee_rstmem.c  |  8 ++++++++
 include/uapi/linux/tee.h  | 27 +++++++++++++++++++++++++++
 4 files changed, 68 insertions(+)

diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index f4a45b77753b..01a2a9513578 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -848,6 +848,35 @@ tee_ioctl_rstmem_alloc(struct tee_context *ctx,
 	return fd;
 }
 
+static int
+tee_ioctl_rstmem_fd_info(struct tee_context *ctx,
+			 struct tee_ioctl_rstmem_fd_info __user *udata)
+{
+	struct tee_ioctl_rstmem_fd_info data;
+	struct dma_buf *dmabuf;
+	struct tee_shm *shm;
+
+	if (copy_from_user(&data, udata, sizeof(data)))
+		return -EFAULT;
+
+	dmabuf = dma_buf_get(data.fd);
+	if (IS_ERR(dmabuf))
+		return PTR_ERR(dmabuf);
+	shm = tee_rstmem_dmabuf_to_shm(ctx, dmabuf);
+	if (!IS_ERR(shm)) {
+		data.flags = 0;
+		data.use_case = shm->use_case;
+		data.id = shm->id;
+		data.size = shm->size;
+	}
+	dma_buf_put(dmabuf);
+	if (IS_ERR(shm))
+		return PTR_ERR(shm);
+	if (copy_to_user(udata, &data, sizeof(data)))
+		return -EFAULT;
+	return 0;
+}
+
 static long tee_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 {
 	struct tee_context *ctx = filp->private_data;
@@ -874,6 +903,8 @@ static long tee_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		return tee_ioctl_supp_send(ctx, uarg);
 	case TEE_IOC_RSTMEM_ALLOC:
 		return tee_ioctl_rstmem_alloc(ctx, uarg);
+	case TEE_IOC_RSTMEM_FD_INFO:
+		return tee_ioctl_rstmem_fd_info(ctx, uarg);
 	default:
 		return -EINVAL;
 	}
diff --git a/drivers/tee/tee_private.h b/drivers/tee/tee_private.h
index bf97796909c0..b076089b2512 100644
--- a/drivers/tee/tee_private.h
+++ b/drivers/tee/tee_private.h
@@ -25,5 +25,7 @@ struct tee_shm *tee_shm_register_user_buf(struct tee_context *ctx,
 					  unsigned long addr, size_t length);
 struct dma_buf *tee_rstmem_alloc(struct tee_context *ctx, u32 flags,
 				 u32 use_case, size_t size, int *shm_id);
+struct tee_shm *tee_rstmem_dmabuf_to_shm(struct tee_context *ctx,
+					 struct dma_buf *dmabuf);
 
 #endif /*TEE_PRIVATE_H*/
diff --git a/drivers/tee/tee_rstmem.c b/drivers/tee/tee_rstmem.c
index 3b27594ec30b..5108772f3ca0 100644
--- a/drivers/tee/tee_rstmem.c
+++ b/drivers/tee/tee_rstmem.c
@@ -178,3 +178,11 @@ struct dma_buf *tee_rstmem_alloc(struct tee_context *ctx, u32 flags,
 	tee_device_put(teedev);
 	return dmabuf;
 }
+
+struct tee_shm *tee_rstmem_dmabuf_to_shm(struct tee_context *ctx,
+					 struct dma_buf *dmabuf)
+{
+	if (dmabuf->ops != &rstmem_generic_buf_ops)
+		return ERR_PTR(-EINVAL);
+	return dmabuf->priv;
+}
diff --git a/include/uapi/linux/tee.h b/include/uapi/linux/tee.h
index 88834448debb..30ab5bd80a55 100644
--- a/include/uapi/linux/tee.h
+++ b/include/uapi/linux/tee.h
@@ -431,6 +431,33 @@ struct tee_ioctl_rstmem_alloc_data {
 #define TEE_IOC_RSTMEM_ALLOC     _IOWR(TEE_IOC_MAGIC, TEE_IOC_BASE + 10, \
 				       struct tee_ioctl_rstmem_alloc_data)
 
+/**
+ * struct tee_ioctl_rstmem_fd_info - Restricted memory information
+ * @fd:		[in] File descriptor returned from the previous allocation
+ * @flags:	[out] Flags from the allocation
+ * @use_case:	[out] Restricted memory use case, TEE_IOC_UC_*
+ * @id:		[out] Identifier of the restricted memory
+ * @size:	[out] Size of the restricted memory
+ */
+struct tee_ioctl_rstmem_fd_info {
+	__s32 fd;
+	__u32 flags;
+	__u32 use_case;
+	__s32 id;
+	__u64 size;
+};
+
+/**
+ * TEE_IOC_RSTMEM_FD_INFO - get restricted memory information from an fd
+ *
+ * Returns information about a previously allocated restricted memory
+ * dma-buf file descriptor.
+ *
+ * Returns 0 on success or < 0 on failure
+ */
+#define TEE_IOC_RSTMEM_FD_INFO	_IOWR(TEE_IOC_MAGIC, TEE_IOC_BASE + 11, \
+				      struct tee_ioctl_rstmem_fd_info)
+
 /*
  * Five syscalls are used when communicating with the TEE driver.
  * open(): opens the device associated with the driver
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
