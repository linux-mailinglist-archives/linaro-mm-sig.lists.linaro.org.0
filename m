Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id DbDoBGDRCmou8gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 10:44:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ACB5690C9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 10:44:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FFA44051A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 08:44:14 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 0FC1740475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 08:44:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=PJx2YWKH;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779093841;
	bh=B79O7RG3AtnruxEHjLBPiA2D63Yfw5SoWz2V+Qe6Of8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=PJx2YWKHwhOIdvHGUdsJgaIqUiIz2lLg65VhYe7GMEqd3oG0MUf2pvP7PEKyX68sZ
	 7q7iv95x4TF90kW8m4I6rclc9kQ8jBNl2h8JTVaA1Zy0n1Jvb3jq9kvoYs4zo72Bmn
	 NNiNda+hKWmSmbZqnPxP6IubnDiCqodq790fP/Vvtt7oSq36kbjvshIjD2WU8GQQq2
	 xirCPv1dQZ63nE1kpCEhWS74tc260aUIeN8dSVBBXPA3DNWNmpp7hMhxfqru9Z8kxo
	 kiY/4BbAqIlcLj+Di8NScsq4/vs+WS0GaXlUa71CfO1RD5TQyXQsXhUIgK48HgeMxm
	 7efXIsZ7C1ZfQ==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2420217E02A3;
	Mon, 18 May 2026 10:44:01 +0200 (CEST)
Date: Mon, 18 May 2026 10:43:56 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Chia-I Wu <olvaffe@gmail.com>
Message-ID: <20260518104356.71827224@fedora>
In-Reply-To: <CAPaKu7S9WMbJERrWa=bj5qyQg72no9MPex6S1MY6t8nXoMbB-Q@mail.gmail.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
	<20260513-panthor-guard-refactor-v1-1-f2d8c15a97ce@collabora.com>
	<5ab2d07c-74a4-4a2c-b145-6ed7b0060944@arm.com>
	<CAPaKu7S9WMbJERrWa=bj5qyQg72no9MPex6S1MY6t8nXoMbB-Q@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: /
Message-ID-Hash: 2LJ4MAK5YJSIMEE7ZMO2EZIFQT37KPM2
X-Message-ID-Hash: 2LJ4MAK5YJSIMEE7ZMO2EZIFQT37KPM2
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/6] drm/panthor: Driver-wide xxx_[un]lock -> [scoped_]guard replacement
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2LJ4MAK5YJSIMEE7ZMO2EZIFQT37KPM2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 94ACB5690C9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.960];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,arm.com:email]
X-Rspamd-Action: no action

T24gVGh1LCAxNCBNYXkgMjAyNiAxMDowOToxMCAtMDcwMA0KQ2hpYS1JIFd1IDxvbHZhZmZlQGdt
YWlsLmNvbT4gd3JvdGU6DQoNCj4gT24gVGh1LCBNYXkgMTQsIDIwMjYgYXQgNjoyNOKAr0FNIFN0
ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5jb20+IHdyb3RlOg0KPiA+DQo+ID4gT24gMTMv
MDUvMjAyNiAxNzo1OCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOiAgDQo+ID4gPiBSaWdodCBub3cg
cGFudGhvciBpcyBtaXhlZCBiYWcgb2YgbWFudWFsIGxvY2tzIGFuZCBndWFyZHMuIExldCdzDQo+
ID4gPiBtYWtlIHRoYXQgbW9yZSBjb25zaXRlbnQgYW5kIHRodXMgZW5jb3VyYWdlIG5ldyBzdWJt
aXNzaW9ucyB0byBnbw0KPiA+ID4gZm9yIGd1YXJkcy4gIA0KPiA+DQo+ID4gSSdtIGZpbmUgd2l0
aCBlbmNvdXJhZ2luZyBndWFyZHMgZm9yIGZ1dHVyZSBjb2RlIC0gYnV0IEknbSBhIGxpdHRsZSB3
YXJ5DQo+ID4gb2YgYSBiaWcgY2hhbmdlIGxpa2UgdGhpcyAtIGl0J3MgaGFyZCB0byByZXZpZXcg
aXQgYW5kIGNoZWNrIHRoYXQNCj4gPiBldmVyeXRoaW5nIHdvcmtzIHRoZSBzYW1lLiBBbmQgaXQn
cyBhIGxpdHRsZSBkdWJpb3VzIHRoYXQgdGhlIG1lY2hhbmljYWwNCj4gPiByZWZhY3RvcmluZyBw
cm9kdWNlcyBtb3JlIHJlYWRhYmxlIGNvZGUgaW4gc29tZSBjYXNlcy4gIA0KPiBJIGFncmVlIHdp
dGggU3RldmVuIGluIGdlbmVyYWwsIGFsdGhvdWdoIEkgYW0gaW4gZmF2b3Igb2YgbGFuZGluZyBu
b3cNCj4gdGhhdCB5b3UndmUgZ29uZSB0aHJvdWdoIHRoZSB0cm91YmxlLg0KDQpIb25lc3RseSwg
SSBhZ3JlZSB3aXRoIHlvdS4gVGhlIG9ubHkgcmVhc29uIEkgd2VudCBmb3IgaXQgaXMNCmJlY2F1
c2UgdGhlIG1peCB3ZSBoYXZlIHJpZ2h0IG5vdyBpcyBwcmV0dHkgY29uZnVzaW5nLiBUaGlzIGhh
cyB0byBkbw0Kd2l0aCB0aGUgZmFjdCB0aGUgc2NvcGVzIGFyZSBvZnRlbiBsb29zZWx5IGRlZmlu
ZWQgdW5sZXNzIHlvdSB1c2VkDQpzY29wZWRfZ3VhcmQoKSwgc28gaXQncyBwcmV0dHkgZWFzeSB0
byBtZXNzIHVwIHRoZSBsb2NrL3VubG9jaw0Kb3JkZXJpbmcuIEZvciBpbnN0YW5jZSwNCg0KCW11
dGV4X2xvY2sobG9ja2EpOw0KCWd1YXJkKGxvY2tiKTsNCgltdXRleF91bmxvY2sobG9ja2EpOw0K
DQoJLi4uDQoNCm9uY2UgZXhwYW5kZWQsIHR1cm5zIGludG8gaW5jb25zaXN0ZW50IGxvY2tlZCBz
ZWN0aW9ucywgd2hlcmUgdGhlIGlubmVyDQpsb2NrIChsb2NrYikgaXMgcmVsZWFzZWQgYWZ0ZXIg
dGhlIG91dGVyIG9uZSAobG9ja2EpLg0KDQo+IA0KPiBJIGFsc28gaGF2ZSBtaXhlZCBmZWVsaW5n
cyBhYm91dCBzb21lIG9mIHRoZSBub24tc2NvcGVkIGd1YXJkcy4gVGhlaXINCj4gc2NvcGVzIGFy
ZSBleHRlbmRlZCBzbGlnaHRseSB0aGFuIGJlZm9yZSwgc3VwcG9zZWRseSB0byBhdm9pZCBhZGRp
bmcNCj4gYW5vdGhlciBsZXZlbCBvZiBpbmRlbnRhdGlvbi4gQnV0IG90aGVyIHRoYW4gc2xpZ2h0
bHkgc2xvd2VyLA0KDQpJIHRyaWVkIHRvIHVzZWQgc2NvcGVkX2d1YXJkKClzIGV2ZXJ5IHdoZXJl
IHRoZSBleHRyYSBub24tZ3VhcmRlZA0Kc2VjdGlvbiBjb3VsZCBiZSBDUFUgaGVhdnkgKHRoZSBv
bmx5IGJpdHMgbGVmdCBhcmUgc29tZSB2ZXJ5IHNpbXBsZQ0KYml0L2FyaXRobWV0aWMgb3BzLCBh
bmQgYSBjb3VwbGUgcXVldWVfd29yaygpIElJUkMpLg0KDQo+IGl0IGFsc28NCj4gYmVjb21lcyBs
ZXNzIGNsZWFyIHdoYXQgZXhhY3RseSBkbyB0aGUgZ3VhcmRzIHByb3RlY3QuDQoNCkkga25vdywg
YW5kIEkgaGF2ZSBwcmV0dHkgbXVjaCB0aGUgc2FtZSBmZWVsaW5nLCBidXQgd2UndmUgY3Jvc3Nl
ZCB0aGF0DQpicmlkZ2Ugd2hlbiB3ZSBzdGFydGVkIGFjY2VwdGluZyBub24tc2NvcGVkIGd1YXJk
KClzLCB1bmZvcnR1bmF0ZWx5Lg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
