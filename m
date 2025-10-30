Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALXLKf/34GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3486140FDEC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4AE7E409B1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:53:50 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 7C1143F7D0
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Oct 2025 12:26:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=vYHaRMpx;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=phasta@mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4cy3Hs1HYnz9vBj;
	Thu, 30 Oct 2025 13:26:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1761827177; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9DK/EsSrv/ZUc4X4MrgLDSTB0kWrjlTtTs1nlO5FmUg=;
	b=vYHaRMpx01AqFN5eK8xNSNlujKnBCKhUWW+nXEEbLsTAXCQapvG+uBzxAT7/zTIq0Ocn4e
	EkNumxB1SbEdozNM9GV4IhJZqNaYp0US2CWJUfA7OPVFsZo2mgHeFN/mEG1drwN6+qIQYN
	tNqHw3eQgMfUbXto1Eu3Dcw6cSEUc9p5IDvdEviWqTSn7sVCqeEMRMyAPMC8mOxwkYYD4W
	R2sdzkDzqMigZ+YFphSmFs2aza7IBYMxkgnuj2l5u9fbuCZZhNwr08A2Kj+AR7Y6ioSeVF
	bRW6BQeov+jAFvcfaoKN/8AL5T0ShhlBcIyXaCPxACA21jk+LhcQQisqcPh2EA==
Message-ID: <c51ea5a408ca6d404074be1df219077457ea76f6.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Pierre-Eric Pelloux-Prayer <pierre-eric@damsy.net>, phasta@kernel.org,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Matthew
 Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>,  Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
 <sumit.semwal@linaro.org>
Date: Thu, 30 Oct 2025 13:26:10 +0100
In-Reply-To: <442d0e70-c9e2-4bd6-a144-ea083dbf86d2@damsy.net>
References: <20251029091103.1159-1-pierre-eric.pelloux-prayer@amd.com>
	 <fb2881006f843bd85dd02948c4467c81086effc8.camel@mailbox.org>
	 <442d0e70-c9e2-4bd6-a144-ea083dbf86d2@damsy.net>
MIME-Version: 1.0
X-MBO-RS-META: t5i1pxoekhdn1m5qnn8hwnur5fmqbb8o
X-MBO-RS-ID: 8afa6dd1f8f1b2c6dfd
X-Spamd-Bar: --
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 34ZHMF2VDRNCJQAXYNJSFRWTZFR44C3G
X-Message-ID-Hash: 34ZHMF2VDRNCJQAXYNJSFRWTZFR44C3G
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:37 +0000
CC: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH v1] drm/sched: fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/34ZHMF2VDRNCJQAXYNJSFRWTZFR44C3G/>
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
	DATE_IN_PAST(1.00)[4034];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[17];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[damsy.net,kernel.org,amd.com,intel.com,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.954];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,linaro.org:email,gitlab.freedesktop.org:url,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 3486140FDEC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTEwLTMwIGF0IDEzOjA2ICswMTAwLCBQaWVycmUtRXJpYyBQZWxsb3V4LVBy
YXllciB3cm90ZToNCj4gDQo+IA0KPiBMZSAzMC8xMC8yMDI1IMOgIDEyOjE3LCBQaGlsaXBwIFN0
YW5uZXIgYSDDqWNyaXTCoDoNCj4gPiBPbiBXZWQsIDIwMjUtMTAtMjkgYXQgMTA6MTEgKzAxMDAs
IFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIHdyb3RlOg0KPiA+ID4gaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL21lc2EvbWVzYS8tL2lzc3Vlcy8xMzkwOMKgcG9pbnRlZCBvdXQNCj4g
PiANCj4gPiBUaGlzIGxpbmsgc2hvdWxkIGJlIG1vdmVkIHRvIHRoZSB0YWcgc2VjdGlvbiBhdCB0
aGUgYm90dG9tIGF0IGEgQ2xvc2VzOg0KPiA+IHRhZy4gT3B0aW9uYWxseSBhIFJlcG9ydGVkLWJ5
OiwgdG9vLg0KPiANCj4gVGhlIGJ1ZyByZXBvcnQgaXMgYWJvdXQgYSBkaWZmZXJlbnQgaXNzdWUu
IFRoZSBwb3RlbnRpYWwgZGVhZGxvY2sgYmVpbmcgZml4ZWQgYnkgDQo+IHRoaXMgcGF0Y2ggd2Fz
IGRpc2NvdmVyZWQgd2hpbGUgaW52ZXN0aWdhdGluZyBpdC4NCj4gSSdsbCBhZGQgYSBSZXBvcnRl
ZC1ieSB0YWcgdGhvdWdoLg0KPiANCj4gPiANCj4gPiA+IGEgcG9zc2libGUgZGVhZGxvY2s6DQo+
ID4gPiANCj4gPiA+IFsgMTIzMS42MTEwMzFdwqAgUG9zc2libGUgaW50ZXJydXB0IHVuc2FmZSBs
b2NraW5nIHNjZW5hcmlvOg0KPiA+ID4gDQo+ID4gPiBbIDEyMzEuNjExMDMzXcKgwqDCoMKgwqDC
oMKgIENQVTDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBDUFUxDQo+ID4g
PiBbIDEyMzEuNjExMDM0XcKgwqDCoMKgwqDCoMKgIC0tLS3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAtLS0tDQo+ID4gPiBbIDEyMzEuNjExMDM1XcKgwqAgbG9jaygmeGEt
PnhhX2xvY2sjMTcpOw0KPiA+ID4gWyAxMjMxLjYxMTAzOF3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2NhbF9pcnFfZGlzYWJs
ZSgpOw0KPiA+ID4gWyAxMjMxLjYxMTAzOV3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2NrKCZmZW5jZS0+bG9jayk7DQo+ID4g
PiBbIDEyMzEuNjExMDQxXcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvY2soJnhhLT54YV9sb2NrIzE3KTsNCj4gPiA+IFsgMTIz
MS42MTEwNDRdwqDCoCA8SW50ZXJydXB0Pg0KPiA+ID4gWyAxMjMxLjYxMTA0NV3CoMKgwqDCoCBs
b2NrKCZmZW5jZS0+bG9jayk7DQo+ID4gPiBbIDEyMzEuNjExMDQ3XQ0KPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKioqIERFQURMT0NLICoqKg0KPiA+ID4gDQo+ID4gDQo+
ID4gVGhlIGNvbW1pdCBtZXNzYWdlIGlzIGxhY2tpbmcgYW4gZXhwbGFuYXRpb24gYXMgdG8gX2hv
d18gYW5kIF93aGVuXyB0aGUNCj4gPiBkZWFkbG9jayBjb21lcyB0byBiZS4gVGhhdCdzIGEgcHJl
cmVxdWlzaXRlIGZvciB1bmRlcnN0YW5kaW5nIHdoeSB0aGUNCj4gPiBiZWxvdyBpcyB0aGUgcHJv
cGVyIGZpeCBhbmQgc29sdXRpb24uDQo+IA0KPiBJIGNvcHktcGFzdGVkIGEgc21hbGwgY2h1bmsg
b2YgdGhlIGZ1bGwgZGVhZGxvY2sgYW5hbHlzaXMgcmVwb3J0IGluY2x1ZGVkIGluIHRoZSANCj4g
dGlja2V0IGJlY2F1c2UgaXQncyAzMDArIGxpbmVzIGxvbmcuIENvcHlpbmcgdGhlIGZ1bGwgbG9n
IGlzbid0IHVzZWZ1bCBJTU8sIGJ1dCANCj4gSSBjYW4gYWRkIG1vcmUgY29udGV4dC4NCg0KVGhl
IGxvZyB3b3VsZG4ndCBiZSB1c2VmdWwsIGJ1dCBhIGh1bWFuLWdlbmVyYXRlZCBleHBsYW5hdGlv
biBhcyB5b3UNCmRldGFpbCBpdCBiZWxvdy4NCg0KPiANCj4gVGhlIHByb2JsZW0gaXMgdGhhdCBh
IHRocmVhZCAoQ1BVMCBhYm92ZSkgY2FuIGxvY2sgdGhlIGpvYidzIGRlcGVuZGVuY2llcyANCj4g
eGFfYXJyYXkgd2l0aG91dCBkaXNhYmxpbmcgdGhlIGludGVycnVwdHMuDQoNCldoaWNoIGRybV9z
Y2hlZCBmdW5jdGlvbiB3b3VsZCB0aGF0IGJlPw0KDQo+IElmIGEgZmVuY2Ugc2lnbmFscyB3aGls
ZSBDUFUwIGhvbGRzIHRoaXMgbG9jayBhbmQgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfY2Ig
DQo+IGlzIGNhbGxlZCwgaXQgd2lsbCB0cnkgdG8gZ3JhYiB0aGUgeGFfYXJyYXkgbG9jayB3aGlj
aCBpcyBub3QgcG9zc2libGUgYmVjYXVzZSANCj4gQ1BVMCBob2xkcyBpdCBhbHJlYWR5Lg0KDQpZ
b3UgbWVhbiBhbiAqaW50ZXJydXB0KiBzaWduYWxzIHRoZSBmZW5jZT8gU2hvdWxkbid0IGludGVy
cnVwdCBpc3N1ZXMNCmJlIHNvbHZlZCB3aXRoIHNwaW5fbG9ja19pcnFkaXNhYmxlKCkg4oCTIGJ1
dCB3ZSBjYW4ndCBoYXZlIHRoYXQgYmVjYXVzZQ0KaXQncyB0aGUgeGFycmF5IGRvaW5nIHRoYXQg
aW50ZXJuYWxseT8NCg0KWW91IGRvbid0IGhhdmUgdG8gZXhwbGFpbiB0aGF0IGluIHRoaXMgbWFp
bC10aHJlYWQsIGEgdjIgZGV0YWlsaW5nIHRoYXQNCndvdWxkIGJlIHN1ZmljaWVudC4NCg0KPiAN
Cj4gDQo+ID4gDQo+ID4gVGhlIGlzc3VlIHNlZW1zIHRvIGJlIHRoYXQgeW91IGNhbm5vdCBwZXJm
b3JtIGNlcnRhaW4gdGFza3MgZnJvbSB3aXRoaW4NCj4gPiB0aGF0IHdvcmsgaXRlbT8NCg0KW+KA
pl0NCg0KPiA+IA0KPiA+ID4gK3N0YXRpYyB2b2lkIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2Jz
X2NiKHN0cnVjdCBkbWFfZmVuY2UgKmYsDQo+ID4gPiArCQkJCQnCoCBzdHJ1Y3QgZG1hX2ZlbmNl
X2NiICpjYik7DQo+ID4gPiArDQo+ID4gPiDCoMKgc3RhdGljIHZvaWQgZHJtX3NjaGVkX2VudGl0
eV9raWxsX2pvYnNfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndyaykNCj4gPiA+IMKgwqB7DQo+
ID4gPiDCoMKgCXN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IgPSBjb250YWluZXJfb2Yod3JrLCB0
eXBlb2YoKmpvYiksIHdvcmspOw0KPiA+ID4gLQ0KPiA+ID4gLQlkcm1fc2NoZWRfZmVuY2Vfc2No
ZWR1bGVkKGpvYi0+c19mZW5jZSwgTlVMTCk7DQo+ID4gPiAtCWRybV9zY2hlZF9mZW5jZV9maW5p
c2hlZChqb2ItPnNfZmVuY2UsIC1FU1JDSCk7DQo+ID4gPiAtCVdBUk5fT04oam9iLT5zX2ZlbmNl
LT5wYXJlbnQpOw0KPiA+ID4gLQlqb2ItPnNjaGVkLT5vcHMtPmZyZWVfam9iKGpvYik7DQo+ID4g
DQo+ID4gQ2FuIGZyZWVfam9iKCkgcmVhbGx5IG5vdCBiZSBjYWxsZWQgZnJvbSB3aXRoaW4gd29y
ayBpdGVtIGNvbnRleHQ/DQo+IA0KPiBJdCdzIHN0aWxsIGNhbGxlZCBmcm9tIGRybV9zY2hlZF9l
bnRpdHlfa2lsbF9qb2JzX3dvcmsgYnV0IHRoZSBkaWZmIGlzIHNsaWdodGx5IA0KPiBjb25mdXNp
bmcuDQoNCk9LLCBwcm9iYWJseSBteSBiYWQuIEJ1dCBqdXN0IGFza2luZywgZG8geW91IHVzZQ0K
Z2l0IGZvcm1hdC1wYXRjaCAtLWhpc3RvZ3JhbQ0KPw0KDQpoaXN0b2dyYW0gb2Z0ZW4gcHJvZHVj
ZXMgYmV0dGVyIGRpZmZzIHRoYW4gZGVmYXVsdC4NCg0KDQpQLg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
