Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AJ6EpsL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:17:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7F141188D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:17:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 02F76405CF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:17:30 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id DFBC73F809
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 17:44:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of tomeu.vizoso@gmail.com designates 209.85.218.45 as permitted sender) smtp.mailfrom=tomeu.vizoso@gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b87113bd83bso453849866b.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 09:44:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768326299; x=1768931099;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eavvu1t15qKvDTI2jSsLTlj8ivnyPIJR0TkymEC1eF0=;
        b=hTQphfcHYSOdsHsqJVUvcJz0hDtYE5coizSmwIhg6dujdRSzJD8vF7wC7x2onVHiOd
         sJnzUGGFbftN5cDGIc8dWDzQhw4SsP2pIm3Hq2T2ieADxBOHoZuAluvWJAmjyIbxDdDF
         g3QFClv4k8msH5oOmrM7q8n646Mlgc6epPN/UVw86+jOXPqj74Q89f4T/4VB39pDqyBT
         d8x7H3RdBeSDY+c3+92sMuHaEtH1puvOAF81tdCcBmEeF2S9HIqJD9E1yJCGjxle96An
         f/8E0LMHB72DDFzkdxMSukzzOZSWWMT+aoyEL+EuutGHNY9KFeMplywOA5ZRaCK5g9k7
         Qxvw==
X-Forwarded-Encrypted: i=1; AJvYcCXxKF61kLx9cDgC4meqKyNHDUngY2Md1YMPzyYWK/ooXngV40ArqqT9dN3gnnAL+2PxOVBLLnufq1xUsCP4@lists.linaro.org
X-Gm-Message-State: AOJu0Yyt36DV3nt37+OOBLMDGbB602P7dGsPE8CmeEZ1vg4FQSNkTEGT
	WhSg+v2hIe0ID7YKdqAwrPtz4bBKP0zqG+1U8q1HpqojzRHR1m6aMXZR
X-Gm-Gg: AY/fxX4KMYXkE9tjQN6bAgXxWsqLbUrpbIQIh1EdEGtkWIZMhdgTsaNTKnU4QroRF3m
	nClqbmwP59YvLTi5qMZFuOurn1hrarmGvTlIcwmRXoFa/S29d5rHmhLUgNr2e9w06vCDNHVQPUp
	W0jAUCKykF7AZ8iXwGkJiadJvsEumgFsjdAFYniLStgbIvVA36y6ibmmYB10Kqk+AB6OzojTHqr
	dr9dQgyJqhBcumPld8kWGd2od8QZ/FhEjiQ3lDSnGUHRRq3yrrV8OBIYvhMQldfyWzEP560ZnDb
	pM9oRnKxWF3qdG5I84POahRW9jKPT86ZHNH+v3XthY/Q/Lhv9DYpzQYjXwzjshaLY+S77wVxtGc
	O2nZX49tFIozRAPTXG/jUPxCzeFyEYdB0cITrtj7VX/tF6zPFp3fUbkCNReGrcQYqxpVhYU2J9Q
	Z7djVTNrsHaJsbFFKwOTOOX+p+U8HFm3MXm35Lh+RO5VzeqQ==
X-Google-Smtp-Source: AGHT+IHjwdSSN4mTRKXDjSC9xCBKsqwskTn4GwaR+B+tRXZTp9WDKqbrL/GHsxrwpYwUo4qku7MY+g==
X-Received: by 2002:a17:907:7742:b0:b87:1eaf:377c with SMTP id a640c23a62f3a-b871eaf3facmr466107266b.38.1768326298728;
        Tue, 13 Jan 2026 09:44:58 -0800 (PST)
Received: from [10.42.0.1] (cst-prg-36-231.cust.vodafone.cz. [46.135.36.231])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be655aesm20873259a12.17.2026.01.13.09.44.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 09:44:57 -0800 (PST)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Tue, 13 Jan 2026 18:44:39 +0100
MIME-Version: 1.0
Message-Id: <20260113-thames-v1-5-99390026937c@tomeuvizoso.net>
References: <20260113-thames-v1-0-99390026937c@tomeuvizoso.net>
In-Reply-To: <20260113-thames-v1-0-99390026937c@tomeuvizoso.net>
To: Nishanth Menon <nm@ti.com>, "Andrew F. Davis" <afd@ti.com>,
 Randolph Sapp <rs@ti.com>, Jonathan Humphreys <j-humphreys@ti.com>,
 Andrei Aldea <a-aldea@ti.com>, Chirag Shilwant <c-shilwant@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.2
X-Spamd-Bar: ---
X-MailFrom: tomeu.vizoso@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IDIUB6R35DTS56FQ4MVDXFFRR7VJUM6W
X-Message-ID-Hash: IDIUB6R35DTS56FQ4MVDXFFRR7VJUM6W
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:11:55 +0000
CC: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 5/5] accel/thames: Add IOCTL for memory synchronization
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IDIUB6R35DTS56FQ4MVDXFFRR7VJUM6W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[2230];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[tomeuvizoso.net];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[tomeu@tomeuvizoso.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,tomeuvizoso.net:mid,tomeuvizoso.net:email]
X-Rspamd-Queue-Id: DD7F141188D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The DSP cores have their own access to the memory bus, and it isn't
cache coherent with the CPUs.

Add IOCTLs so userspace can mark when the caches need to be flushed, and
also when a writer job needs to be waited for before the buffer can be
accessed from the CPU.

Initially based on the same IOCTLs from the Etnaviv driver.

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 drivers/accel/thames/thames_drv.c |  2 ++
 drivers/accel/thames/thames_gem.c | 52 +++++++++++++++++++++++++++++++++++++++
 drivers/accel/thames/thames_gem.h |  4 +++
 3 files changed, 58 insertions(+)

diff --git a/drivers/accel/thames/thames_drv.c b/drivers/accel/thames/thames_drv.c
index bf7355832241d5a671e196f465d891effaa4a8fb..9b72db433fbb8f9239a16a047a52520f0a01d125 100644
--- a/drivers/accel/thames/thames_drv.c
+++ b/drivers/accel/thames/thames_drv.c
@@ -76,6 +76,8 @@ static const struct drm_ioctl_desc thames_drm_driver_ioctls[] = {
 	THAMES_IOCTL(BO_CREATE, bo_create),
 	THAMES_IOCTL(BO_MMAP_OFFSET, bo_mmap_offset),
 	THAMES_IOCTL(SUBMIT, submit),
+	THAMES_IOCTL(BO_PREP, bo_prep),
+	THAMES_IOCTL(BO_FINI, bo_fini),
 };
 
 DEFINE_DRM_ACCEL_FOPS(thames_accel_driver_fops);
diff --git a/drivers/accel/thames/thames_gem.c b/drivers/accel/thames/thames_gem.c
index a153e73a15253e0f955d74020b4765a1fa833fc4..2ad5a62bea275eb38a96b9d9bea804ed94ffb011 100644
--- a/drivers/accel/thames/thames_gem.c
+++ b/drivers/accel/thames/thames_gem.c
@@ -353,3 +353,55 @@ int thames_ioctl_bo_mmap_offset(struct drm_device *ddev, void *data, struct drm_
 
 	return 0;
 }
+
+int thames_ioctl_bo_prep(struct drm_device *ddev, void *data, struct drm_file *file)
+{
+	struct drm_thames_bo_prep *args = data;
+	struct drm_gem_object *gem_obj;
+	struct drm_gem_shmem_object *shmem_obj;
+	unsigned long timeout = drm_timeout_abs_to_jiffies(args->timeout_ns);
+	long ret = 0;
+
+	if (args->reserved != 0)
+		return -EINVAL;
+
+	gem_obj = drm_gem_object_lookup(file, args->handle);
+	if (!gem_obj)
+		return -ENOENT;
+
+	ret = dma_resv_wait_timeout(gem_obj->resv, DMA_RESV_USAGE_WRITE, true, timeout);
+	if (!ret)
+		ret = timeout ? -ETIMEDOUT : -EBUSY;
+
+	shmem_obj = &to_thames_bo(gem_obj)->base;
+
+	dma_sync_sgtable_for_cpu(ddev->dev, shmem_obj->sgt, DMA_FROM_DEVICE);
+
+	drm_gem_object_put(gem_obj);
+
+	return ret;
+}
+
+int thames_ioctl_bo_fini(struct drm_device *ddev, void *data, struct drm_file *file)
+{
+	struct drm_thames_bo_fini *args = data;
+	struct drm_gem_shmem_object *shmem_obj;
+	struct thames_gem_object *thames_obj;
+	struct drm_gem_object *gem_obj;
+
+	if (args->reserved != 0)
+		return -EINVAL;
+
+	gem_obj = drm_gem_object_lookup(file, args->handle);
+	if (!gem_obj)
+		return -ENOENT;
+
+	thames_obj = to_thames_bo(gem_obj);
+	shmem_obj = &thames_obj->base;
+
+	dma_sync_sgtable_for_device(ddev->dev, shmem_obj->sgt, DMA_TO_DEVICE);
+
+	drm_gem_object_put(gem_obj);
+
+	return 0;
+}
diff --git a/drivers/accel/thames/thames_gem.h b/drivers/accel/thames/thames_gem.h
index 785843c40a89a9e84ab634aad77e9ec46111693e..e5a8278e98c578c2903cf23aea1bf887be0389e8 100644
--- a/drivers/accel/thames/thames_gem.h
+++ b/drivers/accel/thames/thames_gem.h
@@ -29,6 +29,10 @@ int thames_ioctl_bo_create(struct drm_device *ddev, void *data, struct drm_file
 
 int thames_ioctl_bo_mmap_offset(struct drm_device *ddev, void *data, struct drm_file *file);
 
+int thames_ioctl_bo_prep(struct drm_device *ddev, void *data, struct drm_file *file);
+
+int thames_ioctl_bo_fini(struct drm_device *ddev, void *data, struct drm_file *file);
+
 int thames_context_create(struct thames_file_priv *priv);
 
 void thames_context_destroy(struct thames_file_priv *priv);

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
