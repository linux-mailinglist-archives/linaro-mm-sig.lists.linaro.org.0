Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJGGKTrMDmpoCQYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 11:11:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE435A1FCC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 11:11:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B961340980
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 09:11:20 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 99E4E40984
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 09:11:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=Y4BAHJGK;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1779354663;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/PCaVPAbPc0wJCZVNgUDA/e9ykpfDoQlMxFOJwanDFI=;
	b=Y4BAHJGKfPiUC+b4jDo/Rm5yGIwMtI0j3tDMSU61ZxNR5/3bPD3U14CPe9pYs8ms3h9QFd
	3Rt6FSYbdqZBnEuJcA29OlaEodBQkwGvxJaYYJKULOuKvqJQwkRupR7ISuwdsy6MSaYlGT
	PvbO6N42O/w1JhWTkoBWa/6ESIFbKK4=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-336-5AfHoqXmMYqWQbFsJppvBA-1; Thu,
 21 May 2026 05:10:57 -0400
X-MC-Unique: 5AfHoqXmMYqWQbFsJppvBA-1
X-Mimecast-MFC-AGG-ID: 5AfHoqXmMYqWQbFsJppvBA_1779354656
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D0774180035D;
	Thu, 21 May 2026 09:10:55 +0000 (UTC)
Received: from [192.168.1.153] (headnet01.pony-001.prod.iad2.dc.redhat.com [10.2.32.101])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D16AC19560A6;
	Thu, 21 May 2026 09:10:52 +0000 (UTC)
From: Albert Esteve <aesteve@redhat.com>
Date: Thu, 21 May 2026 11:10:14 +0200
MIME-Version: 1.0
Message-Id: <20260521-dmabuf-limit-access-v1-1-26c01e27365a@redhat.com>
References: <20260521-dmabuf-limit-access-v1-0-26c01e27365a@redhat.com>
In-Reply-To: <20260521-dmabuf-limit-access-v1-0-26c01e27365a@redhat.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>, Shuah Khan <shuah@kernel.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779354648; l=6318;
 i=aesteve@redhat.com; s=20260303; h=from:subject:message-id;
 bh=5Tv/PuOUE3lMfNJIxFBx6QKMiev0LMyHcGnY1FLbFjI=;
 b=+HlK3v2Xzm8Vf64ep+Nz1sznpvOeM1j58Tv1jogL0OTcxB9lXU3UhW8W5us50KJpKHWWv4Txy
 v3oGcjCaj+vAhNnTiz1EEsvzhBfy0/oKY/TzaUxusdwJ6eugzuQVYQB
X-Developer-Key: i=aesteve@redhat.com; a=ed25519;
 pk=YSFz6sOHd2L45+Fr8DIvHTi6lSIjhLZ5T+rkxspJt1s=
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: tY_N59N3rCDkfCwHuYnT4tnbtuEGPHFC94FnKhcxeFM_1779354656
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
Message-ID-Hash: 7VZKKGGYIFBGDL7DMP3S2HXJRC6HOI5F
X-Message-ID-Hash: 7VZKKGGYIFBGDL7DMP3S2HXJRC6HOI5F
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, mripard@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/2] dma-buf: add DMA_BUF_IOCTL_DERIVE for reduced-permission aliases
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7VZKKGGYIFBGDL7DMP3S2HXJRC6HOI5F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	NEURAL_HAM(-0.00)[-0.695];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-]
X-Rspamd-Queue-Id: 3FE435A1FCC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When sharing a dma-buf between components of different trust levels,
the allocator may need to hand out a read-only view of a buffer it
holds with read-write access. Currently there is no mechanism to do
this: the file flags set at allocation time are fixed for the
lifetime of the dma-buf, and dup(2) and dup3(2) cannot change the
access mode of the new fd.

Add DMA_BUF_IOCTL_DERIVE, which takes a struct dma_buf_derive carrying
the desired access flags and returns a new file descriptor for the same
buffer with those flags applied. Permission escalation is rejected with
EACCES.

The new fd aliases the same struct dma_buf, same dma_resv, same exporter
ops, same underlying memory. Importers that attach to either fd operate
on the same object and observe the same fence timeline.

To support multiple struct file instances sharing one struct dma_buf,
two small internal adjustments are required. First, move
__dma_buf_list_del() to dma_buf_release() so that list removal fires
exactly once when the dentry is destroyed. Second, update
dma_buf_file_release() to call dma_buf_put() only for the files that
are not primary dmabuf files, leaving the primary fd's refcount managed
by the normal dentry lifecycle.

Finally, enforce the access restriction in dma_buf_mmap_internal():
a shared writable mapping (MAP_SHARED + PROT_WRITE) on a read-only fd
is rejected with -EACCES. Without this check, O_RDONLY on a dma-buf
fd would be cosmetic, as the VFS does not enforce f_mode for writable
mmap on anonymous inodes.

Signed-off-by: Albert Esteve <aesteve@redhat.com>
---
 drivers/dma-buf/dma-buf.c    | 58 +++++++++++++++++++++++++++++++++++++++++++-
 include/uapi/linux/dma-buf.h | 28 +++++++++++++++++++++
 2 files changed, 85 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 71f37544a5c61..34a3872365730 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -180,6 +180,7 @@ static void dma_buf_release(struct dentry *dentry)
 	 */
 	BUG_ON(dmabuf->cb_in.active || dmabuf->cb_out.active);
 
+	__dma_buf_list_del(dmabuf);
 	dmabuf->ops->release(dmabuf);
 
 	if (dmabuf->resv == (struct dma_resv *)&dmabuf[1])
@@ -193,10 +194,13 @@ static void dma_buf_release(struct dentry *dentry)
 
 static int dma_buf_file_release(struct inode *inode, struct file *file)
 {
+	struct dma_buf *dmabuf = file->private_data;
+
 	if (!is_dma_buf_file(file))
 		return -EINVAL;
 
-	__dma_buf_list_del(file->private_data);
+	if (file != dmabuf->file)
+		dma_buf_put(dmabuf);
 
 	return 0;
 }
@@ -232,6 +236,11 @@ static int dma_buf_mmap_internal(struct file *file, struct vm_area_struct *vma)
 	if (!is_dma_buf_file(file))
 		return -EINVAL;
 
+	if ((vma->vm_flags & VM_WRITE) &&
+	    (vma->vm_flags & VM_SHARED) &&
+	    !(file->f_mode & FMODE_WRITE))
+		return -EACCES;
+
 	dmabuf = file->private_data;
 
 	/* check if buffer supports mmap */
@@ -537,6 +546,50 @@ static long dma_buf_import_sync_file(struct dma_buf *dmabuf,
 }
 #endif
 
+static const struct file_operations dma_buf_fops;
+
+static int dma_buf_ioctl_derive(struct dma_buf *dmabuf, struct file *file,
+				void __user *udata)
+{
+	struct dma_buf_derive params;
+	struct file *new_file;
+	int new_fd;
+
+	if (copy_from_user(&params, udata, sizeof(params)))
+		return -EFAULT;
+
+	if (params.flags & ~(O_ACCMODE | O_CLOEXEC))
+		return -EINVAL;
+
+	/* Escalating permissions is not allowed. */
+	if ((params.flags & O_ACCMODE) == O_RDWR &&
+	    !(file->f_mode & FMODE_WRITE))
+		return -EACCES;
+
+	new_file = alloc_file_clone(dmabuf->file, params.flags, &dma_buf_fops);
+	if (IS_ERR(new_file))
+		return PTR_ERR(new_file);
+
+	get_dma_buf(dmabuf);
+	new_file->private_data = dmabuf;
+
+	new_fd = get_unused_fd_flags(params.flags & O_CLOEXEC ? O_CLOEXEC : 0);
+	if (new_fd < 0) {
+		fput(new_file);
+		return new_fd;
+	}
+
+	params.fd = new_fd;
+	if (copy_to_user(udata, &params, sizeof(params))) {
+		put_unused_fd(new_fd);
+		fput(new_file);
+		return -EFAULT;
+	}
+
+	fd_install(new_fd, new_file);
+	return 0;
+}
+
 static long dma_buf_ioctl(struct file *file,
 			  unsigned int cmd, unsigned long arg)
 {
@@ -587,6 +640,9 @@ static long dma_buf_ioctl(struct file *file,
 		return dma_buf_import_sync_file(dmabuf, (const void __user *)arg);
 #endif
 
+	case DMA_BUF_IOCTL_DERIVE:
+		return dma_buf_ioctl_derive(dmabuf, file, (void __user *)arg);
+
 	default:
 		return -ENOTTY;
 	}
diff --git a/include/uapi/linux/dma-buf.h b/include/uapi/linux/dma-buf.h
index e827c9d20c5d3..d0cf616228e55 100644
--- a/include/uapi/linux/dma-buf.h
+++ b/include/uapi/linux/dma-buf.h
@@ -168,6 +168,33 @@ struct dma_buf_import_sync_file {
 	__s32 fd;
 };
 
+/**
+ * struct dma_buf_derive - Obtain a dma-buf fd with reduced access permissions
+ *
+ * Userspace can perform a DMA_BUF_IOCTL_DERIVE to obtain a second file
+ * descriptor for the same dma-buf with a subset of the calling fd's
+ * permissions.  This allows a producer holding read-write access to hand a
+ * read-only view to a less-privileged consumer without giving up its own
+ * write access or allocating a separate buffer.
+ *
+ * Unlike first-export ioctls, the new fd is not a re-export. It shares the
+ * same reservation object, exporter ops, and underlying memory as the
+ * original.
+ *
+ * The requested permissions must not exceed those of the calling fd.
+ */
+struct dma_buf_derive {
+	/**
+	 * @flags: Requested access flags.
+	 *
+	 * Accepts O_RDONLY or O_RDWR, optionally combined with O_CLOEXEC.
+	 * All other bits must be zero.
+	 */
+	__u32 flags;
+	/** @fd: Returned file descriptor with the requested permissions */
+	__s32 fd;
+};
+
 #define DMA_BUF_BASE		'b'
 #define DMA_BUF_IOCTL_SYNC	_IOW(DMA_BUF_BASE, 0, struct dma_buf_sync)
 
@@ -179,5 +206,6 @@ struct dma_buf_import_sync_file {
 #define DMA_BUF_SET_NAME_B	_IOW(DMA_BUF_BASE, 1, __u64)
 #define DMA_BUF_IOCTL_EXPORT_SYNC_FILE	_IOWR(DMA_BUF_BASE, 2, struct dma_buf_export_sync_file)
 #define DMA_BUF_IOCTL_IMPORT_SYNC_FILE	_IOW(DMA_BUF_BASE, 3, struct dma_buf_import_sync_file)
+#define DMA_BUF_IOCTL_DERIVE		_IOWR(DMA_BUF_BASE, 4, struct dma_buf_derive)
 
 #endif

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
