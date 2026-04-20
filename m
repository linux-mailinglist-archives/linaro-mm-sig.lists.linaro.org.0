Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLvDNVtm5mmJvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:46:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CD04320BD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:46:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B64C840955
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:46:01 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id 06FB03F7D9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2026 09:18:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=cB90nWFp;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4fzg05575rz9tR9;
	Mon, 20 Apr 2026 11:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1776676725; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H52iZf47nyQwwRpseIanj6FLrUv+KwPcCKT1CAjDrAg=;
	b=cB90nWFp3jlKw5PuENi9paPeOvYUuP3SbfRNJVBKJl5AaEtNm20KgqH3NeGpNQav6zlRCW
	yiF2WReABU7bNov5V24qy2HcUxOBsdv/0a949udS+L+R73Gtv1qlpNFe1hfyV1i9Bx9r5v
	VGhDvAdlcXJL5cJdysKl5m4MsbChPAFurUBzPPHRNTvQm4Hx3aqYCrTnK1bKZbETzzGDku
	CDVWjv6dOIZdq6gIhSRmtxbSElW9nk5dtDJ/QiK9iY3N2KWpK8SN7EzeQTMO7IUayXPAqX
	g7MPytBFwquP0eMyjQKlO1El/rIodE7Ez74KctIt/TYBFUIcGylXWdIstt4Y9g==
Message-ID: <6389c57fd1453b545709c15c5fa74aa76a3d9afa.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: =?ISO-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>, Christian
 =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>, Sumit Semwal
 <sumit.semwal@linaro.org>, Boris Brezillon <boris.brezillon@collabora.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,  Philipp Stanner
 <phasta@kernel.org>
Date: Mon, 20 Apr 2026 11:18:40 +0200
In-Reply-To: <20260419134943.54833-2-mcanal@igalia.com>
References: <20260419134943.54833-2-mcanal@igalia.com>
MIME-Version: 1.0
X-MBO-RS-META: kwjkcgbza3jqjwbqyuokp8iq1c9thwkr
X-MBO-RS-ID: dd32fd36144395c208b
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GZ2KYLPL4CTAQQLC637SR7IWSDQQTYMM
X-Message-ID-Hash: GZ2KYLPL4CTAQQLC637SR7IWSDQQTYMM
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:44:56 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GZ2KYLPL4CTAQQLC637SR7IWSDQQTYMM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[igalia.com,gmail.com,linaro.org,collabora.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	DKIM_TRACE(0.00)[mailbox.org:-];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.716];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,igalia.com:email]
X-Rspamd-Queue-Id: B3CD04320BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gU3VuLCAyMDI2LTA0LTE5IGF0IDEwOjQ4IC0wMzAwLCBNYcOtcmEgQ2FuYWwgd3JvdGU6DQo+
IFRoZSBrZXJuZWxkb2MgY29tbWVudCBvbiBkbWFfZmVuY2VfaW5pdCgpIGFuZCBkbWFfZmVuY2Vf
aW5pdDY0KCkgZGVzY3JpYmUNCj4gdGhlIGxlZ2FjeSByZWFzb24gdG8gcGFzcyBhbiBleHRlcm5h
bCBsb2NrIGFzIGEgbmVlZCB0byBwcmV2ZW50IG11bHRpcGxlDQo+IGZlbmNlcyAiZnJvbSBzaWdu
YWxpbmcgb3V0IG9mIG9yZGVyIi4gSG93ZXZlciwgdGhpcyB3b3JkaW5nIGlzIGEgYml0DQo+IG1p
c2xlYWRpbmc6IGEgc2hhcmVkIHNwaW5sb2NrIGRvZXMgbm90IChhbmQgY2Fubm90KSBwcmV2ZW50
IHRoZSBzaWduYWxlcg0KPiBmcm9tIHNpZ25hbGluZyBvdXQgb2Ygb3JkZXIuIFNpZ25hbGluZyBv
cmRlciBpcyB0aGUgZHJpdmVyJ3MgcmVzcG9uc2liaWxpdHkNCj4gcmVnYXJkbGVzcyBvZiB3aGV0
aGVyIHRoZSBsb2NrIGlzIHNoYXJlZCBvciBwZXItZmVuY2UuDQo+IA0KPiBXaGF0IGEgc2hhcmVk
IGxvY2sgYWN0dWFsbHkgcHJvdmlkZXMgaXMgc2VyaWFsaXphdGlvbiBvZiBzaWduYWxpbmcgYW5k
DQo+IG9ic2VydmF0aW9uIGFjcm9zcyBmZW5jZXMgaW4gYSBnaXZlbiBjb250ZXh0LCBzbyB0aGF0
IG9ic2VydmVycyBuZXZlcg0KPiBzZWUgYSBsYXRlciBmZW5jZSBzaWduYWxlZCB3aGlsZSBhbiBl
YXJsaWVyIG9uZSBpcyBub3QuDQo+IA0KPiBSZXdvcmQgYm90aCBjb21tZW50cyB0byBkZXNjcmli
ZSB0aGlzIG1vcmUgYWNjdXJhdGVseS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1hw61yYSBDYW5h
bCA8bWNhbmFsQGlnYWxpYS5jb20+DQoNClJldmlld2VkLWJ5OiBQaGlsaXBwIFN0YW5uZXIgPHBo
YXN0YUBrZXJuZWwub3JnPg0KDQo+IA0KPiAtLS0NCj4gDQo+IHYxIC0+IHYyOiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyNjA0MTExODU3NTYuMTg4NzExOS00LW1jYW5hbEBp
Z2FsaWEuY29tLw0KPiANCj4gLSBCZSBtb3JlIGV4cGxpY2l0IGFib3V0IG5vdCBhbGxvd2luZyBu
ZXcgdXNlcnMgdG8gdXNlIGFuIGV4dGVybmFsIGxvY2suDQo+IC0gRGUtZHVwbGljYXRlIHRoZSBl
eHBsYW5hdGlvbiBpbiBkbWFfZmVuY2VfaW5pdDY0KCkgYnkgcG9pbnRpbmcgdG8gdGhlDQo+IMKg
IGRtYV9mZW5jZV9pbml0KCkgZG9jdW1lbnRhdGlvbi4NCj4gLS0tDQo+IMKgZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS5jIHwgMTMgKysrKysrKy0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IGlu
ZGV4IDFjMWVhZWNhZjFiMC4uNjNiMzQ5YmE5YTM0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+
IEBAIC0xMTAyLDkgKzExMDIsMTEgQEAgX19kbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSwgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wcywNCj4gwqAgKiBjb250ZXh0
IGFuZCBzZXFubyBhcmUgdXNlZCBmb3IgZWFzeSBjb21wYXJpc29uIGJldHdlZW4gZmVuY2VzLCBh
bGxvd2luZw0KPiDCoCAqIHRvIGNoZWNrIHdoaWNoIGZlbmNlIGlzIGxhdGVyIGJ5IHNpbXBseSB1
c2luZyBkbWFfZmVuY2VfbGF0ZXIoKS4NCj4gwqAgKg0KPiAtICogSXQgaXMgc3Ryb25nbHkgZGlz
Y291cmFnZWQgdG8gcHJvdmlkZSBhbiBleHRlcm5hbCBsb2NrIGJlY2F1c2UgdGhpcyBjb3VwbGVz
DQo+IC0gKiBsb2NrIGFuZCBmZW5jZSBsaWZlIHRpbWUuIFRoaXMgaXMgb25seSBhbGxvd2VkIGZv
ciBsZWdhY3kgdXNlIGNhc2VzIHdoZW4NCj4gLSAqIG11bHRpcGxlIGZlbmNlcyBuZWVkIHRvIGJl
IHByZXZlbnRlZCBmcm9tIHNpZ25hbGluZyBvdXQgb2Ygb3JkZXIuDQo+ICsgKiBFeHRlcm5hbCBs
b2NrcyBhcmUgYSByZWxpYyBmcm9tIGxlZ2FjeSB1c2UgY2FzZXMgdGhhdCBuZWVkZWQgYSBzaGFy
ZWQgbG9jaw0KPiArICogdG8gc2VyaWFsaXplIHNpZ25hbGluZyBhbmQgb2JzZXJ2YXRpb24gb2Yg
ZmVuY2VzIHdpdGhpbiBhIGNvbnRleHQsIHNvIHRoYXQNCj4gKyAqIG9ic2VydmVycyBuZXZlciBz
ZWUgYSBsYXRlciBmZW5jZSBzaWduYWxlZCB3aGlsZSBhbiBlYXJsaWVyIG9uZSBpc24ndC4gTmV3
DQo+ICsgKiB1c2VycyBNVVNUIE5PVCB1c2UgZXh0ZXJuYWwgbG9ja3MsIGFzIHRoZXkgZm9yY2Ug
dGhlIGlzc3VlciB0byBvdXRsaXZlIGFsbA0KPiArICogZmVuY2VzIHRoYXQgcmVmZXJlbmNlIHRo
ZSBsb2NrLg0KPiDCoCAqLw0KPiDCoHZvaWQNCj4gwqBkbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZSwgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wcywNCj4gQEAgLTEx
MjksOSArMTEzMSw4IEBAIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2luaXQpOw0KPiDCoCAqIENv
bnRleHQgYW5kIHNlcW5vIGFyZSB1c2VkIGZvciBlYXN5IGNvbXBhcmlzb24gYmV0d2VlbiBmZW5j
ZXMsIGFsbG93aW5nDQo+IMKgICogdG8gY2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIgYnkgc2lt
cGx5IHVzaW5nIGRtYV9mZW5jZV9sYXRlcigpLg0KPiDCoCAqDQo+IC0gKiBJdCBpcyBzdHJvbmds
eSBkaXNjb3VyYWdlZCB0byBwcm92aWRlIGFuIGV4dGVybmFsIGxvY2sgYmVjYXVzZSB0aGlzIGNv
dXBsZXMNCj4gLSAqIGxvY2sgYW5kIGZlbmNlIGxpZmUgdGltZS4gVGhpcyBpcyBvbmx5IGFsbG93
ZWQgZm9yIGxlZ2FjeSB1c2UgY2FzZXMgd2hlbg0KPiAtICogbXVsdGlwbGUgZmVuY2VzIG5lZWQg
dG8gYmUgcHJldmVudGVkIGZyb20gc2lnbmFsaW5nIG91dCBvZiBvcmRlci4NCj4gKyAqIE5ldyB1
c2VycyBNVVNUIE5PVCB1c2UgZXh0ZXJuYWwgbG9ja3MuIENoZWNrIHRoZSBkb2N1bWVudGF0aW9u
IGluDQo+ICsgKiBkbWFfZmVuY2VfaW5pdCgpIHRvIHVuZGVyc3RhbmQgdGhlIG1vdGl2ZXMgYmVo
aW5kIHRoZSBsZWdhY3kgdXNlIGNhc2VzLg0KPiDCoCAqLw0KPiDCoHZvaWQNCj4gwqBkbWFfZmVu
Y2VfaW5pdDY0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNl
X29wcyAqb3BzLA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
