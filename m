Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8t8gIUDyM2o6JgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 15:27:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 545836A07DF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 15:27:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=mrAV+m1j;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7404740ABE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 13:27:27 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 98F1D40AD5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 13:27:07 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1D31643306;
	Thu, 18 Jun 2026 13:27:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9208B1F00A3E;
	Thu, 18 Jun 2026 13:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781789227;
	bh=BeDFsg/78jza6BxYbsL8y7J1iZTkaCdIxTax0jYm0Q4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=mrAV+m1j9IzuRAn7zc3xxec1VZtjL16Rl9+M+1MfLHNmWTvnlMbcDS17oHvldpvNa
	 sle0ki3q0lXq0IFbVIwHIvX1xSAGPnqEQCsthaq1uf1d9Ff5MaTyF6K4mScUdq7yCR
	 R8uOWXe8MLf/BxkaK0JIpZ6a5K4Mewss7higKUFzQeMUWpnMTlq54YDCyKYh0rOXcF
	 agCCN1U/CEQClpjb4g7+goNAGfV9u9N8C1cGd3+OiM44PLzgI7YqfWwi7cGCk0ThN5
	 RajLOHHPfcMkno3sHjkpDW/NTdLB1T5lAT+zO5SdLd64hNQ4Hm04LQoA2YcM8/Qko2
	 +u6b2AAu1WR+w==
From: Philipp Stanner <phasta@kernel.org>
To: Miguel Ojeda <ojeda@kernel.org>,
	Boqun Feng <boqun@kernel.org>,
	Gary Guo <gary@garyguo.net>,
	=?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>,
	Benno Lossin <lossin@kernel.org>,
	Andreas Hindborg <a.hindborg@kernel.org>,
	Alice Ryhl <aliceryhl@google.com>,
	Trevor Gross <tmgross@umich.edu>,
	Danilo Krummrich <dakr@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Philipp Stanner <phasta@kernel.org>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alexandre Courbot <acourbot@nvidia.com>,
	Asahi Lina <lina+kernel@asahilina.net>,
	Matthew Maurer <mmaurer@google.com>,
	Lorenzo Stoakes <ljs@kernel.org>,
	Joel Fernandes <joelagnelf@nvidia.com>,
	Burak Emir <bqe@google.com>,
	FUJITA Tomonori <fujita.tomonori@gmail.com>,
	Krishna Ketan Rai <prafulrai522@gmail.com>,
	Tamir Duberstein <tamird@kernel.org>,
	=?UTF-8?q?Onur=20=C3=96zkan?= <work@onurozkan.dev>,
	Eliot Courtney <ecourtney@nvidia.com>,
	Mirko Adzic <adzicmirko97@gmail.com>,
	Alistair Francis <alistair.francis@wdc.com>,
	Shankari Anand <shankari.ak0208@gmail.com>
Date: Thu, 18 Jun 2026 15:26:25 +0200
Message-ID: <20260618132628.3811068-4-phasta@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260618132628.3811068-2-phasta@kernel.org>
References: <20260618132628.3811068-2-phasta@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: -----
Message-ID-Hash: 76UEAES26VRZ6DLR3EP32L3N7U76SNRG
X-Message-ID-Hash: 76UEAES26VRZ6DLR3EP32L3N7U76SNRG
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 2/4] rust: error: Add ECANCELED error code
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/76UEAES26VRZ6DLR3EP32L3N7U76SNRG/>
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
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:phasta@kernel.org,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:acourbot@nvidia.com,m:lina+kernel@asahilina.net,m:mmaurer@google.com,m:ljs@kernel.org,m:joelagnelf@nvidia.com,m:bqe@google.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:tamird@kernel.org,m:work@onurozkan.dev,m:ecourtney@nvidia.com,m:adzicmirko97@gmail.com,m:alistair.francis@wdc.com,m:shankari.ak0208@gmail.com,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lina@asahilina.net,m:fujitatomonori@gmail.com,m:shankariak0208@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[33];
	FREEMAIL_TO(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,collabora.com,linuxfoundation.org,nvidia.com,asahilina.net,gmail.com,onurozkan.dev,wdc.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 545836A07DF

The Rust dma_fence abstractions need the ECANCELED error code.

Add ECANCELED error code.

Signed-off-by: Philipp Stanner <phasta@kernel.org>
---
 rust/kernel/error.rs | 1 +
 1 file changed, 1 insertion(+)

diff --git a/rust/kernel/error.rs b/rust/kernel/error.rs
index 05cf869ac090..dda15db7cddf 100644
--- a/rust/kernel/error.rs
+++ b/rust/kernel/error.rs
@@ -88,6 +88,7 @@ macro_rules! declare_err {
     declare_err!(EIOCBQUEUED, "iocb queued, will get completion event.");
     declare_err!(ERECALLCONFLICT, "Conflict with recalled state.");
     declare_err!(ENOGRACE, "NFS file lock reclaim refused.");
+    declare_err!(ECANCELED, "Request has been canceled.");
 }
 
 /// Generic integer kernel error.
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
