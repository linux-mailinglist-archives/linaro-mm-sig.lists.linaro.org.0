Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cN6fG/PyE2puHwcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 08:57:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A185C6D15
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 08:57:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BDD05401C5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 06:57:53 +0000 (UTC)
Received: from letterbox.kde.org (letterbox.kde.org [46.43.1.242])
	by lists.linaro.org (Postfix) with ESMTPS id BF19B3F6B6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 15:31:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kde.org header.s=users header.b=aDPUmUeu;
	spf=pass (lists.linaro.org: domain of xaver.hugl@kde.org designates 46.43.1.242 as permitted sender) smtp.mailfrom=xaver.hugl@kde.org;
	dmarc=none
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
	(Authenticated sender: zamundaaa)
	by letterbox.kde.org (Postfix) with ESMTPSA id 96D6832B12D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 16:31:53 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
	t=1779204713; bh=oT6uiKktMScgUXFbTJP5r3yFWiKp5GOGABsHC9u3r+8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=aDPUmUeuxJlqZqy46DQkbghe5oLt/7qJ+U9GC1GMXypZ4yMWs9Fc4jxvYNVfhGdBF
	 GiwjepgbzFtOFe1fGLLFCTve/IeCL90e/o7L6U2kzLlFasvIE7sL3BuotnzQMBiW1L
	 cUsIWE9SouMzKLLH2Mz7X55nD6k5l2ea9nJZ/3Yz5/5TdzbAJi15YigNk9pY+3A2sl
	 +ogiM5tf+SpGRtPtfkREMVLa36lsfwTps1or6J7NydftbNZbbmBsKbKllLY3os9Tn+
	 2rFAgvBSGUwHo1N6IwZ1eK0796dXyEKE96czATup9FCe9DXyesJ9N5Czw87WJMO8Yz
	 jPyos493GO4Kg==
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-6587cee8b57so4533829d50.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 08:31:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9hber1qZLSxFMKbB1PNkv0eYsjRq/aC58bo6pUZn1w2cShZE/4Mg6IN+6nYigtPkHVcikxnOvJt8PyU9ZH@lists.linaro.org
X-Gm-Message-State: AOJu0YxMZ6YfKBiZdNZgJBqr9tKXvLe5kvS6DX2V8Yu8g1ADmoLcAmYF
	N79iFTgLnL3FnyJ6zsBOUVcoR9fgZA8WIqSrP6PwcXQI5L6+eanKEi+n6JRU37xEu5dsjygqvPf
	TWkxY5yaB2D42h+Rny0b5GyL8VwYvNfM=
X-Received: by 2002:a53:acce:0:20b0:65d:f5e7:72bc with SMTP id
 956f58d0204a3-65e2276b844mr16430681d50.22.1779204711899; Tue, 19 May 2026
 08:31:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com> <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com> <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
 <38551bfe-75e1-4978-b57d-adc43cebc85e@amd.com> <CAHijbEWHp960qvZFoK7+9ppHAqkAR7=UQhtMUccqWzGd_pFPQA@mail.gmail.com>
 <5ee6d5af-ac48-41d7-a19f-e08a3c5b7d19@amd.com>
In-Reply-To: <5ee6d5af-ac48-41d7-a19f-e08a3c5b7d19@amd.com>
From: Xaver Hugl <xaver.hugl@kde.org>
Date: Tue, 19 May 2026 17:31:40 +0200
X-Gmail-Original-Message-ID: <CAFZQkGwmeipZnvmBkcE7KhvUSMkSE=fzLBZtiMyhv3mM04Vudg@mail.gmail.com>
X-Gm-Features: AVHnY4InFcbGFBQwqAypjrf9D3aYMpjvgQB5CvHgiLxe84oabRYNffn3PUsURt4
Message-ID: <CAFZQkGwmeipZnvmBkcE7KhvUSMkSE=fzLBZtiMyhv3mM04Vudg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: xaver.hugl@kde.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AT76KMLCEOXEKWKY5JVKYR5UO43OXWIN
X-Message-ID-Hash: AT76KMLCEOXEKWKY5JVKYR5UO43OXWIN
X-Mailman-Approved-At: Mon, 25 May 2026 06:57:44 +0000
CC: Julian Orth <ju.orth@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AT76KMLCEOXEKWKY5JVKYR5UO43OXWIN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[135];
	R_DKIM_REJECT(1.00)[kde.org:s=users];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[kde.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kde.org:-];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[xaver.hugl@kde.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,mailbox.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.531];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,amd.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: F2A185C6D15
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

QW0gRGkuLCAxOS4gTWFpIDIwMjYgdW0gMTU6MjkgVWhyIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5p
Zw0KPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT46DQo+ID4gMS4gVGhpcyBzZXJpZXMgbWFrZXMg
dGhlIGFiaWxpdHkgdG8gbWFuaXB1bGF0ZSBzeW5jb2JqcyBhdmFpbGFibGUNCj4gPiBpbmRlcGVu
ZGVudGx5IG9mIGF0dGFjaGVkIGhhcmR3YXJlLg0KPiA+IDIuIEl0IG1ha2VzIGl0IGF2YWlsYWJs
ZSB1bmRlciBhIGNvbnNpc3RlbnQgcGF0aCAvZGV2L3N5bmNvYmouDQo+DQo+IEV4YWN0bHkgdGhh
dCBpcyBhIGJpZyBuby1nby4gVGhpcyBoYXMgdG8gYmUgdW5kZXIgL2Rldi9kcmkuDQpGV0lXIHVk
bWFidWYgaXMgYWxzbyB1bmRlciAvZGV2IGRpcmVjdGx5LCBidXQgSSBkb24ndCB0aGluayBhbnkN
CmNvbXBvc2l0b3IgZGV2ZWxvcGVyIHdvdWxkIGNvbXBsYWluIGFib3V0IGEgZGlmZmVyZW50IHBh
dGguDQpXaGF0IGFyZSB0aGUgcnVsZXMgZm9yIHRoYXQ/IENvdWxkIHRoaXMgc2ltcGx5IGJlIHB1
dCBpbiAvZGV2L2RyaS9zeW5jb2JqPw0KDQpUaGUgcGFydCB3aGVyZSB3ZSBnZXQgdGhpcyBpbmRl
cGVuZGVudCBvZiBhdHRhY2hlZCBoYXJkd2FyZSBpcyBxdWl0ZQ0KaW1wb3J0YW50IGZvciB1cyB0
aG91Z2gsIHNpbmNlIHdlIGNhbid0IGp1c3QgaWdub3JlIGV4cGxpY2l0IHN5bmMgb25jZQ0KdGhl
IGRldmljZSB3ZSBwcmV2aW91c2x5IGltcG9ydGVkIHRoZSBzeW5jb2JqIGludG8gaXMgZGlzY29u
bmVjdGVkLg0KQnVmZmVycyBjYW4gYmUgZnJvbSBhbnkgZGV2aWNlIG9yIGFsbG9jYXRlZCBpbiBz
eXN0ZW0gbWVtb3J5IGFuZA0KYWNjZXNzIHNob3VsZCBiZSBzeW5jaHJvbml6ZWQgcHJvcGVybHkg
aW4gYWxsIGNhc2VzLg0KDQpIb3cgZXhhY3RseSBpdCdzIG1hZGUgYXZhaWxhYmxlIGlzbid0IGFs
bCB0aGF0IGNyaXRpY2FsLg0KDQo+ID4gMy4gSXQgcmVtb3ZlcyB0aGUgbmVlZCB0byB0cmFuc2xh
dGUgYmV0d2VlbiBzeW5jb2JqcyBmZHMgYW5kIGhhbmRsZXMuDQo+DQo+IFRoYXQncyBhIHByZXR0
eSBiaWcgbm8tZ28gYXMgd2VsbC4gVGhlIGRpZmZlcmVudGlhdGlvbiBiZXR3ZWVuIEZEcyBhbmQg
aGFuZGxlcyBpcyBjb21wbGV0ZWx5IGludGVudGlvbmFsLg0KQ291bGQgeW91IGV4cGFuZCBvbiB3
aHkgaXQncyBuZWVkZWQ/IEZvciBjb21wb3NpdG9ycywgdGhlIGhhbmRsZSBpcw0KanVzdCBhbiBp
bnRlcm1lZGlhcnkgdGhpbmcgd2hlbiB0cmFuc2xhdGluZyBiZXR3ZWVuIGZpbGUgZGVzY3JpcHRv
cnMuDQoNCkZUUiBmb3IgbWUgYXQgbGVhc3QsIHRoaXMgcGFydCB3b3VsZCBiZSBtZXJlbHkgbmlj
ZSB0byBoYXZlLCBzaW5jZSBpdA0Kc2xpZ2h0bHkgcmVkdWNlcyB0aGUgYW1vdW50IG9mIGlvY3Rs
cyBhIGNvbXBvc2l0b3IgbmVlZHMgdG8gY2FsbCwgYnV0DQppdCdzIG5vdCBpbXBvcnRhbnQuDQoN
Cj4gPj4gV2hhdCBhYm91dCB1c2luZyBWR0VNIGZvciB0aGlzPw0KPiA+DQo+ID4gSWYgdGhlIHZn
ZW0gcmVuZGVyIG5vZGUgd2VyZSBtYWRlIGF2YWlsYWJsZSB1bmNvbmRpdGlvbmFsbHkgdW5kZXIs
DQo+DQo+IFNvZnR3YXJlIHJlbmRlcmluZyBpcyBhIGNvbXBsZXRlIGNvcm5lciBjYXNlLCBJIGRv
bid0IHRoaW5rIHRoYXQgdGhpcyB3aWxsIGJlIGVuYWJsZWQgYnkgZGVmYXVsdC4NClRoYXQgc2lt
cGx5IG1ha2VzIHZnZW0gdW5zdWl0YWJsZSBmb3Igc29sdmluZyB0aGUgcHJvYmxlbXMgd2UgZmFj
ZSBpbg0KY29tcG9zaXRvcnMuDQoNCi0gWGF2ZXINCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
