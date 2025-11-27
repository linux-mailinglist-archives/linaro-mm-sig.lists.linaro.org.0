Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GASxBTUB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA8A410E3F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFA42443E1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:33:07 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id 1B5443F70A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 10:57:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=ZwnqEigH;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4dHD0S3Y2Lz9tgD;
	Thu, 27 Nov 2025 11:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764241048; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bQoR8mNlqA2oCRhrxvCTyx9bmQGgxtrjxR27vUhKuSM=;
	b=ZwnqEigHKsgIS6x7IdHgcM3q6+kVZJofivGnyQK42WzEXMWmQY0smwklGu5QFf2szUeAfm
	+RMLwG/an+gi+Ao0XX6vEnCOtOQ8PRf2idoXi+yf7iXOhVKtYqgNP5jL+XlwalFbK9fvja
	TaJ38Js5m2PqwNNVZc+2Ak491+4ZYBD21QziQcEvpgGnCO1Bj0mKYH6U/cML5XlM8hwxXi
	wlLmKi26T+VUS5WiynItOaECLEC47aPU9tFZc3jsMwSIw/yiEuEctUChxOyKH0Gweg3gQ9
	11gKYkFJiwLoiHf3Cw+k0SfTN3zjgsk5WgVAnA4SXRLJZiyKCxIxGx9gS6O+tA==
Message-ID: <cbf607a647ab40ef800b3deb23f7b9c14f0b38e7.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	alexdeucher@gmail.com, simona.vetter@ffwll.ch, tursulin@ursulin.net,
	matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 27 Nov 2025 11:57:25 +0100
In-Reply-To: <20251113145332.16805-10-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
	 <20251113145332.16805-10-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: xka7bskk1rf18y3f3m8pzy4j37qgwxek
X-MBO-RS-ID: 60230be4350f9a5540d
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 75AA7VEOF3KIDY3J5MAAEUVLWS27UDFG
X-Message-ID-Hash: 75AA7VEOF3KIDY3J5MAAEUVLWS27UDFG
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:15 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 09/18] drm/amdgpu: fix KFD eviction fence enable_signaling path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/75AA7VEOF3KIDY3J5MAAEUVLWS27UDFG/>
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
	DATE_IN_PAST(1.00)[3364];
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
	NEURAL_HAM(-0.00)[-0.900];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,linaro.org:email,mailbox.org:mid]
X-Rspamd-Queue-Id: ACA8A410E3F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBDYWxsaW5nIGRtYV9mZW5jZV9pc19zaWduYWxlZCgpIGhlcmUgaXMgaWxsZWdhbCENCg0K
T0ssIGJ1dCB3aHkgaXMgdGhhdCBwYXRjaCBpbiB0aGlzIHNlcmllcz8NCg0KUC4NCg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkX2Zl
bmNlLmMgfCA2IC0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRf
ZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZmVuY2Uu
Yw0KPiBpbmRleCAxZWY3NThhYzUwNzYuLjA5YzkxOWY3MmI2YyAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtmZF9mZW5jZS5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZmVuY2UuYw0KPiBAQCAtMTIw
LDEyICsxMjAsNiBAQCBzdGF0aWMgYm9vbCBhbWRrZmRfZmVuY2VfZW5hYmxlX3NpZ25hbGluZyhz
dHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KPiDCoHsNCj4gwqAJc3RydWN0IGFtZGdwdV9hbWRrZmRfZmVu
Y2UgKmZlbmNlID0gdG9fYW1kZ3B1X2FtZGtmZF9mZW5jZShmKTsNCj4gwqANCj4gLQlpZiAoIWZl
bmNlKQ0KPiAtCQlyZXR1cm4gZmFsc2U7DQo+IC0NCj4gLQlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25h
bGVkKGYpKQ0KPiAtCQlyZXR1cm4gdHJ1ZTsNCj4gLQ0KPiDCoAlpZiAoIWZlbmNlLT5zdm1fYm8p
IHsNCj4gwqAJCWlmICgha2dkMmtmZF9zY2hlZHVsZV9ldmljdF9hbmRfcmVzdG9yZV9wcm9jZXNz
KGZlbmNlLT5tbSwgZikpDQo+IMKgCQkJcmV0dXJuIHRydWU7DQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
