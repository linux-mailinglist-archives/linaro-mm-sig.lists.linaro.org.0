Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBhWGgoA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AB8410C13
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB180405D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:28:08 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	by lists.linaro.org (Postfix) with ESMTPS id AB4603F752
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Nov 2025 13:36:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=ZPqxbVOC;
	spf=pass (lists.linaro.org: domain of gxxa03070307@gmail.com designates 209.85.216.46 as permitted sender) smtp.mailfrom=gxxa03070307@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-34361025290so3412034a91.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Nov 2025 05:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763991416; x=1764596216; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=69heBc7lxItVc7wNt1exM2CAHwdvZiFMjd3lDNLudqQ=;
        b=ZPqxbVOCM3g5Hs2y7s5CyDD9zSo6D77MLKtlOyzCHK1EL3ALJXUDHyg81mcje4hOJj
         EMRuvZ2i4hkBWUk/2wNHE5XSQM0O68Srqs34xPFyZ3p6LUn4C57m3AFb52p6fSLNZfp7
         ataA3kyBmppsIYUJD6Sbsb1z7i3lpTPS++gXX0wE+lA0HG2H/uOz9XO6QExDeY0YNu1g
         PY/MhQ/FSahWyiIzlUxIgYnSwqVKcc0lZSTV6kUsoyVYf6EKjvQuHtPXzxUTTsbFBtb5
         IZk9IOhmR+hZQXn9bDgA2JFcDDKLuZeaGvHq+H6cIjiRVLLUtQDdZDQCJpP+ZbYenQSh
         8zjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763991416; x=1764596216;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=69heBc7lxItVc7wNt1exM2CAHwdvZiFMjd3lDNLudqQ=;
        b=vEYbv0pRezv4JzK7xMmDvk09C0vQuYx9PMB/uy/TQxTCkmjtGnBGcOMyXvn5BfvW7W
         +LmdnnZcOws4PgQlvbtps5Kr7HU0tnyPfYZJpWgRLqG+TWWZy/G0ynaYobdWwVy+MEG8
         XdCjLwOb9LPZ64WhJGLzZG90mCqiBnhIM55AkPGbSmua70YHR6FbQJhPcsydKyp1CdM/
         94vT1wXkC9MNQAt2KQn/bbrXPbU+mX9LLoGz8ApXCpIrDjRzVGhSstOsewp1F8FUfv5Q
         DRxXm+Sglo37dUH1lx8piuOYmMfNcWs89NNp9pSZY46W6FXTmtfPEuqrq3TcpvlCUGnj
         SQ6Q==
X-Forwarded-Encrypted: i=1; AJvYcCX+OauTeKcJZm+NsmI2BrFQRuXh9KjpBLBIHzeai9VT+Ge0gM0ZJHvIDtOoz2igoVHkFwv/qXMzYKvoPMTy@lists.linaro.org
X-Gm-Message-State: AOJu0Ywo84Dv2M+iL04oc9cw7e98mWyHEM5lpNf2ErfS7evaHV4PQTUJ
	s+WiPokegTBTrbzuo+7/LHervJ8RHg5cqQo3FaKyLEm6xghhclSk8WOj
X-Gm-Gg: ASbGnctLR0pr9ftfzoebIeeY1mumlcqgQlV7N4dvEnCG8nrAs+ICW1SXclLef/TYSa3
	ThPlYOpTB3jTx1Zi63Cu0J/lTQL3+XTSH3I008yLuNFkGgxUZvb1q68bF/YHN4Hi1BgZ0O06Qq9
	FHsSHntEM+r6CqytA6mc6URovkWtOIA3i9rw0P0hWsKzmaEt1vlIyAJAgN5b4YFMHPw8VFf7rbi
	t4PhgCF9Cd1eji38SWWuFQuAYNYF5T25YK5iXxU0MGiyB83AhM6EX0chzCByaXfScRbvOXVtSzk
	68vhBH46UdxJzkZjpKM19T3dEIUk4UuovcFvfNIIZxp89Y3qfjjKLOI/RDwHrHSvsAEAbVzH3xo
	Aw5DydxRYjWoQ/NPdQdqUCrZJ8LkWRRtvDRTiU7/3Lkq87andqLw1/TDmfiq/12nWgCXtwPxVqf
	3I/XO9hBveXfaQVptGc6LX
X-Google-Smtp-Source: AGHT+IG8VQwWoauvzDFbRHO/aVA7+5Mp7waCEC1xvbAJGyrpIlW5gSd8E1x6DOClV9RsbiV2xW4jVQ==
X-Received: by 2002:a17:90b:2f85:b0:340:be4d:a718 with SMTP id 98e67ed59e1d1-34733e4a4eemr14390507a91.7.1763991415673;
        Mon, 24 Nov 2025 05:36:55 -0800 (PST)
Received: from xiao.mioffice.cn ([43.224.245.230])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-345b04771e6sm8091573a91.8.2025.11.24.05.36.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 05:36:55 -0800 (PST)
From: Xiang Gao <gxxa03070307@gmail.com>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	rostedt@goodmis.org,
	mhiramat@kernel.org
Date: Mon, 24 Nov 2025 21:36:48 +0800
Message-Id: <20251124133648.72668-1-gxxa03070307@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: gxxa03070307@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: G54CS3YHPLTJ7FLS57LWF6MNFPE3ITK7
X-Message-ID-Hash: G54CS3YHPLTJ7FLS57LWF6MNFPE3ITK7
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:51 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, mathieu.desnoyers@efficios.com, dhowells@redhat.com, kuba@kernel.org, brauner@kernel.org, akpm@linux-foundation.org, linux-trace-kernel@vger.kernel.org, gaoxiang17 <gaoxiang17@xiaomi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: add some tracepoints to debug.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G54CS3YHPLTJ7FLS57LWF6MNFPE3ITK7/>
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
	DATE_IN_PAST(1.00)[3433];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[xiaomi.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.512];
	FROM_NEQ_ENVFROM(0.00)[gxxa03070307@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 02AB8410C13
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: gaoxiang17 <gaoxiang17@xiaomi.com>

With these tracepoints, we can track dmabuf in real time.

For example:
   binder:3025_3-10524   [000] .....   553.310313: dma_buf_export: exp_name=qcom,system name=(null) size=12771328 ino=2799
   binder:3025_3-10524   [000] .....   553.310318: dma_buf_fd: exp_name=qcom,system name=(null) size=12771328 ino=2799 fd=8
    RenderThread-9307    [000] .....   553.310869: dma_buf_get: exp_name=qcom,system name=blastBufferQueue for scaleUpDow size=12771328 ino=2799 fd=673 f_ref=4
    RenderThread-9307    [000] .....   553.310871: dma_buf_attach: dev_name=kgsl-3d0 exp_name=qcom,system name=blastBufferQueue for scaleUpDow size=12771328 ino=2799
    RenderThread-9307    [000] .....   553.310946: dma_buf_mmap_internal: exp_name=qcom,system name=blastBufferQueue for scaleUpDow size=12771328 ino=2799
    RenderThread-9307    [004] .....   553.315084: dma_buf_detach: exp_name=qcom,system name=blastBufferQueue for scaleUpDow size=12771328 ino=2799
    RenderThread-9307    [004] .....   553.315084: dma_buf_put: exp_name=qcom,system name=blastBufferQueue for scaleUpDow size=12771328 ino=2799 f_ref=5

Signed-off-by: gaoxiang17 <gaoxiang17@xiaomi.com>
---
 drivers/dma-buf/dma-buf.c      |  19 +++
 include/trace/events/dma_buf.h | 245 +++++++++++++++++++++++++++++++++
 2 files changed, 264 insertions(+)
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
index 000000000000..796ae444f6ae
--- /dev/null
+++ b/include/trace/events/dma_buf.h
@@ -0,0 +1,245 @@
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
+	),
+
+	TP_fast_assign(
+		__assign_str(exp_name);
+		__assign_str(name);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino)
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
+	),
+
+	TP_fast_assign(
+		__assign_str(exp_name);
+		__assign_str(name);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+		__entry->fd = fd;
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu fd=%d",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino,
+		  __entry->fd)
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
+	),
+
+	TP_fast_assign(
+		__assign_str(exp_name);
+		__assign_str(name);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino)
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
+	),
+
+	TP_fast_assign(
+		__assign_str(exp_name);
+		__assign_str(name);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino)
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
+	),
+
+	TP_fast_assign(
+		__assign_str(dname);
+		__assign_str(exp_name);
+		__assign_str(name);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+	),
+
+	TP_printk("dev_name=%s exp_name=%s name=%s size=%zu ino=%lu",
+		  __get_str(dname),
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino)
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
+	),
+
+	TP_fast_assign(
+		__assign_str(exp_name);
+		__assign_str(name);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino)
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
+		__field(long, f_ref)
+	),
+
+	TP_fast_assign(
+		__assign_str(exp_name);
+		__assign_str(name);
+		__entry->size = ((struct dma_buf *)file->private_data)->size;
+		__entry->ino = ((struct dma_buf *)file->private_data)->file->f_inode->i_ino;
+		__entry->fd = fd;
+		__entry->f_ref = file_ref_get(&file->f_ref);
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu fd=%d f_ref=%ld",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino,
+		  __entry->fd,
+		  __entry->f_ref)
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
+		__field(long, f_ref)
+	),
+
+	TP_fast_assign(
+		__assign_str(exp_name);
+		__assign_str(name);
+		__entry->size = dmabuf->size;
+		__entry->ino = dmabuf->file->f_inode->i_ino;
+		__entry->f_ref = file_ref_get(&dmabuf->file->f_ref);
+	),
+
+	TP_printk("exp_name=%s name=%s size=%zu ino=%lu f_ref=%ld",
+		  __get_str(exp_name),
+		  __get_str(name),
+		  __entry->size,
+		  __entry->ino,
+		  __entry->f_ref)
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
