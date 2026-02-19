Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCfcKuES4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C08411FC8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7438D40514
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:32 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id E18473F758
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 10:35:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=vvjcUYQf;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp102.mailbox.org (unknown [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4fGqXd5r98z9tVr;
	Thu, 19 Feb 2026 11:35:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1771497345; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EaLfa733yi/pMvpBxK8JoX/oM2Ynzp2v7F1bUzt3jtM=;
	b=vvjcUYQfASyrZHozaaftd8GAqyWhg5pul2m6bdegcifccX9MAt9KWJyZvsXpV9o4wKk+jP
	5qEeTn9MW0MoH4jXhIVYBCpGShHrZbLDMJYFcB14I8iFgvessCGhETUWmzGhOkO1U3hCdG
	YSyMFAFPFBrOucOOwoMPBsHsmFWjpsN/nH5aF4dtH2MBGTw7mP+rrkJhZftiPJuaT9Gbp5
	bd6ETMTnDxca/9k/pwv+TAvnGtHItWsFVTKc4EhpDpiimiMi7/pxUfSVmJBzqMeoKZ2Nqj
	YV98RHcvi3SdcCuQpVuhttLxFYIcOhJvdSuD49uART1EPUm9jNuqknA8n3/moQ==
Message-ID: <4d5d718fb646f8723ab31452b906f9bfee029e9f.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	phasta@kernel.org, matthew.brost@intel.com, sumit.semwal@linaro.org
Date: Thu, 19 Feb 2026 11:35:42 +0100
In-Reply-To: <53a84ddb-9202-48bb-bcb1-e76ee3097eb7@amd.com>
References: <20260210102232.1642-1-christian.koenig@amd.com>
	 <20260210102232.1642-2-christian.koenig@amd.com>
	 <f1345723cc5a61cdec5a6f168f71a323b822b7e2.camel@mailbox.org>
	 <f357c2fc-3c72-42ac-b079-849222de4c6e@gmail.com>
	 <9f929535744546bcb4eed26f6c27b4497ebc37bb.camel@mailbox.org>
	 <53a84ddb-9202-48bb-bcb1-e76ee3097eb7@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: o1oxcprnizd7nyq39sicoqjc9cs1k6yk
X-MBO-RS-ID: 113cdcd0500d276bceb
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UR2MSXG24C27YXZ2KCAI57WM35262HVJ
X-Message-ID-Hash: UR2MSXG24C27YXZ2KCAI57WM35262HVJ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:34 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 1/8] dma-buf: protected fence ops by RCU v5
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UR2MSXG24C27YXZ2KCAI57WM35262HVJ/>
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
	DATE_IN_PAST(1.00)[1350];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mailbox.org:mid];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org]
X-Rspamd-Queue-Id: 52C08411FC8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI2LTAyLTE5IGF0IDExOjIzICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiAyLzEyLzI2IDA5OjU2LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+ID4gPiA+ID4g
QEAgLTQ1NCwxMyArNDY1LDE5IEBAIGRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UpDQo+ID4gPiA+ID4gwqBzdGF0aWMgaW5saW5lIGJvb2wNCj4gPiA+
ID4gPiDCoGRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UpDQo+ID4gPiA+ID4gwqB7DQo+ID4gPiA+ID4gKwljb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29w
cyAqb3BzOw0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiDCoAlpZiAoZG1hX2ZlbmNlX3Rlc3Rfc2ln
bmFsZWRfZmxhZyhmZW5jZSkpDQo+ID4gPiA+ID4gwqAJCXJldHVybiB0cnVlOw0KPiA+ID4gPiA+
IMKgDQo+ID4gPiA+ID4gLQlpZiAoZmVuY2UtPm9wcy0+c2lnbmFsZWQgJiYgZmVuY2UtPm9wcy0+
c2lnbmFsZWQoZmVuY2UpKSB7DQo+ID4gPiA+ID4gKwlyY3VfcmVhZF9sb2NrKCk7DQo+ID4gPiA+
ID4gKwlvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVuY2UtPm9wcyk7DQo+ID4gPiA+ID4gKwlpZiAo
b3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25hbGVkKGZlbmNlKSkgew0KPiA+ID4gPiANCj4gPiA+
ID4gTWF5YmUgeW91IGNhbiBlZHVjYXRlIG1lIGEgYml0IGFib3V0IFJDVSBoZXJlIOKAkyBjb3Vs
ZG4ndCB0aGlzIHN0aWxsDQo+ID4gPiA+IHJhY2U/IElmIHRoZSBvcHMgd2VyZSB1bmxvYWRlZCBi
ZWZvcmUgeW91IHRha2UgcmN1X3JlYWRfbG9jaygpLA0KPiA+ID4gPiByY3VfZGVyZWZlcmVuY2Uo
KSB3b3VsZCBnaXZlIHlvdSBhbiBpbnZhbGlkIHBvaW50ZXIgaGVyZSBzaW5jZSB5b3UNCj4gPiA+
ID4gZG9uJ3QgY2hlY2sgZm9yICFvcHMsIG5vPw0KPiA+ID4gDQo+ID4gPiBQZXJmZWN0bHkgY29y
cmVjdCB0aGlua2luZywgeWVzLg0KPiA+ID4gDQo+ID4gPiBCdXQgdGhlIGNoZWNrIGZvciAhb3Bz
IGlzIGFkZGVkIGluIHBhdGNoICMyIHdoZW4gd2UgYWN0dWFsbHkgc3RhcnQgdG8gc2V0IG9wcyA9
IE5VTEwgd2hlbiB0aGUgZmVuY2Ugc2lnbmFscy4NCj4gPiA+IA0KPiA+ID4gSSBpbnRlbnRpb25h
bGx5IHNlcGFyYXRlZCB0aGF0IGJlY2F1c2UgaXQgaXMgYmFzaWNhbGx5IHRoZSBzZWNvbmQgc3Rl
cCBpbiBtYWtpbmcgdGhlIHNvbHV0aW9uIHRvIGRldGFjaCB0aGUgZmVuY2Ugb3BzIGZyb20gdGhl
IG1vZHVsZSBieSBSQ1Ugd29yay4NCj4gPiA+IA0KPiA+ID4gV2UgY291bGQgbWVyZ2UgdGhlIHR3
byBwYXRjaGVzIHRvZ2V0aGVyLCBidXQgSSB0aGluayB0aGUgc2VwYXJhdGlvbiBhY3R1YWxseSBt
YWtlcyBzZW5zZSBzaG91bGQgYW55Ym9keSBzdGFydCB0byBjb21wbGFpbiBhYm91dCB0aGUgYWRk
aXRpb25hbCBSQ1Ugb3ZlcmhlYWQuDQo+ID4gPiANCj4gPiANCj4gPiBBbHJpZ2h0LCBtYWtlcyBz
ZW5zZS4gSG93ZXZlciB0aGUgYWJvdmUgZG9lcyBub3QgcmVhZCBjb3JyZWN0Li4NCj4gPiANCj4g
PiBCdXQgdGhlbiBteSBxdWVzdGlvbiB3b3VsZCBiZTogV2hhdCdzIHRoZSBwdXJwb3NlIG9mIHRo
aXMgcGF0Y2gsIHdoYXQNCj4gPiBkb2VzIGl0IHNvbHZlIG9yIGFkZHJlc3MgYXRvbWljYWxseT8N
Cj4gDQo+IEFkZGluZyB0aGUgUkNVIGFubm90YXRpb24gYW5kIHJlbGF0ZWQgbG9naWMsIGUuZy4g
cmN1X3JlYWRfbG9jaygpL3JjdV9yZWFkX3VubG9jaygpL3JjdV9kZXJlZmVyZW5jZSgpIGV0Yy4u
Lg0KPiANCj4gVGhpcyBhbGxvd3MgdGhlIGF1dG9tYXRlZCBzdGF0aWNhbGx5IFJDVSBjaGVja2Vy
IHRvIHZhbGlkYXRlIHdoYXQgd2UgZG8gaGVyZSBhbmQgcG9pbnQgb3V0IHBvdGVudGlhbCBtaXN0
YWtlcy4NCj4gDQo+IEFkZGl0aW9uYWwgdG8gdGhhdCBzaG91bGQgYWRkaW5nIHRoZSByY3VfcmVh
ZF9sb2NrKCkgcHJvdGVjdGlvbiBjYXVzZSBwZXJmb3JtYW5jZSBwcm9ibGVtcyBpdCB3aWxsIGJp
c2VjdCB0byB0aGlzIHBhdGNoIGhlcmUgYWxvbmUuDQoNCkFscmlnaHQsIHRoeCBmb3IgdGhlIGlu
Zm8uIFZlcnkgdXNlZnVsDQoNCj4gDQo+ID4gQWRkaW5nIFJDVSBoZXJlIGRvZXMgbm90IHlldCBj
aGFuZ2UgYmVoYXZpb3IgYW5kIGl0IGRvZXMgbm90IHNvbHZlIHRoZQ0KPiA+IHVubG9hZGluZyBw
cm9ibGVtLCBkb2VzIGl0Pw0KPiANCj4gTm9wZSwgbm8gZnVuY3Rpb25hbCBiZWhhdmlvciBjaGFu
Z2UuIEl0J3MgcHVyZWx5IHRvIGdldCB0aGUgYXV0b21hdGVkIGNoZWNrZXJzIGdvaW5nLg0KPiAN
Cj4gPiBJZiBpdCdzIGEgbWVyZSBwcmVwZXJhdGlvbmFsIHN0ZXAgYW5kIHRoZSBwYXRjaGVzIHNo
b3VsZCBub3QgYmUgbWVyZ2VkLA0KPiA+IEknZCBndWFyZCB0aGUgYWJvdmUgd2l0aCBhIHNpbXBs
ZSBjb21tZW50IGxpa2UgIkNsZWFudXAgcHJlcGFyYXRpb24uDQo+ID4gJ29wcycgY2FuIHlldCBu
b3QgYmUgTlVMTCwgYnV0IHRoaXMgd2lsbCBiZSB0aGUgY2FzZSBzdWJzZXF1ZW50bHkuIg0KPiAN
Cj4gQSBjb21tZW50IGFkZGVkIGluIHRoaXMgcGF0Y2ggYW5kIHJlbW92ZWQgaW4gdGhlIG5leHQg
b25lPyBOYSwgdGhhdCBzb3VuZHMgbGlrZSBvdmVya2lsbCB0byBtZS4NCg0KQUNLLg0KQnV0IHRo
ZW4gbGV0cyBkbyBhIG5vcm1hbGtpbGwgYnkgYWRkaW5nIHRoZSBpbmZvIHlvdSBwcm92aWRlZCBh
Ym92ZQ0KaW50byB0aGUgY29tbWl0IG1lc3NhZ2UsIHNoYWxsIHdlPyBeX14NCg0KIkF0IGZpcnN0
IGdsYW5jZSBpdCBpcyBjb3VudGVyIGludHVpdGl2ZSB0byBwcm90ZWN0IGEgY29uc3RhbnQgZnVu
Y3Rpb24NCnBvaW50ZXIgdGFibGUgYnkgUkNVLCBidXQgdGhpcyBhbGxvd3MgbW9kdWxlcyBwcm92
aWRpbmcgdGhlIGZ1bmN0aW9uDQp0YWJsZSB0byB1bmxvYWQgYnkgd2FpdGluZyBmb3IgYW4gUkNV
IGdyYWNlIHBlcmlvZC4iDQoNClRoaXMgZG9lc24ndCByZXZlYWwgd2hhdCB0aGUgcGF0Y2ggaXMg
YWN0dWFsbHkgYWJvdXQsIGp1c3QgdGhhdA0Kc29tZXRoaW5nIGlzIGNvdW50ZXItaW50dWl0aXZl
IHRvIHNvbWVvbmUgYWxyZWFkeSB2ZXJ5IGZhbWlsaWFyIHdpdGgNCnRoZSBzZXJpZXMnIGludGVu
dCBhbmQgdGhlIGNvZGUncyBkZWVwZXIgYmFja2dyb3VuZCA6KQ0KDQoiVGhpcyBvciB0aGF0IGFi
b3V0IGRtYV9mZW5jZSBzaGFsbCBiZSBjbGVhbmVkIHVwIGluIHN1YnNlcXVlbnQNCnBhdGNoZXMu
IFRvIHByZXBhcmUgZm9yIHRoYXQsIGFkZCDigKYgd2hpY2ggYWxsb3dzIHRoZSBSQ1UgY2hlY2tl
ciB0bw0KdmFsaWRhdGUg4oCmIg0KDQoqUGhpbGlwcCByZWFkcyB0aGF0KjogWyJBaCwgdGhpcyBw
YXRjaCBpcyBpbiBwcmVwYXJhdGlvbiBhbmQgYWxsb3dzIHRoZQ0KUkNVIGNoZWNrZXIgdG8gdmFs
aWRhdGUgZXZlcnl0aGluZyEiXQ0KDQo7cA0KDQpQLg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
