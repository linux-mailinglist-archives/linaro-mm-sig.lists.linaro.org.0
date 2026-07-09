Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TRlrKwaVT2p7kAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 14:33:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C84A731026
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 14:33:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=gdFh8VX7;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D45FA40D6E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2026 12:33:08 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	by lists.linaro.org (Postfix) with ESMTPS id 55061404A8
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2026 12:32:58 +0000 (UTC)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA512)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4gwvWB6yxNzKmyt;
	Thu, 09 Jul 2026 14:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1783600375; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YVYt+UStdsp6KSy/K/PPDXZMCGokRgp9VCy0kpFdPoM=;
	b=gdFh8VX7SzGhmQ7SHfO274rZcpjmyjzdoawdIUQozbFTeA/8X5xbhrVIaYJJ8cSaM4stqb
	XXltG7AAq4u7ii/krmysiaGXk/jKpVXZ14B8G4yKr5rG3NlUnjSDv6t93ZFAW5bBpbcqap
	1cvI6v1qQ7nOGzmY5CO4b7QWPjRNra93fN1BOiIJkF1dembWqIK40jLqlqYifGZPmISkaC
	8707rqIwuJmEZ4+5Cffxpi78avEFeb7fE5DiAXiFzijozmpnvLznDzFl7wDS3CUrxpwPyD
	6WCnIYOHKRP211+5ZGTWVNwTC9GsVR3sd6SsQYTTrUCEUNm7oO6iruk/6BhlLg==
Message-ID: <1ccfc0b5d1696a8dec4756b675294e7fb41ab5ff.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann	 <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Simona Vetter	 <simona@ffwll.ch>, Sumit Semwal
 <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?=	
 <christian.koenig@amd.com>, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Philipp Stanner
 <phasta@kernel.org>, Danilo Krummrich	 <dakr@kernel.org>
Date: Thu, 09 Jul 2026 14:32:48 +0200
In-Reply-To: <20260708-linux-drm_crtc_fix2-v2-1-cf72be75d75a@linaro.org>
References: <20260708-linux-drm_crtc_fix2-v2-0-cf72be75d75a@linaro.org>
	 <20260708-linux-drm_crtc_fix2-v2-1-cf72be75d75a@linaro.org>
MIME-Version: 1.0
X-MBO-RS-META: 9kkhdaab74g8d318nt6ektw8founsbd7
X-MBO-RS-ID: f11a675c1421234383b
X-Spamd-Bar: ----
Message-ID-Hash: SQOX246WWQJ6OXZ7ZDM3SAMYXFPBWXCZ
X-Message-ID-Hash: SQOX246WWQJ6OXZ7ZDM3SAMYXFPBWXCZ
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/2] drm/drm_crtc: ensure dma_fence_ops remain valid during device unbind
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SQOX246WWQJ6OXZ7ZDM3SAMYXFPBWXCZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andre.draszik@linaro.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:phasta@kernel.org,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,amd.com,igalia.com,collabora.com];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C84A731026

K0NjIERhbmlsbyAod2hvIGlzIGN1cnJlbnRseSBjb25jZXJuZWQgd2l0aCBkcm1fZGV2aWNlIGxp
ZmUgdGltZXMpDQoNCk9uIFdlZCwgMjAyNi0wNy0wOCBhdCAxNjoyMiArMDEwMCwgQW5kcsOpIERy
YXN6aWsgd3JvdGU6DQo+IA0KDQpb4oCmXQ0KDQo+IExpbms6IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDYxOC1saW51eC1kcm1fY3J0Y19maXgyLXYxLTEtYzAzZTc3YjM2ZjM0
QGxpbmFyby5vcmc/cGFydD0xDQo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRy
ZS5kcmFzemlrQGxpbmFyby5vcmc+DQoNCkkgYW0gdGVtcHRlZCB0byB0aGluayB0aGF0IHRoaXMg
YWxzbyBuZWVkcyBhIEZpeGVzIGFuZCBuZWVkcyB0byBiZQ0KYmFja3BvcnRlZCBpbnRvIHN0YWJs
ZSBrZXJuZWxzLCBkb2Vzbid0IGl0PyBFc3BlY2lhbGx5IGlmIHRoZSBCVUdfT04NCmRpc2FwcGVh
cnMgaW4gc3RhYmxlIGtlcm5lbHMuDQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2RybV9j
cnRjLmMgfCA2ICsrKysrKw0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2NydGMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fY3J0Yy5jDQo+IGluZGV4IDYzZWFkOGJhNjc1Ni4uZDU1ZjEzNzdlYzM2IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2NydGMuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX2NydGMuYw0KPiBAQCAtNTAxLDYgKzUwMSwxMiBAQCB2b2lkIGRybV9jcnRjX2Ns
ZWFudXAoc3RydWN0IGRybV9jcnRjICpjcnRjKQ0KPiDCoHsNCj4gwqAJc3RydWN0IGRybV9kZXZp
Y2UgKmRldiA9IGNydGMtPmRldjsNCj4gwqANCj4gKwkvKiBFbnN1cmUgb3VyIGRtYV9mZW5jZV9v
cHMgcmVtYWluIHZhbGlkIGZvciBhbiBSQ1UgZ3JhY2UgcGVyaW9kIGFmdGVyDQo+ICsJICogdGhl
IGZlbmNlIGlzIHNpZ25hbGVkLiBUaGlzIGlzIG5lY2Vzc2FyeSBiZWNhdXNlIG91ciBkbWFfZmVu
Y2Vfb3BzDQo+ICsJICogZGVyZWZlcmVuY2UgY3J0Yy0+ZGV2Lg0KPiArCSAqLw0KPiArCXN5bmNo
cm9uaXplX3JjdSgpOw0KDQpuaXQ6DQpJIGd1ZXNzIHRoaXMgaXMgdGhlIG9ubHkgcGxhY2Ugd2hl
cmUgb25lIGNhbiByZWFzb25hYmx5IHB1dCB0aGUNCnN5bmNocm9uaXplX3JjdSgpLiBCdXQgSSB3
b3VsZCBoaW50IGF0IHRoZSBSQ1UgZGVsYXkgaW4gdGhlIGZ1bmN0aW9uJ3MNCmRvY3UuDQoNCj4g
Kw0KPiDCoAkvKiBOb3RlIHRoYXQgdGhlIGNydGNfbGlzdCBpcyBjb25zaWRlcmVkIHRvIGJlIHN0
YXRpYzsgc2hvdWxkIHdlDQo+IMKgCSAqIHJlbW92ZSB0aGUgZHJtX2NydGMgYXQgcnVudGltZSB3
ZSB3b3VsZCBoYXZlIHRvIGRlY3JlbWVudCBhbGwNCj4gwqAJICogdGhlIGluZGljZXMgb24gdGhl
IGRybV9jcnRjIGFmdGVyIHVzIGluIHRoZSBjcnRjX2xpc3QuDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
