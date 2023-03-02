Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 766846A8DAB
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 00:56:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7AC5F40E1B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Mar 2023 23:55:59 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by lists.linaro.org (Postfix) with ESMTPS id 13DE83F546
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Mar 2023 23:54:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=BTpenYir;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.50 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id y2so801691pjg.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Mar 2023 15:54:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677801250;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8o/IEZdj8Cn2a3a2Ro5nT/fmWKdys9Z3WQ6bWICIcGU=;
        b=BTpenYirnz4B8q7/2hN50ThrX4yr6wisyKtR0dg+ykWdMMSjRplIQedNS07kRpwOvE
         oS5zaZMyezMv1QZS05SYGcbaZjUBoH0xKKwVx6GKehJY5YiZ8K2JH0+ndECFS/RUaG2r
         DHNjfNzYIe0eNltaGLpjDJoDDIEyfcKnomK3w8cWLAWz6igd8g6+7wvB9sjCANYLcZf0
         tIQexWr5zqLe80Cu4bMF8p854n/bHA9sqwpy93jBqwKuIF+diaYnpzJX0Y/9529Tpc4t
         1n22/beRF/gIHxxyo9Dmu7LlZhHs6jPw7LXUza4Ozi0Xqr9w4AucOv8svDIlKBJsCKI4
         kbbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677801250;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8o/IEZdj8Cn2a3a2Ro5nT/fmWKdys9Z3WQ6bWICIcGU=;
        b=kLFJpgaSUpxglg4d4+JmMWFSnNwAczLQc/Y53vdXnry7qAV1BdtcGlw5awRBK0PTJP
         L6rvM0euyq+S+UD/4OAhVcHU/eoEagxOoqruS5gommQ1ZnrYbdTYgJ5AiuhWlioN4uXn
         qz+hsuMfXtH10oHYJBHl4dpd1pWJAwaLikzdmDkFL0uKj2wmrMZ4DKqAkCYjrEN79EMb
         LeOfjNlrbiMQbHzP1tH2m9ku9YXLPHiFZ/Gp80S+LRWuwJubPTLAv8TMjASb/zUhxsc6
         gf0SN8GwbQ0PTS6jwlWb9ndT/nuHnqOihX9s00RFWu0XpcCKSXpYHE88XwKGbc4T4BX0
         SKjw==
X-Gm-Message-State: AO0yUKXxzlNZijIqs5wyYJG+GXY1pYUUf/pBGUvkVIIzAqCDCnLpP+6a
	A4DLRrYEuW3GRbJcbQbE/qVZbsl1s0Q=
X-Google-Smtp-Source: AK7set9xw6yYcUpQ834HKf0gFqVGnZ9bcMz7tqmaYidGEmTy7owSmE0clFs6hA13pZ4gnYdVcsFIUg==
X-Received: by 2002:a17:902:ed11:b0:19d:af21:dc2f with SMTP id b17-20020a170902ed1100b0019daf21dc2fmr31301pld.33.1677801250107;
        Thu, 02 Mar 2023 15:54:10 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id kp14-20020a170903280e00b0019e31e5f7f9sm230346plb.71.2023.03.02.15.54.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Mar 2023 15:54:09 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Thu,  2 Mar 2023 15:53:27 -0800
Message-Id: <20230302235356.3148279-6-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230302235356.3148279-1-robdclark@gmail.com>
References: <20230302235356.3148279-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 13DE83F546
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.50:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,collabora.com,linaro.org,lwn.net,padovan.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 7UV7GSUJSOP4FJOBT52LRM4AVSYCGSPS
X-Message-ID-Hash: 7UV7GSUJSOP4FJOBT52LRM4AVSYCGSPS
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Pekka Paalanen <pekka.paalanen@collabora.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Gustavo Padovan <gustavo@padovan.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v9 05/15] dma-buf/sync_file: Surface sync-file uABI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7UV7GSUJSOP4FJOBT52LRM4AVSYCGSPS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

We had all of the internal driver APIs, but not the all important
userspace uABI, in the dma-buf doc.  Fix that.  And re-arrange the
comments slightly as otherwise the comments for the ioctl nr defines
would not show up.

v2: Fix docs build warning coming from newly including the uabi header
    in the docs build

Signed-off-by: Rob Clark <robdclark@chromium.org>
Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>
---
 Documentation/driver-api/dma-buf.rst | 10 ++++++--
 include/uapi/linux/sync_file.h       | 37 +++++++++++-----------------
 2 files changed, 23 insertions(+), 24 deletions(-)

diff --git a/Documentation/driver-api/dma-buf.rst b/Documentation/driver-api/dma-buf.rst
index 183e480d8cea..ff3f8da296af 100644
--- a/Documentation/driver-api/dma-buf.rst
+++ b/Documentation/driver-api/dma-buf.rst
@@ -203,8 +203,8 @@ DMA Fence unwrap
 .. kernel-doc:: include/linux/dma-fence-unwrap.h
    :internal:
 
-DMA Fence uABI/Sync File
-~~~~~~~~~~~~~~~~~~~~~~~~
+DMA Fence Sync File
+~~~~~~~~~~~~~~~~~~~
 
 .. kernel-doc:: drivers/dma-buf/sync_file.c
    :export:
@@ -212,6 +212,12 @@ DMA Fence uABI/Sync File
 .. kernel-doc:: include/linux/sync_file.h
    :internal:
 
+DMA Fence Sync File uABI
+~~~~~~~~~~~~~~~~~~~~~~~~
+
+.. kernel-doc:: include/uapi/linux/sync_file.h
+   :internal:
+
 Indefinite DMA Fences
 ~~~~~~~~~~~~~~~~~~~~~
 
diff --git a/include/uapi/linux/sync_file.h b/include/uapi/linux/sync_file.h
index ee2dcfb3d660..7e42a5b7558b 100644
--- a/include/uapi/linux/sync_file.h
+++ b/include/uapi/linux/sync_file.h
@@ -16,12 +16,16 @@
 #include <linux/types.h>
 
 /**
- * struct sync_merge_data - data passed to merge ioctl
+ * struct sync_merge_data - SYNC_IOC_MERGE: merge two fences
  * @name:	name of new fence
  * @fd2:	file descriptor of second fence
  * @fence:	returns the fd of the new fence to userspace
  * @flags:	merge_data flags
  * @pad:	padding for 64-bit alignment, should always be zero
+ *
+ * Creates a new fence containing copies of the sync_pts in both
+ * the calling fd and sync_merge_data.fd2.  Returns the new fence's
+ * fd in sync_merge_data.fence
  */
 struct sync_merge_data {
 	char	name[32];
@@ -34,8 +38,8 @@ struct sync_merge_data {
 /**
  * struct sync_fence_info - detailed fence information
  * @obj_name:		name of parent sync_timeline
-* @driver_name:	name of driver implementing the parent
-* @status:		status of the fence 0:active 1:signaled <0:error
+ * @driver_name:	name of driver implementing the parent
+ * @status:		status of the fence 0:active 1:signaled <0:error
  * @flags:		fence_info flags
  * @timestamp_ns:	timestamp of status change in nanoseconds
  */
@@ -48,14 +52,19 @@ struct sync_fence_info {
 };
 
 /**
- * struct sync_file_info - data returned from fence info ioctl
+ * struct sync_file_info - SYNC_IOC_FILE_INFO: get detailed information on a sync_file
  * @name:	name of fence
  * @status:	status of fence. 1: signaled 0:active <0:error
  * @flags:	sync_file_info flags
  * @num_fences	number of fences in the sync_file
  * @pad:	padding for 64-bit alignment, should always be zero
- * @sync_fence_info: pointer to array of structs sync_fence_info with all
+ * @sync_fence_info: pointer to array of struct &sync_fence_info with all
  *		 fences in the sync_file
+ *
+ * Takes a struct sync_file_info. If num_fences is 0, the field is updated
+ * with the actual number of fences. If num_fences is > 0, the system will
+ * use the pointer provided on sync_fence_info to return up to num_fences of
+ * struct sync_fence_info, with detailed fence information.
  */
 struct sync_file_info {
 	char	name[32];
@@ -69,30 +78,14 @@ struct sync_file_info {
 
 #define SYNC_IOC_MAGIC		'>'
 
-/**
+/*
  * Opcodes  0, 1 and 2 were burned during a API change to avoid users of the
  * old API to get weird errors when trying to handling sync_files. The API
  * change happened during the de-stage of the Sync Framework when there was
  * no upstream users available.
  */
 
-/**
- * DOC: SYNC_IOC_MERGE - merge two fences
- *
- * Takes a struct sync_merge_data.  Creates a new fence containing copies of
- * the sync_pts in both the calling fd and sync_merge_data.fd2.  Returns the
- * new fence's fd in sync_merge_data.fence
- */
 #define SYNC_IOC_MERGE		_IOWR(SYNC_IOC_MAGIC, 3, struct sync_merge_data)
-
-/**
- * DOC: SYNC_IOC_FILE_INFO - get detailed information on a sync_file
- *
- * Takes a struct sync_file_info. If num_fences is 0, the field is updated
- * with the actual number of fences. If num_fences is > 0, the system will
- * use the pointer provided on sync_fence_info to return up to num_fences of
- * struct sync_fence_info, with detailed fence information.
- */
 #define SYNC_IOC_FILE_INFO	_IOWR(SYNC_IOC_MAGIC, 4, struct sync_file_info)
 
 #endif /* _UAPI_LINUX_SYNC_H */
-- 
2.39.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
