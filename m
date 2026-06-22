Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pykaK1xBOWqJpQcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 16:06:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EE46B0288
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 16:06:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=h6jCfbKX;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2228940A45
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 13:58:00 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 86EFB40A76
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2026 13:57:39 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0A71F43E2C;
	Mon, 22 Jun 2026 13:57:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E91151F000E9;
	Mon, 22 Jun 2026 13:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782136658;
	bh=CYt/5Q9wC22TpyC2hwnohHNnEJLHfU3qajK8+GnOgDY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=h6jCfbKX/KIMhr10OotZiT8v4wHK/xpzHoCIq/nEMvYswq6jh9XqD9OL1iedLDoLv
	 jSr7W+yoM6QPH71MBWpdgq4CggpY4zxu1UMC+wmqY4mkRqN9FzVwB6Tkk/C3Is9noB
	 V0XyVELa7o7rMYlcA+WZEysxWipJpo1KhOPwQA3+mPCPMyCEvGy59rA2N1g4qzwsxO
	 wilN6xL28IIugn7456EYor9MkCVOMYYxTtI1Lp2r6UaGlv7VV77uSs1XCKAd/f46+0
	 2O9bf7khpGkxuQp2UXjOgTXRflGGCWX8F86kKT/byuu7V4CMblp7AOuqZILReDZl+V
	 X4sJGpjmZmgFQ==
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
Date: Mon, 22 Jun 2026 15:56:53 +0200
Message-ID: <20260622135654.334961-7-phasta@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260622135654.334961-2-phasta@kernel.org>
References: <20260622135654.334961-2-phasta@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: -----
Message-ID-Hash: I7SSMBHGN65A53T34DAYHDI2JPGTARNG
X-Message-ID-Hash: I7SSMBHGN65A53T34DAYHDI2JPGTARNG
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 5/5] MAINTAINERS: Add entry for Rust dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I7SSMBHGN65A53T34DAYHDI2JPGTARNG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:phasta@kernel.org,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:acourbot@nvidia.com,m:lina+kernel@asahilina.net,m:mmaurer@google.com,m:ljs@kernel.org,m:joelagnelf@nvidia.com,m:bqe@google.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:tamird@kernel.org,m:work@onurozkan.dev,m:ecourtney@nvidia.com,m:adzicmirko97@gmail.com,m:alistair.francis@wdc.com,m:shankari.ak0208@gmail.com,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lina@asahilina.net,m:fujitatomonori@gmail.com,m:shankariak0208@gmail.com,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[33];
	FREEMAIL_TO(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,collabora.com,linuxfoundation.org,nvidia.com,asahilina.net,gmail.com,onurozkan.dev,wdc.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,lists.freedesktop.org:email,amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 21EE46B0288

UnVzdCBkb2VzIG5vdyBoYXZlIGFic3RyYWN0aW9ucyBmb3IgZG1hX2ZlbmNlLiBUaGVzZSBhYnN0
cmFjdGlvbnMgYXJlDQpxdWl0ZSBjb21wbGljYXRlZCBhbmQgcmVxdWlyZSBleHBlcnRpc2Ugd2l0
aCBib3RoIHRoZSBDIGFuZCB0aGUgUnVzdA0Kc2lkZS4gVGhlcmVmb3JlLCB1c2luZyB0aGUgZXhp
c3RpbmcgZW50cnkgYWxzbyBmb3IgbWFpbnRlbmFuY2Ugb2YgdGhlDQpSdXN0IGNvZGUgYXBwZWFy
cyByZWFzb25hYmxlLg0KDQpQaGlsaXBwIHZvbHVudGVlcnMgdG8gaGVscCBtYWludGFpbiB0aGUg
ZG1hX2ZlbmNlIGFic3RyYWN0aW9ucy4gQWRkIGENCmNvcnJlc3BvbmRpbmcgTUFJTlRBSU5FUlMg
ZW50cnkuDQoNClNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5v
cmc+DQpBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KQWNrZWQtYnk6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQotLS0N
CiBNQUlOVEFJTkVSUyB8IDUgKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
DQoNCmRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTDQppbmRleCA0YWU2OTE5
NDU0YzMuLmVmMmNiMTE3M2M2NiAxMDA2NDQNCi0tLSBhL01BSU5UQUlORVJTDQorKysgYi9NQUlO
VEFJTkVSUw0KQEAgLTc1MzUsNiArNzUzNSw3IEBAIEY6CWZzL2RsbS8NCiBETUEgQlVGRkVSIFNI
QVJJTkcgRlJBTUVXT1JLDQogTToJU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9y
Zz4NCiBNOglDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQorTToJ
UGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCiBMOglsaW51eC1tZWRpYUB2Z2Vy
Lmtlcm5lbC5vcmcNCiBMOglkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQogTDoJbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnIChtb2RlcmF0ZWQgZm9yIG5vbi1zdWJzY3JpYmVy
cykNCkBAIC03NTQ4LDYgKzc1NDksOCBAQCBGOglpbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KIEY6
CWluY2x1ZGUvbGludXgvZG1hLWJ1Zi8NCiBGOglpbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCiBG
OglydXN0L2hlbHBlcnMvZG1hLXJlc3YuYw0KK0Y6CXJ1c3QvaGVscGVycy9kbWFfZmVuY2UuYw0K
K0Y6CXJ1c3Qva2VybmVsL2RtYV9idWYvDQogSzoJXGJkbWFfKD86YnVmfGZlbmNlfHJlc3YpXGIN
CiANCiBETUEgR0VORVJJQyBPRkZMT0FEIEVOR0lORSBTVUJTWVNURU0NCkBAIC04NTM2LDcgKzg1
MzksOSBAQCBUOglnaXQgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9ydXN0L2tl
cm5lbC5naXQNCiBGOglkcml2ZXJzL2dwdS9kcm0vbm92YS8NCiBGOglkcml2ZXJzL2dwdS9kcm0v
dHlyLw0KIEY6CWRyaXZlcnMvZ3B1L25vdmEtY29yZS8NCitGOglydXN0L2hlbHBlcnMvZG1hX2Zl
bmNlLmMNCiBGOglydXN0L2hlbHBlcnMvZ3B1LmMNCitGOglydXN0L2tlcm5lbC9kbWFfYnVmLw0K
IEY6CXJ1c3Qva2VybmVsL2RybS8NCiBGOglydXN0L2tlcm5lbC9ncHUucnMNCiBGOglydXN0L2tl
cm5lbC9ncHUvDQotLSANCjIuNTQuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
