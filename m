Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cElDK0pnHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:16:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 617036287BC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:16:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7337F409A5
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:16:57 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id C7E5940952
	for <linaro-mm-sig@lists.linaro.org>; Sat, 30 May 2026 14:36:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KuUNbr4g;
	spf=pass (lists.linaro.org: domain of phasta@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=phasta@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3FCB543F72;
	Sat, 30 May 2026 14:36:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A2A91F00893;
	Sat, 30 May 2026 14:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780151773;
	bh=xz9gQQhI8Lkkj85ZF10THg+XrwAiifLzonLHj9O4ez8=;
	h=From:To:Cc:Subject:Date;
	b=KuUNbr4gBLFewAbSoKvU4Sn6LwubCf4meWBq/sC1Kldjx+uqF1Sm/MGZtX83s0/dz
	 094NqiBWjEddTVeAGXvkz/whF2v+lvOrj2Vjnkuva4KYPTPJAXDK8kg0SZX41sKmRb
	 3777EhJG9dJQ6JhEEm5rOchcHXIWjcOpNJuMHXRIldbGlHeP4mHFuznkALLsCQGcQk
	 gNaGPqoMZb9DH/TFw5IwXHggXPcWOo+3ChQTRT3ufsUKe22tpUipEsZdsTOe4o+t2A
	 IyCOu4dmSX9ZrLxbLSKLR0Z5avuKZRbXbGzCQNFocfUlPma7Mly7Y/xdYjQHkpoyk/
	 4db50WjYoqMPw==
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
Date: Sat, 30 May 2026 16:35:08 +0200
Message-ID: <20260530143541.229628-2-phasta@kernel.org>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JGSGKXET5HOLGN6P4MY6OHULI2ME7LRU
X-Message-ID-Hash: JGSGKXET5HOLGN6P4MY6OHULI2ME7LRU
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:16:48 +0000
CC: linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/4] rust / dma_buf: Add abstractions for dma_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JGSGKXET5HOLGN6P4MY6OHULI2ME7LRU/>
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
	DATE_IN_PAST(1.00)[62];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is];
	GREYLIST(0.00)[pass,meta];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.687];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 617036287BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Q2hhbmdlcyBzaW5jZSB0aGUgUkZDOg0KICAtIEluY2x1ZGUgc3VwcG9ydCBmb3IgRm9yZWlnbk93
bmFibGUgZm9yIEFSZWYsIHNvIHRoYXQgYSBGZW5jZSBjYW4gYmUNCiAgICBzdHVmZmVkIGludG8g
YW4gWEFycmF5IGV0IGFsLiAoQ29kZSBieSBEYW5pbG8pDQogIC0gSW1wbGVtZW50IEZvcmVpZ25P
d25hYmxlICh3aXRoIG5ldyBib3Jyb3cgdHlwZSkgZm9yIERyaXZlckZlbmNlLCBzbw0KICAgIHRo
YXQgaXQgY2FuIGJlIHN0dWZmZWQgaW50byBhbiBYQXJyYXkuDQogIC0gSW5jbHVkZSB0aGUgcmN1
OjpSY3VCb3ggZGF0YSB0eXBlIHRvIGRlZmVyIGRyb3BwaW5nIGRhdGEgd2l0aCBSQ1UNCiAgICAo
Q29keSBieSBBbGljZSkNCiAgLSBQb3J0IERtYUZlbmNlIHRvIFJjdUJveCB0byBtYWtlIFVBRiBi
dWdzIHRocm91Z2ggbGF0ZXIsIG5ldyBkbWFfZmVuY2UNCiAgICBjYWxsYmFja3MgKGJhY2tlbmRf
b3BzKSBpbXBvc3NpYmxlLg0KICAtIEZvcmNlIHVzZXJzIHRvIHBhc3MgdGhlaXIgZmVuY2UgZGF0
YSBpbiBhbiBSY3VCb3ggKG9yIGhhdmUgaXQgbm90DQogICAgbmVlZCBkcm9wKCkpIHRocm91Z2gg
YSBTZWFsZWQgdHJhaXQuDQogIC0gRG9jdW1lbnQgdGhlIHJ1bGVzIGZvciB0aGUgdXNlcidzIERy
aXZlckZlbmNlOjpkYXRhJ3MgZHJvcA0KICAgIGltcGxlbWVudGF0aW9uIHZlcnkgY2xlYXJseSAo
ZGVhZGxvY2sgZGFuZ2VyKS4NCiAgLSBydXN0Zm10LCBDbGlwcHkuDQogIC0gVmFyaW91cyBzdHls
ZSBzdWdnZXN0aW9ucywgc2FmZXR5IGNvbW1lbnRzLCBldGMuICjDlm51cikNCiAgLSBBZGQgX19y
dXN0X2hlbHBlciBwcmVmaXggdG8gaGVscGVyIGZ1bmN0aW9ucy4gKMOWbnVyKQ0KDQpDaGFuZ2Vz
IGluIFJGQyB2MzoNCiAgLSBPbWl0IEpvYlF1ZXVlIHBhdGNoZXMgZm9yIG5vdw0KICAtIENvbXBs
ZXRlbHkgcmVkZXNpZ24gdGhlIG1lbW9yeSBsYXlvdXQ6IEluc3RlYWQgb2YgYSBGZW5jZQ0KICAg
IHJlZmNvdW50aW5nIGEgRHJpdmVyRmVuY2UsIGJvdGggbm93IGxpdmUgaW4gdGhlIHNhbWUgYWxs
b2NhdGlvbiB0bw0KICAgIGFsbG93IGZvciBmdXR1cmUgc3VwcG9ydCB0aGUgZG1hX2ZlbmNlIGJh
Y2tlbmRfb3BzIGNhbGxiYWNrcyB3aGljaA0KICAgIG5lZWQgdG8gZG8gY29udGFpbmVyX29mLiAo
bW9zdGx5IEJvcmlzJ3MgZmVlZGJhY2spDQogIC0gQWxsb3cgZm9yIHByZS1hbGxvY2F0aW5nIGZl
bmNlcyB0byBhdm9pZCBkZWFkbG9ja3Mgd2hlbiBzdWJtaXR0aW5nDQogICAgam9icyB0byBhIEdQ
VS4gKEJvcmlzKQ0KICAtIFNpbXVsdGFuZW91c2x5LCBhbGxvdyBmb3IgcHJlLXByZXBhcmluZyBm
ZW5jZSBjYWxsYmFjayBvYmplY3RzLCBzbw0KICAgIHRoZSBkcml2ZXIgY2FuIGFsbG9jYXRlIHRo
ZW0gd2hlbiBpdCBzZWVzIGZpdC4gKGNvZGUgbGFyZ2VseSBzdG9sZW4NCiAgICBhbmQgaW5zcGly
ZWQgYnkgRGFuaWVsKS4NCiAgLSBTaWduYWwgZmVuY2VzIG9uIGRyb3AsIGVuc3VyZSBzeW5jaHJv
bml6YXRpb24uDQogIC0gRm9yY2UgdXNlcnMgdG8gc2V0IGFuIGVycm9yIGNvZGUgd2hlbiBzaWdu
YWxsaW5nLg0KICAtIFdyaXRlIG1vcmUgZG9jdW1lbnRhdGlvbg0KICAtIEEgdG9uIG9mIG1pbm9y
IG90aGVyIGNoYW5nZXMuDQoNCkFscmlnaHQsIHNvIHNpbmNlIHRoZSBsYXN0IFJGQ3MgZGlkIG5v
dCByZXZlYWwgc2lnbmlmaWNhbnQgZGVzaWduDQppc3N1ZXMsIEkgZGVjaWRlZCB0byB0cmFuc2l0
aW9uIHRoaXMgc2VyaWVzIHRvIGEgdjEgYW5kIGhvcGUgdGhhdCB3ZSBjYW4NCmdldCBpdCB1cHN0
cmVhbS4NCg0KVGhpcyBub3cgaW5jbHVkZXMgY29kZSBmb3IgbW9yZSBjb21tb24gaW5mcmFzdHJ1
Y3R1cmUgdGhhdCBkbWFfZmVuY2UNCm5lZWRzLCBjb250cmlidXRlZCBieSBEYW5pbG8gYW5kIEFs
aWNlLg0KDQotLS0NCg0KT2xkIGNvdmVyIGxldHRlciBmb3IgUkZDOg0KDQpTbywgdGhpcyBpcyB0
aGUgc3Bpcml0dWFsIHN1Y2Nlc3NvciBvZiB0aGUgZmlyc3QgLyBzZWNvbmQgUkZDIFsxXS4gdjIN
CmFsc28gY29udGFpbmVkIGNvZGUgZm9yIGRybTo6Sm9iUXVldWUsIGJ1dCBtb3N0bHkgdG8gc2hv
dyBob3cgdGhlIGZlbmNlDQpjb2RlIHdvdWxkIGJlIHVzZWQuIEpvYlF1ZXVlIGlzIHVuZGVyIGhl
YXZ5IHJld29yayByaWdodCBub3csIHNvIEkgZG9uJ3QNCndhbnQgdG8gYm90aGVyIHlvdXIgZXll
cyB3aXRoIGl0LiBUaGUgZG9jc3RyaW5nIGV4YW1wbGVzIHNob3VsZCBzaG93IGhvdw0KUnVzdCBm
ZW5jZXMgYXJlIHN1cHBvc2VkIHRvIGJlIHVzZWQsIHRob3VnaC4NCg0KVGhpcyB2MyBjb250YWlu
cyBhIGh1Z2UgYW1vdW50IG9mIGhpZ2hseSB2YWx1YWJsZSBmZWVkYmFjayBmcm9tIGENCnZhcmll
dHkgb2YgcGVvcGxlLCBub3RhYmx5IEJvcmlzLCBidXQgYWxzbyBmcm9tIEFsaWNlLCBHYXJ5IGFu
ZCBEYW5pbG8uDQoNClRoZXJlIGFyZSBzb21lIFRPRE9zIG9wZW4gKGEgYmV0dGVyIHRyYWl0IGZv
ciBmZW5jZSBiYWNrZW5kX29wcyBhbmQgUkNVDQpzdXBwb3J0KSwgYnV0IG15IGhvcGUgaXMgdGhh
dCB0aGlzIGVmZm9ydCBpcyBub3cgZmluYWxseSBhcHByb2FjaGluZyBpdHMNCmVuZC4NCg0KSSB3
b3VsZCBncmVhdGx5IGFwcHJlY2lhdGUgZmVlZGJhY2sgYW5kIGVzcGVjaWFsbHkgbW9yZSBpbmZv
cm1hdGlvbg0KYWJvdXQgd2hhdCBtaWdodCBiZSBtaXNzaW5nIHRvIG1ha2UgdGhpcyB1c2FibGUs
IHdoaWNoIGlzIG9idmlvdXNseQ0Kd2hlcmUgRGFuaWVsJ3MgYW5kIEJvcmlzJ3MgZmVlZGJhY2sg
d2lsbCBiZSB2YWx1YWJsZSBvbmNlIG1vcmUuDQoNClBsZWFzZSByZWdhcmQgdGhpcyBwYXRjaCBq
dXN0IGFzIHdoYXQgaXQncyB0aXRsZWQ6IGFuIFJGQywgdG8gZGlzY3VzcyBhDQpiaXQgbW9yZSBh
bmQgdG8gaW5mb3JtIGEgYnJvYWRlciBjb21tdW5pdHkgYWJvdXQgd2hhdCB0aGUgY3VycmVudCBz
dGF0ZQ0KaXMgYW5kIHdoZXJlIHRoaXMgaXMgaGVhZGluZyBhdC4NCg0KTWFueSByZWdhcmRzLA0K
UGhpbGlwcA0KDQpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcnVzdC1mb3ItbGludXgvMjAy
NjAyMDMwODE0MDMuNjg3MzMtMi1waGFzdGFAa2VybmVsLm9yZy8NCg0KQWxpY2UgUnlobCAoMSk6
DQogIHJ1c3Q6IHJjdTogYWRkIFJjdUJveCB0eXBlDQoNCkRhbmlsbyBLcnVtbXJpY2ggKDEpOg0K
ICBydXN0OiB0eXBlczogaW1wbGVtZW50IEZvcmVpZ25Pd25hYmxlIGZvciBBUmVmPFQ+DQoNClBo
aWxpcHAgU3Rhbm5lciAoMik6DQogIHJ1c3Q6IEFkZCBkbWFfZmVuY2UgYWJzdHJhY3Rpb25zDQog
IE1BSU5UQUlORVJTOiBBZGQgZW50cnkgZm9yIFJ1c3QgZG1hLWJ1Zg0KDQogTUFJTlRBSU5FUlMg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKw0KIHJ1c3QvYmluZGluZ3MvYmluZGluZ3NfaGVs
cGVyLmggIHwgICAyICsNCiBydXN0L2hlbHBlcnMvZG1hX2ZlbmNlLmMgICAgICAgICB8ICA0OCAr
Kw0KIHJ1c3QvaGVscGVycy9oZWxwZXJzLmMgICAgICAgICAgIHwgICAxICsNCiBydXN0L2tlcm5l
bC9kbWFfYnVmL2RtYV9mZW5jZS5ycyB8IDgyMSArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrDQogcnVzdC9rZXJuZWwvZG1hX2J1Zi9tb2QucnMgICAgICAgfCAgMTMgKw0KIHJ1c3Qva2Vy
bmVsL2xpYi5ycyAgICAgICAgICAgICAgIHwgICAxICsNCiBydXN0L2tlcm5lbC9zeW5jL2FyZWYu
cnMgICAgICAgICB8ICAzOSArKw0KIHJ1c3Qva2VybmVsL3N5bmMvcmN1LnJzICAgICAgICAgIHwg
IDMxICstDQogcnVzdC9rZXJuZWwvc3luYy9yY3UvcmN1X2JveC5ycyAgfCAxNDUgKysrKysrDQog
MTAgZmlsZXMgY2hhbmdlZCwgMTEwMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IHJ1c3QvaGVscGVycy9kbWFfZmVuY2UuYw0KIGNyZWF0ZSBtb2RlIDEw
MDY0NCBydXN0L2tlcm5lbC9kbWFfYnVmL2RtYV9mZW5jZS5ycw0KIGNyZWF0ZSBtb2RlIDEwMDY0
NCBydXN0L2tlcm5lbC9kbWFfYnVmL21vZC5ycw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBydXN0L2tl
cm5lbC9zeW5jL3JjdS9yY3VfYm94LnJzDQoNCi0tIA0KMi41NC4wDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
