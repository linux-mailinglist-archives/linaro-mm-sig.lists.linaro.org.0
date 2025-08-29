Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A426B3C528
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 30 Aug 2025 00:42:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6706145D1C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 Aug 2025 22:42:24 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 0576443F87
	for <linaro-mm-sig@lists.linaro.org>; Fri, 29 Aug 2025 22:42:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=afjx55EH;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=lyude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756507336;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IKybner1GmKgcTnqqF43UsfxL3oL5QNO4lMcxBfIxqQ=;
	b=afjx55EHqbmmsWRvISXwF7AjUtSYexz6zkIFlvOsyFGrxWNdtgBMTvYJX2J8r1WcvpPfg3
	zthIZmxjYzf+YxuCjrCQ0w6fTcLvQdXEZ3EFDZbxYNCiKFtB2ucQ7y30elJdGSozA+qZnf
	vmIbEL7SZUgnYM+J5mvwtRhVXldrGog=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-272-HVLOyX7aO1u5bu5ue-B6og-1; Fri,
 29 Aug 2025 18:42:11 -0400
X-MC-Unique: HVLOyX7aO1u5bu5ue-B6og-1
X-Mimecast-MFC-AGG-ID: HVLOyX7aO1u5bu5ue-B6og_1756507327
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 176841800347;
	Fri, 29 Aug 2025 22:42:07 +0000 (UTC)
Received: from chopper.redhat.com (unknown [10.22.80.78])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id A460518003FC;
	Fri, 29 Aug 2025 22:42:01 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org,
	rust-for-linux@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Fri, 29 Aug 2025 18:35:20 -0400
Message-ID: <20250829224116.477990-6-lyude@redhat.com>
In-Reply-To: <20250829224116.477990-1-lyude@redhat.com>
References: <20250829224116.477990-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0576443F87
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.133.124:from];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[asahilina.net,kernel.org,gmail.com,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,linuxfoundation.org,collabora.com,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[170.10.133.124:from,35.165.154.97:received];
	TAGGED_RCPT(0.00)[kernel];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[redhat.com:+]
Message-ID-Hash: MGGLMKKFS4BCX6O6UKQWNGZE77EUY46K
X-Message-ID-Hash: MGGLMKKFS4BCX6O6UKQWNGZE77EUY46K
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Asahi Lina <lina+kernel@asahilina.net>, Viresh Kumar <viresh.kumar@linaro.org>, Daniel Almeida <daniel.almeida@collabora.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fen
 ce|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 05/14] rust: helpers: Add bindings/wrappers for dma_resv_lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MGGLMKKFS4BCX6O6UKQWNGZE77EUY46K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Asahi Lina <lina@asahilina.net>

This is just for basic usage in the DRM shmem abstractions for implied
locking, not intended as a full DMA Reservation abstraction yet.

Signed-off-by: Asahi Lina <lina@asahilina.net>
Signed-off-by: Daniel Almeida <daniel.almeida@collabora.com>
Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 rust/bindings/bindings_helper.h |  1 +
 rust/helpers/dma-resv.c         | 13 +++++++++++++
 rust/helpers/helpers.c          |  1 +
 3 files changed, 15 insertions(+)
 create mode 100644 rust/helpers/dma-resv.c

diff --git a/rust/bindings/bindings_helper.h b/rust/bindings/bindings_helper.h
index c2cc52ee9945b..00fe0449ed6de 100644
--- a/rust/bindings/bindings_helper.h
+++ b/rust/bindings/bindings_helper.h
@@ -46,6 +46,7 @@
 #include <linux/cpufreq.h>
 #include <linux/cpumask.h>
 #include <linux/cred.h>
+#include <linux/dma-resv.h>
 #include <linux/device/faux.h>
 #include <linux/dma-direction.h>
 #include <linux/dma-mapping.h>
diff --git a/rust/helpers/dma-resv.c b/rust/helpers/dma-resv.c
new file mode 100644
index 0000000000000..05501cb814513
--- /dev/null
+++ b/rust/helpers/dma-resv.c
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/dma-resv.h>
+
+int rust_helper_dma_resv_lock(struct dma_resv *obj, struct ww_acquire_ctx *ctx)
+{
+	return dma_resv_lock(obj, ctx);
+}
+
+void rust_helper_dma_resv_unlock(struct dma_resv *obj)
+{
+	dma_resv_unlock(obj);
+}
diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
index e94542bf6ea74..77354382fbea0 100644
--- a/rust/helpers/helpers.c
+++ b/rust/helpers/helpers.c
@@ -20,6 +20,7 @@
 #include "cred.c"
 #include "device.c"
 #include "dma.c"
+#include "dma-resv.c"
 #include "drm.c"
 #include "err.c"
 #include "fs.c"
-- 
2.50.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
