Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFtWEAbzE2puHwcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 08:58:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BAC5C6D2D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 08:58:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF5283F8E7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 06:58:12 +0000 (UTC)
Received: from letterbox.kde.org (letterbox.kde.org [46.43.1.242])
	by lists.linaro.org (Postfix) with ESMTPS id 21F784095C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 12:33:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kde.org header.s=users header.b=Whq6NoHV;
	spf=pass (lists.linaro.org: domain of xaver.hugl@kde.org designates 46.43.1.242 as permitted sender) smtp.mailfrom=xaver.hugl@kde.org;
	dmarc=none
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(Authenticated sender: zamundaaa)
	by letterbox.kde.org (Postfix) with ESMTPSA id 1AE9232BA3A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 13:33:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
	t=1779280420; bh=QAPUhSFoYr4bUaOZROL9kMB0XxGMQA2LYNnfIiF3fpc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Whq6NoHVvcJFXcYunt2by+cUOjwnj5qoXA3T2bsBSlE6re6nm2tCRX78zTQiUSpeT
	 Z8gqcl0bxQkQ04sGGDoPKApr8jQhjYnMz4tnNztA/QPBCQO6WtOYx+H20DWNn0LWe/
	 7RADW8TNKcBmaYESpnHv0/JYuQiiWxCcf7S6OCqalQxhVc2kZjAO3zDKdCKBlvx3BC
	 Nui2oS88fh84B2/uTjK6axPUV0cIkLquf0d/bY8IKHQm9Md3fc1iJ/hcZpK1PY+YvN
	 k3LQqb2/h6ZPn1RpEdanRdFYpQdwMG9QWuz4OFrJG0avYWo3hpZ2yf/qrRiD0R91W1
	 qiumSiHGDGc+g==
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-65c7a459105so5055855d50.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 05:33:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/e2OOdyC2XpIyBArDke7kcQ8wNkmyqZtfAByt1RA4a9CFdZLkvxjd4ZG5zKe6aKX1BfM8loLDFpWpLvNl0@lists.linaro.org
X-Gm-Message-State: AOJu0YyOdMxtZ2AfK7QZCvFTLP8FYsu2GHJ9PWzAOa3LzQSfeq1eg9NV
	qLApilLA3nxMLxgN08Ay44STi3z+szgPiXtCoXtD2crJ4uvmVfz8sIP1gR9/2HOqtbYAtb1koPP
	2y4LsF04gyuJvXgrfu7tRFU9sWfU1FVU=
X-Received: by 2002:a05:690e:1c05:b0:65e:9e71:7942 with SMTP id
 956f58d0204a3-65e9e718592mr625005d50.37.1779280418541; Wed, 20 May 2026
 05:33:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com> <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com> <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
 <38551bfe-75e1-4978-b57d-adc43cebc85e@amd.com> <CAHijbEWHp960qvZFoK7+9ppHAqkAR7=UQhtMUccqWzGd_pFPQA@mail.gmail.com>
 <5ee6d5af-ac48-41d7-a19f-e08a3c5b7d19@amd.com> <CAFZQkGwmeipZnvmBkcE7KhvUSMkSE=fzLBZtiMyhv3mM04Vudg@mail.gmail.com>
 <dff60378-4e47-4753-8878-feec6e1c2690@amd.com> <CAFZQkGz=UJqaJ_eTwKBy1pAg5xL+PLibh7W1vYf7JD7Jrx-LZQ@mail.gmail.com>
 <53edf0b5-e733-4b96-87d7-3307275500c0@amd.com>
In-Reply-To: <53edf0b5-e733-4b96-87d7-3307275500c0@amd.com>
From: Xaver Hugl <xaver.hugl@kde.org>
Date: Wed, 20 May 2026 14:33:26 +0200
X-Gmail-Original-Message-ID: <CAFZQkGxpPm081Fz8UtDuBA1PKD42+9YDA+cc6fbSpfawXwu9+g@mail.gmail.com>
X-Gm-Features: AVHnY4Jgk8foYzRi5plZzxfmXsVMwh3FA7NaYflBHH8P8EN0Be3BzPmLSUlyKpc
Message-ID: <CAFZQkGxpPm081Fz8UtDuBA1PKD42+9YDA+cc6fbSpfawXwu9+g@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: xaver.hugl@kde.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: S6QECPUUVYALHYYNOUTD5JRWVJQLTEO2
X-Message-ID-Hash: S6QECPUUVYALHYYNOUTD5JRWVJQLTEO2
X-Mailman-Approved-At: Mon, 25 May 2026 06:57:44 +0000
CC: Julian Orth <ju.orth@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S6QECPUUVYALHYYNOUTD5JRWVJQLTEO2/>
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
	DATE_IN_PAST(1.00)[114];
	R_DKIM_REJECT(1.00)[kde.org:s=users];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	NEURAL_SPAM(0.00)[0.503];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,amd.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: D2BAC5C6D2D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

QW0gTWkuLCAyMC4gTWFpIDIwMjYgdW0gMTA6MDggVWhyIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5p
Zw0KPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT46DQo+IFdlbGwgSSB3b3VsZCBzYXkgdGhlIG90
aGVyIHdheSBhcm91bmQgaXMgYSBwcmV0dHkgY29tbW9uIHVzZSBjYXNlLg0KPg0KPiBJbiBvdGhl
ciB3b3JkcyB0aGUgY29tcG9zaXRvcnMgdXNlcyB0aGUgaW50ZXJuYWwgR1BVIGZvciBjb21wb3Np
bmcgYW5kIGRpc3BsYXlpbmcgdGhlIHBpY3R1cmUuIEFuZCB0aGUgY2xpZW50IHVzZXMgdGhlIGV4
dGVybmFsIEdQVSBmb3IgZmFzdCByZW5kZXJpbmcuDQpTdXJlLCBidXQgdGhhdCdzIG5vdCB3aGF0
IEknbSB0YWxraW5nIGFib3V0Lg0KDQo+ID4gLSB0aGUgYnVmZmVycyBmcm9tIHRoZSBjbGllbnQg
c3RheSB2YWxpZA0KPg0KPiBCdWZmZXJzIGZyb20gdGhlIGhvdCBwbHVnZ2VkIEdQVSBkb24ndCBz
dGF5IHZhbGlkLiBBY2Nlc3NpbmcgQ1BVIG1hcHBpbmdzIGVpdGhlciByZXN1bHQgaW4gYSBTSUdC
VVMgb3IgYXJlIHJlZGlyZWN0ZWQgdG8gYSBkdW1teSBwYWdlLg0KQWdhaW4sIG5vdCB3aGF0IEkg
d3JvdGUgYWJvdXQuIFRoZSBidWZmZXJzIGFyZSBvbiB0aGUgaW50ZWdyYXRlZCBHUFUuDQoNCj4g
PiAtIHRoZSBzeW5jb2JqIHN0YXlzIHZhbGlkIG9uIHRoZSBjbGllbnQgc2lkZQ0KPiA+IC0gdGhl
IHN5bmNvYmogYmVjb21lcyBpbnZhbGlkIG9uIHRoZSBjb21wb3NpdG9yIHNpZGUNCj4NCj4gTm9w
ZSB0aGF0J3Mgbm90IGNvcnJlY3QuIFRoZSBzeW5jb2JqIGl0c2VsZiBzdGF5cyB2YWxpZCBldmVu
IGlmIHlvdSBjb21wbGV0ZWx5IGhvdCBwbHVnIHRoZSBkZXZpY2UuDQo+DQo+IEl0IGNhbiBqdXN0
IGJlIHRoYXQgdGhlIGZlbmNlcyBpbnNpZGUgdGhlIHN5bmNvYmogYXJlIHRlcm1pbmF0ZWQgd2l0
aCBhbiBlcnJvci4NCldoYXQgYWJvdXQgZXZlbnRmZCBjcmVhdGVkIGZvciBhIHBvaW50IG9uIHRo
ZSBzeW5jb2JqPw0KDQpBbm90aGVyIChmdXR1cmUpIHByb2JsZW0gd2l0aCBob3RwbHVncyB3aWxs
IGJlIGlmIHRoZSBzeW5jIGZpbGUgaGFzbid0DQptYXRlcmlhbGl6ZWQgZm9yIHRoZSB0aW1lbGlu
ZSBwb2ludCB3aGVuIHRoZSBkZXZpY2UgaXMgaG90dW5wbHVnZ2VkLA0Kc2luY2UgdGhlcmUgY2Fu
J3QgYmUgYW4gZXJyb3Igb24gdGhlIGZlbmNlIGlmIHRoZXJlIGlzbid0IG9uZS4gT3INCmNvdWxk
IHVzZXJzcGFjZSBzb21laG93IHNldCBhbiAnYXJ0aWZpY2lhbCcgZmVuY2Ugd2l0aCBhbiBlcnJv
ciBpbg0KdGhhdCBjYXNlPw0KDQo+ID4gImludmFsaWQiIHRoZXJlIG1lYW5zIGVpdGhlcg0KPiA+
IC0gdGhlIGFjcXVpcmUgcG9pbnQgb2YgdGhlIGNsaWVudCBpcyBtYXJrZWQgYXMgc2lnbmFsZWQs
IGJlZm9yZQ0KPiA+IHJlbmRlcmluZyBvbiB0aGUgY2xpZW50IHNpZGUgaXMgY29tcGxldGVkDQo+
ID4gLSB0aGUgYWNxdWlyZSBwb2ludCBvZiB0aGUgY2xpZW50IGlzIG5ldmVyIHNpZ25hbGVkLiBT
aW5jZSB0aGUNCj4gPiBjb21wb3NpdG9yIHdhaXRzIGZvciB0aGUgYWNxdWlyZSBwb2ludCwgdGhl
IFdheWxhbmQgc3VyZmFjZSBpcyBzdHVjaw0KPiA+IGZvcmV2ZXINCj4NCj4gQm90aCBvZiB0aG9z
ZSB3b3VsZCBiZSBhICptYXNzaXZlKiB2aW9sYXRpb24gb2YgZG9jdW1lbnRlZCBrZXJuZWwgcnVs
ZXMgZm9yIGhvdC1wbHVnZ2luZyB3aGljaCBjb3VsZCBsZWFkIHRvIHJhbmRvbSBkYXRhIGNvcnJ1
cHRpb24gYW5kL29yIGRlYWRsb2Nrcy4NCj4NCj4gSWYgeW91IHNlZSBhbnkgSFcgZHJpdmVyIHNo
b3dpbmcgYmVoYXZpb3IgbGlrZSB0aGF0IHBsZWFzZSBvcGVuIHVwIGEgYnVnIHJlcG9ydCBhbmQg
cGluZyB0aGUgcmVsZXZhbnQgbWFpbnRhaW5lcnMgaW1tZWRpYXRlbHkuDQpJZiB0aGVyZSBhcmUg
bm8gZXJyb3IgY29kZXMgd2l0aCBzeW5jb2JqIHlldCwgdGhlbiB0byB1c2Vyc3BhY2UsIHRoZQ0K
bGF0dGVyIGJlaGF2aW9yIGlzIGV4YWN0bHkgd2hhdCB3ZSBnZXQsIGlzbid0IGl0Pw0KDQo+IFdo
ZW4gYSBob3RwbHVnIGhhcHBlbnMgYWxsIG9wZXJhdGlvbnMgb2YgdGhlIGRldmljZSBzaG91bGQg
cmV0dXJuIGFuIC1FTk9ERVYgZXJyb3IsIGV2ZW4gd2hlbiBleHBvc2VkIHRvIG90aGVyIGRldmlj
ZXMvYXBwbGljYXRpb24gdGhyb3VnaCBzeW5jb2JqIG9yIHN5bmNmaWxlLg0KT2theSwgdGhhdCBh
dCBsZWFzdCBnaXZlcyB1cyBhIHdheSB0byBmYWlsIGltcG9ydHMgc29tZXdoYXQNCmdyYWNlZnVs
bHkuIE5vcm1hbGx5LCBmYWlsaW5nIHRvIGltcG9ydCBhIHN5bmNvYmogaXMgYSBmYXRhbCBlcnJv
ciBpbg0KdGhlIFdheWxhbmQgcHJvdG9jb2wuDQoNCj4gT25lIHByb2JsZW0gaXMgdGhhdCBvbmx5
IHN5bmNmaWxlIGFsbG93cyBmb3IgcXVlcnlpbmcgc3VjaCBlcnJvciBjb2RlcyBhdCB0aGUgbW9t
ZW50LCB3ZSBoYXZlIHBhdGNoZXMgcGVuZGluZyB0byBhZGQgdGhhdCB0byBzeW5jb2JqIGFzIHdl
bGwgYnV0IHdlIGxhY2sgYSBjb21wb3NpdG9yIHdpdGggc3VwcG9ydCBmb3IgdGhhdCBhcyB1c2Vy
c3BhY2UgY2xpZW50Lg0KQXMgbG9uZyBhcyB0aGUgZXJyb3IgY2FzZSBjYW4gYmUgZGV0ZWN0ZWQg
d2l0aCBhbiBldmVudGZkLA0KaW1wbGVtZW50aW5nIHRoYXQgaW4gS1dpbiBzaG91bGRuJ3QgYmUg
YSBjaGFsbGVuZ2UuDQoNCj4gV2VsbCB0aGUgcXVlc3Rpb24gaGVyZSBpcyBpZiB0aGUgZGV2aWNl
IHRoZSBjb21wb3NpdG9yIGlzIHVzaW5nIG9yIHRoZSBjbGllbnQgaXMgdXNpbmcgaXMgZ29uZT8N
Cj4NCj4gSWYgdGhlIGNsaWVudCBkZXZpY2UgaXMgaG90IHJlbW92ZWQgdGhlIGNvbXBvc2l0b3Ig
c2hvdWxkIGJlIHBlcmZlY3RseSBjYXBhYmxlIHRvIGltcG9ydCB0aGUgc3luY29iai4NCj4NCj4g
SWYgdGhlIGNvbXBvc2l0b3IgZGV2aWNlIGlzIGdvbmUgdGhlbiB5b3UgZG9uJ3QgaGF2ZSBhIGRl
dmljZSB0byBkaXNwbGF5IGFueXRoaW5nIGFueSBtb3JlLCBzbyBnZW5lcmF0aW5nIHRoZSBuZXh0
IGZyYW1lIGRvZXNuJ3Qgc2VlbSB0byBtYWtlIHNlbnNlIGVpdGhlci4NCj4NCj4gV2hhdCBjb3Vs
ZCBiZSBpcyB0aGF0IHlvdSB3YW50IHRoZSBjb21wb3NpdG9yIHRvIGJlIGtlcHQgYWxpdmUgZXZl
biB3aGVuIHRoZSBkaXNwbGF5IGRldmljZSBpcyBnb25lIHRvIHN3aXRjaCBvdmVyIHRvIHZrbXMg
b3Igd2hhdGV2ZXIgc28gdGhhdCBhIFZOQyBzZXNzaW9uIG9yIG90aGVyIHJlbW90ZSBkZXNrdG9w
IHN0aWxsIHdvcmtzLg0KVGhlcmUgYXJlIHR3byBHUFVzIGluIHRoZSBleGFtcGxlIEkgZ2F2ZS4g
VGhlIGNvbXBvc2l0b3IgY2FuIHVzZSBib3RoDQpmb3IgcmVuZGVyaW5nIChpbiBjb3NtaWMtY29t
cCdzIGNhc2UpIG9yIHN3aXRjaCBiZXR3ZWVuIHRoZW0gKHdoYXQgSSdtDQp0cnlpbmcgdG8gZG8g
d2l0aCBLV2luKSwgb3IgdXNlIG9uZSBkZXZpY2UgZm9yIHJlbmRlcmluZywgYW5kIGFub3RoZXIN
CmZvciBpbXBvcnRpbmcgdGhlIHN5bmNvYmouDQoNCj4gPj4+Pj4gMy4gSXQgcmVtb3ZlcyB0aGUg
bmVlZCB0byB0cmFuc2xhdGUgYmV0d2VlbiBzeW5jb2JqcyBmZHMgYW5kIGhhbmRsZXMuDQo+ID4+
Pj4NCj4gPj4+PiBUaGF0J3MgYSBwcmV0dHkgYmlnIG5vLWdvIGFzIHdlbGwuIFRoZSBkaWZmZXJl
bnRpYXRpb24gYmV0d2VlbiBGRHMgYW5kIGhhbmRsZXMgaXMgY29tcGxldGVseSBpbnRlbnRpb25h
bC4NCj4gPj4+IENvdWxkIHlvdSBleHBhbmQgb24gd2h5IGl0J3MgbmVlZGVkPyBGb3IgY29tcG9z
aXRvcnMsIHRoZSBoYW5kbGUgaXMNCj4gPj4+IGp1c3QgYW4gaW50ZXJtZWRpYXJ5IHRoaW5nIHdo
ZW4gdHJhbnNsYXRpbmcgYmV0d2VlbiBmaWxlIGRlc2NyaXB0b3JzLg0KPiA+Pg0KPiA+PiBXZWxs
IHdoYXQgd2UgY291bGQgZG8gaXMgdG8gYWRkIGFuIElPQ1RMIHRvIGRpcmVjdGx5IGF0dGFjaCBh
biBzeW5jb2JqIGZpbGUgZGVzY3JpcHRvciB0byBhbiBldmVudGZkLg0KPiA+IFRoYXQgd291bGQg
YmUgbmljZS4NCj4NCj4gVGFrZSBhIGxvb2sgYXQgZHJtX3N5bmNvYmpfZmlsZV9mb3BzIGFuZCBo
b3cgZHJtX3N5bmNvYmpfYWRkX2V2ZW50ZmQoKSBpcyB1c2VkLiBBZGRpbmcgdGhhdCBmdW5jdGlv
bmFsaXR5IHNob3VsZG4ndCBiZSBtb3JlIHRoYW4gYSB0eXBpbmcgZXhlcmNpc2UuDQpZZWFoLCB0
aGlzIHBhdGNoc2V0IGFscmVhZHkgYWRkcyB0aGF0IGZ1bmN0aW9uYWxpdHkgKG9uIHRoZSBuZXcg
ZGV2aWNlKS4NCg0KPiBEbyBJIHNlZSBpdCByaWdodCB0aGF0IHRoaXMgd291bGQgYWxyZWFkeSBz
b2x2ZSBtb3N0IHByb2JsZW1zIGluIHRoZSBjb21wb3NpdG9yIHNpZGU/DQpTa2lwcGluZyB0aGUg
c3luY29iaiBoYW5kbGUgc3RlcCB3b3VsZCBvbmx5IHJlZHVjZSB0aGUgYW1vdW50cyBvZg0KaW9j
dGxzIHRoZSBjb21wb3NpdG9yIGRvZXMsIGJ1dCBhZmFpY3QgaXQgd291bGRuJ3Qgc29sdmUgYW55
DQpjb21wb3NpdG9yIHByb2JsZW1zLiBBdCBsZWFzdCBub3QgYXMgbG9uZyBhcyBpdCdzIHN0aWxs
IHRpZWQgdG8gYSBkcm0NCmRldmljZS4NCkZvciBkZXZpY2UgaG90cGx1Z3MsIHRoZSBvbmx5IG5l
dyB0aGluZyB3ZSBuZWVkIGZvciBjb3JyZWN0bHkgaGFuZGxpbmcNCnN5bmNvYmogaXMgYSB3YXkg
dG8gcmVjZWl2ZSBlcnJvcnMgb24gdGhlIGV2ZW50ZmQuDQoNCkEgZGV2aWNlLWluZGVwZW5kZW50
IHdheSB0byBjcmVhdGUgYW5kIHVzZSBzeW5jb2JqIHdvdWxkIHN0aWxsIGJlDQp1c2VmdWwgdG8g
dXMgdGhvdWdoLCBib3RoIHRvIHNpbXBsaWZ5IHRoZSBjb21wb3NpdG9yIGFuZCB0byBpbXByb3Zl
DQp0aGUgc29mdHdhcmUgcmVuZGVyaW5nIHVzZSBjYXNlcy4NCg0KLSBYYXZlcg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
