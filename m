Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0534EC496
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:41:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AC6E3EC38
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:41:06 +0000 (UTC)
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	by lists.linaro.org (Postfix) with ESMTPS id 55FD93EA27
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 04:00:17 +0000 (UTC)
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-2e9ae7bd8deso58645217b3.9
        for <linaro-mm-sig@lists.linaro.org>; Sun, 27 Mar 2022 21:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=5YF472UBEt2/+0TMmuAJ6M5CUqS69OAWnmeSQdznm4c=;
        b=Otbv6BZ5qGCcevBDAZX6xN8e9nfLahzy72aZz2C8ZnF7O0aumEiNkqQhZur1HY8/Cs
         iuIInxQV8DulTLV4peuIv24Kjo659uXmfHBO0sgraK+JrrU+As1YNNyP5VsmX8xvpfHj
         +DBCyPIEf7Myz5u2eebcccJK1GhatoYgWRAn9u6/hx3eLzgc6yDZpT0DbGZeqrIsxVy0
         MWOGzNy1ZJc3Y1AzaPB/KCHt1qRh6XZ3/aS55BAmF+xfDQhiQ6MSAI6I/s870uy88oLD
         B8qFjM3s8ixGcMg26tII9h+aMEs3oAt5IN56f2ExKguMu+wacxiRqK48y/Tgb9VayNGA
         E72w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=5YF472UBEt2/+0TMmuAJ6M5CUqS69OAWnmeSQdznm4c=;
        b=DfFk6flISOJoYtJqerE0YqNhtIne2trtwX/YphqiTvwHDQUzeqREm16FimSlRsvlNV
         lTA/z6gxZ44k7wcp40Tm9VexSumWboYQSb/TuHlel+qOBc+DKa6bCqEy4uSEWYhpnZQH
         TWe8hpYFSLwXW3f4wXshJ3sIL2sifZysu/Eo7Ckr1Y5sS7KdVCqTobSBacBh7G+A5LZ8
         wWVFZGCTYDSO60IbLOqFrdwrWmKZxYKeaMoive/C7N6DfcZEdIUHSwd71nGzgNNqkO7h
         frUwpHZ2VKmMIU3wF470bU+CagZlCaWlfVPhEveRKgYMf0VtRtFAgXVwnqc4fpGfDhgV
         Tkng==
X-Gm-Message-State: AOAM532QlNYSQtHUUkL4ghn4ekdpXmi58otbKL3oJ4W2jFP8oQnddzSJ
	xlQtEUHREtpGRxXaDcveMzoo2ulhhU1gLKU=
X-Google-Smtp-Source: ABdhPJwZN53y2iru9thBQM3748jxF+GUaJNvT80PrAObXElBNXlNdj3eJA3jMrzwFwkCwnM8D+0mObmQfCh9oiQ=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a81:f0c:0:b0:2d6:83ab:7605 with SMTP id
 12-20020a810f0c000000b002d683ab7605mr23417374ywp.150.1648440016871; Sun, 27
 Mar 2022 21:00:16 -0700 (PDT)
Date: Mon, 28 Mar 2022 03:59:46 +0000
In-Reply-To: <20220328035951.1817417-1-tjmercier@google.com>
Message-Id: <20220328035951.1817417-8-tjmercier@google.com>
Mime-Version: 1.0
References: <20220328035951.1817417-1-tjmercier@google.com>
X-Mailer: git-send-email 2.35.1.1021.g381101b075-goog
From: "T.J. Mercier" <tjmercier@google.com>
To: tjmercier@google.com, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
	Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>
X-MailFrom: 30DJBYgkKDVME47zCx3zC19916z.x97638vC9-77-D3163DED.638vC9.9C1@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PUOA42BNMXBT43GV6L6I5WBPA65NWQBY
X-Message-ID-Hash: PUOA42BNMXBT43GV6L6I5WBPA65NWQBY
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:40:25 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, mkoutny@suse.com, skhan@linuxfoundation.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v4 7/8] binder: use __kernel_pid_t and __kernel_uid_t for userspace
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PUOA42BNMXBT43GV6L6I5WBPA65NWQBY/>
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
2.35.1.1021.g381101b075-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
