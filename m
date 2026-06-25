Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mboQKfZCPWrb0QgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:02:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CAE6C6E82
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:02:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=ycI0Burm;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4476A401E8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 15:02:11 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 828E73F824
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jun 2026 15:01:29 +0000 (UTC)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4gmMSz0dPXz9vDY;
	Thu, 25 Jun 2026 17:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782399684; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eDf8uKydeb/dWDgOUroHzcLhyUDFhghnhH6xp9NcqCs=;
	b=ycI0BurmMS2ieeqdTbYQ84MnvXcjhlbp53mhDYB9+wT3sGlmCH48HAU8XRCob/RY15qKfa
	46vH0a9/eUKKIR6acC0jVlN70oxzUXcuQ3A7lfNj4LGqNiG2AoTlWmdwoe7jO7wc9PRn5c
	FX/dlwNXmSfJw5lsGBbl3YhKjkWsZ02u3jekBXN3SwwTNuqptKlYhuMf5nD+/NfEld7Ibh
	SZvnezVMZStCMT+ko8iO8+rIXht+Hz+DQ9enUvZRxRk40lcClIkValkQnBvj8oEanFnqWw
	WvnJHDu3QY6aDNry8JeBVbaI9nfArpBP2ct0WI5HTIu/avTb6zCPcw6MwLQT6Q==
Message-ID: <de3b9b978ffeeb43c18d877080e93823214313ec.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Baineng Shou <shoubaineng@gmail.com>, Sumit Semwal
 <sumit.semwal@linaro.org>,  Christian =?ISO-8859-1?Q?K=F6nig?=	
 <christian.koenig@amd.com>, =?ISO-8859-1?Q?Andr=E9?= Draszik	
 <andre.draszik@linaro.org>
Date: Thu, 25 Jun 2026 17:01:15 +0200
In-Reply-To: <20260625141227.38931-1-shoubaineng@gmail.com>
References: <20260625141227.38931-1-shoubaineng@gmail.com>
MIME-Version: 1.0
X-MBO-RS-ID: 1c878a47db5afd3a54a
X-MBO-RS-META: xyidt6keibsxozexi515dqim3gdtwzox
X-Spamd-Bar: ----
Message-ID-Hash: 6TQ3KX35O6AHYKQIVVT24TR2CMIHDSIT
X-Message-ID-Hash: 6TQ3KX35O6AHYKQIVVT24TR2CMIHDSIT
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Tvrtko Ursulin <tursulin@ursulin.net>, Philipp Stanner <phasta@kernel.org>, Akash Goel <akash.goel@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Fix dma_fence_timeline_name() to call get_timeline_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6TQ3KX35O6AHYKQIVVT24TR2CMIHDSIT/>
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:andre.draszik@linaro.org,m:tursulin@ursulin.net,m:phasta@kernel.org,m:akash.goel@arm.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,amd.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[linaro-mm-sig-leave.lists.linaro.org:server fail];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,mailbox.org:mid,mailbox.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 99CAE6C6E82

K0NjIEFuZHLDqQ0KDQpPbiBUaHUsIDIwMjYtMDYtMjUgYXQgMjI6MTIgKzA4MDAsIEJhaW5lbmcg
U2hvdSB3cm90ZToNCj4gZG1hX2ZlbmNlX3RpbWVsaW5lX25hbWUoKSBpbmNvcnJlY3RseSBpbnZv
a2VzIG9wcy0+Z2V0X2RyaXZlcl9uYW1lKCkNCj4gaW5zdGVhZCBvZiBvcHMtPmdldF90aW1lbGlu
ZV9uYW1lKCksIHNvIGV2ZXJ5IGNhbGxlciByZWNlaXZlcyB0aGUNCj4gZHJpdmVyIG5hbWUgd2hl
cmUgdGhlIHRpbWVsaW5lIG5hbWUgd2FzIGV4cGVjdGVkLg0KPiANCj4gVGhpcyBpcyBhIGNvcHkt
cGFzdGUgcmVncmVzc2lvbiB0aGF0IGhhcyByZXN1cmZhY2VkIHR3aWNlLiBJdCB3YXMNCj4gb3Jp
Z2luYWxseSBpbnRyb2R1Y2VkIGJ5IGNvbW1pdCA2MjkxODU0MmI3YmYgKCJkbWEtZmVuY2U6IEZp
eCBzcGFyc2UNCj4gd2FybmluZ3MgZHVlIF9fcmN1IGFubm90YXRpb25zIikgd2hlbiBhZGRpbmcg
dGhlIF9fcmN1IGNhc3RzLCBmaXhlZA0KPiBieSBjb21taXQgMDMzNTU5NDczZGQzICgiZG1hLWZl
bmNlOiBGaXggc2FmZSBhY2Nlc3Mgd3JhcHBlciB0byBjYWxsDQo+IHRpbWVsaW5lIG5hbWUgbWV0
aG9kIiksIGFuZCB0aGVuIGFjY2lkZW50YWxseSByZWludHJvZHVjZWQgYnkgY29tbWl0DQo+IGU1
OGI0ZGVhOTA1NCAoImRtYS1idWYvZG1hLWZlbmNlOiBBZGQgZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFs
ZWRfZmxhZygpIikNCj4gd2hlbiBib3RoIHdyYXBwZXJzIHdlcmUgcmVmYWN0b3JlZCB0byB1c2Ug
dGhlIG5ldyBoZWxwZXIuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBCYWluZW5nIFNob3UgPHNob3Vi
YWluZW5nQGdtYWlsLmNvbT4NCg0KQW5kcsOpIGhhcyBjYXVnaHQgdGhpcyBhIGZldyBkYXlzIGFn
byBhbHJlYWR5Og0KDQpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyNjA2MTgt
bGludXgtZHJtX2NydGNfZml4LXYxLTEtODAxZjI5Yzk4NTNkQGxpbmFyby5vcmcvDQoNCg0KVG8g
c2F2ZSBteSBob25vciBJIHdhbnQgdG8gc3RhdGUgdGhhdCBlNThiNGRlYTkwNTQgZGlkIG5vdCBh
Y3R1YWxseSAqZG8NCnRoaXMqIGNoYW5nZS4gQnV0IG1lcmdpbmcgaXQgbXVzdCBoYXZlIGNhdXNl
ZCBpdCBzb21laG93LCBzaW5jZSB0aGF0DQpjb21taXQgd2FzIHN0aWxsIGJhc2VkIG9uIHRoZSBv
bGQgYnVnLiBJIGd1ZXNzIHNvbWV3aGVyZSBpbiBjb25mbGljdA0KcmVzb2x1dGlvbiBzb21laG93
IHRobyBvbGQgY29kZSBtdXN0IGhhdmUgZW50ZXJlZC4NCg0KDQpQLg0KDQo+IC0tLQ0KPiDCoGRy
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDIgKy0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gaW5kZXgg
YjNiZmE2OTQzYThlLi41MjkyZDcxNDQxOWIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gQEAg
LTEyMDIsNyArMTIwMiw3IEBAIGNvbnN0IGNoYXIgX19yY3UgKmRtYV9mZW5jZV90aW1lbGluZV9u
YW1lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiDCoAkvKiBSQ1UgcHJvdGVjdGlvbiBpcyBy
ZXF1aXJlZCBmb3Igc2FmZSBhY2Nlc3MgdG8gcmV0dXJuZWQgc3RyaW5nICovDQo+IMKgCW9wcyA9
IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCj4gwqAJaWYgKCFkbWFfZmVuY2VfdGVzdF9z
aWduYWxlZF9mbGFnKGZlbmNlKSkNCj4gLQkJcmV0dXJuIChjb25zdCBjaGFyIF9fcmN1ICopb3Bz
LT5nZXRfZHJpdmVyX25hbWUoZmVuY2UpOw0KPiArCQlyZXR1cm4gKGNvbnN0IGNoYXIgX19yY3Ug
KilvcHMtPmdldF90aW1lbGluZV9uYW1lKGZlbmNlKTsNCj4gwqAJZWxzZQ0KPiDCoAkJcmV0dXJu
IChjb25zdCBjaGFyIF9fcmN1ICopInNpZ25hbGVkLXRpbWVsaW5lIjsNCj4gwqB9DQoJCQ0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
