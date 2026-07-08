Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yTY0MS9xVmqH5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:26:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5952A757645
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:26:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=gCnsAKSY;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 668C240503
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:26:06 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 656B040F80
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2026 11:53:50 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A62464193A;
	Wed,  8 Jul 2026 11:53:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 211EA1F000E9;
	Wed,  8 Jul 2026 11:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783511629;
	bh=rdxl7IdBBRnl/VjmGlLMS0ydVwD25wn/ZqHLovQ6J6I=;
	h=From:Date:Subject:To:Cc;
	b=gCnsAKSY+e6QbI+E+K7+TivToH0yJwdaWxYXBes+wU8hsG0n0ifOMFczy/pA5VyOD
	 c+Fgnq+QddgwI4x7CFLcN3oCn5ymePLeucyEQ8EVgK56u1YAFpw1JO1f+EFZPc20Uq
	 ref8rB2EbglbPiCVHMADGqYvGXCc0SpneRRs6vIKc4tMWPbg2GfwSU+g0sKzrYmyX3
	 Rp1o7wuSniLXA33RteEWnIKrazXENCrXN723ImJ8KbD1K7khmQUCEpTANVDHpiNIvx
	 F/hu+632nGu7qojRmvN2+Ah2GILBmvhw5FVZc/WHtRQqRaE/yjhiK1kUxaWbk1ybxK
	 /alm3AcHuOPig==
From: Andreas Hindborg <a.hindborg@kernel.org>
Date: Wed, 08 Jul 2026 13:52:21 +0200
MIME-Version: 1.0
Message-Id: <20260708-dma-shared-buffer-config-v1-1-8c1571000855@kernel.org>
X-B4-Tracking: v=1; b=H4sIAPQ5TmoC/yXMTQ6CQAxA4auQrm0yg4jGqxgX89NCTRxMC8aEc
 HdGXX6L91YwUiGDa7OC0ltMplLhDw2kMZSBUHI1tK7t3dldMD8D2hiUMsaFmRTTVFgGjNEfT5x
 j77mDmr+UWD6/9e3+ty3xQWn+/mDbdtC4iq58AAAA
X-Change-ID: 20260708-dma-shared-buffer-config-bb135fdb61f4
To: Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>,
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Tamir Duberstein <tamird@kernel.org>,
 Alexandre Courbot <acourbot@nvidia.com>,
 =?utf-8?q?Onur_=C3=96zkan?= <work@onurozkan.dev>,
 Asahi Lina <lina+kernel@asahilina.net>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1895; i=a.hindborg@kernel.org;
 h=from:subject:message-id; bh=GFw7D/JMS0BsuGX/tR7HOdbhomGNW/4YluYwoedfrRI=;
 b=owEBbQKS/ZANAwAKAfpQKQiqxb3QAcsmYgBqTjohxZF84h7fJ2UmPYxqA3vKydhfq68R9bG+u
 XHX9BC8+nyJAjMEAAEKAB0WIQRXitnI2WZ2JirAaob6UCkIqsW90AUCak46IQAKCRD6UCkIqsW9
 0KbgD/4qZPbBYIIzwFdYkfFfWNNcSR/UjYKuc8ShlJJMJuVC+okSfR/t/PEmKH/d5rWhgoZKSQI
 wakFdKarTn2mL5aUUGzxVg3c+XZDhMsbTn7ORMkIXS0xJb/i1Al8lq7zRIvtWqo+yxdG35npfY8
 Br2odXPH9fId8f7pZ+1tWTJNxjk7xHSooaqmHwGJe9Tb8ZvED7IzQq/tdCB3II/Z9gfJDJToBVx
 cefsOFlTGR8bZJ7p6jY177YFeuCrQbK43Q7ayEUpnR2obYAIqpX8kTHt2W/LIV+/74DfhxE0jJy
 EHd49f+i66phQnOhTnAWgSWZH3tHIudzPfcnKC+PmJyHqOOtp+WyAZXjO0lnTVKGFpZF4nqJLVb
 rtLItXxPl7+HQE/ZvaD90Qy+fD2DSUNpSn2m0yZFDRvxBJ2iYD7CRm010mrzqXVePAokiD7tA5y
 Eu3jvLQ8RHO4FMch1BE3MCmfZXUs2qVatz8njLXLJNrNaaYK78M1yVAlcDdETAkEfr8seGYf11F
 LtAH7YfmA88CYenw8iKSvX6vHMtU5LteV3Pb5UfJhy54fF59Z3z9U58YVDHNPKltY6xeb2pZMlW
 lDanf/t1GhoEViAW/wHPWS7921LNLacFViQ/gym8xnBZJ8Y555VO6287s0vXMjWsFdrj1dN9fiX
 a93sMYAhVp+8LwQ==
X-Developer-Key: i=a.hindborg@kernel.org; a=openpgp;
 fpr=3108C10F46872E248D1FB221376EB100563EF7A7
X-Spamd-Bar: ------
X-MailFrom: a.hindborg@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TRRF2D3BETC5Y4GYZHQLUHJO34YD46WK
X-Message-ID-Hash: TRRF2D3BETC5Y4GYZHQLUHJO34YD46WK
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:19:47 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org, Andreas Hindborg <a.hindborg@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] rust: helpers: guard dma_resv helpers with CONFIG_DMA_SHARED_BUFFER
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TRRF2D3BETC5Y4GYZHQLUHJO34YD46WK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	DATE_IN_PAST(1.00)[149];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:daniel.almeida@collabora.com,m:tamird@kernel.org,m:acourbot@nvidia.com,m:work@onurozkan.dev,m:lina+kernel@asahilina.net,m:airlied@gmail.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:rust-for-linux@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:a.hindborg@kernel.org,m:lina@asahilina.net,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,collabora.com,nvidia.com,onurozkan.dev,asahilina.net,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.hindborg@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.hindborg@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5952A757645

Commit 9b836641d3bf ("rust: helpers: Add bindings/wrappers for
dma_resv_lock") added rust_helper_dma_resv_lock() and
rust_helper_dma_resv_unlock() unconditionally. However, the dma-resv
functionality is only available when CONFIG_DMA_SHARED_BUFFER is
enabled, resulting in the following link error when it is not:

      LD      .tmp_vmlinux1
    ld.lld: error: undefined symbol: dma_resv_reset_max_fences
    >>> referenced by dma-resv.h:463
    >>>               rust/helpers/helpers.o:(rust_helper_dma_resv_unlock) in archive vmlinux.a

The dma_resv_unlock() inline in <linux/dma-resv.h> calls
dma_resv_reset_max_fences(), which is only compiled into
drivers/dma-buf/dma-resv.c when CONFIG_DMA_SHARED_BUFFER is set. With
the option disabled the symbol is never defined, so the helper fails
to link.

Fix this by guarding the helper definitions with `#ifdef
CONFIG_DMA_SHARED_BUFFER`.

The only user of this helper is the DRM shmem abstractions, which already
depend on `CONFIG_DMA_SHARED_BUFFER`.

Cc: stable@vger.kernel.org
Fixes: 9b836641d3bf ("rust: helpers: Add bindings/wrappers for dma_resv_lock")
Signed-off-by: Andreas Hindborg <a.hindborg@kernel.org>
---
 rust/helpers/dma-resv.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/rust/helpers/dma-resv.c b/rust/helpers/dma-resv.c
index 71914d8241e2..1698092b9317 100644
--- a/rust/helpers/dma-resv.c
+++ b/rust/helpers/dma-resv.c
@@ -1,5 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 
+#ifdef CONFIG_DMA_SHARED_BUFFER
+
 #include <linux/dma-resv.h>
 
 __rust_helper
@@ -12,3 +14,5 @@ __rust_helper void rust_helper_dma_resv_unlock(struct dma_resv *obj)
 {
 	dma_resv_unlock(obj);
 }
+
+#endif

---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260708-dma-shared-buffer-config-bb135fdb61f4

Best regards,
--  
Andreas Hindborg <a.hindborg@kernel.org>


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
