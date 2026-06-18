Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h0l3C1TyM2pCJgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 15:27:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A05496A07FD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 15:27:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=GMr80BAw;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6A2B40AAC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 13:27:46 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id C007B40AD2
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 13:27:23 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 46EB64383F;
	Thu, 18 Jun 2026 13:27:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C4471F00A3A;
	Thu, 18 Jun 2026 13:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781789243;
	bh=i0ao8Lg+Wq5WeXEzHY8cpaUJ8+ojOdhUgxJLtMGBRfs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=GMr80BAwd8qRqlnnpdG1JdOaG1Z30vgKb1oz+rwVp/HnbVu1RhCHUMYA8sprow8XZ
	 mjrVOBDT2sEE+sFtmG5hTiC7fflWIaaB1tp8LYWKRBNa2zZ8obbkRupr5VRLesyAoh
	 jfui6PydD6AYMGPhpNaFSHvMICDVbAFy8MTiERMs4JnROqbjYqBpWvjE75oShB/nvl
	 Ab/T6qGgLPPfryu075N32AYheRwPaaXMVzoepT7ogqLnGhLgsMlRHBO3syAejZMs5q
	 U8hpcM2Qa9klATmi993fFNEICbNF1ejCPcSo9Fqdb3GauqJLi0FYEVJ8udBQaB4SSn
	 jsyqReRih/Eiw==
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
Date: Thu, 18 Jun 2026 15:26:27 +0200
Message-ID: <20260618132628.3811068-6-phasta@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260618132628.3811068-2-phasta@kernel.org>
References: <20260618132628.3811068-2-phasta@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: -----
Message-ID-Hash: L662ZCGR6Y4QXQ575UEGVGL6RZ3A3OD4
X-Message-ID-Hash: L662ZCGR6Y4QXQ575UEGVGL6RZ3A3OD4
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 4/4] MAINTAINERS: Add entry for Rust dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L662ZCGR6Y4QXQ575UEGVGL6RZ3A3OD4/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:phasta@kernel.org,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:acourbot@nvidia.com,m:lina+kernel@asahilina.net,m:mmaurer@google.com,m:ljs@kernel.org,m:joelagnelf@nvidia.com,m:bqe@google.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:tamird@kernel.org,m:work@onurozkan.dev,m:ecourtney@nvidia.com,m:adzicmirko97@gmail.com,m:alistair.francis@wdc.com,m:shankari.ak0208@gmail.com,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lina@asahilina.net,m:fujitatomonori@gmail.com,m:shankariak0208@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,amd.com:email,linaro.org:email,lists.freedesktop.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A05496A07FD

UnVzdCBkb2VzIG5vdyBoYXZlIGFic3RyYWN0aW9ucyBmb3IgZG1hX2ZlbmNlLiBUaGVzZSBhYnN0
cmFjdGlvbnMgYXJlDQpxdWl0ZSBjb21wbGljYXRlZCBhbmQgcmVxdWlyZSBleHBlcnRpc2Ugd2l0
aCBib3RoIHRoZSBDIGFuZCB0aGUgUnVzdA0Kc2lkZS4gVGhlcmVmb3JlLCB1c2luZyB0aGUgZXhp
c3RpbmcgZW50cnkgYWxzbyBmb3IgbWFpbnRlbmFuY2Ugb2YgdGhlDQpSdXN0IGNvZGUgYXBwZWFy
cyByZWFzb25hYmxlLg0KDQpQaGlsaXBwIHZvbHVudGVlcnMgdG8gaGVscCBtYWludGFpbiB0aGUg
ZG1hX2ZlbmNlIGFic3RyYWN0aW9ucy4gQWRkIGENCmNvcnJlc3BvbmRpbmcgTUFJTlRBSU5FUlMg
ZW50cnkuDQoNClNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5v
cmc+DQotLS0NCiBNQUlOVEFJTkVSUyB8IDMgKysrDQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUw0KaW5kZXgg
NGFlNjkxOTQ1NGMzLi44YjAzZWIyYzU3OGEgMTAwNjQ0DQotLS0gYS9NQUlOVEFJTkVSUw0KKysr
IGIvTUFJTlRBSU5FUlMNCkBAIC03NTM1LDYgKzc1MzUsNyBAQCBGOglmcy9kbG0vDQogRE1BIEJV
RkZFUiBTSEFSSU5HIEZSQU1FV09SSw0KIE06CVN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxp
bmFyby5vcmc+DQogTToJQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KK006CVBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQogTDoJbGludXgtbWVk
aWFAdmdlci5rZXJuZWwub3JnDQogTDoJZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
IEw6CWxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZyAobW9kZXJhdGVkIGZvciBub24tc3Vi
c2NyaWJlcnMpDQpAQCAtNzU0OCw2ICs3NTQ5LDggQEAgRjoJaW5jbHVkZS9saW51eC9kbWEtYnVm
LmgNCiBGOglpbmNsdWRlL2xpbnV4L2RtYS1idWYvDQogRjoJaW5jbHVkZS9saW51eC9kbWEtcmVz
di5oDQogRjoJcnVzdC9oZWxwZXJzL2RtYS1yZXN2LmMNCitGOglydXN0L2hlbHBlcnMvZG1hX2Zl
bmNlLmMNCitGOglydXN0L2tlcm5lbC9kbWFfYnVmLw0KIEs6CVxiZG1hXyg/OmJ1ZnxmZW5jZXxy
ZXN2KVxiDQogDQogRE1BIEdFTkVSSUMgT0ZGTE9BRCBFTkdJTkUgU1VCU1lTVEVNDQotLSANCjIu
NTQuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
