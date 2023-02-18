Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F5E69BC74
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Feb 2023 22:17:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78A1B4423D
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Feb 2023 21:17:50 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	by lists.linaro.org (Postfix) with ESMTPS id DBAA14423C
	for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Feb 2023 21:15:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b="n8m0ik/8";
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.182 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id v13so408151plo.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Feb 2023 13:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hI9qNsZmZouFqjT4Q7iKBhJP6Ch7PWCt+bcIXmzWxTA=;
        b=n8m0ik/8SEVtlt4tLy+1xKXcajLNDaoTcnObCr8qoX1kosoaMIoPX31NBzsj7seG30
         TaPhmBInQnPnfd0sbBYcu2Sjd2IA6FxDGaZmCXZoXtGjZW6hFd+e9Xciqw/mNaEUFrq1
         hjgq42bMdkekPwZy8PzTS6/Xq4JcoVNW50YdZjMsh/w+8uyRIy6w/+AWEK3pPnMvauwT
         wNnyWecM/dDofyumtFxiSCy6DM51SXQm97P8nGKVnoB2XUwupExO/xZ5cnsTPvxIDZIP
         qmCKeD3CtfUoaR56Ve0CFhe2vvZV/cLqVUjPQ858IZhTD5rfzOW9nQ9q1HUMtmg9/Zl0
         ZfYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hI9qNsZmZouFqjT4Q7iKBhJP6Ch7PWCt+bcIXmzWxTA=;
        b=7My87eVzjyc+0HIfzDhgP/fmr9koUKp6HQ4R6gAnYztxKf9iqq00Oxr6AJpQE2Vnp0
         h5nHi4pfEquMGnw2SYP3kxhfDEIWTDXV1/+w3EMWB8u20bExVdUU7AEiqd9BZtnyYkvY
         FgbiLk3KNIJAoiN13SQA7nfRCBrW4JpL9andG3pPGBg9SbkbUf2j685Kv3CQLb+no6qg
         x2PYOMH5frEVJBwWjcfGm01XFLCVrqGMUgDEijN+OkeRHQz9GmqBoS5XrnLaDPNhKMoy
         s25Ny6E65dqZSaa1cIJpJEapqsTV6FLRKTv45ET97I79KRHjo1iEUZ8+H7fdbdsFajni
         zpvA==
X-Gm-Message-State: AO0yUKV9sn9yzJKdTf18g49dhwv6qK3GQgLABozWwj+kWideBGHBlifT
	3nu+Xs9K0Oezbfbo1vzYGdI=
X-Google-Smtp-Source: AK7set9yuqIqkhJME2lpIvPyHaEjKyBB3ZOLwsVnLF62v/VV509uPfIKWgQ2ORuaU7W+EZTtXhgZJQ==
X-Received: by 2002:a17:902:f98d:b0:19a:a647:1881 with SMTP id ky13-20020a170902f98d00b0019aa6471881mr3492159plb.62.1676754955043;
        Sat, 18 Feb 2023 13:15:55 -0800 (PST)
Received: from localhost (c-73-67-135-195.hsd1.or.comcast.net. [73.67.135.195])
        by smtp.gmail.com with ESMTPSA id a14-20020a170902ecce00b0019934030f46sm5057523plh.132.2023.02.18.13.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Feb 2023 13:15:54 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sat, 18 Feb 2023 13:15:48 -0800
Message-Id: <20230218211608.1630586-6-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230218211608.1630586-1-robdclark@gmail.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DBAA14423C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[73.67.135.195:received,209.85.214.182:from];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.182:from];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: VPYXIDRUAPIKUIBA5KPKNMJD2DSTYWYI
X-Message-ID-Hash: VPYXIDRUAPIKUIBA5KPKNMJD2DSTYWYI
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 05/14] dma-buf/sync_file: Add SET_DEADLINE ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VPYXIDRUAPIKUIBA5KPKNMJD2DSTYWYI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

The initial purpose is for igt tests, but this would also be useful for
compositors that wait until close to vblank deadline to make decisions
about which frame to show.

The igt tests can be found at:

https://gitlab.freedesktop.org/robclark/igt-gpu-tools/-/commits/fence-deadline

v2: Clarify the timebase, add link to igt tests

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/dma-buf/sync_file.c    | 19 +++++++++++++++++++
 include/uapi/linux/sync_file.h | 22 ++++++++++++++++++++++
 2 files changed, 41 insertions(+)

diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
index af57799c86ce..fb6ca1032885 100644
--- a/drivers/dma-buf/sync_file.c
+++ b/drivers/dma-buf/sync_file.c
@@ -350,6 +350,22 @@ static long sync_file_ioctl_fence_info(struct sync_file *sync_file,
 	return ret;
 }
 
+static int sync_file_ioctl_set_deadline(struct sync_file *sync_file,
+					unsigned long arg)
+{
+	struct sync_set_deadline ts;
+
+	if (copy_from_user(&ts, (void __user *)arg, sizeof(ts)))
+		return -EFAULT;
+
+	if (ts.pad)
+		return -EINVAL;
+
+	dma_fence_set_deadline(sync_file->fence, ktime_set(ts.tv_sec, ts.tv_nsec));
+
+	return 0;
+}
+
 static long sync_file_ioctl(struct file *file, unsigned int cmd,
 			    unsigned long arg)
 {
@@ -362,6 +378,9 @@ static long sync_file_ioctl(struct file *file, unsigned int cmd,
 	case SYNC_IOC_FILE_INFO:
 		return sync_file_ioctl_fence_info(sync_file, arg);
 
+	case SYNC_IOC_SET_DEADLINE:
+		return sync_file_ioctl_set_deadline(sync_file, arg);
+
 	default:
 		return -ENOTTY;
 	}
diff --git a/include/uapi/linux/sync_file.h b/include/uapi/linux/sync_file.h
index ee2dcfb3d660..c8666580816f 100644
--- a/include/uapi/linux/sync_file.h
+++ b/include/uapi/linux/sync_file.h
@@ -67,6 +67,20 @@ struct sync_file_info {
 	__u64	sync_fence_info;
 };
 
+/**
+ * struct sync_set_deadline - set a deadline on a fence
+ * @tv_sec:	seconds elapsed since epoch
+ * @tv_nsec:	nanoseconds elapsed since the time given by the tv_sec
+ * @pad:	must be zero
+ *
+ * The timebase for the deadline is CLOCK_MONOTONIC (same as vblank)
+ */
+struct sync_set_deadline {
+	__s64	tv_sec;
+	__s32	tv_nsec;
+	__u32	pad;
+};
+
 #define SYNC_IOC_MAGIC		'>'
 
 /**
@@ -95,4 +109,12 @@ struct sync_file_info {
  */
 #define SYNC_IOC_FILE_INFO	_IOWR(SYNC_IOC_MAGIC, 4, struct sync_file_info)
 
+
+/**
+ * DOC: SYNC_IOC_SET_DEADLINE - set a deadline on a fence
+ *
+ * Allows userspace to set a deadline on a fence, see dma_fence_set_deadline()
+ */
+#define SYNC_IOC_SET_DEADLINE	_IOW(SYNC_IOC_MAGIC, 5, struct sync_set_deadline)
+
 #endif /* _UAPI_LINUX_SYNC_H */
-- 
2.39.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
