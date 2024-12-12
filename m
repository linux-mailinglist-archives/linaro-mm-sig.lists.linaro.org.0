Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AA89EF0B1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Dec 2024 17:30:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5979D43E7D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Dec 2024 16:30:57 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 8ADE840E1B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Dec 2024 16:30:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=W9HRBGFP;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 19AECA428BB;
	Thu, 12 Dec 2024 16:28:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 866E2C4CED0;
	Thu, 12 Dec 2024 16:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1734021049;
	bh=2ubayNlvuMKrWihrpePf3YDoYhVpeZCwLIl69krSSXQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=W9HRBGFP1fpMqbmKCmaWsHhBA3WfTqfgrunOdN9+j+ItJdgBtRWO2cXKD+FFMbQIo
	 /E3UV1cojKonGZIXklrUVdCr03K+qmqjQf0wDQtvD4GQKahHWnBLX80lBxQNdVeS0o
	 643Af0v/3EsYpA3tPOTTPKpZj3bdivdpvmEqvrwA=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Thu, 12 Dec 2024 15:59:37 +0100
Message-ID: <20241212144416.045269587@linuxfoundation.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241212144349.797589255@linuxfoundation.org>
References: <20241212144349.797589255@linuxfoundation.org>
User-Agent: quilt/0.67
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-Rspamd-Queue-Id: 8ADE840E1B
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[linaro.org:email,padovan.org:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,lists.linux.dev,igalia.com,amd.com,ffwll.ch,linaro.org,padovan.org,gmx.de,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: UHOCYCWOQYIZOWRVNADCG2MCUXOHZMF4
X-Message-ID-Hash: UHOCYCWOQYIZOWRVNADCG2MCUXOHZMF4
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, patches@lists.linux.dev, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Friedrich Vock <friedrich.vock@gmx.de>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6.1 632/772] dma-fence: Fix reference leak on fence merge failure path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UHOCYCWOQYIZOWRVNADCG2MCUXOHZMF4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Ni4xLXN0YWJsZSByZXZpZXcgcGF0Y2guICBJZiBhbnlvbmUgaGFzIGFueSBvYmplY3Rpb25zLCBw
bGVhc2UgbGV0IG1lIGtub3cuDQoNCi0tLS0tLS0tLS0tLS0tLS0tLQ0KDQpGcm9tOiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCg0KY29tbWl0IDk0OTI5MWM1MzE0
MDA5YjRmNmUyNTIzOTFlZGJiNDBmZGQ1ZDU0MTQgdXBzdHJlYW0uDQoNClJlbGVhc2UgYWxsIGZl
bmNlIHJlZmVyZW5jZXMgaWYgdGhlIG91dHB1dCBkbWEtZmVuY2UtYXJyYXkgY291bGQgbm90IGJl
DQphbGxvY2F0ZWQuDQoNClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpZ2FsaWEuY29tPg0KRml4ZXM6IDI0NWE0YTdiNTMxYyAoImRtYS1idWY6IGdlbmVyYWxp
emUgZG1hX2ZlbmNlIHVud3JhcCAmIG1lcmdpbmcgdjMiKQ0KQ2M6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPg0KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+
DQpDYzogR3VzdGF2byBQYWRvdmFuIDxndXN0YXZvQHBhZG92YW4ub3JnPg0KQ2M6IEZyaWVkcmlj
aCBWb2NrIDxmcmllZHJpY2gudm9ja0BnbXguZGU+DQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJu
ZWwub3JnDQpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZw0KQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY2
LjArDQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPg0KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21z
Z2lkLzIwMjQxMTE1MTAyMTUzLjE5ODAtMi10dXJzdWxpbkBpZ2FsaWEuY29tDQpTaWduZWQtb2Zm
LWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPg0KLS0t
DQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYyB8IDIgKysNCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLXVud3JhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KaW5k
ZXggNjI4YWY1MWM4MWFmLi5iMTlkMGFkZjYwODYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLXVud3JhcC5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVu
d3JhcC5jDQpAQCAtMTY0LDYgKzE2NCw4IEBAIHN0cnVjdCBkbWFfZmVuY2UgKl9fZG1hX2ZlbmNl
X3Vud3JhcF9tZXJnZSh1bnNpZ25lZCBpbnQgbnVtX2ZlbmNlcywNCiAJCQkJCWRtYV9mZW5jZV9j
b250ZXh0X2FsbG9jKDEpLA0KIAkJCQkJMSwgZmFsc2UpOw0KIAlpZiAoIXJlc3VsdCkgew0KKwkJ
Zm9yIChpID0gMDsgaSA8IGNvdW50OyBpKyspDQorCQkJZG1hX2ZlbmNlX3B1dChhcnJheVtpXSk7
DQogCQl0bXAgPSBOVUxMOw0KIAkJZ290byByZXR1cm5fdG1wOw0KIAl9DQotLSANCjIuNDcuMQ0K
DQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
