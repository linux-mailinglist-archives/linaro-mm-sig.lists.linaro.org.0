Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBbSKJ9l5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:42:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E55431E2C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:42:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EE6A404C3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:42:54 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 8FFBD404B1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 10:06:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=qMLoNjzA;
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of tvrtko.ursulin@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=tvrtko.ursulin@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=RsHj3B+OHfm/0FRZ3o5Q5eWOIOGRkA4Ykl526vZrTs0=; b=qMLoNjzAqopvjCtxlFMYuP/Hz2
	t6ZAVxtyYMv/vny4PSumehPJzXDDF8ccx8TozMbf5DmXho+/vWcMKr5hqF02Pz3RuYrkZsYKrFAnP
	1px/nTz1u5x9vkWxiGAchq2JS/qP/8SBu9omHGQa7ijaLjDOJkMVfQxpu/XB7eCCtdyGMNGQAG7z9
	po0e5RbDGYmsJdv/YVZ64cnBDqOlzQP73GEfFNwr6g9XqQzEoUfFU7+/rbbfyTbzx3+Ld+kqDJjQ1
	60N9JKobQfzFpNGkcO9AlM7bTRmtb8v3k3rfdfMaHA6tSwT+loe8fsJh3m2NX/21uvJDEZyZ+XWcq
	mzNssAyw==;
Received: from [90.240.106.137] (helo=localhost)
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1wCEAx-00FL6K-9m; Mon, 13 Apr 2026 12:05:51 +0200
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 13 Apr 2026 11:05:26 +0100
Message-ID: <20260413100526.15729-3-tvrtko.ursulin@igalia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260413100526.15729-1-tvrtko.ursulin@igalia.com>
References: <20260413100526.15729-1-tvrtko.ursulin@igalia.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RM3NAQ5THQ2M76NAH6AOSFDLJOXP3FQK
X-Message-ID-Hash: RM3NAQ5THQ2M76NAH6AOSFDLJOXP3FQK
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:25 +0000
CC: kernel-dev@igalia.com, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/3] dma-fence: Init and enable signalling can use the fast path tracepoint
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RM3NAQ5THQ2M76NAH6AOSFDLJOXP3FQK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.69 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	DATE_IN_PAST(1.00)[175];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.984];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,igalia.com:mid,igalia.com:email,collabora.com:email]
X-Rspamd-Queue-Id: 84E55431E2C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PkZyb20gZG1hX2ZlbmNlX2luaXQgKGNhbm5vdCBzaWduYWwgeWV0KSBhbmQgZG1hX2ZlbmNlX2Vu
YWJsZV9zaWduYWxpbmcNCihmZW5jZS0+bG9jayBhbmQgcmN1X3JlYWRfbG9jayBoZWxkLCBvcHMg
Y2hlY2tlZCBtYW51YWxseSksIGl0IGlzIHNhZmUgdG8NCnVzZSB0aGUgbWFyZ2luYWxseSBmYXN0
ZXIgdHJhY2Vwb2ludCBjbGFzcy4NCg0KU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPg0KQ2M6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+
DQpDYzogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4NCkNj
OiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcNCi0tLQ0KIGluY2x1ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oIHwgNCArKy0t
DQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oIGIvaW5jbHVkZS90cmFj
ZS9ldmVudHMvZG1hX2ZlbmNlLmgNCmluZGV4IDIyMGJmNzE0NDZlOC4uOWUwY2I5Y2UyMzg4IDEw
MDY0NA0KLS0tIGEvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmgNCisrKyBiL2luY2x1
ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oDQpAQCAtNzEsNyArNzEsNyBAQCBERUZJTkVfRVZF
TlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2VfZW1pdCwNCiAJVFBfQVJHUyhmZW5jZSkNCiApOw0KIA0K
LURFRklORV9FVkVOVChkbWFfZmVuY2UsIGRtYV9mZW5jZV9pbml0LA0KK0RFRklORV9FVkVOVChk
bWFfZmVuY2Vfb3BzLCBkbWFfZmVuY2VfaW5pdCwNCiANCiAJVFBfUFJPVE8oc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UpLA0KIA0KQEAgLTg1LDcgKzg1LDcgQEAgREVGSU5FX0VWRU5UKGRtYV9mZW5j
ZSwgZG1hX2ZlbmNlX2Rlc3Ryb3ksDQogCVRQX0FSR1MoZmVuY2UpDQogKTsNCiANCi1ERUZJTkVf
RVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2VfZW5hYmxlX3NpZ25hbCwNCitERUZJTkVfRVZFTlQo
ZG1hX2ZlbmNlX29wcywgZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWwsDQogDQogCVRQX1BST1RPKHN0
cnVjdCBkbWFfZmVuY2UgKmZlbmNlKSwNCiANCi0tIA0KMi41Mi4wDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
