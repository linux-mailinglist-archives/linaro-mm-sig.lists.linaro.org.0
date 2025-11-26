Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id XLPhGLYA4Wl7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:31:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D177410D5F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:31:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1DCE243F31
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:31:01 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	by lists.linaro.org (Postfix) with ESMTPS id 52A3D3F80B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 14:09:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b="PE/GCtNF";
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4dGhJf3tP1z9tcd;
	Wed, 26 Nov 2025 15:09:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764166178; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DmRHcXHYF1BHpb8VfMZZq6dar989WGMZcrYiKm4u1P4=;
	b=PE/GCtNFXUhbjzXJdWR/gD4m00NSINuH49EL55fKe7aGFUYC4Ge/PJf2Ma4cBbhjTKNffz
	2+z9XS0g/j0UO8gNWoHsABYoMxn+fw4dgv2jLNU0+IMV7GNFw0sMUVA0ts9KFjzP5/Ax58
	+GOEkRpMlv5VeHhX6w+bpMlRzQyW74iUlKtsK55fUO/oBriC4hYyV6B2dHx8sBN7GynYxv
	tRCctxkqNU0DvqURQ+i6raZDUFihHqWeJQd7mQLFA5VG4mqWgUaK9vo9gNqwrpzEYZL7QA
	BI+K9rzzkLvUQbN8xFGbt4lovABNKLUakNT+E9q9ZNwqWxClbUY8RPelnfWfWw==
Message-ID: <f74664fdf1cf0adba9a8b19b00db4823ee3f7f1b.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Philipp
 Stanner <phasta@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>, Felix Kuehling
 <Felix.Kuehling@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,  Matthew Brost
 <matthew.brost@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Thomas =?ISO-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>
Date: Wed, 26 Nov 2025 15:09:26 +0100
In-Reply-To: <48352d7e-5e43-4683-9f00-b77ae571d8f6@amd.com>
References: <20251126131914.149445-2-phasta@kernel.org>
	 <48352d7e-5e43-4683-9f00-b77ae571d8f6@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 9184d60e51ec9d03be1
X-MBO-RS-META: ppa4nssdwpc8dthds1b9du1r4cc734jt
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: M6BKJC36SAVL6E5T5YBUYH3UA4CQGI6P
X-Message-ID-Hash: M6BKJC36SAVL6E5T5YBUYH3UA4CQGI6P
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:05 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 0/6] dma-fence: Remove return code of dma_fence_signal() et al.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M6BKJC36SAVL6E5T5YBUYH3UA4CQGI6P/>
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
	DATE_IN_PAST(1.00)[3385];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,linaro.org,padovan.org,gmail.com,ffwll.ch,linux.intel.com,intel.com,ursulin.net,suse.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mailbox.org:mid,amd.com:email]
X-Rspamd-Queue-Id: 0D177410D5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI1LTExLTI2IGF0IDE1OjAyICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiAxMS8yNi8yNSAxNDoxOSwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+IEJhcmVs
eSBhbnlvbmUgdXNlcyBkbWFfZmVuY2Vfc2lnbmFsKCkncyAoYW5kIHNpbWlsYXIgZnVuY3Rpb25z
JykgcmV0dXJuDQo+ID4gY29kZS4gQ2hlY2tpbmcgaXQgaXMgcHJldHR5IG11Y2ggdXNlbGVzcyBh
bnl3YXlzLCBiZWNhdXNlIHdoYXQgYXJlIHlvdQ0KPiA+IGdvaW5nIHRvIGRvIGlmIGEgZmVuY2Ug
d2FzIGFscmVhZHkgc2lnbmFsIGl0PyBVbnNpZ25hbCBpdCBhbmQgc2lnbmFsIGl0DQo+ID4gYWdh
aW4/IDtwDQo+IA0KPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPiBmb3IgdGhlIGVudGlyZSBzZXJpZXMuDQo+IA0KPiBQbGVhc2UgcHVzaCB0
byBkcm0tbWlzYy1uZXh0IG9yIGxlYXZlIG1lIGEgbm90ZSB3aGVuIEkgc2hvdWxkIHBpY2sgaXQg
dXAuDQoNClRoeCEgSSBjYW4gcHVzaCBpdC4gTGV0J3Mgd2FpdCBhIHdoaWxlIHRvIHNlZSBpZiBz
b21lIG9mIHRoZSBvdGhlcg0KZm9sa3MgaGF2ZSBzdGggdG8gc2F5Lg0KDQo+IA0KPiA+IFJlbW92
aW5nIHRoZSByZXR1cm4gY29kZSBzaW1wbGlmaWVzIHRoZSBBUEkgYW5kIG1ha2VzIGl0IGVhc2ll
ciBmb3IgbWUNCj4gPiB0byBzaXQgb24gdG9wIHdpdGggUnVzdCBEbWFGZW5jZS4NCj4gDQo+IEJU
VywgSSBoYXZlIGFuIHJiIGZvciBlbWJlZGRpbmcgdGhlIGxvY2sgYW5kIEknbSBub3cgd3JpdGlu
ZyB0ZXN0IGNhc2VzLg0KPiANCj4gV2hlbiB0aGF0IGlzIGRvbmUgeW91IHNob3VsZCBiZSBhYmxl
IHRvIGJhc2UgdGhlIFJ1c3QgRG1hRmVuY2UgYWJzdHJhY3Rpb24gb24gdGhhdCBhcyB3ZWxsLg0K
DQpZZWFoLCB0aGFuayB5b3UsIHRoYXQgd2lsbCBhY3R1YWxseSBoZWxwIHNpbmNlIEkgd2FzIGlu
IHRoZSBwcm9jZXNzIG9mDQpzb2x2aW5nIHRoZSBzYW1lIGxpZmUgdGltZSBpc3N1ZXMgaW4gUnVz
dC4NCg0KSSB3aWxsIGdpdmUgeW91ciBzZXJpZXMgYSByZXZpZXcgfnRvbW9ycm93LCB0b28uIE9y
IHNob3VsZCBJIHdhaXQgZm9yDQp2NCB3aXRoIHRoZSB0ZXN0cz8NCg0KUC4NCg0KPiANCj4gUmVn
YXJkcywNCj4gQ2hyaXN0aWFuLg0KPiANCj4gPiANCj4gPiBQaGlsaXBwIFN0YW5uZXIgKDYpOg0K
PiA+IMKgIGRtYS1idWYvZG1hLWZlbmNlOiBBZGQgZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxh
ZygpDQo+ID4gwqAgYW1kL2FtZGtmZDogSWdub3JlIHJldHVybiBjb2RlIG9mIGRtYV9mZW5jZV9z
aWduYWwoKQ0KPiA+IMKgIGRybS9ncHUveGU6IElnbm9yZSBkbWFfZmVuY19zaWduYWwoKSByZXR1
cm4gY29kZQ0KPiA+IMKgIGRtYS1idWY6IERvbid0IG1pc3VzZSBkbWFfZmVuY2Vfc2lnbmFsKCkN
Cj4gPiDCoCBkcm0vdHRtOiBSZW1vdmUgcmV0dXJuIGNoZWNrIG9mIGRtYV9mZW5jZV9zaWduYWwo
KQ0KPiA+IMKgIGRtYS1idWYvZG1hLWZlbmNlOiBSZW1vdmUgcmV0dXJuIGNvZGUgb2Ygc2lnbmFs
aW5nLWZ1bmN0aW9ucw0KPiA+IA0KPiA+IMKgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgNTkgKysrKysrLS0tLS0tLS0tLS0t
LQ0KPiA+IMKgZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHzCoCA3ICstLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQv
a2ZkX3Byb2Nlc3MuY8KgwqDCoMKgwqAgfMKgIDUgKy0NCj4gPiDCoC4uLi9ncHUvZHJtL3R0bS90
ZXN0cy90dG1fYm9fdmFsaWRhdGVfdGVzdC5jwqAgfMKgIDMgKy0NCj4gPiDCoGRyaXZlcnMvZ3B1
L2RybS94ZS94ZV9od19mZW5jZS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDUgKy0N
Cj4gPiDCoGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHwgMzMgKysrKysrKystLS0NCj4gPiDCoDYgZmlsZXMgY2hhbmdlZCwg
NTMgaW5zZXJ0aW9ucygrKSwgNTkgZGVsZXRpb25zKC0pDQo+ID4gDQo+IA0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
