Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEm9EiYA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D482C410C4E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E744640966
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:28:36 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 44B2E3F76E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 07:55:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=c0DTH5VG;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4dFw3J1g9vz9v7B;
	Tue, 25 Nov 2025 08:55:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764057324; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uride6hQTmtBCmUx9aPr6ajGn2UY2lSh9OjhTJsJtWE=;
	b=c0DTH5VGZAq/SNZ20rUqWUeGes5xr7zz9g2jaKUTcCxiI89JK8AfuQqqCr5G8verGt3p1s
	jzjfEFT8NeFCaS1s51V9u4oqM6z1GTUKSdS7obZLFuiUC21c/X1szFe9OD0CNFH3CgXEDX
	vrEZ2szR3dKwKGBCLhthgpyYwMb7E3rjFQwprRE13OglstI7g3SUGY4uZYTbkcn3cf9bVo
	KyT9YMNxmVx0HA0uE4v1Mrj4B6xChLtBYIGQ7ohwTsPj2fUbtB3zO+ALKKfnXg7D5fddXq
	aLghD/jY4tDslQf6wzz53ovBditVyK7QYaJ5yT2NsWqAZK3iMobKghRv3oGZ0w==
Message-ID: <380012b9d6f0e9ee3c2f125cfe2f37f65c1979e0.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
	faith@gfxstrand.net, sumit.semwal@linaro.org
Date: Tue, 25 Nov 2025 08:55:19 +0100
In-Reply-To: <20251120150018.27385-2-christian.koenig@amd.com>
References: <20251120150018.27385-1-christian.koenig@amd.com>
	 <20251120150018.27385-2-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: znb9essb3eemgwznn88z6is3ryspinme
X-MBO-RS-ID: 34c87f095cb9a943dbe
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JA6TGQKUV2KWIHWG5DW2QKXWZYJGLJC7
X-Message-ID-Hash: JA6TGQKUV2KWIHWG5DW2QKXWZYJGLJC7
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:53 +0000
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf/fence: give some reasonable maximum signaling timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JA6TGQKUV2KWIHWG5DW2QKXWZYJGLJC7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[3415];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,ffwll.ch,gfxstrand.net,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.917];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: D482C410C4E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTIwIGF0IDE1OjQxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBBZGQgYSBkZWZpbmUgaW1wbGVtZW50YXRpb25zIGNhbiB1c2UgYXMgcmVhc29uYWJsZSBt
YXhpbXVtIHNpZ25hbGluZw0KPiB0aW1lb3V0LiBEb2N1bWVudCB0aGF0IGlmIHRoaXMgdGltZW91
dCBpcyBleGNlZWRlZCBieSBjb25maWcgb3B0aW9ucw0KPiBpbXBsZW1lbnRhdGlvbnMgc2hvdWxk
IHRhaW50IHRoZSBrZXJuZWwuDQo+IA0KPiBUYWludGluZyB0aGUga2VybmVsIGlzIGltcG9ydGFu
dCBmb3IgYnVnIHJlcG9ydHMgdG8gZGV0ZWN0IHRoYXQgZW5kDQo+IHVzZXJzIG1pZ2h0IGJlIHVz
aW5nIGEgcHJvYmxlbWF0aWMgY29uZmlndXJhdGlvbi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gLS0tDQo+IMKgaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UuaCB8IDE0ICsrKysrKysrKysrKysrDQo+IMKgMSBmaWxlIGNo
YW5nZWQsIDE0IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPiBpbmRleCA2NDYzOWUx
MDQxMTAuLmIzMWRmYTUwMWM4NCAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVu
Y2UuaA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+IEBAIC0yOCw2ICsyOCwy
MCBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX29wczsNCj4gwqBzdHJ1Y3QgZG1hX2ZlbmNlX2NiOw0KPiDC
oHN0cnVjdCBzZXFfZmlsZTsNCj4gwqANCj4gKy8qKg0KPiArICogZGVmaW5lIERNQV9GRU5DRV9N
QVhfUkVBU09OQUJMRV9USU1FT1VUIC0gbWF4IHJlYXNvbmFibGUgc2lnbmFsaW5nIHRpbWVvdXQN
Cj4gKyAqDQo+ICsgKiBUaGUgZG1hX2ZlbmNlIG9iamVjdCBoYXMgYSBkZWVwIGludGVyIGRlcGVu
ZGVuY3kgd2l0aCBjb3JlIG1lbW9yeQ0KPiArICogbWFuYWdlbWVudCwgZm9yIGEgZGV0YWlsZWQg
ZXhwbGFuYXRpb24gc2VlIHNlY3Rpb24gRE1BIEZlbmNlcyB1bmRlcg0KPiArICogRG9jdW1lbnRh
dGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0Lg0KPiArICoNCj4gKyAqIEJlY2F1c2Ugb2YgdGhp
cyBhbGwgZG1hX2ZlbmNlIGltcGxlbWVudGF0aW9ucyBtdXN0IGd1YXJhbnRlZSB0aGF0IGVhY2gg
ZmVuY2UNCj4gKyAqIGNvbXBsZXRlcyBpbiBhIGZpbml0ZSB0aW1lLiBUaGlzIGRlZmluZSBoZXJl
IG5vdyBnaXZlcyBhIHJlYXNvbmFibGUgdmFsdWUgZm9yDQo+ICsgKiB0aGUgdGltZW91dCB0byB1
c2UuIEl0IGlzIHBvc3NpYmxlIHRvIHVzZSBhIGxvbmdlciB0aW1lb3V0IGluIGFuDQo+ICsgKiBp
bXBsZW1lbnRhdGlvbiBidXQgdGhhdCBzaG91bGQgdGFpbnQgdGhlIGtlcm5lbC4NCj4gKyAqLw0K
PiArI2RlZmluZSBETUFfRkVOQ0VfTUFYX1JFQVNPTkFCTEVfVElNRU9VVCAoMipIWikNCg0KSFog
Y2FuIGNoYW5nZSBkZXBlbmRpbmcgb24gdGhlIGNvbmZpZy4gSXMgdGhhdCByZWFsbHkgYSBnb29k
IGNob2ljZT8gSQ0KY291bGQgc2VlIHJhY3kgc2l0dWF0aW9ucyBhcmlzaW5nIGluIHNvbWUgY29u
ZmlncyB2cyBvdGhlcnMNCg0KUC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
