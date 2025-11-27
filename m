Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eA2ACRoB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 985E8410E0D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF066442FB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:32:39 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	by lists.linaro.org (Postfix) with ESMTPS id 628853F847
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 10:17:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=Cli4CK3X;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4dHC6Y21rgz9sym;
	Thu, 27 Nov 2025 11:17:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764238661; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XUX6g1+cMLR5RovSUnlNsHoaQA7NAILRZDgCTdRlTBE=;
	b=Cli4CK3XzkF3MQcBNHxChG42NdcyrblWVcZx+KBp5UTSaxfiLCV0/gR1crhhRYTKrlD90W
	igk5BSxEZlVDlLf1Qmqaxpw8aEQh1cNuwigKudm9beTIGWIFA3APA9goVBHMz07vJKdsWD
	uUDka9FEWImlr0Of/N0atYuaTby5fhCBA34vyvBqWvhEEMC8rQqHDz/lh7wVb6Qo1lAtid
	mJ9KlRIMzC/KLES3N4Zv+4tfaXdxjZP1XCk8d5/4x4l0vJvT7ClXxBeJnaYezDW2e0dFPD
	6TO9xLKh8FrWq4xThWS4sZjAanqfo9+QlpMrvJPl5ONINxEhTfwV9dl0uQqBZA==
Message-ID: <79eb3c713e810ec025eb3cd20583cb666ca7322d.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	alexdeucher@gmail.com, simona.vetter@ffwll.ch, tursulin@ursulin.net,
	matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 27 Nov 2025 11:17:38 +0100
In-Reply-To: <20251113145332.16805-2-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
	 <20251113145332.16805-2-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 84f1c3ac36b0a1da64e
X-MBO-RS-META: 8pno8uwxaajz8buasnmowgm3zrpoii17
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XTKAX645YLVLPJW6QAUQBK66FKX33ME4
X-Message-ID-Hash: XTKAX645YLVLPJW6QAUQBK66FKX33ME4
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:13 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 01/18] dma-buf: cleanup dma_fence_describe v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XTKAX645YLVLPJW6QAUQBK66FKX33ME4/>
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
	DATE_IN_PAST(1.00)[3365];
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.908];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,amd.com:email]
X-Rspamd-Queue-Id: 985E8410E0D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBUaGUgZHJpdmVyIGFuZCB0aW1lbGluZSBuYW1lIGFyZSBtZWFuaW5nbGVzcyBmb3Igc2ln
bmFsZWQgZmVuY2VzLg0KPiANCj4gRHJvcCB0aGVtIGFuZCBhbHNvIHByaW50IHRoZSBjb250ZXh0
IG51bWJlci4NCj4gDQo+IHYyOiBhdm9pZCB0aGUgY2FsbHMgd2hlbiB0aGUgQk8gaXMgYWxyZWFk
eSBzaWduYWxlZC4NCj4gdjM6IHVzZSBzYW1lIGZvcm1hdCBhcyB0cmFjZSBwb2ludHMgZm9yIGNv
bnRleHQgYW5kIHNlcW5vLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NCg0KSSBzdGlsbCB0aGluayB0aGF0IG1v
cmUgZmxlc2hlZCBvdXQgY29tbWl0IG1lc3NhZ2VzIGFyZSBncmVhdCA6KQ0KDQoNCj4gwqBkcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAyMCArKysrKysrKysrKy0tLS0tLS0tLQ0KPiDCoDEg
ZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UuYw0KPiBpbmRleCBjNWQxNDc4YjI4ZGQuLmI0ZjVjODYzNTI3NiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYw0KPiBAQCAtOTk3LDE5ICs5OTcsMjEgQEAgRVhQT1JUX1NZTUJPTChkbWFf
ZmVuY2Vfc2V0X2RlYWRsaW5lKTsNCj4gwqAgKi8NCj4gwqB2b2lkIGRtYV9mZW5jZV9kZXNjcmli
ZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3RydWN0IHNlcV9maWxlICpzZXEpDQo+IMKgew0K
PiAtCWNvbnN0IGNoYXIgX19yY3UgKnRpbWVsaW5lOw0KPiAtCWNvbnN0IGNoYXIgX19yY3UgKmRy
aXZlcjsNCj4gKwljb25zdCBjaGFyIF9fcmN1ICp0aW1lbGluZSA9ICIiOw0KPiArCWNvbnN0IGNo
YXIgX19yY3UgKmRyaXZlciA9ICIiOw0KPiArCWNvbnN0IGNoYXIgKnNpZ25hbGVkID0gIiI7DQo+
IMKgDQo+IMKgCXJjdV9yZWFkX2xvY2soKTsNCj4gwqANCj4gLQl0aW1lbGluZSA9IGRtYV9mZW5j
ZV90aW1lbGluZV9uYW1lKGZlbmNlKTsNCj4gLQlkcml2ZXIgPSBkbWFfZmVuY2VfZHJpdmVyX25h
bWUoZmVuY2UpOw0KPiArCWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkgew0KPiAr
CQl0aW1lbGluZSA9IGRtYV9mZW5jZV90aW1lbGluZV9uYW1lKGZlbmNlKTsNCj4gKwkJZHJpdmVy
ID0gZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKGZlbmNlKTsNCj4gKwkJc2lnbmFsZWQgPSAidW4iOw0K
PiArCX0NCj4gwqANCj4gLQlzZXFfcHJpbnRmKHNlcSwgIiVzICVzIHNlcSAlbGx1ICVzc2lnbmFs
bGVkXG4iLA0KPiAtCQnCoMKgIHJjdV9kZXJlZmVyZW5jZShkcml2ZXIpLA0KPiAtCQnCoMKgIHJj
dV9kZXJlZmVyZW5jZSh0aW1lbGluZSksDQoNCldoeSBkb2VzIHVzYWdlICBvZiByY3VfZGVyZWZl
cmVuY2UgYmVjb21lIHVubmVjZXNzYXJ5PyANCg0KPiAtCQnCoMKgIGZlbmNlLT5zZXFubywNCj4g
LQkJwqDCoCBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpID8gIiIgOiAidW4iKTsNCj4gKwlz
ZXFfcHJpbnRmKHNlcSwgIiVsbHU6JWxsdSAlcyAlcyAlc3NpZ25hbGxlZFxuIiwNCj4gKwkJwqDC
oCBmZW5jZS0+Y29udGV4dCwgZmVuY2UtPnNlcW5vLCB0aW1lbGluZSwgZHJpdmVyLA0KPiArCQnC
oMKgIHNpZ25hbGVkKTsNCj4gwqANCj4gwqAJcmN1X3JlYWRfdW5sb2NrKCk7DQo+IMKgfQ0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
