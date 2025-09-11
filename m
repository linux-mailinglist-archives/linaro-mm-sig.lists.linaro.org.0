Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B82D6B53EE4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Sep 2025 01:02:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A95E745D8F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 23:02:27 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 53A1E447E2
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 23:02:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=Fz6TmWk1;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=lyude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757631737;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jX539gy4ga1WpoOhYjw4dFCHXo3YsCbMfzCE1qBcZAA=;
	b=Fz6TmWk1PvhZivxggUTwcN6WoEuyK8WlLUcB8BrSfbEwhrC/Cm2NinJ+3mvW9gMhLQofdZ
	7t6l6f/nv+1+M73BbOZw3gU903QVNzbg4xmqwxM0i5l3LsRbcrRQEnM/K8vLHKb6E7tsUL
	oPH+yFkKiI4wMmldpjrlPoqcj8ARxaI=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-226-1Fv0UuF0PEavtQJteIAALQ-1; Thu,
 11 Sep 2025 19:02:11 -0400
X-MC-Unique: 1Fv0UuF0PEavtQJteIAALQ-1
X-Mimecast-MFC-AGG-ID: 1Fv0UuF0PEavtQJteIAALQ_1757631728
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8D33C1955D86;
	Thu, 11 Sep 2025 23:02:08 +0000 (UTC)
Received: from chopper.redhat.com (unknown [10.22.64.100])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 9DE721944CCA;
	Thu, 11 Sep 2025 23:02:04 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	rust-for-linux@vger.kernel.org
Date: Thu, 11 Sep 2025 18:57:37 -0400
Message-ID: <20250911230147.650077-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 53A1E447E2
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.40 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.133.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,vger.kernel.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+]
Message-ID-Hash: JEROHU4FZ5SNXGRGQEVYUQWRPPOBSFQP
X-Message-ID-Hash: JEROHU4FZ5SNXGRGQEVYUQWRPPOBSFQP
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 0/3] Batch 2 of rust gem shmem work
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JEROHU4FZ5SNXGRGQEVYUQWRPPOBSFQP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Now that we're getting close to reaching the finish line for upstreaming
the rust gem shmem bindings, we've got another batch of patches that
have been reviewed and can be safely pushed to drm-rust-next
independently of the rest of the series.

These patches of course apply against the drm-rust-next branch, and are
part of the gem shmem series, the latest version of which can be found
here:

https://patchwork.freedesktop.org/series/146465/

Lyude Paul (3):
  drm/gem/shmem: Extract drm_gem_shmem_init() from
    drm_gem_shmem_create()
  drm/gem/shmem: Extract drm_gem_shmem_release() from
    drm_gem_shmem_free()
  rust: Add dma_buf stub bindings

 drivers/gpu/drm/drm_gem_shmem_helper.c | 98 ++++++++++++++++++--------
 include/drm/drm_gem_shmem_helper.h     |  2 +
 rust/kernel/dma_buf.rs                 | 40 +++++++++++
 rust/kernel/lib.rs                     |  1 +
 4 files changed, 111 insertions(+), 30 deletions(-)
 create mode 100644 rust/kernel/dma_buf.rs


base-commit: cf4fd52e323604ccfa8390917593e1fb965653ee
-- 
2.51.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
