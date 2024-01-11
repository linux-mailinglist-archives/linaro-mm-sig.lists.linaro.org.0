Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0BF82A6D9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jan 2024 05:12:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BFD243F1C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jan 2024 04:12:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id DF2823F00C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jan 2024 04:11:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=PFDKEvoT;
	spf=none (lists.linaro.org: domain of rdunlap@infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=rdunlap@infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=b4pQ8hJoVvzvXHxUFM9uPj+P7m+YblKumbV4h+B9NcU=; b=PFDKEvoTOU181sWOpwAIf5OQUB
	ZQ0uvHyPcQwHyzHkDJ/m7iKzNfZ2g5v3opb0x+PgfHdcHYeiud4irhPlCD5aXj9KUPDaItC0Hs5ON
	Y6kYhMHlBBO0btZZQctB+iKRcKpAT5S7lPMpGEqNki6RLxl7VziCAhlL+pIkp31GrdnEiZS5GqnSe
	8sM8ShMh9oSC1L/1wUhk2jP/tfAZmkhJBVgC7XKAPqW+5ASZyTvdyLX6HSZVJlXGy+f3Dg+nAIuga
	bPZ0oDK6J4OHyi9hNIUksffc3Ypzmpwwkm9fKkWL4lenLOY4aRncqsDONyjwKt9ICSHJao/Mdnb6E
	DEz4MQyQ==;
Received: from [50.53.46.231] (helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
	id 1rNmPr-00FjzT-1i;
	Thu, 11 Jan 2024 04:11:39 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: dri-devel@lists.freedesktop.org
Date: Wed, 10 Jan 2024 20:11:36 -0800
Message-ID: <20240111041138.30278-1-rdunlap@infradead.org>
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
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DF2823F00C
X-Spamd-Bar: --
Message-ID-Hash: IJJPQFVNCSDGF2HGIORHOD3SD4RXX5ZE
X-Message-ID-Hash: IJJPQFVNCSDGF2HGIORHOD3SD4RXX5ZE
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: patches@lists.linux.dev, Randy Dunlap <rdunlap@infradead.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, linux-media@vger.kernel.org, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/dma-fence: fix spelling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IJJPQFVNCSDGF2HGIORHOD3SD4RXX5ZE/>
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
U2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCkNjOiBHdXN0YXZvIFBhZG92YW4gPGd1
c3Rhdm9AcGFkb3Zhbi5vcmc+DQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzog
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcNCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8ICAgIDggKysrKy0tLS0NCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0t
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jDQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCisrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UuYw0KQEAgLTEwMiw3ICsxMDIsNyBAQCBzdGF0aWMgYXRvbWljNjRfdCBk
bWFfZmVuY2VfY29udGV4dF9jb3VuDQogICoNCiAgKiAqIERyaXZlcnMgYXJlIGFsbG93ZWQgdG8g
Y2FsbCBkbWFfZmVuY2Vfd2FpdCgpIGZyb20gdGhlaXIgJm1tdV9ub3RpZmllcg0KICAqICAgcmVz
cGVjdGl2ZWx5ICZtbXVfaW50ZXJ2YWxfbm90aWZpZXIgY2FsbGJhY2tzLiBUaGlzIG1lYW5zIGFu
eSBjb2RlIHJlcXVpcmVkDQotICogICBmb3IgZmVuY2UgY29tcGxldGVpb24gY2Fubm90IGFsbG9j
YXRlIG1lbW9yeSB3aXRoIEdGUF9OT0ZTIG9yIEdGUF9OT0lPLg0KKyAqICAgZm9yIGZlbmNlIGNv
bXBsZXRpb24gY2Fubm90IGFsbG9jYXRlIG1lbW9yeSB3aXRoIEdGUF9OT0ZTIG9yIEdGUF9OT0lP
Lg0KICAqICAgT25seSBHRlBfQVRPTUlDIGlzIHBlcm1pc3NpYmxlLCB3aGljaCBtaWdodCBmYWls
Lg0KICAqDQogICogTm90ZSB0aGF0IG9ubHkgR1BVIGRyaXZlcnMgaGF2ZSBhIHJlYXNvbmFibGUg
ZXhjdXNlIGZvciBib3RoIHJlcXVpcmluZw0KQEAgLTUyMiw3ICs1MjIsNyBAQCBkbWFfZmVuY2Vf
d2FpdF90aW1lb3V0KHN0cnVjdCBkbWFfZmVuY2UNCiBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV93
YWl0X3RpbWVvdXQpOw0KIA0KIC8qKg0KLSAqIGRtYV9mZW5jZV9yZWxlYXNlIC0gZGVmYXVsdCBy
ZWxlc2UgZnVuY3Rpb24gZm9yIGZlbmNlcw0KKyAqIGRtYV9mZW5jZV9yZWxlYXNlIC0gZGVmYXVs
dCByZWxlYXNlIGZ1bmN0aW9uIGZvciBmZW5jZXMNCiAgKiBAa3JlZjogJmRtYV9mZW5jZS5yZWNm
b3VudA0KICAqDQogICogVGhpcyBpcyB0aGUgZGVmYXVsdCByZWxlYXNlIGZ1bmN0aW9ucyBmb3Ig
JmRtYV9mZW5jZS4gRHJpdmVycyBzaG91bGRuJ3QgY2FsbA0KQEAgLTk3NCw4ICs5NzQsOCBAQCB2
b2lkIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mDQogRVhQT1JUX1NZTUJPTChk
bWFfZmVuY2Vfc2V0X2RlYWRsaW5lKTsNCiANCiAvKioNCi0gKiBkbWFfZmVuY2VfZGVzY3JpYmUg
LSBEdW1wIGZlbmNlIGRlc2NyaWJ0aW9uIGludG8gc2VxX2ZpbGUNCi0gKiBAZmVuY2U6IHRoZSA2
ZmVuY2UgdG8gZGVzY3JpYmUNCisgKiBkbWFfZmVuY2VfZGVzY3JpYmUgLSBEdW1wIGZlbmNlIGRl
c2NyaXB0aW9uIGludG8gc2VxX2ZpbGUNCisgKiBAZmVuY2U6IHRoZSBmZW5jZSB0byBkZXNjcmli
ZQ0KICAqIEBzZXE6IHRoZSBzZXFfZmlsZSB0byBwdXQgdGhlIHRleHR1YWwgZGVzY3JpcHRpb24g
aW50bw0KICAqDQogICogRHVtcCBhIHRleHR1YWwgZGVzY3JpcHRpb24gb2YgdGhlIGZlbmNlIGFu
ZCBpdCdzIHN0YXRlIGludG8gdGhlIHNlcV9maWxlLg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
