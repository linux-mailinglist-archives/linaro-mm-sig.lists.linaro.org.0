Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AH4MOc0R4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:43:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A37411E2B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:43:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9CFDB448BD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:43:56 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 348403F773
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Feb 2026 14:33:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=XI6++OgG;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1770993235;
	bh=QrHRsIhrdBDLSHjhctyMWK0PdAzEwhDoDqFh8NUhPsg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=XI6++OgGhAoR6cPGMc0s+GhabfCA3WYXjfjwg01BIqPa57q2uQ3WUh+tXkBJYKEWq
	 vFyN5mSGWcvY9VaJIz3x+u7DNfiSjkE3CfQAhmL+vOurN3rlKb0Liyz3WPvbqzGCAL
	 6rD7OgsIklF3bnc6y8/znn+ESHFfpvM6SZMNUyRwRIoUdEU10W/XeB1YRe36gir8lu
	 v5QMK7fQwCtEO4WXzQqSZUp6cng4qkIoU3DYs9kjfkoMFag+WulLdP8hlFRz3zEbYi
	 3A2bKOPjdVZFYGZIjfznaLGCg/j5g1cBeqJxTyExSbAhCjGi3VbJL1byAHSc3YZLV6
	 DY3LInsRlTq7A==
Received: from fedora (unknown [IPv6:2a01:e0a:2c:6930:d919:a6e:5ea1:8a9f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 52EA117E00AC;
	Fri, 13 Feb 2026 15:33:55 +0100 (CET)
Date: Fri, 13 Feb 2026 15:33:50 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Christian =?UTF-8?B?S8O2bmln?=" <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20260213153350.223cd382@fedora>
In-Reply-To: <20260210102232.1642-9-christian.koenig@amd.com>
References: <20260210102232.1642-1-christian.koenig@amd.com>
	<20260210102232.1642-9-christian.koenig@amd.com>
Organization: Collabora
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QJYMUPXJJ4VHQNEFWEDO4YJXVQVC2TUC
X-Message-ID-Hash: QJYMUPXJJ4VHQNEFWEDO4YJXVQVC2TUC
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:24 +0000
CC: phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 8/8] dma-buf: use inline lock for the dma-fence-chain
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QJYMUPXJJ4VHQNEFWEDO4YJXVQVC2TUC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	DATE_IN_PAST(1.00)[1490];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.817];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,collabora.com:email,igalia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 89A37411E2B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAxMCBGZWIgMjAyNiAxMTowMjowMyArMDEwMA0KIkNocmlzdGlhbiBLw7ZuaWciIDxj
a29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6DQoNCj4gVXNpbmcgdGhlIGlu
bGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFfZmVuY2UNCj4gaW1w
bGVtZW50YXRpb25zLg0KPiANCj4gU28gdXNlIHRoaXMgYXBwcm9hY2ggZm9yIHRoZSBmcmFtZXdv
cmsncyBpbnRlcm5hbCBmZW5jZXMgYXMgd2VsbC4NCj4gDQo+IEFsc28gc2F2ZXMgYWJvdXQgNCBi
eXRlcyBmb3IgdGhlIGV4dGVybmFsIHNwaW5sb2NrLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBSZXZpZXdlZC1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQo+IFJldmlld2VkLWJ5
OiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KDQpSZXZpZXdlZC1ieTogQm9y
aXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4NCg0KPiAtLS0NCj4g
IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyB8IDMgKy0tDQo+ICBpbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS1jaGFpbi5oICAgfCAxIC0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS1jaGFpbi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5j
DQo+IGluZGV4IGE4YTkwYWNmNGYzNC4uYTcwNzc5MmI2MDI1IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS1jaGFpbi5jDQo+IEBAIC0yNDUsNyArMjQ1LDYgQEAgdm9pZCBkbWFfZmVuY2VfY2hh
aW5faW5pdChzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbiwNCj4gIAlzdHJ1Y3QgZG1hX2Zl
bmNlX2NoYWluICpwcmV2X2NoYWluID0gdG9fZG1hX2ZlbmNlX2NoYWluKHByZXYpOw0KPiAgCXVp
bnQ2NF90IGNvbnRleHQ7DQo+ICANCj4gLQlzcGluX2xvY2tfaW5pdCgmY2hhaW4tPmxvY2spOw0K
PiAgCXJjdV9hc3NpZ25fcG9pbnRlcihjaGFpbi0+cHJldiwgcHJldik7DQo+ICAJY2hhaW4tPmZl
bmNlID0gZmVuY2U7DQo+ICAJY2hhaW4tPnByZXZfc2Vxbm8gPSAwOw0KPiBAQCAtMjYxLDcgKzI2
MCw3IEBAIHZvaWQgZG1hX2ZlbmNlX2NoYWluX2luaXQoc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAq
Y2hhaW4sDQo+ICAJCQlzZXFubyA9IG1heChwcmV2LT5zZXFubywgc2Vxbm8pOw0KPiAgCX0NCj4g
IA0KPiAtCWRtYV9mZW5jZV9pbml0NjQoJmNoYWluLT5iYXNlLCAmZG1hX2ZlbmNlX2NoYWluX29w
cywgJmNoYWluLT5sb2NrLA0KPiArCWRtYV9mZW5jZV9pbml0NjQoJmNoYWluLT5iYXNlLCAmZG1h
X2ZlbmNlX2NoYWluX29wcywgTlVMTCwNCj4gIAkJCSBjb250ZXh0LCBzZXFubyk7DQo+ICANCj4g
IAkvKg0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtY2hhaW4uaCBiL2lu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLWNoYWluLmgNCj4gaW5kZXggNjhjM2MxZTQxMDE0Li5kMzlj
ZTdhMmU1OTkgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWNoYWluLmgN
Cj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtY2hhaW4uaA0KPiBAQCAtNDYsNyArNDYs
NiBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluIHsNCj4gIAkJICovDQo+ICAJCXN0cnVjdCBpcnFf
d29yayB3b3JrOw0KPiAgCX07DQo+IC0Jc3BpbmxvY2tfdCBsb2NrOw0KPiAgfTsNCj4gIA0KPiAg
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
