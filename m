Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WF3hLFBzuGn5dgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Mar 2026 22:17:04 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDB52A0B05
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Mar 2026 22:17:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34B493F683
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Mar 2026 21:17:03 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id A67123F683
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Mar 2026 21:17:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="ZkQKA/cw";
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=lyude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773695820;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=FK2SRYWUs8F1o4n/OCWFgYAf27vjExpMLrN5boT+rxU=;
	b=ZkQKA/cwQXF6VI3AXjx4q8xdmD9CClg0XezD4JXD//tQMvvaNOMU5PMTa9DhOlD9BNGqUd
	7CvxHuLWfNZ9hHf4MdW+HrUo6ZRbncO43uemG5OKrsIFdU9cA91NpMF06e4kYitQqaaLbx
	j4xsxY1nA/Gpeye1uS5OQxqAe1XAXa4=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-244-IJaCFJjyPQ2OhhmKNwgyTg-1; Mon,
 16 Mar 2026 17:16:56 -0400
X-MC-Unique: IJaCFJjyPQ2OhhmKNwgyTg-1
X-Mimecast-MFC-AGG-ID: IJaCFJjyPQ2OhhmKNwgyTg_1773695813
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CDCE719560AE;
	Mon, 16 Mar 2026 21:16:52 +0000 (UTC)
Received: from GoldenWind.redhat.com (unknown [10.22.88.101])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id E1B0B1800361;
	Mon, 16 Mar 2026 21:16:48 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: nouveau@lists.freedesktop.org,
	Gary Guo <gary@garyguo.net>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	rust-for-linux@vger.kernel.org,
	Danilo Krummrich <dakr@kernel.org>
Date: Mon, 16 Mar 2026 17:16:08 -0400
Message-ID: <20260316211646.650074-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: DgEglaVF1DkdWUB9bB5X0NVxBjJwjS0dP6vQis6-hAg_1773695813
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: -----
Message-ID-Hash: ZEWQFPED66DLR2XF7Q3UDHMGQ7AYTWNJ
X-Message-ID-Hash: ZEWQFPED66DLR2XF7Q3UDHMGQ7AYTWNJ
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v9 0/7] Rust bindings for gem shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZEWQFPED66DLR2XF7Q3UDHMGQ7AYTWNJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[google.com,gmail.com,oracle.com,amd.com,asahilina.net,kernel.org,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org,linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	NEURAL_HAM(-0.00)[-0.613];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 3DDB52A0B05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is the next version of the shmem backed GEM objects series
originally from Asahi, previously posted by Daniel Almeida.

The previous version of the patch series can be found here:

https://patchwork.freedesktop.org/series/156093/

This patch series may be applied on top of the
driver-core/driver-core-testing branch:

https://git.kernel.org/pub/scm/linux/kernel/git/driver-core/driver-core.git/log/?h=driver-core-testing

Changelogs are per-patch

Asahi Lina (2):
  rust: helpers: Add bindings/wrappers for dma_resv_lock
  rust: drm: gem: shmem: Add DRM shmem helper abstraction

Lyude Paul (5):
  rust: drm: Add gem::impl_aref_for_gem_obj!
  rust: drm: gem: Add raw_dma_resv() function
  rust: gem: Introduce DriverObject::Args
  rust: drm: gem: Introduce shmem::SGTable
  rust: drm/gem: Add vmap functions to shmem bindings

 drivers/gpu/drm/nova/gem.rs     |   5 +-
 drivers/gpu/drm/tyr/gem.rs      |   3 +-
 rust/bindings/bindings_helper.h |   3 +
 rust/helpers/dma-resv.c         |  13 +
 rust/helpers/drm.c              |  56 ++-
 rust/helpers/helpers.c          |   1 +
 rust/kernel/drm/gem/mod.rs      |  79 +++-
 rust/kernel/drm/gem/shmem.rs    | 654 ++++++++++++++++++++++++++++++++
 8 files changed, 792 insertions(+), 22 deletions(-)
 create mode 100644 rust/helpers/dma-resv.c
 create mode 100644 rust/kernel/drm/gem/shmem.rs


base-commit: dc33ae50d32b509af5ae61030912fa20c79ef112
prerequisite-patch-id: c631986f96e2073263e97e82a65b96fc5ada6924
prerequisite-patch-id: ae853e8eb8d58c77881371960be4ae92755e83c6
prerequisite-patch-id: 0ab78b50648c7d8f66b83c32ed2af0ec3ede42a3
prerequisite-patch-id: 636ec7f913f4047e5e1a1788f3e835b7259698c2
prerequisite-patch-id: d75e4d7140eadeeed8017af8cd093bfd2766ee8e
prerequisite-patch-id: 67a8010c1bc95bca1d2cf6b246c67bc79d24e766
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
