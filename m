Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B257C87B6D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 02:39:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 19C033F96E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 01:39:02 +0000 (UTC)
Received: from relay.hostedemail.com (smtprelay0016.hostedemail.com [216.40.44.16])
	by lists.linaro.org (Postfix) with ESMTPS id 971663F820
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 01:38:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of rostedt@goodmis.org designates 216.40.44.16 as permitted sender) smtp.mailfrom=rostedt@goodmis.org;
	dmarc=pass (policy=none) header.from=goodmis.org
Received: from omf09.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay02.hostedemail.com (Postfix) with ESMTP id D871F13ADCA;
	Wed, 26 Nov 2025 01:38:43 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf09.hostedemail.com (Postfix) with ESMTPA id D182320025;
	Wed, 26 Nov 2025 01:38:40 +0000 (UTC)
Date: Tue, 25 Nov 2025 20:39:24 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Xiang Gao <gxxa03070307@gmail.com>
Message-ID: <20251125203924.3bd59b2c@gandalf.local.home>
In-Reply-To: <20251125162949.220488-1-gxxa03070307@gmail.com>
References: <20251125162949.220488-1-gxxa03070307@gmail.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Stat-Signature: wayw5miybq35f7m8uxpd3ngttpjrb3gw
X-Spam-Status: No, score=-0.12
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX19vpd68vxmtNTdWxmMcQSSct/9/ajf8E4I=
X-HE-Tag: 1764121120-98615
X-HE-Meta: U2FsdGVkX18h4EAVllEURvlPrEQAWiGdg5Rzdx39bGekUaY1J1t/YJRFzEaYdhawLg/KlSqRN5mRr4NBH6Ky27JMAVmrJ9ItCPoks+A9WoK1Ep6ONWgg9MV8UVdQHiWryeSUUDsov6fk87uAoXEbr5sqfieXmx7hyUMoDBYZB1RLbqtuqvGwvcIuyG72l1GmYAQPIxgHY4mJZmOv/OvKlGxA49CXEM5WzRAsZIAJn7uvspoPJz6MyGgsf21JsuBjn1NjBHKMDNQTNUufAgIaZGsjYd87M03DaNE9J9bwOcuWB25V/nxYrhAPmRqQR6GH18jbQaFXuk4vLqCvSNI7u57mjRJKpbqP
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.20 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	HFILTER_HOSTNAME_2(1.00)[smtprelay0016.hostedemail.com];
	DMARC_POLICY_ALLOW(-0.50)[goodmis.org,none];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.40.44.16:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.40.44.0/24];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	URIBL_BLOCKED(0.00)[relay.hostedemail.com:helo];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 971663F820
X-Spamd-Bar: ---
Message-ID-Hash: WZYN2S77PBPKOB5CBIBKHTACNYVKO5GU
X-Message-ID-Hash: WZYN2S77PBPKOB5CBIBKHTACNYVKO5GU
X-MailFrom: rostedt@goodmis.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, mhiramat@kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, mathieu.desnoyers@efficios.com, dhowells@redhat.com, kuba@kernel.org, brauner@kernel.org, akpm@linux-foundation.org, linux-trace-kernel@vger.kernel.org, gaoxiang17 <gaoxiang17@xiaomi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: add some tracepoints to debug.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WZYN2S77PBPKOB5CBIBKHTACNYVKO5GU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 26 Nov 2025 00:29:49 +0800
Xiang Gao <gxxa03070307@gmail.com> wrote:

> +++ b/include/trace/events/dma_buf.h
> @@ -0,0 +1,281 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#undef TRACE_SYSTEM
> +#define TRACE_SYSTEM dma_buf
> +
> +#if !defined(_TRACE_DMA_BUF_H) || defined(TRACE_HEADER_MULTI_READ)
> +#define _TRACE_DMA_BUF_H
> +
> +#include <linux/dma-buf.h>
> +#include <linux/tracepoint.h>
> +
> +TRACE_EVENT(dma_buf_export,
> +
> +	TP_PROTO(struct dma_buf *dmabuf),
> +
> +	TP_ARGS(dmabuf),
> +
> +	TP_STRUCT__entry(
> +		__string(exp_name, dmabuf->exp_name)
> +		__string(name, dmabuf->name)
> +		__field(size_t, size)
> +		__field(ino_t, ino)
> +		__field(long, f_refcnt)
> +	),
> +
> +	TP_fast_assign(
> +		__assign_str(exp_name);
> +		spin_lock(&dmabuf->name_lock);
> +		__assign_str(name);
> +		spin_unlock(&dmabuf->name_lock);

The above isn't doing what you think it's doing. The name is assigned
before this by the above __string(name, dmabuf->name).

You really shouldn't be taking any locks in a tracepoint. A tracepoint is a
callback, that isn't called most of the time. You could be hiding very
hard to find deadlocks by taking a lock in a tracepoint callback.

You need to take the lock around the tracepoint call itself where it is
called in the code. Not in the TRACE_EVENT.

You may need to have something like:

@@ -220,6 +223,8 @@ static int dma_buf_mmap_internal(struct file *file, struct vm_area_struct *vma)
 	    dmabuf->size >> PAGE_SHIFT)
 		return -EINVAL;

+	if (trace_dma_buf_mmap_internal_enabled()) {
+		guard(spinlock)(&dmabuf->namelock);
+		trace_dma_buf_mmap_internal(dmabuf);
+	}
+
 	return dmabuf->ops->mmap(dmabuf, vma);
 }


The "trace_dma_buf_mmap_internal_enabled()" is a static branch, where it is
either a nop or a jump to the tracing code. It's not a normal conditional
branch. It acts the same as tracepoints themselves do.

> +		__entry->size = dmabuf->size;
> +		__entry->ino = dmabuf->file->f_inode->i_ino;
> +		__entry->f_refcnt = file_count(dmabuf->file);
> +	),
> +
> +	TP_printk("exp_name=%s name=%s size=%zu ino=%lu f_refcnt=%ld",
> +		  __get_str(exp_name),
> +		  __get_str(name),
> +		  __entry->size,
> +		  __entry->ino,
> +		  __entry->f_refcnt)
> +);

Below seems to be a lot of very similar TRACE_EVENT()s. A TRACE_EVENT() is
literally defined as:

#define TRACE_EVENT(name, proto, args, tstruct, assign, print) \
	DECLARE_EVENT_CLASS(name,			       \
			     PARAMS(proto),		       \
			     PARAMS(args),		       \
			     PARAMS(tstruct),		       \
			     PARAMS(assign),		       \
			     PARAMS(print));		       \
	DEFINE_EVENT(name, name, PARAMS(proto), PARAMS(args));

That is, it is both a DECLARE_EVENT_CLASS() and a DEFINE_EVENT(). You can
make one DECLARE_EVENT_CLASS() and use many DEFINE_EVENT()s with it.

Each DECLARE_EVENT_CLASS() takes up around 4 to 5 kilobytes of memory. Each
DEFINE_EVENT() takes around 300 bytes to 1K of memory. The more
DEFINE_EVENT()s you use with a single DECLARE_EVENT_CLASS(), the more
memory you save. Please try to do that.

-- Steve



> +
> +TRACE_EVENT(dma_buf_fd,
> +
> +	TP_PROTO(struct dma_buf *dmabuf, int fd),
> +
> +	TP_ARGS(dmabuf, fd),
> +
> +	TP_STRUCT__entry(
> +		__string(exp_name, dmabuf->exp_name)
> +		__string(name, dmabuf->name)
> +		__field(size_t, size)
> +		__field(ino_t, ino)
> +		__field(int, fd)
> +		__field(long, f_refcnt)
> +	),
> +
> +	TP_fast_assign(
> +		__assign_str(exp_name);
> +		spin_lock(&dmabuf->name_lock);
> +		__assign_str(name);
> +		spin_unlock(&dmabuf->name_lock);
> +		__entry->size = dmabuf->size;
> +		__entry->ino = dmabuf->file->f_inode->i_ino;
> +		__entry->fd = fd;
> +		__entry->f_refcnt = file_count(dmabuf->file);
> +	),
> +
> +	TP_printk("exp_name=%s name=%s size=%zu ino=%lu fd=%d f_refcnt=%ld",
> +		  __get_str(exp_name),
> +		  __get_str(name),
> +		  __entry->size,
> +		  __entry->ino,
> +		  __entry->fd,
> +		  __entry->f_refcnt)
> +);
> +
> +TRACE_EVENT(dma_buf_mmap_internal,
> +
> +	TP_PROTO(struct dma_buf *dmabuf),
> +
> +	TP_ARGS(dmabuf),
> +
> +	TP_STRUCT__entry(
> +		__string(exp_name, dmabuf->exp_name)
> +		__string(name, dmabuf->name)
> +		__field(size_t, size)
> +		__field(ino_t, ino)
> +		__field(long, f_refcnt)
> +	),
> +
> +	TP_fast_assign(
> +		__assign_str(exp_name);
> +		spin_lock(&dmabuf->name_lock);
> +		__assign_str(name);
> +		spin_unlock(&dmabuf->name_lock);
> +		__entry->size = dmabuf->size;
> +		__entry->ino = dmabuf->file->f_inode->i_ino;
> +		__entry->f_refcnt = file_count(dmabuf->file);
> +	),
> +
> +	TP_printk("exp_name=%s name=%s size=%zu ino=%lu f_refcnt=%ld",
> +		  __get_str(exp_name),
> +		  __get_str(name),
> +		  __entry->size,
> +		  __entry->ino,
> +		  __entry->f_refcnt)
> +);
> +
> +TRACE_EVENT(dma_buf_mmap,
> +
> +	TP_PROTO(struct dma_buf *dmabuf),
> +
> +	TP_ARGS(dmabuf),
> +
> +	TP_STRUCT__entry(
> +		__string(exp_name, dmabuf->exp_name)
> +		__string(name, dmabuf->name)
> +		__field(size_t, size)
> +		__field(ino_t, ino)
> +		__field(long, f_refcnt)
> +	),
> +
> +	TP_fast_assign(
> +		__assign_str(exp_name);
> +		spin_lock(&dmabuf->name_lock);
> +		__assign_str(name);
> +		spin_unlock(&dmabuf->name_lock);
> +		__entry->size = dmabuf->size;
> +		__entry->ino = dmabuf->file->f_inode->i_ino;
> +		__entry->f_refcnt = file_count(dmabuf->file);
> +	),
> +
> +	TP_printk("exp_name=%s name=%s size=%zu ino=%lu f_refcnt=%ld",
> +		  __get_str(exp_name),
> +		  __get_str(name),
> +		  __entry->size,
> +		  __entry->ino,
> +		  __entry->f_refcnt)
> +);
> +
> +TRACE_EVENT(dma_buf_attach,
> +
> +	TP_PROTO(struct dma_buf *dmabuf, struct device *dev),
> +
> +	TP_ARGS(dmabuf, dev),
> +
> +	TP_STRUCT__entry(
> +		__string(dname, dev_name(dev))
> +		__string(exp_name, dmabuf->exp_name)
> +		__string(name, dmabuf->name)
> +		__field(size_t, size)
> +		__field(ino_t, ino)
> +		__field(long, f_refcnt)
> +	),
> +
> +	TP_fast_assign(
> +		__assign_str(dname);
> +		__assign_str(exp_name);
> +		spin_lock(&dmabuf->name_lock);
> +		__assign_str(name);
> +		spin_unlock(&dmabuf->name_lock);
> +		__entry->size = dmabuf->size;
> +		__entry->ino = dmabuf->file->f_inode->i_ino;
> +		__entry->f_refcnt = file_count(dmabuf->file);
> +	),
> +
> +	TP_printk("dev_name=%s exp_name=%s name=%s size=%zu ino=%lu f_refcnt=%ld",
> +		  __get_str(dname),
> +		  __get_str(exp_name),
> +		  __get_str(name),
> +		  __entry->size,
> +		  __entry->ino,
> +		  __entry->f_refcnt)
> +);
> +
> +TRACE_EVENT(dma_buf_detach,
> +
> +	TP_PROTO(struct dma_buf *dmabuf),
> +
> +	TP_ARGS(dmabuf),
> +
> +	TP_STRUCT__entry(
> +		__string(exp_name, dmabuf->exp_name)
> +		__string(name, dmabuf->name)
> +		__field(size_t, size)
> +		__field(ino_t, ino)
> +		__field(long, f_refcnt)
> +	),
> +
> +	TP_fast_assign(
> +		__assign_str(exp_name);
> +		spin_lock(&dmabuf->name_lock);
> +		__assign_str(name);
> +		spin_unlock(&dmabuf->name_lock);
> +		__entry->size = dmabuf->size;
> +		__entry->ino = dmabuf->file->f_inode->i_ino;
> +		__entry->f_refcnt = file_count(dmabuf->file);
> +	),
> +
> +	TP_printk("exp_name=%s name=%s size=%zu ino=%lu f_refcnt=%ld",
> +		  __get_str(exp_name),
> +		  __get_str(name),
> +		  __entry->size,
> +		  __entry->ino,
> +		  __entry->f_refcnt)
> +);
> +
> +TRACE_EVENT(dma_buf_get,
> +
> +	TP_PROTO(int fd, struct file *file),
> +
> +	TP_ARGS(fd, file),
> +
> +	TP_STRUCT__entry(
> +		__string(exp_name, ((struct dma_buf *)file->private_data)->exp_name)
> +		__string(name, ((struct dma_buf *)file->private_data)->name)
> +		__field(size_t, size)
> +		__field(ino_t, ino)
> +		__field(int, fd)
> +		__field(long, f_refcnt)
> +	),
> +
> +	TP_fast_assign(
> +		struct dma_buf *dmabuf = (struct dma_buf *)file->private_data;
> +
> +		__assign_str(exp_name);
> +		spin_lock(&dmabuf->name_lock);
> +		__assign_str(name);
> +		spin_unlock(&dmabuf->name_lock);
> +		__entry->size = dmabuf->size;
> +		__entry->ino = dmabuf->file->f_inode->i_ino;
> +		__entry->fd = fd;
> +		__entry->f_refcnt = file_count(file);
> +	),
> +
> +	TP_printk("exp_name=%s name=%s size=%zu ino=%lu fd=%d f_refcnt=%ld",
> +		  __get_str(exp_name),
> +		  __get_str(name),
> +		  __entry->size,
> +		  __entry->ino,
> +		  __entry->fd,
> +		  __entry->f_refcnt)
> +);
> +
> +TRACE_EVENT(dma_buf_put,
> +
> +	TP_PROTO(struct dma_buf *dmabuf),
> +
> +	TP_ARGS(dmabuf),
> +
> +	TP_STRUCT__entry(
> +		__string(exp_name, dmabuf->exp_name)
> +		__string(name, dmabuf->name)
> +		__field(size_t, size)
> +		__field(ino_t, ino)
> +		__field(long, f_refcnt)
> +	),
> +
> +	TP_fast_assign(
> +		__assign_str(exp_name);
> +		spin_lock(&dmabuf->name_lock);
> +		__assign_str(name);
> +		spin_unlock(&dmabuf->name_lock);
> +		__entry->size = dmabuf->size;
> +		__entry->ino = dmabuf->file->f_inode->i_ino;
> +		__entry->f_refcnt = file_count(dmabuf->file);
> +	),
> +
> +	TP_printk("exp_name=%s name=%s size=%zu ino=%lu f_refcnt=%ld",
> +		  __get_str(exp_name),
> +		  __get_str(name),
> +		  __entry->size,
> +		  __entry->ino,
> +		  __entry->f_refcnt)
> +);
> +
> +#endif /* _TRACE_DMA_BUF_H */
> +
> +/* This part must be outside protection */
> +#include <trace/define_trace.h>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
