Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JYzM7Jj5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4174317E2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83AE040511
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:34:41 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 9B85D3F719
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 07:49:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=Lg2A+cAQ;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1774943389;
	bh=LaeQPMcIQimdwej9sn0zSQ45Z5DVj1wYw17CvwPXfDs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Lg2A+cAQKcXa7S5/O329V33nbxIKn+z3BybTFk3IRdqxsQ6gy3eMPS/LlUs9br9a1
	 CkqKWZAKCM5iN2+J6dv63qLNiG8YHNsM70PsRFLTZFmHl2SEtbDLVS0L2ujFEElxmB
	 pRuhIZ3wLBJokjXFnF7JGHYcj3waCEcGWMV7VyakM4pBRLt1faCSJezv9foyasiTVV
	 s2mC6kJBYx37RHozWgl5ODl+XH3qBpJ/uMc1llpgDb5c+fXvx50GLQwmXcHw4zVa2H
	 JNf2+53TPnBseGhDeTBKrQzhLF0bmhUjBWE24L6GbkE4DftXvqd319Pl7bIKjZPLMb
	 SrR5lszs0Puyw==
Received: from fedora (unknown [IPv6:2a01:e0a:2c:6930:d919:a6e:5ea1:8a9f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 15E4617E3B54;
	Tue, 31 Mar 2026 09:49:49 +0200 (CEST)
Date: Tue, 31 Mar 2026 09:49:44 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Message-ID: <20260331094944.772833c0@fedora>
In-Reply-To: <20260330133623.17704-1-tvrtko.ursulin@igalia.com>
References: <20260330133623.17704-1-tvrtko.ursulin@igalia.com>
Organization: Collabora
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UPYL66GBAFQ2J5V6NOJMXJIYLXRH6XCO
X-Message-ID-Hash: UPYL66GBAFQ2J5V6NOJMXJIYLXRH6XCO
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:34 +0000
CC: dri-devel@lists.freedesktop.org, kernel-dev@igalia.com, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Philipp Stanner <phasta@kernel.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Move signalling tracepoint to before ops detach
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UPYL66GBAFQ2J5V6NOJMXJIYLXRH6XCO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.19 / 15.00];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	DATE_IN_PAST(1.00)[489];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,igalia.com:email,collabora.com:email]
X-Rspamd-Queue-Id: 7C4174317E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAzMCBNYXIgMjAyNiAxNDozNjoyMyArMDEwMA0KVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGlnYWxpYS5jb20+IHdyb3RlOg0KDQo+IE1vdmUgdGhlIHNpZ25hbGxpbmcgdHJh
Y2Vwb2ludCB0byBiZWZvcmUgZmVuY2UtPm9wcyBhcmUgcmVzZXQgb3RoZXJ3aXNlDQo+IHRyYWNl
cG9pbnQgd2lsbCBkZXJlZmVyZW5jZSBhIG51bGwgcG9pbnRlci4NCg0KSSBzdXNwZWN0IG90aGVy
IHRyYWNlIHBvaW50cyBhcmUgaW1wYWN0ZWQgdG9vDQoodHJhY2VfZG1hX2ZlbmNlX2Rlc3Ryb3ko
KSBpcywgYXQgdGhlIHZlcnkgbGVhc3QpLg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCj4gRml4ZXM6IDU0MWM4ZjI0Njhi
OSAoImRtYS1idWY6IGRldGFjaCBmZW5jZSBvcHMgb24gc2lnbmFsIHYzIikNCj4gQ2M6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gQ2M6IFBoaWxpcHAgU3Rh
bm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQo+IENjOiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJy
ZXppbGxvbkBjb2xsYWJvcmEuY29tPg0KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3Jn
DQo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gLS0tDQo+ICBkcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLmMgfCAzICsrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBpbmRleCAxODI2
YmE3MzA5NGMuLjFjMWVhZWNhZjFiMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBAQCAtMzYz
LDYgKzM2Myw4IEBAIHZvaWQgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlLA0KPiAgCQkJCSAgICAgICZmZW5jZS0+ZmxhZ3MpKSkNCj4gIAkJ
cmV0dXJuOw0KPiAgDQo+ICsJdHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsNCj4gKw0K
PiAgCS8qDQo+ICAJICogV2hlbiBuZWl0aGVyIGEgcmVsZWFzZSBub3IgYSB3YWl0IG9wZXJhdGlv
biBpcyBzcGVjaWZpZWQgc2V0IHRoZSBvcHMNCj4gIAkgKiBwb2ludGVyIHRvIE5VTEwgdG8gYWxs
b3cgdGhlIGZlbmNlIHN0cnVjdHVyZSB0byBiZWNvbWUgaW5kZXBlbmRlbnQNCj4gQEAgLTM3Nyw3
ICszNzksNiBAQCB2b2lkIGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSwNCj4gIA0KPiAgCWZlbmNlLT50aW1lc3RhbXAgPSB0aW1lc3RhbXA7
DQo+ICAJc2V0X2JpdChETUFfRkVOQ0VfRkxBR19USU1FU1RBTVBfQklULCAmZmVuY2UtPmZsYWdz
KTsNCj4gLQl0cmFjZV9kbWFfZmVuY2Vfc2lnbmFsZWQoZmVuY2UpOw0KPiAgDQo+ICAJbGlzdF9m
b3JfZWFjaF9lbnRyeV9zYWZlKGN1ciwgdG1wLCAmY2JfbGlzdCwgbm9kZSkgew0KPiAgCQlJTklU
X0xJU1RfSEVBRCgmY3VyLT5ub2RlKTsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
