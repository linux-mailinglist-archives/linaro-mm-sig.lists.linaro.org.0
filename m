Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 775BD5398B2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 May 2022 23:25:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A96E13F2C6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 May 2022 21:25:41 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id 4862E3ED9F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 May 2022 21:25:38 +0000 (UTC)
Received: by mail-yb1-f202.google.com with SMTP id j2-20020a2597c2000000b0064b3e54191aso12919054ybo.20
        for <linaro-mm-sig@lists.linaro.org>; Tue, 31 May 2022 14:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:cc;
        bh=px4+ZpXbHsure7vaViwll/H2EGv0zUZueEOXuxtocqM=;
        b=ZaARQ8d9PxwUFkeye+orr7uFPd1EQEtmzE+s6UR1ux+FcJbmTHiZMJ7e1JzoYbWBUl
         MmsmGGcDUWwDl++YBLF/jGBcZ9lqmCmJqOXTlaS/R3d6UBNhxWaNMjeHc5eGTbvGLUe8
         SkmOziIw6AkAwq76+XInYclaLp6vw+FNuXhy2Jq5VMAFaIlILl3AKWGm3vccd/4/2RDZ
         HPtlQ8x4ydXT7SRAuKi6Uou21GfFqKbCfvEpfPM4kJojTYN93ydf8Mcw6YmEpoOEzdQ3
         p97exnTro1SyD5LgslZm6/+TUMSKAEZrVnMkRAoxLIKYgxyjsusMw/gYicG9vpaLMIkN
         XEPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc;
        bh=px4+ZpXbHsure7vaViwll/H2EGv0zUZueEOXuxtocqM=;
        b=ll2ekK6iJkk1suo0CqkEOUaot5A73C/J3oXJXiKHyGpx74xP//fUZpeLMOp0wVnhHF
         8igpNFBbC93hvoRlTQHCRBJW9DyAYlH+O6P2Nle3JcWN8a4o5JGqCWtkYBV+MmkBUhmM
         80tsTQKm1L5NL20QzQbEyrvbE6Z/XfqpJQf6pBuzKndztbatTwSpuvjSYslP64e/Z79a
         jDP4G9u3VJwTlnXyoL70XuaYPD2pbEtOO9BtwMk+hktQhGtB/qDSaxtMPqDbD5vaQIi/
         JSQpmUrFemvKEd/UuLnBmMh1uCVSDCULjVgNLwW1xetv6UJHyUEhsYmfBm1uGMeaPaoZ
         htXQ==
X-Gm-Message-State: AOAM530+n7m4Gd3MNvCJxqujN/gOZ8rEHkGIZz5aZIkjc38q8+IKkmVC
	nch5BI+Z8NJsVi/xt5OsDbchypkdvvQqtdXKxA==
X-Google-Smtp-Source: ABdhPJwZ/c83nZu7U03w4uDCuA9LC5io7QSRjyjVxQZqwDEDunG479HIBUW6hUZDhFjJsLb9bhLsnieTrpx2EYlm+Q==
X-Received: from kaleshsingh.mtv.corp.google.com ([2620:15c:211:200:a3c0:2a66:b25c:16df])
 (user=kaleshsingh job=sendgmr) by 2002:a05:6902:1d1:b0:65c:ea47:8ea1 with
 SMTP id u17-20020a05690201d100b0065cea478ea1mr11260576ybh.400.1654032337918;
 Tue, 31 May 2022 14:25:37 -0700 (PDT)
Date: Tue, 31 May 2022 14:25:14 -0700
In-Reply-To: <20220531212521.1231133-1-kaleshsingh@google.com>
Message-Id: <20220531212521.1231133-2-kaleshsingh@google.com>
Mime-Version: 1.0
References: <20220531212521.1231133-1-kaleshsingh@google.com>
X-Mailer: git-send-email 2.36.1.255.ge46751e96f-goog
From: Kalesh Singh <kaleshsingh@google.com>
Message-ID-Hash: I2625KP4UBCPPGQFTXI2XVN7KOFYF3EC
X-Message-ID-Hash: I2625KP4UBCPPGQFTXI2XVN7KOFYF3EC
X-MailFrom: 30YeWYgsKDVY8y92G5G6B454CC492.0CA96ByFC-AA-G6496GHG.96ByFC.CF4@flex--kaleshsingh.bounces.google.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ilkos@google.com, tjmercier@google.com, surenb@google.com, kernel-team@android.com, Kalesh Singh <kaleshsingh@google.com>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Johannes Weiner <hannes@cmpxchg.org>, Christoph Anton Mitterer <mail@christoph.anton.mitterer.name>, Paul Gortmaker <paul.gortmaker@windriver.com>, Mike Rapoport <rppt@kernel.org>, Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/2] procfs: Add 'size' to /proc/<pid>/fdinfo/
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I2625KP4UBCPPGQFTXI2XVN7KOFYF3EC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

To be able to account the amount of memory a process is keeping pinned
by open file descriptors add a 'size' field to fdinfo output.

dmabufs fds already expose a 'size' field for this reason, remove this
and make it a common field for all fds. This allows tracking of
other types of memory (e.g. memfd and ashmem in Android).

Signed-off-by: Kalesh Singh <kaleshsingh@google.com>
---

Changes from rfc:
  - Split adding 'size' and 'path' into a separate patches, per Christian
  - Split fdinfo seq_printf into separate lines, per Christian
  - Fix indentation (use tabs) in documentaion, per Randy

 Documentation/filesystems/proc.rst | 12 ++++++++++--
 drivers/dma-buf/dma-buf.c          |  1 -
 fs/proc/fd.c                       |  9 +++++----
 3 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/Documentation/filesystems/proc.rst b/Documentation/filesystems/proc.rst
index 1bc91fb8c321..779c05528e87 100644
--- a/Documentation/filesystems/proc.rst
+++ b/Documentation/filesystems/proc.rst
@@ -1886,13 +1886,14 @@ if precise results are needed.
 3.8	/proc/<pid>/fdinfo/<fd> - Information about opened file
 ---------------------------------------------------------------
 This file provides information associated with an opened file. The regular
-files have at least four fields -- 'pos', 'flags', 'mnt_id' and 'ino'.
+files have at least five fields -- 'pos', 'flags', 'mnt_id', 'ino', and 'size'.
+
 The 'pos' represents the current offset of the opened file in decimal
 form [see lseek(2) for details], 'flags' denotes the octal O_xxx mask the
 file has been created with [see open(2) for details] and 'mnt_id' represents
 mount ID of the file system containing the opened file [see 3.5
 /proc/<pid>/mountinfo for details]. 'ino' represents the inode number of
-the file.
+the file, and 'size' represents the size of the file in bytes.
 
 A typical output is::
 
@@ -1900,6 +1901,7 @@ A typical output is::
 	flags:	0100002
 	mnt_id:	19
 	ino:	63107
+	size:	0
 
 All locks associated with a file descriptor are shown in its fdinfo too::
 
@@ -1917,6 +1919,7 @@ Eventfd files
 	flags:	04002
 	mnt_id:	9
 	ino:	63107
+	size:   0
 	eventfd-count:	5a
 
 where 'eventfd-count' is hex value of a counter.
@@ -1930,6 +1933,7 @@ Signalfd files
 	flags:	04002
 	mnt_id:	9
 	ino:	63107
+	size:   0
 	sigmask:	0000000000000200
 
 where 'sigmask' is hex value of the signal mask associated
@@ -1944,6 +1948,7 @@ Epoll files
 	flags:	02
 	mnt_id:	9
 	ino:	63107
+	size:   0
 	tfd:        5 events:       1d data: ffffffffffffffff pos:0 ino:61af sdev:7
 
 where 'tfd' is a target file descriptor number in decimal form,
@@ -1962,6 +1967,7 @@ For inotify files the format is the following::
 	flags:	02000000
 	mnt_id:	9
 	ino:	63107
+	size:   0
 	inotify wd:3 ino:9e7e sdev:800013 mask:800afce ignored_mask:0 fhandle-bytes:8 fhandle-type:1 f_handle:7e9e0000640d1b6d
 
 where 'wd' is a watch descriptor in decimal form, i.e. a target file
@@ -1985,6 +1991,7 @@ For fanotify files the format is::
 	flags:	02
 	mnt_id:	9
 	ino:	63107
+	size:   0
 	fanotify flags:10 event-flags:0
 	fanotify mnt_id:12 mflags:40 mask:38 ignored_mask:40000003
 	fanotify ino:4f969 sdev:800013 mflags:0 mask:3b ignored_mask:40000000 fhandle-bytes:8 fhandle-type:1 f_handle:69f90400c275b5b4
@@ -2010,6 +2017,7 @@ Timerfd files
 	flags:	02
 	mnt_id:	9
 	ino:	63107
+	size:   0
 	clockid: 0
 	ticks: 0
 	settime flags: 01
diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 32f55640890c..5f2ae38c960f 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -378,7 +378,6 @@ static void dma_buf_show_fdinfo(struct seq_file *m, struct file *file)
 {
 	struct dma_buf *dmabuf = file->private_data;
 
-	seq_printf(m, "size:\t%zu\n", dmabuf->size);
 	/* Don't count the temporary reference taken inside procfs seq_show */
 	seq_printf(m, "count:\t%ld\n", file_count(dmabuf->file) - 1);
 	seq_printf(m, "exp_name:\t%s\n", dmabuf->exp_name);
diff --git a/fs/proc/fd.c b/fs/proc/fd.c
index 913bef0d2a36..464bc3f55759 100644
--- a/fs/proc/fd.c
+++ b/fs/proc/fd.c
@@ -54,10 +54,11 @@ static int seq_show(struct seq_file *m, void *v)
 	if (ret)
 		return ret;
 
-	seq_printf(m, "pos:\t%lli\nflags:\t0%o\nmnt_id:\t%i\nino:\t%lu\n",
-		   (long long)file->f_pos, f_flags,
-		   real_mount(file->f_path.mnt)->mnt_id,
-		   file_inode(file)->i_ino);
+	seq_printf(m, "pos:\t%lli\n", (long long)file->f_pos);
+	seq_printf(m, "flags:\t0%o\n", f_flags);
+	seq_printf(m, "mnt_id:\t%i\n", real_mount(file->f_path.mnt)->mnt_id);
+	seq_printf(m, "ino:\t%lu\n", file_inode(file)->i_ino);
+	seq_printf(m, "size:\t%lli\n", (long long)file_inode(file)->i_size);
 
 	/* show_fd_locks() never deferences files so a stale value is safe */
 	show_fd_locks(m, file, files);
-- 
2.36.1.255.ge46751e96f-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
