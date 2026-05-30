Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HvoCW9nHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:17:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B50A46287D8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:17:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C264040984
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:17:33 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 4CA3940952
	for <linaro-mm-sig@lists.linaro.org>; Sat, 30 May 2026 14:37:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=P695W+rQ;
	spf=pass (lists.linaro.org: domain of phasta@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=phasta@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BAE684437D;
	Sat, 30 May 2026 14:37:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 850C31F00893;
	Sat, 30 May 2026 14:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780151858;
	bh=Oh702E20bwx/p0BX78CbvBoV0ZkW0mSKteIxLUaDpYc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=P695W+rQUAycRVtKTMK8ZUb4SRqjKHX3MUQPaWLoXKoi1Fh4ArSVZjLAgERV3InZ6
	 azFgBj9tuRdq+8LLH7SCkgIYl6jT59xVULdW8b5zOFVNr1ql+RMvRTRCm50Z6KChcN
	 LpL/sHozZlMg1O7Ds+qQ+9Io9DBC+ahhBanec3c+RZgUauwgBNQFkO3fo4Cagx41Rm
	 Uk8vp2pTDBqdgelT1YnZDLBWC7xVa99KDyu8Uj82J234Gn0mFp/R7hQynU1DK3bPlX
	 PXfqWdFRo6ef4p0Qv3tXENq/y6iZrogTLXOBuAgOW2py0oh9wchFqhFHCMsEErcqhl
	 nuAKWfPFkUkkw==
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
	"Paul E. McKenney" <paulmck@kernel.org>,
	Frederic Weisbecker <frederic@kernel.org>,
	Neeraj Upadhyay <neeraj.upadhyay@kernel.org>,
	Joel Fernandes <joelagnelf@nvidia.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Uladzislau Rezki <urezki@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	Zqiang <qiang.zhang@linux.dev>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Igor Korotin <igor.korotin@linux.dev>,
	Lorenzo Stoakes <ljs@kernel.org>,
	Alexandre Courbot <acourbot@nvidia.com>,
	FUJITA Tomonori <fujita.tomonori@gmail.com>,
	Krishna Ketan Rai <prafulrai522@gmail.com>,
	Shankari Anand <shankari.ak0208@gmail.com>,
	manos@pitsidianak.is,
	Boris Brezillon <boris.brezillon@collabora.com>
Date: Sat, 30 May 2026 16:35:13 +0200
Message-ID: <20260530143541.229628-7-phasta@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260530143541.229628-2-phasta@kernel.org>
References: <20260530143541.229628-2-phasta@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TRYASLEWNSDQQ5SHAEV5QBXUUQYXBCAD
X-Message-ID-Hash: TRYASLEWNSDQQ5SHAEV5QBXUUQYXBCAD
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:16:48 +0000
CC: linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/4] MAINTAINERS: Add entry for Rust dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TRYASLEWNSDQQ5SHAEV5QBXUUQYXBCAD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	DATE_IN_PAST(1.00)[62];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[38];
	FREEMAIL_TO(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.701];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: B50A46287D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

UnVzdCBkb2VzIG5vdyBoYXZlIGFic3RyYWN0aW9ucyBmb3IgZG1hX2ZlbmNlLiBUaGVzZSBhYnN0
cmFjdGlvbnMgYXJlDQpxdWl0ZSBjb21wbGljYXRlZCBhbmQgcmVxdWlyZSBleHBlcnRpc2Ugd2l0
aCBib3RoIHRoZSBDIGFuZCB0aGUgUnVzdA0Kc2lkZS4gVGhlcmVmb3JlLCB1c2luZyB0aGUgZXhp
c3RpbmcgZW50cnkgYWxzbyBmb3IgbWFpbnRlbmFuY2Ugb2YgdGhlDQpSdXN0IGNvZGUgYXBwZWFy
cyByZWFzb25hYmxlLg0KDQpQaGlsaXBwIHZvbHVudGVlcnMgdG8gaGVscCBtYWludGFpbiB0aGUg
ZG1hX2ZlbmNlIGFic3RyYWN0aW9ucy4gQWRkIGENCmNvcnJlc3BvbmRpbmcgTUFJTlRBSU5FUlMg
ZW50cnkuDQoNClNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5v
cmc+DQotLS0NCkp1c3QgYXMgYSBzdWdnZXN0aW9uLCBJIGRvbid0IHdhbnQgdG8gZm9yY2UgbXlz
ZWxmIGluIGhlcmUuIFdvdWxkIGFsc28NCmJlIHBlcmZlY3RseSBoYXBweSB3aXRoIG90aGVyIGFw
cHJvYWNoZXM7IHRoZXJlIGFyZSBjZXJ0YWlubHkgYSBmZXcNCnBlb3BsZSB3aG8gY291bGQgbWFp
bnRhaW4gb3IgY28tbWFpbnRhaW4gaXQuDQotLS0NCiBNQUlOVEFJTkVSUyB8IDIgKysNCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBi
L01BSU5UQUlORVJTDQppbmRleCAyZThkMTYwYmFiYzIuLjMxZmM1OTVkNWM2YiAxMDA2NDQNCi0t
LSBhL01BSU5UQUlORVJTDQorKysgYi9NQUlOVEFJTkVSUw0KQEAgLTc1MjEsNiArNzUyMSw3IEBA
IEY6CWZzL2RsbS8NCiBETUEgQlVGRkVSIFNIQVJJTkcgRlJBTUVXT1JLDQogTToJU3VtaXQgU2Vt
d2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCiBNOglDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQorTToJUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVs
Lm9yZz4NCiBMOglsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCiBMOglkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQogTDoJbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnICht
b2RlcmF0ZWQgZm9yIG5vbi1zdWJzY3JpYmVycykNCkBAIC03NTI5LDYgKzc1MzAsNyBAQCBUOgln
aXQgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9taXNjL2tlcm5lbC5naXQNCiBG
OglEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QNCiBGOglEb2N1bWVudGF0aW9u
L3VzZXJzcGFjZS1hcGkvZG1hLWJ1Zi1hbGxvYy1leGNoYW5nZS5yc3QNCiBGOglkcml2ZXJzL2Rt
YS1idWYvDQorRjoJcnVzdC9rZXJuZWwvZG1hX2J1Zi8NCiBGOglpbmNsdWRlL2xpbnV4LypmZW5j
ZS5oDQogRjoJaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCiBGOglpbmNsdWRlL2xpbnV4L2RtYS1i
dWYvDQotLSANCjIuNTQuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
