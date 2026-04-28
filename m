Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNjrA0oF8WnhbwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2026 21:06:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8457148AFDD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2026 21:06:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6CB90404E4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2026 19:06:48 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id DD2053F7F1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2026 19:06:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=b0JDgDeG;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=lyude@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1777403191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pNUOUDk7TvFf6N8DNlBRG1fyLPLqIsmFG8XfE2Cjk0g=;
	b=b0JDgDeGI3rqVDKghyOl9uEzya8uO9CM4nuO7od0vtFZ+eM4NZwiFm6mCp+Jye4CT/ws4r
	1EWgjckXp7W2F2RcU6UQEoQG6Qrn4fGAq6miQhlquc5khIE4WS1Wowm0jJvwx0VyqO2MuW
	7vO+BTmttGVHG19Ffi3SFMFb0q+B68s=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-220-L7g3Gq0XO7q1A3hwReHsWQ-1; Tue,
 28 Apr 2026 15:06:27 -0400
X-MC-Unique: L7g3Gq0XO7q1A3hwReHsWQ-1
X-Mimecast-MFC-AGG-ID: L7g3Gq0XO7q1A3hwReHsWQ_1777403184
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D1F5C19560AA;
	Tue, 28 Apr 2026 19:06:23 +0000 (UTC)
Received: from GoldenWind.lan (unknown [10.22.88.40])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 08824180047F;
	Tue, 28 Apr 2026 19:06:19 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: nouveau@lists.freedesktop.org,
	Gary Guo <gary@garyguo.net>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	rust-for-linux@vger.kernel.org,
	Danilo Krummrich <dakr@kernel.org>,
	dri-devel@lists.freedesktop.org
Date: Tue, 28 Apr 2026 15:03:40 -0400
Message-ID: <20260428190605.3355690-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: 0WrXMPN-AGMuoqKDXiUi1L4xdhgpXmyk84w-hJDWaz8_1777403184
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: -----
Message-ID-Hash: 2Z5ARXVTFDS22NK2QFPJXXL6ZE4J5BID
X-Message-ID-Hash: 2Z5ARXVTFDS22NK2QFPJXXL6ZE4J5BID
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v13 0/5] Rust bindings for gem shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2Z5ARXVTFDS22NK2QFPJXXL6ZE4J5BID/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; x-default="true"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 8457148AFDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_CC(0.00)[google.com,gmail.com,oracle.com,amd.com,asahilina.net,kernel.org,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org,linuxfoundation.org];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.263];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,patchwork.freedesktop.org:url,lists.linaro.org:helo,lists.linaro.org:rdns,gitlab.freedesktop.org:url]

Most of this patch series has already been pushed upstream, this is just
the second half of the patch series that has not been pushed yet + some
additional changes which were required to implement changes requested by
the mailing list. This patch series is originally from Asahi, previously
posted by Daniel Almeida.

The previous version of the patch series can be found here:

	https://patchwork.freedesktop.org/series/164580/

Branch with patches applied available here
sure this builds:

	https://gitlab.freedesktop.org/lyudess/linux/-/commits/rust/gem-shmem

This patch series applies on top of drm-rust-next

Lyude Paul (5):
  rust: drm: gem: s/device::Device/Device/ for shmem.rs
  drm/gem/shmem: Introduce __drm_gem_shmem_free_sgt_locked()
  rust: drm: gem/shmem: Add DmaResvGuard helper
  rust: drm: gem: Introduce shmem::SGTable
  rust: drm: gem: Add vmap functions to shmem bindings

 drivers/gpu/drm/drm_gem_shmem_helper.c |  32 +-
 include/drm/drm_gem_shmem_helper.h     |   1 +
 rust/kernel/drm/gem/shmem.rs           | 602 ++++++++++++++++++++++++-
 3 files changed, 614 insertions(+), 21 deletions(-)


base-commit: d9a6809478f9815b6455a327aa001737ac7b2c09
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
