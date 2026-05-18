Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHkiA/ClC2qRKQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 01:51:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B45B5752E2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 01:51:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C45F406B4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 23:51:10 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by lists.linaro.org (Postfix) with ESMTPS id 925B24015B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 23:50:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=hd3VcxEG;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of olvaffe@gmail.com designates 209.85.128.173 as permitted sender) smtp.mailfrom=olvaffe@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-7bd5dde63dbso24698157b3.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 16:50:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779148259; cv=none;
        d=google.com; s=arc-20240605;
        b=Z3wX7AtsBS5LgyTYXVJimTvo88dBT3l2YlUCa2Dyl83xKNmSiajPIQi9oopFeM3mrW
         13aLyKQJEIl8dSniNdUeYFMucKV++i0vNqmESOGCD4+MO5EjmB0MVt1fLrqAu8UGMu79
         wePaD9N+TY9f6gPx+2ole0pj84KfPKkXqCj3A90hNwrpZ7aYD47nMxfwth/Uwynkx10a
         bHm2yv1N2KYKyZGCaxFImy8FK5qpScbDG+Gg+9zYQkHaBy9Kb0xfn9vmHAa9nRf/TgwN
         QwAWzsOJA1hqjShnr+0volkre3JorZFXy1Qwi8PnRgShWmeQx4OjgQe93CHrMqfNp51l
         7yAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=IeeTUYaRZ5BMifrp/CORM7G6Oak23mAzpXgU06USVUU=;
        fh=ZroavjpXXkzdIGjgo80yZfhpYW9gROTuMHZekrZOnFk=;
        b=D0dSeLtwADE1OtYvSFZuhLNODg6kD3I2bvCmwN551HcgxdbRB6iiHB1kOPPS5pKjzD
         54xPeFf+6aRu8xpplb7ypyCu+VInyeJwwkK2JmhuyzLfGH6AjgpEaRBdPj0sRU8MSZid
         k6Q37HOz6ZAvjb2lTRq85muddk4dm7TgVLOI/ZGkiKBkhLE8STFEo3naR/xbH89a45rY
         Nu+PA88j5xbCY+/MwkjptJSQmN9dxEqXhDK6vnFz/gWl5Ben6KSHxW7nKhQHsA4aOG8O
         GageHNv1K4csV0f9crn2X9OLLRysLq/7uizjJVOE30qHP7F8DNZfO0PgtGnxv+DgwuDe
         A2rw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779148259; x=1779753059; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IeeTUYaRZ5BMifrp/CORM7G6Oak23mAzpXgU06USVUU=;
        b=hd3VcxEGeiojdo66jlp9OHpRyMZ3wOROtkGvNcRaCQ0YtzymFsVlgDTRj4VwTiJLkn
         HHV5vZOJeoAEGvohKblJKHmHNdNaAhxFrjHmV32r39FDtWamdtXNbEWcelfs8eOn21dH
         tVEliCcRYPwdrpRDCs0e2av9eO+Yys3GhGtKLYAHjadpx8rcU0TRfDy3cr1fXNSidAkt
         pUZ7KlK/VB9YNCk4PPK+YPmCs0NoeAi5xRXuLCt29YfVW/MUU9QomT4ItMgyeh4LQNEX
         6Qe5uT+xbXi+9eLuWDbFAoPuINGxMwPGkOMzVWx5HdgYAcQlsDwjPGBgZCNSJTw9fJnV
         8bRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779148259; x=1779753059;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IeeTUYaRZ5BMifrp/CORM7G6Oak23mAzpXgU06USVUU=;
        b=WufMARdy5O/lKjBly6lJwde28+J4rpgPwzgkdQB4/4Nw3DZqRDWwUXdAJARhSKbuo1
         fKaUiWw2DJomSA2COi+b5+ZHvLee9ZZMswWSwmsLz/ePP80yAzEF1sMuyLUg+fYY4YQT
         eOYE+qVru3uBzMSwV7OnY8FhtNOcRduNnVDG3HgQVgPOkLQpGGEpGw/POF+evNp72cJ3
         8tWy5j4jVA7XH6sPkDjV7Ttv95eOxmfQF3UoajWHqcHo9OEOjEevo5dZ5k+YXlDqbKRx
         y5Kb+twVxofcINd2b+cmFxG0UiuYku1+jTUoOd+dCZBDC1T28HlzPydoZJ+Hdz4LYyTZ
         Nwrg==
X-Forwarded-Encrypted: i=1; AFNElJ/2K5ZSiadd/V9Rs/+MniAhG3r2i/6nILi9AuTCDw1Gm7fLBk2v81zBsSsR6dMTpTyqDvX7ix5F3cWWuO3C@lists.linaro.org
X-Gm-Message-State: AOJu0YxIAqfTJ92FU1xX9TqEKaKChi91V9nx23Ulod8NuiRISXR5aAOR
	bozXWjLFlfDIe9DO11HpxyJAf5PE1/zIs+wRQu+pNQ3dRWZfHM28PS9OH+DDr05Okb+dvloueT7
	803I7OYC70fKgLLnLgwA0gumrP96qFbM=
X-Gm-Gg: Acq92OFX7ADDbauAGvF1lJVCFxL3hK6+Pijkh5kUxB5fq0262yJdZjiVFaBN2DUq22X
	IKtKSkrvrxcCPCrlyvWFSJKM954/rSSMhYuwVhFmMXwlMl9n/SCbx98p5467Bgh1KRJHOL2iFyl
	nM7BZybp3KZXiMI8+zPcBcwAHc51u23tVkKoC9Jq2ze5CYkrYTob4V8i19Lr+7tD5pqBMM8PAcf
	DFMN5Mg5yWh8K01Ogv00fe/RcyYp/ooYTIv610RBLZpw7VK81w3tOx0adUYx3BePC7QPRy2SJK9
	7swbI15G5PBrLQb2evQfMM/d5g9CjLaTUK545Lmx1TuiHhC9oICsFkMs8sOywXE070xot39X
X-Received: by 2002:a05:690c:c244:b0:7b4:657d:bd5d with SMTP id
 00721157ae682-7c95bf10a2cmr197794877b3.30.1779148259100; Mon, 18 May 2026
 16:50:59 -0700 (PDT)
MIME-Version: 1.0
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
 <20260513-panthor-guard-refactor-v1-1-f2d8c15a97ce@collabora.com>
 <5ab2d07c-74a4-4a2c-b145-6ed7b0060944@arm.com> <20260518105721.42ffa64c@fedora>
In-Reply-To: <20260518105721.42ffa64c@fedora>
From: Chia-I Wu <olvaffe@gmail.com>
Date: Mon, 18 May 2026 16:50:48 -0700
X-Gm-Features: AVHnY4Kh2f1AVPZetJ2ndlIB4ihBeeqmA3WYM7Ew2lGnTHy97cgp6M33GrZdWXw
Message-ID: <CAPaKu7RRcGQSivs8n6RhOO5XeBSoLG6YF1GRR6Cysv_yDpd2=w@mail.gmail.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
X-Spamd-Bar: ----
Message-ID-Hash: R4CB7HS3ODHVFYGKPMPTRWEDVNUKRLRO
X-Message-ID-Hash: R4CB7HS3ODHVFYGKPMPTRWEDVNUKRLRO
X-MailFrom: olvaffe@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/6] drm/panthor: Driver-wide xxx_[un]lock -> [scoped_]guard replacement
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R4CB7HS3ODHVFYGKPMPTRWEDVNUKRLRO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olvaffe@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,collabora.com:email,lists.linaro.org:rdns,lists.linaro.org:helo,mail.gmail.com:mid,arm.com:email]
X-Rspamd-Queue-Id: 9B45B5752E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgMTo1N+KAr0FNIEJvcmlzIEJyZXppbGxvbg0KPGJvcmlz
LmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3cm90ZToNCj4NCj4gT24gVGh1LCAxNCBNYXkgMjAy
NiAxNDoxNjozNyArMDEwMA0KPiBTdGV2ZW4gUHJpY2UgPHN0ZXZlbi5wcmljZUBhcm0uY29tPiB3
cm90ZToNCj4NCj4gPiBPbiAxMy8wNS8yMDI2IDE3OjU4LCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6
DQo+ID4gPiBSaWdodCBub3cgcGFudGhvciBpcyBtaXhlZCBiYWcgb2YgbWFudWFsIGxvY2tzIGFu
ZCBndWFyZHMuIExldCdzDQo+ID4gPiBtYWtlIHRoYXQgbW9yZSBjb25zaXRlbnQgYW5kIHRodXMg
ZW5jb3VyYWdlIG5ldyBzdWJtaXNzaW9ucyB0byBnbw0KPiA+ID4gZm9yIGd1YXJkcy4NCj4gPg0K
PiA+IEknbSBmaW5lIHdpdGggZW5jb3VyYWdpbmcgZ3VhcmRzIGZvciBmdXR1cmUgY29kZSAtIGJ1
dCBJJ20gYSBsaXR0bGUgd2FyeQ0KPiA+IG9mIGEgYmlnIGNoYW5nZSBsaWtlIHRoaXMgLSBpdCdz
IGhhcmQgdG8gcmV2aWV3IGl0IGFuZCBjaGVjayB0aGF0DQo+ID4gZXZlcnl0aGluZyB3b3JrcyB0
aGUgc2FtZS4NCj4NCj4gSSBjYW4gdHJ5IHRvIHNwbGl0IHRoYXQgdXAsIGJ1dCBldmVuIGFmdGVy
IHRoZSBzcGxpdCwgaXQgd2lsbCBzdGlsbCBiZQ0KPiBhIHBhaW4gdG8gcmV2aWV3Lg0KU3BsaXR0
aW5nIHVwIGEgYml0IGNhbiBiZSBoZWxwZnVsLiBJZiB3ZSBkaWQgaW50cm9kdWNlIGVycm9ycw0K
dW5pbnRlbnRpb25hbGx5LCBhdCBsZWFzdCB3ZSBjb3VsZCBiaXNlY3QgYW5kIHRoZXJlIHdvdWxk
IGJlIGxlc3MgY29kZQ0KdG8gbG9vayB0aHJvdWdoLg0KDQpUaGF0IHNhaWQsIGZvciBjaGFuZ2Vz
IGxpa2UgdGhlc2UsIEFJIHNob3VsZCBiZSB2ZXJ5IGVmZmVjdGl2ZSBhdA0KY2F0Y2hpbmcgZXJy
b3JzLg0KDQo+DQo+ID4gQW5kIGl0J3MgYSBsaXR0bGUgZHViaW91cyB0aGF0IHRoZSBtZWNoYW5p
Y2FsDQo+ID4gcmVmYWN0b3JpbmcgcHJvZHVjZXMgbW9yZSByZWFkYWJsZSBjb2RlIGluIHNvbWUg
Y2FzZXMuDQo+DQo+IEkgYWdyZWUsIHRob3VnaCB0aGUgbWl4IG9mIGd1YXJkKClzIGFuZCBtYW51
YWwgbG9ja3MgbWFrZXMgdGhpbmdzIGV2ZW4NCj4gaGFyZGVyIHRvIHJlYXNvbiBhYm91dCwgZXNw
ZWNpYWxseSB3aGVuIHRoZXkgYXBwZWFyIGluIHRoZSBzYW1lDQo+IGZ1bmN0aW9uL2Jsb2NrLiBU
aGUgdmVyeSByZWFzb24gSSBlbmRlZCB1cCBzZW5kaW5nIHRoaXMgc2VyaWVzIGlzDQo+IGJlY2F1
c2UsIGFzIHBhcnQgb2YgdGhlIElSUSByZWZhY3RvciwgSSBkZWNpZGVkIHRvIGJlIGEgZ29vZCBj
aXRpemVuDQo+IGFuZCB1c2UgZ3VhcmRzIHdoZW4gSSBjb3VsZCwgYW5kIEkgcmVhbGl6ZWQgaG93
IGJhZCB0aGUgcGFydGlhbA0KPiB0cmFuc2l0aW9uIHdhcyBpbiB0ZXJtIG9mIGVyZ29ub21pY3M6
IG5vdCBvbmx5IHlvdSBoYXZlIHRvIHRoaW5rIGFib3V0DQo+IHdoZXRoZXIgdGhlIGZ1bmN0aW9u
L2Jsb2NrIHNjb3BlIGlzIHdoYXQgeW91IHdhbnQgKHRoYXQncyBiYXNpY2FsbHkNCj4gd2hhdCBn
dWFyZCBwcm92aWRlcywgdW5sZXNzIHlvdSB1c2VkIGV4cGxpY2l0IHNjb3BlZF9ndWFyZCgpKSwg
YnV0IHlvdQ0KPiBhbHNvIGhhdmUgdG8gdGhpbmsgYWJvdXQgdGhlIGludGVyYWN0aW9ucyB3aXRo
IHlvdXIgb3RoZXIgbWFudWFsIGxvY2tzLg0KPg0KPiBUTERSOyBJJ2QgcmF0aGVyIHN3aXRjaCBv
dmVyIHRvIGd1YXJkcyBlbnRpcmVseSwgb3IgZ28gYmFjayB0byBtYW51YWwNCj4gbG9ja3MsIGJ1
dCB0aGUgbWl4IHdlIGhhdmUgcmlnaHQgbm93IGlzIGZhciBmcm9tIGlkZWFsLg0KPg0KPiA+DQo+
ID4gVGhhdCBzYWlkIEkgYXNrZWQgbXkgZnJpZW5kbHkgQUkgYm90Li4uDQo+ID4NCj4gPiBbLi4u
XQ0KPiA+DQo+ID4gPiBAQCAtMzE0Miw0OCArMzEyNiw0NCBAQCBwYW50aG9yX21tdV9yZWNsYWlt
X3ByaXZfYm9zKHN0cnVjdCBwYW50aG9yX2RldmljZSAqcHRkZXYsDQo+ID4gPiAgICAgTElTVF9I
RUFEKHJlbWFpbmluZ192bXMpOw0KPiA+ID4gICAgIExJU1RfSEVBRCh2bXMpOw0KPiA+ID4NCj4g
PiA+IC0gICBtdXRleF9sb2NrKCZwdGRldi0+cmVjbGFpbS5sb2NrKTsNCj4gPiA+IC0gICBsaXN0
X3NwbGljZV9pbml0KCZwdGRldi0+cmVjbGFpbS52bXMsICZ2bXMpOw0KPiA+ID4gKyAgIHNjb3Bl
ZF9ndWFyZChtdXRleCwgJnB0ZGV2LT5yZWNsYWltLmxvY2spDQo+ID4gPiArICAgICAgICAgICBs
aXN0X3NwbGljZV9pbml0KCZwdGRldi0+cmVjbGFpbS52bXMsICZ2bXMpOw0KPiA+ID4NCj4gPiA+
ICAgICB3aGlsZSAoZnJlZWQgPCBucl90b19zY2FuKSB7DQo+ID4gPiAgICAgICAgICAgICBzdHJ1
Y3QgcGFudGhvcl92bSAqdm07DQo+ID4gPg0KPiA+ID4gLSAgICAgICAgICAgdm0gPSBsaXN0X2Zp
cnN0X2VudHJ5X29yX251bGwoJnZtcywgdHlwZW9mKCp2bSksDQo+ID4gPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWNsYWltLmxydV9ub2RlKTsNCj4gPiA+IC0g
ICAgICAgICAgIGlmICghdm0pDQo+ID4gPiAtICAgICAgICAgICAgICAgICAgIGJyZWFrOw0KPiA+
ID4gLQ0KPiA+ID4gLSAgICAgICAgICAgaWYgKCFrcmVmX2dldF91bmxlc3NfemVybygmdm0tPmJh
c2Uua3JlZikpIHsNCj4gPiA+IC0gICAgICAgICAgICAgICAgICAgbGlzdF9kZWxfaW5pdCgmdm0t
PnJlY2xhaW0ubHJ1X25vZGUpOw0KPiA+ID4gLSAgICAgICAgICAgICAgICAgICBjb250aW51ZTsN
Cj4gPiA+ICsgICAgICAgICAgIHNjb3BlZF9ndWFyZChtdXRleCwgJnB0ZGV2LT5yZWNsYWltLmxv
Y2spIHsNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgdm0gPSBsaXN0X2ZpcnN0X2VudHJ5X29y
X251bGwoJnZtcywgdHlwZW9mKCp2bSksDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJlY2xhaW0ubHJ1X25vZGUpOw0KPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICBpZiAodm0gJiYgIWtyZWZfZ2V0X3VubGVzc196ZXJvKCZ2bS0+YmFzZS5r
cmVmKSkgew0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIGxpc3RfZGVsX2luaXQo
JnZtLT5yZWNsYWltLmxydV9ub2RlKTsNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICB2bSA9IE5VTEw7DQo+ID4gPiArICAgICAgICAgICAgICAgICAgIH0NCj4gPiA+ICAgICAgICAg
ICAgIH0NCj4gPiA+DQo+ID4gPiAtICAgICAgICAgICBtdXRleF91bmxvY2soJnB0ZGV2LT5yZWNs
YWltLmxvY2spOw0KPiA+ID4gKyAgICAgICAgICAgaWYgKCF2bSkNCj4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgYnJlYWs7DQo+ID4NCj4gPiAuLi4gYW5kIGl0IHNhaWQgdGhlIGFib3ZlIGhhcyBj
aGFuZ2VkIGJlaGF2aW91ci4NCj4gPg0KPiA+IEluIHRoZSAha3JlZl9nZXRfdW5sZXNzX3plcm8o
KSBjYXNlIHlvdSBub3cgYXNzaWduIHZtID0gTlVMTCB3aGljaCB0aGVuDQo+ID4gbGVhZHMgdG8g
dGhlICdicmVhaycgY2FzZSBhYm92ZS4gUHJldmlvdXNseSB3ZSAnY29udGludWUnZC4NCj4NCj4g
T29wcywgdGhhdCBvbmUgd2Fzbid0IGludGVuZGVkLCBpbmRlZWQuDQo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IExpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiBUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZw0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
