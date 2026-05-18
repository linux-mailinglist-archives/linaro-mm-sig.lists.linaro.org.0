Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Jg+A1opC2pAEAUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 16:59:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2F956F679
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 16:59:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93D09406AE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:59:36 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	by lists.linaro.org (Postfix) with ESMTPS id 8A2DF3F756
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 14:59:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b="DXjbUy/A";
	spf=pass (lists.linaro.org: domain of michel.daenzer@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=michel.daenzer@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4gK1D76l2tz9vRv;
	Mon, 18 May 2026 16:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1779116360;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xEoW7QI8tOR5iNVRlAhv7eG6k5IqVBNzfswNCeXalc0=;
	b=DXjbUy/AOTZW3zBiwywU8iZ3jrmaRsxLyz+8KUrE7j9hQKSmrki6ROAGhHAM6WedaoyvhQ
	9jSe5+nmE9VcOnf0+fm7/54Zjf+jtSjDOd+/7I7qVefYGPD2zPDnWpw+07awWynVUM2FE1
	hRW1PZDSxyC7Ni81aCUPphUPUiSg3BWb0svS/bDMm4aevBsDHCf3BtFT4l6ibHVkm2NtQg
	SsqgMevsPLEGZ6vImSVOcBt/o0pTsjHQDAOrMP+RI+r0qDrz6Sk+Ei5sRhDsYCKFhjLTTc
	TbQNJtDMQ/4IQ5ZGYZ1zzoQPJuGqIfp3KGz3Z1ihsIuflzN8G1UZXUqZmgRsAw==
Message-ID: <1162f62e-9c65-446b-9788-bb289a202e6e@mailbox.org>
Date: Mon, 18 May 2026 16:59:12 +0200
MIME-Version: 1.0
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Julian Orth <ju.orth@gmail.com>
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com>
 <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com>
From: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
Content-Language: en-CA
In-Reply-To: <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com>
X-MBO-RS-META: 4nag1dydo76jap3z98ifcc9bkczk6f9r
X-MBO-RS-ID: da9341ae0f9ef38a13e
X-Spamd-Bar: ---
Message-ID-Hash: JZSRHDA32LLAJBHOKMUZG3ETB5FGXVK4
X-Message-ID-Hash: JZSRHDA32LLAJBHOKMUZG3ETB5FGXVK4
X-MailFrom: michel.daenzer@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JZSRHDA32LLAJBHOKMUZG3ETB5FGXVK4/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	GREYLIST(0.00)[pass,meta];
	DKIM_TRACE(0.00)[mailbox.org:-];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michel.daenzer@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,mailbox.org:mid,linaro.org:email]
X-Rspamd-Queue-Id: 9C2F956F679
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8xOC8yNiAxNDo0MSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gT24gNS8xOC8yNiAx
NDowMiwgSnVsaWFuIE9ydGggd3JvdGU6DQo+PiBPbiBNb24sIE1heSAxOCwgMjAyNiBhdCAxOjU4
4oCvUE0gQ2hyaXN0aWFuIEvDtm5pZw0KPj4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3Jv
dGU6DQo+Pj4gT24gNS8xNi8yNiAxMzowNiwgSnVsaWFuIE9ydGggd3JvdGU6DQo+Pj4+IFRoaXMg
c2VyaWVzIGFkZHMgYSBuZXcgZGV2aWNlIC9kZXYvc3luY29iaiB0aGF0IGNhbiBiZSB1c2VkIHRv
IGNyZWF0ZQ0KPj4+PiBhbmQgbWFuaXB1bGF0ZSBEUk0gc3luY29ianMuIFByZXZpb3VzbHksIHRo
ZXNlIG9wZXJhdGlvbnMgcmVxdWlyZWQgdGhlDQo+Pj4+IHVzZSBvZiBhIERSTSBkZXZpY2UgYW5k
IHRoZSBkZXZpY2UgbmVlZGVkIHRvIHN1cHBvcnQgdGhlIERSSVZFUl9TWU5DT0JKDQo+Pj4+IGFu
ZCBEUklWRVJfU1lOQ09CSl9USU1FTElORSBmZWF0dXJlcy4NCj4+Pj4NCj4+Pj4gVGhlcmUgYXJl
IHNldmVyYWwgaXNzdWVzIHdpdGggdGhlIGV4aXN0aW5nIEFQSToNCj4+Pj4NCj4+Pj4gLSBTeW5j
b2JqcyBhcmUgdGhlIG9ubHkgZXhwbGljaXQgc3luYyBtZWNoYW5pc20gYXZhaWxhYmxlIG9uIHdh
eWxhbmQuDQo+Pj4+ICAgTW9zdCBjb21wb3NpdG9ycyBkbyBub3QgdXNlIEdQVSB3YWl0cy4gSW5z
dGVhZCwgdGhleSB1c2UgdGhlDQo+Pj4+ICAgRFJNX0lPQ1RMX1NZTkNPQkpfRVZFTlRGRCBpb2N0
bCB0byBwZXJmb3JtIGEgQ1BVIHdhaXQuIEJlaW5nIHRpZWQgdG8NCj4+Pj4gICBEUk0gZGV2aWNl
cyBtZWFucyB0aGF0IGNvbXBvc2l0b3JzIGNhbm5vdCBjb25zaXN0ZW50bHkgb2ZmZXIgdGhpcw0K
Pj4+PiAgIGZlYXR1cmUgZXZlbiB0aG91Z2ggbm8gZGV2aWNlLXNwZWNpZmljIGxvZ2ljIGlzIGlu
dm9sdmVkLg0KPj4+DQo+Pj4gV2VsbCB0aGUgZHJtX3N5bmNvYmogaXMgYSBjb250YWluZXIgZm9y
IGRldmljZSBzcGVjaWZpYyBkbWEgZmVuY2VzLg0KPj4NCj4+IE5vdCBuZWNlc3NhcmlseS4gVGhl
IERSTV9JT0NUTF9TWU5DT0JKX1RJTUVMSU5FX1NJR05BTCBpb2N0bCBhdHRhY2hlcw0KPj4gc29t
ZSBraW5kIG9mIGR1bW15IGZlbmNlIHRoYXQgaXMgYWxyZWFkeSBzaWduYWxlZC4gSSBkb24ndCBi
ZWxpZXZlDQo+PiB0aGlzIGlzIGRldmljZSBzcGVjaWZpYy4gVGhhdCBpcyBhbHNvIHRoZSBwYXRo
IHRoYXQgbGx2bXBpcGUgd291bGQNCj4+IHVzZS4NCj4gDQo+IFllYWggSSBmZWFyZWQgdGhhdC4N
Cj4gDQo+IFRoaXMgaXMgdGhlIHdhaXQgYmVmb3JlIHNpZ25hbCBwYXRoIGFuZCBpZiBJJ20gbm90
IGNvbXBsZXRlbHkgbWlzdGFrZW4gdGhhdCBvbmUgaXMgbm90IHN1cHBvcnRlZCBieSBhIGxvdCBv
ZiBjb21wb3NpdG9ycy4NCg0KV2hlcmUgZGlkIHlvdSBnZXQgdGhhdCBpbXByZXNzaW9uIGZyb20/
DQoNCkl0J3MgYXJndWFibHkgdGhlIG1haW4gcG9pbnQgb2YgdGhlIHN5bmNvYmogV2F5bGFuZCBw
cm90b2NvbCBleHRlbnNpb24sIHdoaWNoIGlzIHN1cHBvcnRlZCBieSBhbGwgbWFqb3IgY29tcG9z
aXRvcnMgKGV4Y2VwdCBXZXN0b24sIHdoZXJlIGl0J3Mgc3RpbGwgYSBwZW5kaW5nIE1SKS4NCg0K
DQo+IFNvIGFzIGZhciBhcyBJIGNhbiBzZWUgdXNpbmcgZHJtX3N5bmNvYmogZm9yIHNvZnR3YXJl
IHJlbmRlcmluZyByZWFsbHkgZG9lc24ndCBtYWtlIHNlbnNlLCBldmVudGZkIGlzIGEgbXVjaCBi
ZXR0ZXIgZml0IGZvciB0aGF0IHVzZSBjYXNlLg0KDQpJIGFncmVlIHdpdGggSnVsaWFuJ3MgcmVi
dXR0YWwgdG8gdGhhdC4NCg0KDQotLSANCkVhcnRobGluZyBNaWNoZWwgRMOkbnplciAgICAgICBc
ICAgICAgICBHTk9NRSAvIFh3YXlsYW5kIC8gTWVzYSBkZXZlbG9wZXINCmh0dHBzOi8vcmVkaGF0
LmNvbSAgICAgICAgICAgICBcICAgICAgICAgICAgICAgTGlicmUgc29mdHdhcmUgZW50aHVzaWFz
dA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
