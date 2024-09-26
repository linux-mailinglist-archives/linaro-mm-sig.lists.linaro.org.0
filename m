Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 794779874CF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Sep 2024 15:54:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C85C44381
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Sep 2024 13:54:03 +0000 (UTC)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	by lists.linaro.org (Postfix) with ESMTPS id 14D543F3D9
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Sep 2024 13:53:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="DjP4/bWD";
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.garg@linaro.org designates 209.85.217.54 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-49be3d534ffso370392137.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Sep 2024 06:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727358790; x=1727963590; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v7tAPySwmdQHAtA+YRpD9HZ0WA3SFgtNuMS1LZNdOfM=;
        b=DjP4/bWD43URZKwZadcRbW8Wru/DoT2KF6gJYATP0FrOXf1x646hfdtHePcPOu0KmS
         RFe5n/fQpeWXKZlmXsW+gRqlXUYSO+v1O5apXjQDMZLt89CI9/Tr6xUWtFbn3nEGdowp
         7obRv+rPTRmLdPWRM4XkCrsMuA8nmVajI13cNJyHJAPGE0RCVrCZ9uFvHAW3rrLsFuoC
         XbKrDTWOUcwiRWzhdYdRS93HF6vO6F/keIqJHcY+OI7OWq6t0iMiiENX9ne7UopF9ENg
         uWdwIQSXPjfMXdZETPh8KycRq07k75frJCR5athA8VcC63qBkdifSPVvgBW11cM76UwN
         ax6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727358790; x=1727963590;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v7tAPySwmdQHAtA+YRpD9HZ0WA3SFgtNuMS1LZNdOfM=;
        b=G7yYymmzsehGeaGds+dVYeW7xv4m5TUPJcjdf1aynfoqpGPf2DFdnX90EYHezEO+Za
         8Zu7hH8mybofYOuSM7E2rT0TLccKZxmXhwaWBDTytLoiSX4YhYEw2JqEFnmKNnb6I7IL
         KVRLWQtsLObUt4V83J1ZsciYp9L2KlphPjLvRMelou/HTU1HKno2yCHxWqBtyDNgaeVA
         pN10Wgh98CqaGoa2rmqzMqhD1obS8l+BrO4ptoP4TGn2IQ15EJaebEQiSYc7IckZr9+i
         nHHxqtALpxvrjWjg8vOELzJKQ0aoxo643wvjFm++CIxxSaqEGqoBIfYeME1ixVz6NfQH
         Bm8w==
X-Forwarded-Encrypted: i=1; AJvYcCXGBJt0RfD52PuIZyWuns8J2ooFnhQpEV767Sc4h7ti46Uix2hV5emDxKYZ7gZETCvGvhT6FwQOtnHG3E+D@lists.linaro.org
X-Gm-Message-State: AOJu0YwECSHEoJow3+jQNcPUzbSeCrg8FJl3R+QaVly0tfqOUblxdcxH
	/RtV8uQa8iTgE7Oilxr7epw4CiD61z1SIPtDBj8faLudZDbkTyq/8lvxt3W3/9cRbkYtES3NEr0
	a3t4XfSZZJv3QzuMJi/824n04B2sGYwgcUV8uda4l
X-Google-Smtp-Source: AGHT+IGiiwbrTmw9dljjWSN9d0gHwqaQUj+Fn0r4rGaVn1FGbJ9M6TMGDh8ZVVMliTp3gdeL94LIECqfDzeHqpj4reg=
X-Received: by 2002:a05:6102:3e8f:b0:49b:d1e7:5442 with SMTP id
 ada2fe7eead31-4a15dd44cd9mr6602413137.18.1727358790467; Thu, 26 Sep 2024
 06:53:10 -0700 (PDT)
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <dhxvyshwi4qmcmwceokhqey2ww4azjcs6qrpnkgivdj7tv5cke@r36srvvbof6q>
 <d8e0cb78-7cfb-42bf-b3a5-f765592e8dd4@ti.com> <mzur3odofwwrdqnystozjgf3qtvb73wqjm6g2vf5dfsqiehaxk@u67fcarhm6ge>
 <e967e382-6cca-4dee-8333-39892d532f71@gmail.com> <lk7a2xuqrctyywuanjwseh5lkcz3soatc2zf3kn3uwc43pdyic@edm3hcd2koas>
 <04caa788-19a6-4336-985c-4eb191c24438@amd.com> <2f9a4abe-b2fc-4bc7-9926-1da2d38f5080@linaro.org>
In-Reply-To: <2f9a4abe-b2fc-4bc7-9926-1da2d38f5080@linaro.org>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 26 Sep 2024 19:22:59 +0530
Message-ID: <CAFA6WYMd46quafJoGXjkCiPOKpYoDZdXwrNbG3QekyjB3_2FTA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	=?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 14D543F3D9
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.217.54:from];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_TO(0.00)[amd.com,linaro.org,gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[ti.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,kernel.org];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 3WCBINBMUILIFQMEU2FWKI5EX75OFPZR
X-Message-ID-Hash: 3WCBINBMUILIFQMEU2FWKI5EX75OFPZR
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jens Wiklander <jens.wiklander@linaro.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/4] Linaro restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3WCBINBMUILIFQMEU2FWKI5EX75OFPZR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

W1Jlc2VuZCBpbiBwbGFpbiB0ZXh0IGZvcm1hdCBhcyBteSBlYXJsaWVyIG1lc3NhZ2Ugd2FzIHJl
amVjdGVkIGJ5DQpzb21lIG1haWxpbmcgbGlzdHNdDQoNCk9uIFRodSwgMjYgU2VwdCAyMDI0IGF0
IDE5OjE3LCBTdW1pdCBHYXJnIDxzdW1pdC5nYXJnQGxpbmFyby5vcmc+IHdyb3RlOg0KPg0KPiBP
biA5LzI1LzI0IDE5OjMxLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPg0KPiBBbSAyNS4wOS4y
NCB1bSAxNDo1MSBzY2hyaWViIERtaXRyeSBCYXJ5c2hrb3Y6DQo+DQo+IE9uIFdlZCwgU2VwIDI1
LCAyMDI0IGF0IDEwOjUxOjE1QU0gR01ULCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPg0KPiBB
bSAyNS4wOS4yNCB1bSAwMTowNSBzY2hyaWViIERtaXRyeSBCYXJ5c2hrb3Y6DQo+DQo+IE9uIFR1
ZSwgU2VwIDI0LCAyMDI0IGF0IDAxOjEzOjE4UE0gR01ULCBBbmRyZXcgRGF2aXMgd3JvdGU6DQo+
DQo+IE9uIDkvMjMvMjQgMTozMyBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToNCj4NCj4gSGks
DQo+DQo+IE9uIEZyaSwgQXVnIDMwLCAyMDI0IGF0IDA5OjAzOjQ3QU0gR01ULCBKZW5zIFdpa2xh
bmRlciB3cm90ZToNCj4NCj4gSGksDQo+DQo+IFRoaXMgcGF0Y2ggc2V0IGlzIGJhc2VkIG9uIHRv
cCBvZiBZb25nIFd1J3MgcmVzdHJpY3RlZCBoZWFwIHBhdGNoIHNldCBbMV0uDQo+IEl0J3MgYWxz
byBhIGNvbnRpbnVhdGlvbiBvbiBPbGl2aWVyJ3MgQWRkIGRtYS1idWYgc2VjdXJlLWhlYXAgcGF0
Y2ggc2V0IFsyXS4NCj4NCj4gVGhlIExpbmFybyByZXN0cmljdGVkIGhlYXAgdXNlcyBnZW5hbGxv
YyBpbiB0aGUga2VybmVsIHRvIG1hbmFnZSB0aGUgaGVhcA0KPiBjYXJ2b3V0LiBUaGlzIGlzIGEg
ZGlmZmVyZW5jZSBmcm9tIHRoZSBNZWRpYXRlayByZXN0cmljdGVkIGhlYXAgd2hpY2gNCj4gcmVs
aWVzIG9uIHRoZSBzZWN1cmUgd29ybGQgdG8gbWFuYWdlIHRoZSBjYXJ2ZW91dC4NCj4NCj4gSSd2
ZSB0cmllZCB0byBhZHJlc3MgdGhlIGNvbW1lbnRzIG9uIFsyXSwgYnV0IFsxXSBpbnRyb2R1Y2Vz
IGNoYW5nZXMgc28gSSdtDQo+IGFmcmFpZCBJJ3ZlIGhhZCB0byBza2lwIHNvbWUgY29tbWVudHMu
DQo+DQo+IEkga25vdyBJIGhhdmUgcmFpc2VkIHRoZSBzYW1lIHF1ZXN0aW9uIGR1cmluZyBMUEMg
KGluIGNvbm5lY3Rpb24gdG8NCj4gUXVhbGNvbW0ncyBkbWEtaGVhcCBpbXBsZW1lbnRhdGlvbiku
IElzIHRoZXJlIGFueSByZWFzb24gd2h5IHdlIGFyZQ0KPiB1c2luZyBnZW5lcmljIGhlYXBzIGlu
c3RlYWQgb2YgYWxsb2NhdGluZyB0aGUgZG1hLWJ1ZnMgb24gdGhlIGRldmljZQ0KPiBzaWRlPw0K
Pg0KPiBJbiB5b3VyIGNhc2UgeW91IGFscmVhZHkgaGF2ZSBURUUgZGV2aWNlLCB5b3UgY2FuIHVz
ZSBpdCB0byBhbGxvY2F0ZSBhbmQNCj4gZXhwb3J0IGRtYS1idWZzLCB3aGljaCB0aGVuIGdldCBp
bXBvcnRlZCBieSB0aGUgVjRMIGFuZCBEUk0gZHJpdmVycy4NCj4NCj4gVGhpcyBnb2VzIHRvIHRo
ZSBoZWFydCBvZiB3aHkgd2UgaGF2ZSBkbWEtaGVhcHMgaW4gdGhlIGZpcnN0IHBsYWNlLg0KPiBX
ZSBkb24ndCB3YW50IHRvIGJ1cmRlbiB1c2Vyc3BhY2Ugd2l0aCBoYXZpbmcgdG8gZmlndXJlIG91
dCB0aGUgcmlnaHQNCj4gcGxhY2UgdG8gZ2V0IGEgZG1hLWJ1ZiBmb3IgYSBnaXZlbiB1c2UtY2Fz
ZSBvbiBhIGdpdmVuIGhhcmR3YXJlLg0KPiBUaGF0IHdvdWxkIGJlIHZlcnkgbm9uLXBvcnRhYmxl
LCBhbmQgZmFpbCBhdCB0aGUgY29yZSBwdXJwb3NlIG9mDQo+IGEga2VybmVsOiB0byBhYnN0cmFj
dCBoYXJkd2FyZSBzcGVjaWZpY3MgYXdheS4NCj4NCj4gVW5mb3J0dW5hdGVseSBhbGwgcHJvcG9z
YWxzIHRvIHVzZSBkbWEtYnVmIGhlYXBzIHdlcmUgbW92aW5nIGluIHRoZQ0KPiBkZXNjcmliZWQg
ZGlyZWN0aW9uOiBsZXQgYXBwIHNlbGVjdCAoc29tZWhvdykgZnJvbSBhIHBsYXRmb3JtLSBhbmQN
Cj4gdmVuZG9yLSBzcGVjaWZpYyBsaXN0IG9mIGRtYS1idWYgaGVhcHMuIEluIHRoZSBrZXJuZWwg
d2UgYXQgbGVhc3Qga25vdw0KPiB0aGUgcGxhdGZvcm0gb24gd2hpY2ggdGhlIHN5c3RlbSBpcyBy
dW5uaW5nLiBVc2Vyc3BhY2UgZ2VuZXJhbGx5IGRvZXNuJ3QNCj4gKGFuZCBzaG91bGRuJ3QpLiBB
cyBzdWNoLCBpdCBzZWVtcyBiZXR0ZXIgdG8gbWUgdG8ga2VlcCB0aGUga25vd2xlZGdlIGluDQo+
IHRoZSBrZXJuZWwgYW5kIGFsbG93IHVzZXJzcGFjZSBkbyBpdHMgam9iIGJ5IGNhbGxpbmcgaW50
byBleGlzdGluZw0KPiBkZXZpY2UgZHJpdmVycy4NCj4NCj4gVGhlIGlkZWEgb2YgbGV0dGluZyB0
aGUga2VybmVsIGZ1bGx5IGFic3RyYWN0IGF3YXkgdGhlIGNvbXBsZXhpdHkgb2YgaW50ZXINCj4g
ZGV2aWNlIGRhdGEgZXhjaGFuZ2UgaXMgYSBjb21wbGV0ZWx5IGZhaWxlZCBkZXNpZ24uIFRoZXJl
IGhhcyBiZWVuIHBsZW50eSBvZg0KPiBldmlkZW5jZSBmb3IgdGhhdCBvdmVyIHRoZSB5ZWFycy4N
Cj4NCj4gQmVjYXVzZSBvZiB0aGlzIGluIERNQS1idWYgaXQncyBhbiBpbnRlbnRpb25hbCBkZXNp
Z24gZGVjaXNpb24gdGhhdA0KPiB1c2Vyc3BhY2UgYW5kICpub3QqIHRoZSBrZXJuZWwgZGVjaWRl
cyB3aGVyZSBhbmQgd2hhdCB0byBhbGxvY2F0ZSBmcm9tLg0KPg0KPiBIbW0sIG9rLg0KPg0KPiBX
aGF0IHRoZSBrZXJuZWwgc2hvdWxkIHByb3ZpZGUgYXJlIHRoZSBuZWNlc3NhcnkgaW5mb3JtYXRp
b24gd2hhdCB0eXBlIG9mDQo+IG1lbW9yeSBhIGRldmljZSBjYW4gd29yayB3aXRoIGFuZCBpZiBj
ZXJ0YWluIG1lbW9yeSBpcyBhY2Nlc3NpYmxlIG9yIG5vdC4NCj4gVGhpcyBpcyB0aGUgcGFydCB3
aGljaCBpcyB1bmZvcnR1bmF0ZWx5IHN0aWxsIG5vdCB3ZWxsIGRlZmluZWQgbm9yDQo+IGltcGxl
bWVudGVkIGF0IHRoZSBtb21lbnQuDQo+DQo+IEFwYXJ0IGZyb20gdGhhdCB0aGVyZSBhcmUgYSB3
aG9sZSBidW5jaCBvZiBpbnRlbnRpb25hbCBkZXNpZ24gZGVjaXNpb24gd2hpY2gNCj4gc2hvdWxk
IHByZXZlbnQgZGV2ZWxvcGVycyB0byBtb3ZlIGFsbG9jYXRpb24gZGVjaXNpb24gaW5zaWRlIHRo
ZSBrZXJuZWwuIEZvcg0KPiBleGFtcGxlIERNQS1idWYgZG9lc24ndCBrbm93IHdoYXQgdGhlIGNv
bnRlbnQgb2YgdGhlIGJ1ZmZlciBpcyAoZXhjZXB0IGZvcg0KPiBpdCdzIHRvdGFsIHNpemUpIGFu
ZCB3aGljaCB1c2UgY2FzZXMgYSBidWZmZXIgd2lsbCBiZSB1c2VkIHdpdGguDQo+DQo+IFNvIHRo
ZSBxdWVzdGlvbiBpZiBtZW1vcnkgc2hvdWxkIGJlIGV4cG9zZWQgdGhyb3VnaCBETUEtaGVhcHMg
b3IgYSBkcml2ZXINCj4gc3BlY2lmaWMgYWxsb2NhdG9yIGlzIG5vdCBhIHF1ZXN0aW9uIG9mIGFi
c3RyYWN0aW9uLCBidXQgcmF0aGVyIG9uZSBvZiB0aGUNCj4gcGh5c2ljYWwgbG9jYXRpb24gYW5k
IGFjY2Vzc2liaWxpdHkgb2YgdGhlIG1lbW9yeS4NCj4NCj4gSWYgdGhlIG1lbW9yeSBpcyBhdHRh
Y2hlZCB0byBhbnkgcGh5c2ljYWwgZGV2aWNlLCBlLmcuIGxvY2FsIG1lbW9yeSBvbiBhDQo+IGRH
UFUsIEZQR0EgUENJZSBCQVIsIFJETUEsIGNhbWVyYSBpbnRlcm5hbCBtZW1vcnkgZXRjLCB0aGVu
IGV4cG9zZSB0aGUNCj4gbWVtb3J5IGFzIGRldmljZSBzcGVjaWZpYyBhbGxvY2F0b3IuDQo+DQo+
IFNvLCBmb3IgZW1iZWRkZWQgc3lzdGVtcyB3aXRoIHVuaWZpZWQgbWVtb3J5IGFsbCBidWZmZXJz
IChtYXliZSBleGNlcHQNCj4gUENJZSBCQVJzKSBzaG91bGQgY29tZSBmcm9tIERNQS1CVUYgaGVh
cHMsIGNvcnJlY3Q/DQo+DQo+DQo+IEZyb20gd2hhdCBJIGtub3cgdGhhdCBpcyBjb3JyZWN0LCB5
ZXMuIFF1ZXN0aW9uIGlzIHJlYWxseSBpZiB0aGF0IHdpbGwgc3RheSB0aGlzIHdheS4NCj4NCj4g
TmV1cmFsIGFjY2VsZXJhdG9ycyBsb29rIGEgbG90IHN0cmlwcGVkIGRvd24gRlBHQXMgdGhlc2Ug
ZGF5cyBhbmQgdGhlIGJlbmVmaXQgb2YgbG9jYWwgbWVtb3J5IGZvciBHUFVzIGlzIGtub3duIGZv
ciBkZWNhZGVzLg0KPg0KPiBDb3VsZCBiZSB0aGF0IGRlc2lnbnMgd2l0aCBsb2NhbCBzcGVjaWFs
aXplZCBtZW1vcnkgc2VlIGEgcmV2aXZhbCBhbnkgdGltZSwgd2hvIGtub3dzLg0KPg0KPiBJZiB0
aGUgbWVtb3J5IGlzIG5vdCBwaHlzaWNhbGx5IGF0dGFjaGVkIHRvIGFueSBkZXZpY2UsIGJ1dCBy
YXRoZXIganVzdA0KPiBtZW1vcnkgYXR0YWNoZWQgdG8gdGhlIENQVSBvciBhIHN5c3RlbSB3aWRl
IG1lbW9yeSBjb250cm9sbGVyIHRoZW4gZXhwb3NlDQo+IHRoZSBtZW1vcnkgYXMgRE1BLWhlYXAg
d2l0aCBzcGVjaWZpYyByZXF1aXJlbWVudHMgKGUuZy4gY2VydGFpbiBzaXplZCBwYWdlcywNCj4g
Y29udGlndW91cywgcmVzdHJpY3RlZCwgZW5jcnlwdGVkLCAuLi4pLg0KPg0KPiBJcyBlbmNyeXB0
ZWQgLyBwcm90ZWN0ZWQgYSBwYXJ0IG9mIHRoZSBhbGxvY2F0aW9uIGNvbnRyYWN0IG9yIHNob3Vs
ZCBpdA0KPiBiZSBlbmZvcmNlZCBzZXBhcmF0ZWx5IHZpYSBhIGNhbGwgdG8gVEVFIC8gU0NNIC8g
YW55dGhpbmcgZWxzZT8NCj4NCj4NCj4gV2VsbCB0aGF0IGlzIGEgcmVhbGx5IGdvb2QgcXVlc3Rp
b24gSSBjYW4ndCBmdWxseSBhbnN3ZXIgZWl0aGVyLiBGcm9tIHdoYXQgSSBrbm93IG5vdyBJIHdv
dWxkIHNheSBpdCBkZXBlbmRzIG9uIHRoZSBkZXNpZ24uDQo+DQoNCklNSE8sIEkgdGhpbmsgRG1p
dHJ5J3MgcHJvcG9zYWwgdG8gcmF0aGVyIGFsbG93IHRoZSBURUUgZGV2aWNlIHRvIGJlDQp0aGUg
YWxsb2NhdG9yIGFuZCBleHBvcnRlciBvZiBETUEtYnVmcyByZWxhdGVkIHRvIHJlc3RyaWN0ZWQg
bWVtb3J5DQptYWtlcyBzZW5zZSB0byBtZS4gU2luY2UgaXQncyByZWFsbHkgdGhlIFRFRSBpbXBs
ZW1lbnRhdGlvbiAoT1AtVEVFLA0KQU1ELVRFRSwgVFMtVEVFIG9yIGZ1dHVyZSBRVEVFKSB3aGlj
aCBzZXRzIHVwIHRoZSByZXN0cmljdGlvbnMgb24gYQ0KcGFydGljdWxhciBwaWVjZSBvZiBhbGxv
Y2F0ZWQgbWVtb3J5LiBBRkFJSywgdGhhdCBoYXBwZW5zIGFmdGVyIHRoZQ0KRE1BLWJ1ZiBnZXRz
IGFsbG9jYXRlZCBhbmQgdGhlbiB1c2VyLXNwYWNlIGNhbGxzIGludG8gVEVFIHRvIHNldCB1cA0K
d2hpY2ggbWVkaWEgcGlwZWxpbmUgaXMgZ29pbmcgdG8gYWNjZXNzIHRoYXQgcGFydGljdWxhciBE
TUEtYnVmLiBJdA0KY2FuIGFsc28gYmUgYSBzdGF0aWMgY29udHJhY3QgZGVwZW5kaW5nIG9uIGEg
cGFydGljdWxhciBwbGF0Zm9ybQ0KZGVzaWduLg0KDQpBcyBKZW5zIG5vdGVkIGluIHRoZSBvdGhl
ciB0aHJlYWQsIHdlIGFscmVhZHkgbWFuYWdlIHNoYXJlZCBtZW1vcnkNCmFsbG9jYXRpb25zIChm
cm9tIGEgc3RhdGljIGNhcnZlLW91dCBvciBkeW5hbWljYWxseSBtYXBwZWQpIGZvcg0KY29tbXVu
aWNhdGlvbnMgYW1vbmcgTGludXggYW5kIFRFRSB0aGF0IHdlcmUgYmFzZWQgb24gRE1BLWJ1ZnMg
ZWFybGllcg0KYnV0IHNpbmNlIHdlIGRpZG4ndCByZXF1aXJlZCB0aGVtIHRvIGJlIHNoYXJlZCB3
aXRoIG90aGVyIGRldmljZXMsIHNvDQp3ZSByYXRoZXIgc3dpdGNoZWQgdG8gYW5vbnltb3VzIG1l
bW9yeS4NCg0KRnJvbSB1c2VyLXNwYWNlIHBlcnNwZWN0aXZlLCBpdCdzIGNsZWFuZXIgdG8gdXNl
IFRFRSBkZXZpY2UgSU9DVExzIGZvcg0KRE1BLWJ1ZiBhbGxvY2F0aW9ucyBzaW5jZSBpdCBhbHJl
YWR5IGtub3dzIHdoaWNoIHVuZGVybHlpbmcgVEVFDQppbXBsZW1lbnRhdGlvbiBpdCdzIGNvbW11
bmljYXRpbmcgd2l0aCByYXRoZXIgdGhhbiBmaXJzdCBmaWd1cmluZyBvdXQNCndoaWNoIERNQSBo
ZWFwIHRvIHVzZSBmb3IgYWxsb2NhdGlvbiBhbmQgdGhlbiBjb21tdW5pY2F0aW5nIHdpdGggVEVF
DQppbXBsZW1lbnRhdGlvbi4NCg0KLVN1bWl0DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
