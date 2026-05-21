Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFUqFTDMDmpoCQYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 11:11:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD7A5A1FB5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 11:11:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC1EA4097E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 09:11:10 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 8BB753F985
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 09:10:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=TftZsusl;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1779354659;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=tL4bc9P4R8KGMQCjOMGjzl7XMoB1LctMJh1QnkgN/GQ=;
	b=TftZsusl2lfPZaLZYeSxPnoef7MorWoJn2VIhby69OvlFvQfBbjZfDzzCGiYgzH1Xv3Kft
	kZt622IBiT+hKOuz1OJ+jF61E9SDgRFw/f5irhegbbkrErg1gOqjvLG1rJXgFL970P1iOc
	sN6Rj4OfNRGwx9V0S6pzL89Yf34C4VU=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-395-3wFvOmq4Mn6ew9z9wV80vw-1; Thu,
 21 May 2026 05:10:54 -0400
X-MC-Unique: 3wFvOmq4Mn6ew9z9wV80vw-1
X-Mimecast-MFC-AGG-ID: 3wFvOmq4Mn6ew9z9wV80vw_1779354652
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 798831956056;
	Thu, 21 May 2026 09:10:52 +0000 (UTC)
Received: from [192.168.1.153] (headnet01.pony-001.prod.iad2.dc.redhat.com [10.2.32.101])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 380DD19560A3;
	Thu, 21 May 2026 09:10:49 +0000 (UTC)
From: Albert Esteve <aesteve@redhat.com>
Date: Thu, 21 May 2026 11:10:13 +0200
Message-Id: <20260521-dmabuf-limit-access-v1-0-26c01e27365a@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MSQqAMAxA0atI1gY6OOFVxEWtUQNONCqCeHeLy
 7f4/wGhwCRQJw8Eulh4WyN0moCf3DoSch8NRplC5UZhv7juHHDmhQ903pMIltYU2ua2yrSDWO6
 BBr7/a9O+7wfhdnW9ZQAAAA==
X-Change-ID: 20260520-dmabuf-limit-access-73261353841a
To: Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>, Shuah Khan <shuah@kernel.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779354648; l=3435;
 i=aesteve@redhat.com; s=20260303; h=from:subject:message-id;
 bh=LUVEbF2qik6JDxZLdpWxQMrWMt8EdXOnTWHgU/bDF84=;
 b=1nbNWgdOgax/ZiztigFfGJVUWcZKvRsY/6bLBBCxRH9PBuJ2gSbSAkKc9o7ctC21xFonFEIBn
 UfK5yxy7NMID+5Z66wciWiUPogDnxCkZe9uRxn+1h/0yrM9AwPOE0eF
X-Developer-Key: i=aesteve@redhat.com; a=ed25519;
 pk=YSFz6sOHd2L45+Fr8DIvHTi6lSIjhLZ5T+rkxspJt1s=
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: wYITHW0I3iduSS1mpZZIZpIdI_CiXoTXZQGusUbhMBg_1779354652
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
Message-ID-Hash: 33LI7IQEEQXQJQUNHA4UTSMK3VOSGTA3
X-Message-ID-Hash: 33LI7IQEEQXQJQUNHA4UTSMK3VOSGTA3
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, mripard@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/2] dma-buf: add DMA_BUF_IOCTL_DERIVE for reduced-permission aliases
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/33LI7IQEEQXQJQUNHA4UTSMK3VOSGTA3/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	NEURAL_HAM(-0.00)[-0.780];
	DKIM_TRACE(0.00)[redhat.com:-]
X-Rspamd-Queue-Id: DBD7A5A1FB5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When sharing a dma-buf between components of different trust levels, the
allocator may need to hand a consumer a read-only view of a buffer it
holds with read-write access. An example is a camera pipeline where the
capture component writes frames into a buffer and needs to pass a
read-only handle to a downstream processing component that should not be
able to modify the data.

However, no such mechanism exists today. The access mode of a dma-buf
file descriptor is fixed at export time, and the standard POSIX
interfaces for duplicating or changing file descriptors (i.e., dup(2),
dup3(2), and fcntl(F_SETFL)) cannot alter the read/write access mode of
the copy.

One natural candidate would be reopening via /proc/self/fd/<N> with
O_RDONLY, which works for regular files. For dma-buf this would fail
(that is, if we were to add a new handler for open f_op) with ENXIO
because the dmabuf pseudo-filesystem carries SB_NOUSER, which prevents
the VFS from opening its files through path-based resolution from
userspace.

Alternatively, exporting the buffer twice would produce two independent
dma_buf instances, which breaks fence synchronization.

Therefore we add a new DMA_BUF_IOCTL_DERIVE ioctl, which produces a new
file descriptor for an existing dma-buf with a caller-specified subset
of the original permissions:

```
  struct dma_buf_derive { __u32 flags; __s32 fd; };

  struct dma_buf_derive req = { .flags = O_RDONLY | O_CLOEXEC };
  ioctl(rw_fd, DMA_BUF_IOCTL_DERIVE, &req);
  /* req.fd is now a read-only alias of the same buffer */
```

Permission escalation is rejected with -EACCES. The new fd aliases the
same struct dma_buf as the original, same dma_resv, same exporter ops,
same underlying memory; so importers attaching to either fd see the same
fence timeline and operate on the same object. Access control for which
components may receive or pass on restricted descriptors can be layered on
top via SELinux file:read and file:write permissions.

A shared writable mapping (PROT_WRITE | MAP_SHARED) on the read-only fd is
rejected with -EACCES in dma_buf_mmap_internal().

Two small internal adjustments accompany the ioctl:
- __dma_buf_list_del() is moved to dma_buf_release() so it fires exactly
  once on dentry destruction rather than on every file close.
- dma_buf_file_release() is updated to call dma_buf_put() only for
  files that are not the primary dma-buf file.

This may not be the best approach, but after considering different
options and alternatives (as described above), we decided to raise the
discussion upstream. Thus, we welcome any alternative proposal or ideas.

The series is structured as:
- Patch 1 adds the new ioctl implementation.
- Patch 2 adds selftests covering the new ioctl.

Signed-off-by: Albert Esteve <aesteve@redhat.com>
---
Albert Esteve (2):
      dma-buf: add DMA_BUF_IOCTL_DERIVE for reduced-permission aliases
      selftests: dma-buf: add DERIVE ioctl tests

 drivers/dma-buf/dma-buf.c                          |  58 ++++++++++-
 include/uapi/linux/dma-buf.h                       |  28 +++++
 tools/testing/selftests/dmabuf-heaps/dmabuf-heap.c | 114 ++++++++++++++++++++-
 3 files changed, 198 insertions(+), 2 deletions(-)
---
base-commit: ab5fce87a778cb780a05984a2ca448f2b41aafbf
change-id: 20260520-dmabuf-limit-access-73261353841a

Best regards,
-- 
Albert Esteve <aesteve@redhat.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
