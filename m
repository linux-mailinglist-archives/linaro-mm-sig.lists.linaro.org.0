Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIbEI5Vj5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5114743177D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1499940500
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:34:12 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 5810B3F760
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 14:24:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=fUZesUOK;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=phasta@mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4fktmX2Tb7z9vX4;
	Mon, 30 Mar 2026 16:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1774880668; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yRZrkJZfwCu3+U3xhoIwwpL0ahkoftQ4XU/qKrUSNFA=;
	b=fUZesUOKY9ern9a97mGszkiQ1ENAhkAH8U5WBSghIKRP5uhjngxGx9Zn3QPzd8D0d5YBYz
	aVbiYfZWFDvTLO1o95999RMOc1NMv+UtdaGhAh74JBq6/MJA+B4hTXy1LBPfjxQo9bgg/S
	zZveYF5JuYc/OYbrh/NdAbBpvTEAMp/qsQebfRvwawDngLTa+FjkPF2vnNYAMXviQbidt8
	SSVSmZ6J5KoxBABam2EhI5EA1M7flctjIxqSscTxEEzg3vRjuSYvu+cr6Nz1T7/izUlVbJ
	MA7F3Uu89jfqLdA0yyAhDHgrOfbjeY4C6vYXKCXeYp2GxyApncMLHjbNo3S/xg==
Message-ID: <ec5f5cacb36a05780485b3ee1cc1e6be36de549e.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
	dri-devel@lists.freedesktop.org
Date: Mon, 30 Mar 2026 16:24:23 +0200
In-Reply-To: <20260330133623.17704-1-tvrtko.ursulin@igalia.com>
References: <20260330133623.17704-1-tvrtko.ursulin@igalia.com>
MIME-Version: 1.0
X-MBO-RS-ID: 498873b17976b2fdcdb
X-MBO-RS-META: ncjtjt6wa9q5o941ouswkd3y3dkh5x6o
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: N2GZK2TRJPX3PWDF6BIWAED22IOFKEVX
X-Message-ID-Hash: N2GZK2TRJPX3PWDF6BIWAED22IOFKEVX
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:30 +0000
CC: kernel-dev@igalia.com, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Move signalling tracepoint to before ops detach
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N2GZK2TRJPX3PWDF6BIWAED22IOFKEVX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[507];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	NEURAL_HAM(-0.00)[-0.916];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,linaro.org:email,mailbox.org:mid,igalia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5114743177D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SU1PIHRoZSB0aXRsZSBzaG91bGQgc3RhdGUgdGhhdCB0aGlzIGZpeGVzIGEgTlVMTCBwdHIgZGVy
ZWYsIHNpbmNlIHRoYXQncyB2ZXJ5IHNpZ25pZmljYW50Lg0KDQpPbiBNb24sIDIwMjYtMDMtMzAg
YXQgMTQ6MzYgKzAxMDAsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPiBNb3ZlIHRoZSBzaWduYWxs
aW5nIHRyYWNlcG9pbnQgdG8gYmVmb3JlIGZlbmNlLT5vcHMgYXJlIHJlc2V0IG90aGVyd2lzZQ0K
PiB0cmFjZXBvaW50IHdpbGwgZGVyZWZlcmVuY2UgYSBudWxsIHBvaW50ZXIuDQoNCkNhbid0IGZ1
bGx5IGZvbGxvdzsgeW91J3JlIHRhbGtpbmcgYWJvdXQgdGhlIGZlbmNlIG9wcyBkZXRhY2htZW50
IGZvcg0Kc2lnbmFsZWQgZmVuY2VzPw0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCj4gRml4ZXM6IDU0MWM4ZjI0NjhiOSAo
ImRtYS1idWY6IGRldGFjaCBmZW5jZSBvcHMgb24gc2lnbmFsIHYzIikNCj4gQ2M6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gQ2M6IFBoaWxpcHAgU3Rhbm5l
ciA8cGhhc3RhQGtlcm5lbC5vcmc+DQo+IENjOiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXpp
bGxvbkBjb2xsYWJvcmEuY29tPg0KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+
IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gLS0tDQo+IMKgZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jIHwgMyArKy0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IGluZGV4IDE4MjZi
YTczMDk0Yy4uMWMxZWFlY2FmMWIwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IEBAIC0zNjMs
NiArMzYzLDggQEAgdm9pZCBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcF9sb2NrZWQoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UsDQo+IMKgCQkJCcKgwqDCoMKgwqAgJmZlbmNlLT5mbGFncykpKQ0K
PiDCoAkJcmV0dXJuOw0KPiDCoA0KPiArCXRyYWNlX2RtYV9mZW5jZV9zaWduYWxlZChmZW5jZSk7
DQo+ICsNCg0KSWYgaXQncyBhYm91dCB0b3VjaGluZyB0aGUgb3BzLCB0aGUgZGVjaXNpdmUgYWN0
aW9uIHdvdWxkIGJlIHRoZQ0KSVNfU0lHTkFMRUQgZmxhZywgd291bGRuJ3QgaXQ/IFNvIHRyYWNl
X2RtYV9mZW5jZV9zaWduYWxlbGQoKSBzaG91bGQgYmUNCmFib3ZlIHRoZSBmbGFnIHRlc3Q/DQoN
Cg0KUC4NCg0KPiDCoAkvKg0KPiDCoAkgKiBXaGVuIG5laXRoZXIgYSByZWxlYXNlIG5vciBhIHdh
aXQgb3BlcmF0aW9uIGlzIHNwZWNpZmllZCBzZXQgdGhlIG9wcw0KPiDCoAkgKiBwb2ludGVyIHRv
IE5VTEwgdG8gYWxsb3cgdGhlIGZlbmNlIHN0cnVjdHVyZSB0byBiZWNvbWUgaW5kZXBlbmRlbnQN
Cj4gQEAgLTM3Nyw3ICszNzksNiBAQCB2b2lkIGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xv
Y2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4gwqANCj4gwqAJZmVuY2UtPnRpbWVzdGFt
cCA9IHRpbWVzdGFtcDsNCj4gwqAJc2V0X2JpdChETUFfRkVOQ0VfRkxBR19USU1FU1RBTVBfQklU
LCAmZmVuY2UtPmZsYWdzKTsNCj4gLQl0cmFjZV9kbWFfZmVuY2Vfc2lnbmFsZWQoZmVuY2UpOw0K
PiDCoA0KPiDCoAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUoY3VyLCB0bXAsICZjYl9saXN0LCBu
b2RlKSB7DQo+IMKgCQlJTklUX0xJU1RfSEVBRCgmY3VyLT5ub2RlKTsNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
