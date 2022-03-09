Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB834EAD0C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 14:21:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B390F3EC10
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 12:21:43 +0000 (UTC)
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	by lists.linaro.org (Postfix) with ESMTPS id A44223EEA1
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Mar 2022 16:52:55 +0000 (UTC)
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-2d11b6259adso18981947b3.19
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Mar 2022 08:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=a5Dt/ckgrAR/j0DHD5MablupC6tRY3n4B+kc2OBEq1E=;
        b=lf6qdnlnShM+NyA+sRumM9hivTRIGcCncGZbgQNzurEcC0PelK7f0Thi+M3ueh/60u
         crlhMuUH1ipr0mpuDqyE8aJ84VySIaff1FD+fE9773Bt+fv449Jm3nP3wPIlVA+Qfzav
         0k2WlYeS8LRPkeGvJS/ckcrKMSgPM5JtRDzCNqenqST8iJomE7l5mxPW2JqytjG7tKEz
         E11F13r1PzT40iKei9VjsWcsCTlAVdI2efPX0/uTfWtH4OCy9bcb/rt71jwCVzpmmrbw
         9TYlUoBsQKAMkXQRru4/JO9WydZpoUuui7gHXDFAFHPvAuocMffpVfEKhnWZZaGcVMZ7
         KGKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=a5Dt/ckgrAR/j0DHD5MablupC6tRY3n4B+kc2OBEq1E=;
        b=xFAj3hwKNTT0YaeD+CAFxEAfsZfziNwFaLf6mjTRKSp2PZRfrJaOdVqAuKoCkUiYo4
         ULDxEk2IKJWXz3FhM9TC11/iK+MnIY0XmwlD2K/AjpKxAO8dzObglsQfUVy2HEqeso1E
         ovVWmBe3GtQDqVX676wvR9CtpfE1Lmk6vSHvZlFu7gCuGQNqmhiG6S3K/PoHjrFaeEEQ
         AcjvpfYYjxJpeVFgDkguDDgs+Fpq2QQS6i3ZiZYf9BVJVkCTBXhSuZFIc5xOd1aDlvss
         odS0w+oyO47pK0DargBAQGwn2b7e0uxAI9hflN630vvVGbb+noQdoiypU7B+NTEtw0fF
         jaRA==
X-Gm-Message-State: AOAM532KG7OyR+RiB2EadBJ4P7cXTLSEuOCR14qsnGtY6X59wUh2C1E9
	RbUUBxRRFF6Ow2QfSZZtlA31KEqiP9nyQrQ=
X-Google-Smtp-Source: ABdhPJzdLHhn1AB/XDC8KoTs36Zqp19ShJhHV1TSxCbFMU/1hAK+2Cj1Svo6KldgaODaBXyTBc9IHyUlIGkN9Zk=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a5b:9c2:0:b0:611:ad59:be04 with SMTP id
 y2-20020a5b09c2000000b00611ad59be04mr510975ybq.405.1646844775149; Wed, 09 Mar
 2022 08:52:55 -0800 (PST)
Date: Wed,  9 Mar 2022 16:52:17 +0000
In-Reply-To: <20220309165222.2843651-1-tjmercier@google.com>
Message-Id: <20220309165222.2843651-8-tjmercier@google.com>
Mime-Version: 1.0
References: <20220309165222.2843651-1-tjmercier@google.com>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
From: "T.J. Mercier" <tjmercier@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
	Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>
X-MailFrom: 3Z9soYgkKDdgNDG8L6C8LAIIAF8.6IGFCH4LI-GG-MCAFCMNM.FCH4LI.ILA@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: B3K4XCLIQ4XXXHYU4JUCO2JR2LZKTCLD
X-Message-ID-Hash: B3K4XCLIQ4XXXHYU4JUCO2JR2LZKTCLD
X-Mailman-Approved-At: Tue, 29 Mar 2022 12:21:01 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, "T.J. Mercier" <tjmercier@google.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v3 7/8] binder: use __kernel_pid_t and __kernel_uid_t for userspace
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B3K4XCLIQ4XXXHYU4JUCO2JR2LZKTCLD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The kernel interface should use types that the kernel defines instead of
pid_t and uid_t, whose definiton is owned by libc. This fixes the header
so that it can be included without first including sys/types.h.

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 include/uapi/linux/android/binder.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/android/binder.h
index 169fd5069a1a..aa28454dbca3 100644
--- a/include/uapi/linux/android/binder.h
+++ b/include/uapi/linux/android/binder.h
@@ -289,8 +289,8 @@ struct binder_transaction_data {
 
 	/* General information about the transaction. */
 	__u32	        flags;
-	pid_t		sender_pid;
-	uid_t		sender_euid;
+	__kernel_pid_t	sender_pid;
+	__kernel_uid_t	sender_euid;
 	binder_size_t	data_size;	/* number of bytes of data */
 	binder_size_t	offsets_size;	/* number of bytes of offsets */
 
-- 
2.35.1.616.g0bdcbb4464-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
