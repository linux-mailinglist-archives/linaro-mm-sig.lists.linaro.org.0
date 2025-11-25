Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ma2OmIA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E5D410CB1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EC474108E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:29:37 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by lists.linaro.org (Postfix) with ESMTPS id 198F13F7A5
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 16:29:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="dqu/HGGa";
	spf=pass (lists.linaro.org: domain of gxxa03070307@gmail.com designates 209.85.210.174 as permitted sender) smtp.mailfrom=gxxa03070307@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7b9c17dd591so4967201b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 08:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764088198; x=1764692998; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WwtB7x9jbnj3BkBVwjT6kHA5QLKT/sBvVzDGMwM9kMs=;
        b=dqu/HGGacFVj8mgyg9OqUxSiWsfwsKugwDOLb62FvZCFaEga9MmJG34FCFWQoesBTL
         e8pDghym1sF+gOkFbye5qE70Ob+g8sQPPokTO4hN5e9+IefDvygGjFvxk6pudw90Cz1g
         wQ93iAk9qyS4STo2xrk5o2YMOFg4LUMyUMgzKXUqw2ooQuLUwIwINic0Xh60rAa1nbPP
         YWLxUlfXWRxIAIQM2fJWs1FO096rV4CV4zG+TxoItTR3RYkSk2cFyvfo25rnJCY4eKwY
         7AEQQX0I08ZhO2bzrFk4fQULaYtMQW+LMHZ5I3v7zQtiy62+hD4yuLJdvq+P2Hy1jiQr
         zU6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764088198; x=1764692998;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WwtB7x9jbnj3BkBVwjT6kHA5QLKT/sBvVzDGMwM9kMs=;
        b=RiYcsDnvP8Qbn39pfZFAXeeNfksB7A4n5XmmgmHvz+FIFFZI4ZHvytaYxkr2cjV5ZI
         7x00M0VqqLB5lXpeeX4c3lJzsSWypnu9Zor/FvnM2IVbVtAIE8K1AaNA30dneOdwbxwf
         GCcbvaUSC1vpnEYmA3TVKQXZuAy+d/vYqNQWGnr8N26R23G3Qorb7VGjGV/wn4YUxhVh
         e3zhvDxpFJhjCZ7+jd1yKbmG/vgfMBUD5v9kp9H56+CkbQMpY2Lo9pqHKLdy7x34r6c0
         jMQPE7nPG4Za7UpES8uek783cG3TFcd+ix2+BprwJNlSFNvQmysFRUPMRKclaTl2aqdI
         FzhA==
X-Forwarded-Encrypted: i=1; AJvYcCUBie41s+z74IxjLCSGYTuzm30H6e8PEHoyNLdautZG8iIPuEHAdPEzKK4lgMJT2QTOkCoSDm+GWcnPfeAo@lists.linaro.org
X-Gm-Message-State: AOJu0YziyeP6Ul84XCa3+WimDIflXLJ/jzt1vUfMNWVyx3FTJElEN4g7
	fIUcgiui4KYVWDc53/ZwSW5CRns8nX3BxzQJqc6gDL6Y1aNzFxexRpjH
X-Gm-Gg: ASbGncvkezVBWtFhwaNkSwduuO8hmbXSTUpPEjiwnRKnEx8GIy1n5Mij3872trBe48V
	XzjhVfe+urWlMLGS1PxopU1BP9hsSizxeLXOLJGvanOMokCf6N3MZ2/gZUKW76z/Fc5+QP2YonT
	V03RQP7TzUrCns8bv4tcZS0KqAgAMasYK22LauItbMKUwkRc7/NH92V649lEP20mzGUmC7JZ9Vv
	UOs1fq8/0Cot4pBgZo/iODHVwGHx9ioLh++z0scDiKYx6jzoZkGE/4F+jUES1sVzUrneg7c2ylj
	/Oh42tj5WQZ0Xeq08uCvKBWYd5SK1gF9RrcLaIDcypRqx/Ci2M44xcPsGZzdm4PvPQDcFlzj2yU
	eW20ixvy+jPOUdbF2SHqMMoWzOu38RpA/FW8ZZ0WQMq2WlStKNHfUvGvF5sYkFYDOqOu0cpH/Zr
	r8aBjUEw==
X-Google-Smtp-Source: AGHT+IH5VsEgKVWLFjZB0z7fH5JXEPDjqE0RvxYdxUOT95d5pZGo+nIy5F29wx/dgZIyyG1Bi/NSdA==
X-Received: by 2002:a05:6a20:2583:b0:35d:53dc:cb57 with SMTP id adf61e73a8af0-3637e0a58c8mr3790560637.49.1764088197837;
        Tue, 25 Nov 2025 08:29:57 -0800 (PST)
Received: from xiao.mioffice.cn ([43.224.245.230])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3f174d2c0sm18544900b3a.66.2025.11.25.08.29.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 08:29:56 -0800 (PST)
From: Xiang Gao <gxxa03070307@gmail.com>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	rostedt@goodmis.org,
	mhiramat@kernel.org
Date: Wed, 26 Nov 2025 00:29:49 +0800
Message-Id: <20251125162949.220488-1-gxxa03070307@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: gxxa03070307@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LYJOYYXL4ALZ2D23N3SZ6ZEOCF6LUCYZ
X-Message-ID-Hash: LYJOYYXL4ALZ2D23N3SZ6ZEOCF6LUCYZ
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:58 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, mathieu.desnoyers@efficios.com, dhowells@redhat.com, kuba@kernel.org, brauner@kernel.org, akpm@linux-foundation.org, linux-trace-kernel@vger.kernel.org, gaoxiang17 <gaoxiang17@xiaomi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: add some tracepoints to debug.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LYJOYYXL4ALZ2D23N3SZ6ZEOCF6LUCYZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[3406];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,xiaomi.com:email,lists.linaro.org:helo,lists.linaro.org:rdns];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.516];
	FROM_NEQ_ENVFROM(0.00)[gxxa03070307@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 73E5D410CB1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: gaoxiang17 <gaoxiang17@xiaomi.com>

I want to track the status of dmabuf in real time in the production environment. 
But now we can only check it by traversing the fd in the process or dmabuf_list.

For example:
    <...>-8342    [006] .....   199.626433: dma_buf_export: exp_name=system name=(null) size=32768 ino=2337 f_refcnt=2
    <...>-8342    [006] .....   199.626436: dma_buf_fd: exp_name=system name=(null) size=32768 ino=2337 fd=853 f_refcnt=2
    <...>-8342    [006] .....   199.626472: dma_buf_mmap_internal: exp_name=system name=system size=32768 ino=2337 f_refcnt=6
    <...>-3199    [006] .....   200.719182: dma_buf_get: exp_name=qcom,system name=acb size=184320 ino=2331 fd=111 f_refcnt=6
    <...>-894     [006] .....   199.632342: dma_buf_put: exp_name=system name=system size=32768 ino=2337 f_refcnt=2
    <...>-3199    [003] .....   213.402200: dma_buf_attach: dev_name=soc:qcom,xxx exp_name=qcom,system name=acb size=184320 ino=2331 f_refcnt=7
    <...>-1229    [004] .....   213.850270: dma_buf_detach: exp_name=qcom,system name=acb size=184320 ino=2331 f_refcnt=6

Signed-off-by: Xiang Gao <gaoxiang17@xiaomi.com>
---
 drivers/dma-buf/dma-buf.c      |  19 +++
 include/trace/events/dma_buf.h | 281 +++++++++++++++++++++++++++++++++
 2 files changed, 300 insertions(+)
 create mode 100644 include/trace/events/dma_buf.h

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 2bcf9ceca997..8b5af73f0218 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -35,6 +35,9 @@
 
 #include "dma-buf-sysfs-stats.h"
 
+#define CREATE_TRACE_POINTS
+#include <trace/events/dma_buf.h>
+
 static inline int is_dma_buf_file(struct file *);
 
 static DEFINE_MUTEX(dmabuf_list_mutex);
@@ -220,6 +223,8 @@ static int dma_buf_mmap_internal(struct file *file, struct vm_area_struct *vma)
 	    dmabuf->size >> PAGE_SHIFT)
 		return -EINVAL;
 
+	trace_dma_buf_mmap_internal(dmabuf);
+
 	return dmabuf->ops->mmap(dmabuf, vma);
 }
 
@@ -745,6 +750,8 @@ struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
 
 	__dma_buf_list_add(dmabuf);
 
+	trace_dma_buf_export(dmabuf);
+
 	return dmabuf;
 
 err_dmabuf:
@@ -779,6 +786,8 @@ int dma_buf_fd(struct dma_buf *dmabuf, int flags)
 
 	fd_install(fd, dmabuf->file);
 
+	trace_dma_buf_fd(dmabuf, fd);
+
 	return fd;
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_fd, "DMA_BUF");
@@ -805,6 +814,8 @@ struct dma_buf *dma_buf_get(int fd)
 		return ERR_PTR(-EINVAL);
 	}
 
+	trace_dma_buf_get(fd, file);
+
 	return file->private_data;
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_get, "DMA_BUF");
@@ -825,6 +836,8 @@ void dma_buf_put(struct dma_buf *dmabuf)
 		return;
 
 	fput(dmabuf->file);
+
+	trace_dma_buf_put(dmabuf);
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_put, "DMA_BUF");
 
@@ -998,6 +1011,8 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_dynamic_attach, "DMA_BUF");
 struct dma_buf_attachment *dma_buf_attach(struct dma_buf *dmabuf,
 					  struct device *dev)
 {
+	trace_dma_buf_attach(dmabuf, dev);
+
 	return dma_buf_dynamic_attach(dmabuf, dev, NULL, NULL);
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_attach, "DMA_BUF");
@@ -1024,6 +1039,8 @@ void dma_buf_detach(struct dma_buf *dmabuf, struct dma_buf_attachment *attach)
 		dmabuf->ops->detach(dmabuf, attach);
 
 	kfree(attach);
+
+	trace_dma_buf_detach(dmabuf);
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_detach, "DMA_BUF");
 
@@ -1488,6 +1505,8 @@ int dma_buf_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma,
 	vma_set_file(vma, dmabuf->file);
 	vma->vm_pgoff = pgoff;
 
+	trace_dma_buf_mmap(dmabuf);
+
 	return dmabuf->ops->mmap(dmabuf, vma);
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_mmap, "DMA_BUF");
diff --git a/include/trace/events/dma_buf.h b/include/trace/events/dma_buf.h
new file mode 100644
index 000000000000..ab593dea4617
--- /dev/null
+++ b/include/trace/events/dma_buf.h
@@ -0,0 +1,281 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM dma_buf
+
+#if !defined(_TRACE_DMA_BUF_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_DMA_BUF_H
+
+#include <linux/dma-buf.h>
+#include <linux/tracepoint.h>
+
+TRACE_EVENT(dma_buf_export,
+
+	TP_PROTO(struct dma_buf *dmabuf),
+
+	TP_ARGS(dmabuf),
+
+	TP_STRUCT__entry(
+		__string(exp_name, dmabuf->exp_name)
+		__string(name, dmabuf->name)
+		__field(size_t, size)
+		__field(ino_t, ino)
+		__field(long, f_refcnt)
+	),
+
+	TP_fast_assign(
+		__assign_str(exp_name);
+		spin_lock(&dmabuf->name_lock);
+		__assign_str(name);
+		spin_unlock(&dmabuf->name_lock);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+		__entry->f_refcnt = file_count(dmabuf->file);
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu f_refcnt=%ld",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino,
+		  __entry->f_refcnt)
+);
+
+TRACE_EVENT(dma_buf_fd,
+
+	TP_PROTO(struct dma_buf *dmabuf, int fd),
+
+	TP_ARGS(dmabuf, fd),
+
+	TP_STRUCT__entry(
+		__string(exp_name, dmabuf->exp_name)
+		__string(name, dmabuf->name)
+		__field(size_t, size)
+		__field(ino_t, ino)
+		__field(int, fd)
+		__field(long, f_refcnt)
+	),
+
+	TP_fast_assign(
+		__assign_str(exp_name);
+		spin_lock(&dmabuf->name_lock);
+		__assign_str(name);
+		spin_unlock(&dmabuf->name_lock);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+		__entry->fd = fd;
+		__entry->f_refcnt = file_count(dmabuf->file);
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu fd=%d f_refcnt=%ld",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino,
+		  __entry->fd,
+		  __entry->f_refcnt)
+);
+
+TRACE_EVENT(dma_buf_mmap_internal,
+
+	TP_PROTO(struct dma_buf *dmabuf),
+
+	TP_ARGS(dmabuf),
+
+	TP_STRUCT__entry(
+		__string(exp_name, dmabuf->exp_name)
+		__string(name, dmabuf->name)
+		__field(size_t, size)
+		__field(ino_t, ino)
+		__field(long, f_refcnt)
+	),
+
+	TP_fast_assign(
+		__assign_str(exp_name);
+		spin_lock(&dmabuf->name_lock);
+		__assign_str(name);
+		spin_unlock(&dmabuf->name_lock);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+		__entry->f_refcnt = file_count(dmabuf->file);
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu f_refcnt=%ld",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino,
+		  __entry->f_refcnt)
+);
+
+TRACE_EVENT(dma_buf_mmap,
+
+	TP_PROTO(struct dma_buf *dmabuf),
+
+	TP_ARGS(dmabuf),
+
+	TP_STRUCT__entry(
+		__string(exp_name, dmabuf->exp_name)
+		__string(name, dmabuf->name)
+		__field(size_t, size)
+		__field(ino_t, ino)
+		__field(long, f_refcnt)
+	),
+
+	TP_fast_assign(
+		__assign_str(exp_name);
+		spin_lock(&dmabuf->name_lock);
+		__assign_str(name);
+		spin_unlock(&dmabuf->name_lock);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+		__entry->f_refcnt = file_count(dmabuf->file);
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu f_refcnt=%ld",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino,
+		  __entry->f_refcnt)
+);
+
+TRACE_EVENT(dma_buf_attach,
+
+	TP_PROTO(struct dma_buf *dmabuf, struct device *dev),
+
+	TP_ARGS(dmabuf, dev),
+
+	TP_STRUCT__entry(
+		__string(dname, dev_name(dev))
+		__string(exp_name, dmabuf->exp_name)
+		__string(name, dmabuf->name)
+		__field(size_t, size)
+		__field(ino_t, ino)
+		__field(long, f_refcnt)
+	),
+
+	TP_fast_assign(
+		__assign_str(dname);
+		__assign_str(exp_name);
+		spin_lock(&dmabuf->name_lock);
+		__assign_str(name);
+		spin_unlock(&dmabuf->name_lock);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+		__entry->f_refcnt = file_count(dmabuf->file);
+	),
+
+	TP_printk("dev_name=%s exp_name=%s name=%s size=%zu ino=%lu f_refcnt=%ld",
+		  __get_str(dname),
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino,
+		  __entry->f_refcnt)
+);
+
+TRACE_EVENT(dma_buf_detach,
+
+	TP_PROTO(struct dma_buf *dmabuf),
+
+	TP_ARGS(dmabuf),
+
+	TP_STRUCT__entry(
+		__string(exp_name, dmabuf->exp_name)
+		__string(name, dmabuf->name)
+		__field(size_t, size)
+		__field(ino_t, ino)
+		__field(long, f_refcnt)
+	),
+
+	TP_fast_assign(
+		__assign_str(exp_name);
+		spin_lock(&dmabuf->name_lock);
+		__assign_str(name);
+		spin_unlock(&dmabuf->name_lock);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+		__entry->f_refcnt = file_count(dmabuf->file);
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu f_refcnt=%ld",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino,
+		  __entry->f_refcnt)
+);
+
+TRACE_EVENT(dma_buf_get,
+
+	TP_PROTO(int fd, struct file *file),
+
+	TP_ARGS(fd, file),
+
+	TP_STRUCT__entry(
+		__string(exp_name, ((struct dma_buf *)file->private_data)->exp_name)
+		__string(name, ((struct dma_buf *)file->private_data)->name)
+		__field(size_t, size)
+		__field(ino_t, ino)
+		__field(int, fd)
+		__field(long, f_refcnt)
+	),
+
+	TP_fast_assign(
+		struct dma_buf *dmabuf = (struct dma_buf *)file->private_data;
+
+		__assign_str(exp_name);
+		spin_lock(&dmabuf->name_lock);
+		__assign_str(name);
+		spin_unlock(&dmabuf->name_lock);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+		__entry->fd = fd;
+		__entry->f_refcnt = file_count(file);
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu fd=%d f_refcnt=%ld",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino,
+		  __entry->fd,
+		  __entry->f_refcnt)
+);
+
+TRACE_EVENT(dma_buf_put,
+
+	TP_PROTO(struct dma_buf *dmabuf),
+
+	TP_ARGS(dmabuf),
+
+	TP_STRUCT__entry(
+		__string(exp_name, dmabuf->exp_name)
+		__string(name, dmabuf->name)
+		__field(size_t, size)
+		__field(ino_t, ino)
+		__field(long, f_refcnt)
+	),
+
+	TP_fast_assign(
+		__assign_str(exp_name);
+		spin_lock(&dmabuf->name_lock);
+		__assign_str(name);
+		spin_unlock(&dmabuf->name_lock);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+		__entry->f_refcnt = file_count(dmabuf->file);
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu f_refcnt=%ld",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino,
+		  __entry->f_refcnt)
+);
+
+#endif /* _TRACE_DMA_BUF_H */
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
