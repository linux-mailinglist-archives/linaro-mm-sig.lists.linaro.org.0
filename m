Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA71ABFE39
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 22:47:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B42E3445D0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 20:47:35 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 9C59740431
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 May 2025 20:47:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=TV8mT1hO;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=lyude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747860443;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=gFQBf3kZxhcw4apyjcJ1zWnId76v45p2hqlMqonSnO8=;
	b=TV8mT1hOvKeP91Eb2GQAJqRT2Op9VzkjRaIDwRZ1gu9XZsjmHsHTod/0XhvF7qnCgf201K
	1MC4LoXXHl+atPRXCD1AteOVWn6j+IHqQMPRpzExoIKRJmoGQyiAyawOroWJX8ktg056f+
	REZ139XYfhigv+CAk+g3iYw0PSO7wUQ=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-596-w1o_npdaN4S7qmHN0LBCVg-1; Wed,
 21 May 2025 16:47:17 -0400
X-MC-Unique: w1o_npdaN4S7qmHN0LBCVg-1
X-Mimecast-MFC-AGG-ID: w1o_npdaN4S7qmHN0LBCVg_1747860435
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4CF7B1800361;
	Wed, 21 May 2025 20:47:15 +0000 (UTC)
Received: from chopper.redhat.com (unknown [10.22.80.100])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id A0F3019560B7;
	Wed, 21 May 2025 20:47:10 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org,
	rust-for-linux@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Wed, 21 May 2025 16:29:07 -0400
Message-ID: <20250521204654.1610607-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-1.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.133.124:from];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,garyguo.net,protonmail.com,proton.me,google.com,umich.edu,linaro.org,amd.com,vger.kernel.org,lists.linaro.org];
	RCVD_IN_DNSWL_NONE(0.00)[170.10.133.124:from];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[lwn.net:url];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Queue-Id: 9C59740431
X-Spamd-Bar: -
Message-ID-Hash: VDMLNQWYESSOL64D47QPCK3QNCGT272V
X-Message-ID-Hash: VDMLNQWYESSOL64D47QPCK3QNCGT272V
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 00/12] Rust abstractions for shmem-backed GEM objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VDMLNQWYESSOL64D47QPCK3QNCGT272V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This is the next version of the shmem backed GEM objects series
originally from Asahi, previously posted by Daniel Almeida. Along with
bindings for shmem backed GEM objects, it also adds a few features that
various users like Tyr and Asahi are interested in:

* The ability to pass custom arguments to new GEM objects (needed by
  Tyr)
* OpaqueObject (to enable the use of custom private GEM objects, which I
  believe asahi wanted)

And replaces some of the hand-rolled API bindings (sg_table mainly) with
some of the WIP patch series for adding kernel-wide bindings. It also
addresses the comments from the code review of the last version of this
patch series.

Currently doesn't apply on an upstream branch, but should very soon as
all of the dependencies in this series are on a mailing list already.

The current branch this can be applied on top of is here:
  https://gitlab.freedesktop.org/lyudess/linux/-/commits/rust%2Fgem-shmem-base

Which is based on top of nova/nova-next with the following patch series
applied:
  * My (hopefully final) gem bindings cleanup:
    https://lkml.org/lkml/2025/5/20/1541
  * Benno's derive Zeroable series:
    https://lkml.org/lkml/2025/5/20/1446
  * Abdiel's sg_table series:
    https://lwn.net/Articles/1020986/
    Also, there is one FIXES patch on top of Abdiel's work to fix some
    iterator bugs. These fixes have already been mentioned on the
    mailing list and should not be needed for their V2 version

Asahi Lina (3):
  rust: helpers: Add bindings/wrappers for dma_resv_lock
  rust: drm: gem: shmem: Add DRM shmem helper abstraction
  rust: drm: gem: shmem: Add share_dma_resv to ObjectConfig

Lyude Paul (9):
  rust: drm: gem: Add raw_dma_resv() function
  drm/gem/shmem: Extract drm_gem_shmem_init() from
    drm_gem_shmem_create()
  drm/gem/shmem: Extract drm_gem_shmem_release() from
    drm_gem_shmem_free()
  rust: gem: Introduce BaseDriverObject::Args
  rust: drm: gem: Add OpaqueObject
  rust: drm: gem: Introduce OwnedSGTable
  rust: Add dma_buf stub bindings
  rust: drm: gem: Add export() callback
  rust: drm: gem: Add BaseObject::prime_export()

 drivers/gpu/drm/drm_gem_shmem_helper.c |  98 +++++--
 drivers/gpu/drm/nova/gem.rs            |   6 +-
 include/drm/drm_gem_shmem_helper.h     |   2 +
 rust/bindings/bindings_helper.h        |   4 +
 rust/helpers/dma-resv.c                |  13 +
 rust/helpers/drm.c                     |  48 +++-
 rust/helpers/helpers.c                 |   1 +
 rust/kernel/dma_buf.rs                 |  39 +++
 rust/kernel/drm/gem/mod.rs             | 187 ++++++++++++-
 rust/kernel/drm/gem/shmem.rs           | 370 +++++++++++++++++++++++++
 rust/kernel/lib.rs                     |   1 +
 11 files changed, 727 insertions(+), 42 deletions(-)
 create mode 100644 rust/helpers/dma-resv.c
 create mode 100644 rust/kernel/dma_buf.rs
 create mode 100644 rust/kernel/drm/gem/shmem.rs

-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
