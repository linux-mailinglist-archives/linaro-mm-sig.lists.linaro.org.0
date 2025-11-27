Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEfIOi4B4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EAB410E38
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8AAD40991
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:33:01 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 8743B3F847
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 10:51:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=ea2FEuya;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4dHCsj6FcWz9sdm;
	Thu, 27 Nov 2025 11:51:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764240697; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=a+/CnqgOsofBTV7/YbaZDyPU7rGK0NtsOQxJO8FEjuo=;
	b=ea2FEuya3D1m3jJ5FCsL5HytgwaL8Egv8xxGAMDUofMrbEVTQHtj0zaP4KtKp3TPlxokh/
	NWlsGGEBsgWHCkN/qDVxN8p3vXq7IgZuENjzWfugy/9R0rMaPv20rHEtwvR9lH5fLKPJI9
	CL1LPUeHWzQ4/hcXfPAe1FaW4r067FBY59CBT+ac9R4HkYyr6C3A6zzk3oUGm8bNMtkQMq
	Pa29ZJSK9jqbVLMDiErLUqyfqcYso+FVvqvxWW3/BHr4jSfd6PI46WLYOw8LW5zw9gnN90
	kLdqJqdCzcOh/9oIkSC6WNKU7sdf88bARaMpzy5L7gKTm9BXgtydDIiorLXjbQ==
Message-ID: <b1a3e4482fbd42477fc80882baebbfd9d9512b41.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	alexdeucher@gmail.com, simona.vetter@ffwll.ch, tursulin@ursulin.net,
	matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 27 Nov 2025 11:51:34 +0100
In-Reply-To: <20251113145332.16805-7-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
	 <20251113145332.16805-7-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 46ef2ca0481663aa79c
X-MBO-RS-META: 4id8eth43kbt5gbt8cjgi17cd1gwc7yg
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ENCTFIPFNH5QI53KTCY7UA7HOLB27BQE
X-Message-ID-Hash: ENCTFIPFNH5QI53KTCY7UA7HOLB27BQE
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:15 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 06/18] dma-buf: use inline lock for the dma-fence-array
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ENCTFIPFNH5QI53KTCY7UA7HOLB27BQE/>
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
	NEURAL_HAM(-0.00)[-0.894];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,mailbox.org:mid]
X-Rspamd-Queue-Id: A5EAB410E38
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBVc2luZyB0aGUgaW5saW5lIGxvY2sgaXMgbm93IHRoZSByZWNvbW1lbmRlZCB3YXkgZm9y
IGRtYV9mZW5jZSBpbXBsZW1lbnRhdGlvbnMuDQo+IA0KPiBTbyB1c2UgdGhpcyBhcHByb2FjaCBm
b3IgdGhlIGZyYW1ld29yayBpbnRlcm5hbCBmZW5jZXMgYXMgd2VsbC4NCj4gDQo+IEFsc28gc2F2
ZXMgYWJvdXQgNCBieXRlcyBmb3IgdGhlIGV4dGVybmFsIHNwaW5sb2NrLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBS
ZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQoN
ClJldmlld2VkLWJ5OiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3I+DQoNCj4gLS0t
DQo+IMKgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIHwgNSArKy0tLQ0KPiDCoGlu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmjCoMKgIHwgMSAtDQo+IMKgMiBmaWxlcyBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS1hcnJheS5jDQo+IGluZGV4IDY2NTdkNGIzMGFmOS4uYzIxMTlhODA0OWZlIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMNCj4gKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQo+IEBAIC0yMDQsOSArMjA0LDggQEAgdm9pZCBk
bWFfZmVuY2VfYXJyYXlfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheSwNCj4gwqAN
Cj4gwqAJYXJyYXktPm51bV9mZW5jZXMgPSBudW1fZmVuY2VzOw0KPiDCoA0KPiAtCXNwaW5fbG9j
a19pbml0KCZhcnJheS0+bG9jayk7DQo+IC0JZG1hX2ZlbmNlX2luaXQoJmFycmF5LT5iYXNlLCAm
ZG1hX2ZlbmNlX2FycmF5X29wcywgJmFycmF5LT5sb2NrLA0KPiAtCQnCoMKgwqDCoMKgwqAgY29u
dGV4dCwgc2Vxbm8pOw0KPiArCWRtYV9mZW5jZV9pbml0KCZhcnJheS0+YmFzZSwgJmRtYV9mZW5j
ZV9hcnJheV9vcHMsIE5VTEwsIGNvbnRleHQsDQo+ICsJCcKgwqDCoMKgwqDCoCBzZXFubyk7DQo+
IMKgCWluaXRfaXJxX3dvcmsoJmFycmF5LT53b3JrLCBpcnFfZG1hX2ZlbmNlX2FycmF5X3dvcmsp
Ow0KPiDCoA0KPiDCoAlhdG9taWNfc2V0KCZhcnJheS0+bnVtX3BlbmRpbmcsIHNpZ25hbF9vbl9h
bnkgPyAxIDogbnVtX2ZlbmNlcyk7DQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1m
ZW5jZS1hcnJheS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaA0KPiBpbmRleCAw
NzliM2RlYzBhMTYuLjM3MGIzZDJiYmEzNyAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UtYXJyYXkuaA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5o
DQo+IEBAIC0zOCw3ICszOCw2IEBAIHN0cnVjdCBkbWFfZmVuY2VfYXJyYXlfY2Igew0KPiDCoHN0
cnVjdCBkbWFfZmVuY2VfYXJyYXkgew0KPiDCoAlzdHJ1Y3QgZG1hX2ZlbmNlIGJhc2U7DQo+IMKg
DQo+IC0Jc3BpbmxvY2tfdCBsb2NrOw0KPiDCoAl1bnNpZ25lZCBudW1fZmVuY2VzOw0KPiDCoAlh
dG9taWNfdCBudW1fcGVuZGluZzsNCj4gwqAJc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlczsNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
