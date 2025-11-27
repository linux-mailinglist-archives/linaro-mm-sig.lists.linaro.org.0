Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YM2gNjoB4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E79410E4D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1FD59443E8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:33:13 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 251ED3F903
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 11:03:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=oMi9F5El;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4dHD6r3Bzxz9v5v;
	Thu, 27 Nov 2025 12:03:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764241380; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KkRMHtw9LQhelvy8nQcY+tYagsQhskeVABbtwsvV00Y=;
	b=oMi9F5El+OpUch+Gi4hytlmOMl2bv1Je1wsVIt9uEiAVz6wAiyj7CiAfraLDlzz7gZ2VRR
	PeKccneWRm9Uht4Ji7ZCgf3UADmDg0NaR5A2JKg+lUIgbm4O18NIkOrQYlyQ1S2PdEMAh9
	SSepFM0lTu/xIIWp0k3ql6+VC098HcPiNfHmyp8gMMR+oGpVXfZgzalrC33vGgD6Sazmwk
	sQA6qbJspaOvCr4hTzOKD0fPs4nnKILkMfyjLeEAUqSbe1jmf3n2dRFNw6AtgywDmSM0Ky
	5Tzg3wFb8pPlP1TR2GsKpxBaSjXBSUCNIv3g5OZqR4wuydcCbEk3zqUaavI0ww==
Message-ID: <5acfa08453fa07329191fa9cca04be0f5cc5dfc5.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	alexdeucher@gmail.com, simona.vetter@ffwll.ch, tursulin@ursulin.net,
	matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 27 Nov 2025 12:02:52 +0100
In-Reply-To: <20251113145332.16805-12-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
	 <20251113145332.16805-12-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 0f36c905572b1830480
X-MBO-RS-META: g5y64tcnr7qjwojf6ntt51xizdx5ftzf
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WRU22KYFZWU4SOZIJE7A7FFWTWJ32MOF
X-Message-ID-Hash: WRU22KYFZWU4SOZIJE7A7FFWTWJ32MOF
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:16 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 11/18] drm/amdgpu: independence for the amdgpu_eviction_fence!
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WRU22KYFZWU4SOZIJE7A7FFWTWJ32MOF/>
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
	DATE_IN_PAST(1.00)[3364];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.895];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,linaro.org:email,mailbox.org:mid]
X-Rspamd-Queue-Id: 72E79410E4D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBUaGlzIHNob3VsZCBhbGxvdyBhbWRncHVfZmVuY2VzIHRvIG91dGxpdmUgdGhlIGFtZGdw
dSBtb2R1bGUuDQoNCmFtZGdwdV9ldmljdGlvbl9mZW5jZXMgeW91IG1lYW4uDQoNCkFuZCBJIHdv
dWxkIGRyb3AgdGhlICJzaG91bGQiIGZyb20gdGhpcyBhbmQgdGhlIHByZXZpb3VzIHBhdGNoLiBX
ZSdyZQ0KY29uZmlkZW50IGl0IHdvcmtzLCBhcmVuJ3Qgd2U/IF5eJw0KDQpQLg0KDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQo+IFJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNv
bT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2V2aWN0aW9u
X2ZlbmNlLmMgfCAzICstLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9l
dmljdGlvbl9mZW5jZS5oIHwgMSAtDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfZXZpY3Rpb25fZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9ldmljdGlvbl9mZW5jZS5jDQo+IGluZGV4IDIzZDdkMGIwZDYyNS4uOTVlZTIy
YzQzY2ViIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
ZXZpY3Rpb25fZmVuY2UuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZXZpY3Rpb25fZmVuY2UuYw0KPiBAQCAtMTY3LDkgKzE2Nyw4IEBAIGFtZGdwdV9ldmljdGlv
bl9mZW5jZV9jcmVhdGUoc3RydWN0IGFtZGdwdV9ldmljdGlvbl9mZW5jZV9tZ3IgKmV2Zl9tZ3Ip
DQo+IMKgDQo+IMKgCWV2X2ZlbmNlLT5ldmZfbWdyID0gZXZmX21ncjsNCj4gwqAJZ2V0X3Rhc2tf
Y29tbShldl9mZW5jZS0+dGltZWxpbmVfbmFtZSwgY3VycmVudCk7DQo+IC0Jc3Bpbl9sb2NrX2lu
aXQoJmV2X2ZlbmNlLT5sb2NrKTsNCj4gwqAJZG1hX2ZlbmNlX2luaXQ2NCgmZXZfZmVuY2UtPmJh
c2UsICZhbWRncHVfZXZpY3Rpb25fZmVuY2Vfb3BzLA0KPiAtCQkJICZldl9mZW5jZS0+bG9jaywg
ZXZmX21nci0+ZXZfZmVuY2VfY3R4LA0KPiArCQkJIE5VTEwsIGV2Zl9tZ3ItPmV2X2ZlbmNlX2N0
eCwNCj4gwqAJCQkgYXRvbWljX2luY19yZXR1cm4oJmV2Zl9tZ3ItPmV2X2ZlbmNlX3NlcSkpOw0K
PiDCoAlyZXR1cm4gZXZfZmVuY2U7DQo+IMKgfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlLmggYi9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZXZpY3Rpb25fZmVuY2UuaA0KPiBpbmRleCBmY2Q4NjdiNzE0N2Qu
LmZiNzBlZmI1NDMzOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2V2aWN0aW9uX2ZlbmNlLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlLmgNCj4gQEAgLTI3LDcgKzI3LDYgQEANCj4gwqANCj4g
wqBzdHJ1Y3QgYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlIHsNCj4gwqAJc3RydWN0IGRtYV9mZW5jZSBi
YXNlOw0KPiAtCXNwaW5sb2NrX3QJIGxvY2s7DQo+IMKgCWNoYXIJCSB0aW1lbGluZV9uYW1lW1RB
U0tfQ09NTV9MRU5dOw0KPiDCoAlzdHJ1Y3QgYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlX21nciAqZXZm
X21ncjsNCj4gwqB9Ow0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
