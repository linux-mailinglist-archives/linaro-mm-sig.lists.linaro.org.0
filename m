Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2568582A6DE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jan 2024 05:12:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F82843F16
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jan 2024 04:12:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 72AD143FC6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jan 2024 04:12:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=DYubyUnN;
	spf=none (lists.linaro.org: domain of rdunlap@infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=rdunlap@infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=Vab4e2aBGIW5uTr9Tpos6UuO9ZTChmMGyb6A0nM+R3w=; b=DYubyUnN3TD3Db/aAufPtB3Z70
	ggOeu8AQXAhBVmCI0h4najc8kAspagDGmXjqLUliOeVES5/f+WNAvP0fNiT3LleowgDIaKPBmXaBE
	7NRqcz1UhmDK7BrfYLQamQsJc0x2sf43SgD6SSph/DvVEd9+H7WvRK9sopbFD8sjMajrA8tptuuxO
	lNHKPHI2TXVc5304Kqp1QvsH9Ea/6YNOXxRS586mhdoI7X7X8kkqrJtZZ7AACji02sNVtQINWfHKQ
	r9kx5mzmpC+FAjOlxUPkYRGoOY76Me2Eqsh6W7EVhScODeHo+crS/2+f6ZJ7jgLs1Cj+jB8bCqbbw
	zJPfvvpg==;
Received: from [50.53.46.231] (helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
	id 1rNmQE-00Fk8Z-2S;
	Thu, 11 Jan 2024 04:12:02 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: dri-devel@lists.freedesktop.org
Date: Wed, 10 Jan 2024 20:11:55 -0800
Message-ID: <20240111041202.32011-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 72AD143FC6
X-Spamd-Bar: --
Message-ID-Hash: DEG2A2DMHPBVWZUECBYN6LVCJJE4LRXX
X-Message-ID-Hash: DEG2A2DMHPBVWZUECBYN6LVCJJE4LRXX
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: patches@lists.linux.dev, Randy Dunlap <rdunlap@infradead.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/dma-resv: fix spelling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DEG2A2DMHPBVWZUECBYN6LVCJJE4LRXX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rml4IHNwZWxsaW5nIG1pc3Rha2VzIGFzIHJlcG9ydGVkIGJ5IGNvZGVzcGVsbC4NCg0KU2lnbmVk
LW9mZi1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+DQpDYzogU3VtaXQg
U2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtl
cm5lbC5vcmcNCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZw0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCAgICA0
ICsrLS0NCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0K
DQpkaWZmIC0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLXJlc3YuYw0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCisrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQpAQCAtNDA1LDcgKzQwNSw3IEBAIHN0YXRpYyB2b2lkIGRt
YV9yZXN2X2l0ZXJfd2Fsa191bmxvY2tlZCgNCiAgKg0KICAqIEJld2FyZSB0aGF0IHRoZSBpdGVy
YXRvciBjYW4gYmUgcmVzdGFydGVkLiAgQ29kZSB3aGljaCBhY2N1bXVsYXRlcyBzdGF0aXN0aWNz
DQogICogb3Igc2ltaWxhciBuZWVkcyB0byBjaGVjayBmb3IgdGhpcyB3aXRoIGRtYV9yZXN2X2l0
ZXJfaXNfcmVzdGFydGVkKCkuIEZvcg0KLSAqIHRoaXMgcmVhc29uIHByZWZlciB0aGUgbG9ja2Vk
IGRtYV9yZXN2X2l0ZXJfZmlyc3QoKSB3aGVudmVyIHBvc3NpYmxlLg0KKyAqIHRoaXMgcmVhc29u
IHByZWZlciB0aGUgbG9ja2VkIGRtYV9yZXN2X2l0ZXJfZmlyc3QoKSB3aGVuZXZlciBwb3NzaWJs
ZS4NCiAgKg0KICAqIFJldHVybnMgdGhlIGZpcnN0IGZlbmNlIGZyb20gYW4gdW5sb2NrZWQgZG1h
X3Jlc3Ygb2JqLg0KICAqLw0KQEAgLTQyOCw3ICs0MjgsNyBAQCBFWFBPUlRfU1lNQk9MKGRtYV9y
ZXN2X2l0ZXJfZmlyc3RfdW5sb2NrDQogICoNCiAgKiBCZXdhcmUgdGhhdCB0aGUgaXRlcmF0b3Ig
Y2FuIGJlIHJlc3RhcnRlZC4gIENvZGUgd2hpY2ggYWNjdW11bGF0ZXMgc3RhdGlzdGljcw0KICAq
IG9yIHNpbWlsYXIgbmVlZHMgdG8gY2hlY2sgZm9yIHRoaXMgd2l0aCBkbWFfcmVzdl9pdGVyX2lz
X3Jlc3RhcnRlZCgpLiBGb3INCi0gKiB0aGlzIHJlYXNvbiBwcmVmZXIgdGhlIGxvY2tlZCBkbWFf
cmVzdl9pdGVyX25leHQoKSB3aGVudmVyIHBvc3NpYmxlLg0KKyAqIHRoaXMgcmVhc29uIHByZWZl
ciB0aGUgbG9ja2VkIGRtYV9yZXN2X2l0ZXJfbmV4dCgpIHdoZW5ldmVyIHBvc3NpYmxlLg0KICAq
DQogICogUmV0dXJucyB0aGUgbmV4dCBmZW5jZSBmcm9tIGFuIHVubG9ja2VkIGRtYV9yZXN2IG9i
ai4NCiAgKi8NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
