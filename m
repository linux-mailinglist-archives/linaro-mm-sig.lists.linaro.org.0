Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DB36D9C51
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Apr 2023 17:29:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A68A43F952
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Apr 2023 15:29:23 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by lists.linaro.org (Postfix) with ESMTPS id 99D983E91F
	for <linaro-mm-sig@lists.linaro.org>; Thu,  6 Apr 2023 15:29:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=cCsSTN64;
	spf=pass (lists.linaro.org: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.128.174 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-54bfce685c1so77314577b3.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 06 Apr 2023 08:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680794951; x=1683386951;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kxFTeqIM+fDaf2S47yMcsdQqpuIYfa7qMZjwycfNH5g=;
        b=cCsSTN64qhk+zz1XDwfKJYV5Vla3s40LS2pOkGuKFZ91uihaisxJE0zTX68pnyUQe5
         pFa7kJFc4ApdHws+9K+6In7cgWiJGiFdp1KJqLmyIBiA/OLe5zcnhxO/j1U+lFVcoTOQ
         0cSKwMteRXgF3ghvwQ3pLf4Wn0TMIjlTpD/TsS7XOwVJvo0W36tHdkZLJb0wxbDmfasV
         Q5NkfQdPvGtde1ML/KBz4rwxbkEXVpukSoFKQQZ/61kvdyWQH4sXXhCWhgdfkKyBb8x5
         YOkZMySoy2ITBBrlSnC3gPZ7XOTqJGSPpQoZq2xnfA4hJA6/Pu2rFVZr6OQ0X2eueuBT
         6Fxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680794951; x=1683386951;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kxFTeqIM+fDaf2S47yMcsdQqpuIYfa7qMZjwycfNH5g=;
        b=i9qtLV0ljSdWYs9u5/LvxqXU4VhBSJAS1LjTXmlCHUztKCEz2mZfaEhFYcmC4Kq8jn
         cVEbah8UFIycvYnJkNpWgIf0UWUawLoPs/na+ZWm2LuiJhpUutgSeXpslzGP0sZKamdl
         vCN5f3/EnvXyePQwxXi7Qtqua8SR535yUNs8Zu9kss8+FQTgLoGcpvVUi8/CKqyhtnc7
         eFPMeP51wN2PKJ2m6kJWgh7lyMBXcsjm9Zoh0oGXR4kaiNQ0O5V6xnhPooL2JA7Oxren
         y+/clAfE1gWyhywRlFtnpYsEZbNJ6fTOo34wtzUMXdiHvIVOk5wIeVXlQdyY9uLDJG6/
         arWA==
X-Gm-Message-State: AAQBX9ckZ6yhD4mUe7vv0KMgcQBFaZmdgxxcSU6MhIdqy838CQCNa8f5
	ke/TmGRECa+TDeff32i6ZOpzPFl4f3kjGqI142o=
X-Google-Smtp-Source: AKy350ZGlnMhrTcj8ggWVDpiiZttcTbM5yc9/n5YlIKY4xLA0FyE8Dzs9supQ62ZYl3Hb+BY3i+mXwNTY/putakI4Us=
X-Received: by 2002:a81:c509:0:b0:52e:e095:d840 with SMTP id
 k9-20020a81c509000000b0052ee095d840mr6288437ywi.0.1680794951046; Thu, 06 Apr
 2023 08:29:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-7-917ff5bc80a8@asahilina.net> <ZC7T92F7K9XTZPZ1@phenom.ffwll.local>
In-Reply-To: <ZC7T92F7K9XTZPZ1@phenom.ffwll.local>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 6 Apr 2023 17:28:59 +0200
Message-ID: <CANiq72=E2k7+_cwYw_EjVezk0mWCRqbH4MUjsEmxWgJMh=3AEQ@mail.gmail.com>
To: Asahi Lina <lina@asahilina.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>,
	Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>,
	Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org,
	asahi@lists.linux.dev
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 99D983E91F
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[29];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.174:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	FREEMAIL_TO(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: BJDBXOEYNFWITWDEFI5CV5CLLCQD3K7E
X-Message-ID-Hash: BJDBXOEYNFWITWDEFI5CV5CLLCQD3K7E
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 07/18] rust: drm: mm: Add DRM MM Range Allocator abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BJDBXOEYNFWITWDEFI5CV5CLLCQD3K7E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBcHIgNiwgMjAyMyBhdCA0OjE14oCvUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPiB3cm90ZToNCj4NCj4gRG9jdW1lbnRhdGlvbjoNCj4NCj4gSW4gZHJtIHdlIHRyeSB0
byBkb2N1bWVudCBhbGwgdGhlIGludGVyZmFjZXMgdGhhdCBkcml2ZXJzIHVzZSB3aXRoIGZvcm1h
bA0KPiBkb2NzLiBZZXMgdGhlcmUncyBzb21lIGFyZWFzIHRoYXQgYXJlIG5vdCBncmVhdCBmb3Ig
aGlzdG9yaWNhbCByZWFzb25zLA0KPiBidXQgZm9yIG5ldyBzdHVmZiBhbmQgbmV3IHdyYXBwZXJz
IHdlJ3JlIHJlYWxseSB0cnlpbmc6DQo+DQo+IC0gVGhpcyBoZWxwcyBpbiB0ZWxsaW5nIGludGVy
bmFsIChldmVuIGFjcm9zcyAuYyBmaWxlcyBvciBpbiBydXN0IGFjcm9zcw0KPiAgIG1vZHVsZXMg
d2l0aGluIGEgY3JhdGUpIGZyb20gc3R1ZmYgZHJpdmVycyBhY2Nlc3MuIFN1cmUgeW91IGhhdmUg
c3RhdGljDQo+ICAgaW4gQyBvciBwdWIgaW4gcnVzdCwgYnV0IHRoYXQgZG9lc24ndCB0ZWxsIHlv
dSB3aGV0aGVyIGl0J3MgcHVibGljIGFsbA0KPiAgIHRoZSB3YXkgdG8gZHJpdmVycy4NCg0KSSB0
aGluayB5b3UgbWF5IGJlIHRhbGtpbmcgYWJvdXQgdGhlIHZhbHVlIGhpZ2gtbGV2ZWwgZG9jcyBo
ZXJlLCBidXQNCmp1c3QgaW4gY2FzZSwgdmlzaWJpbGl0eSBpbiBSdXN0IGlzIGZsZXhpYmxlIGVu
b3VnaCB0byBleHBvc2UgKG9yIG5vdCkNCkFQSXMgdG8gdGhvc2UgdGhhdCB5b3UgbmVlZC4gSW4g
b3RoZXIgd29yZHMsIGl0IGRvZXMgdGVsbCB5b3UgKGFuZA0KZW5mb3JjZXMhKSB3aGV0aGVyIGl0
IGlzIHB1YmxpYyBhbGwgdGhlIHdheSB0byBkcml2ZXJzLg0KDQpUaGVyZSBpcyBhbHNvIHRoZSBw
b3NzaWJpbGl0eSBvZiBldmVuIG1vcmUgZmFuY3kgdmlzaWJpbGl0eSwgYnV0IHNvDQpmYXIgd2Ug
anVzdCBuZWVkZWQgYHB1YihjcmF0ZSlgLg0KDQpgcnVzdGRvY2AgYWxzbyBzaG93cy9oaWRlcyB0
aGluZ3MgYXMgbmVlZGVkLCB0aHVzIHRoZSBnZW5lcmF0ZWQgZG9jcw0KZm9yIHRoZSBjcmF0ZSBz
aG91bGQgb25seSBzaG93IHdoYXQgaXMgdXNhYmxlIGJ5IG90aGVycy4NCg0KVGhlbiB0aGVyZSBp
cyB0aGUgYGtlcm5lbGAgY3JhdGUgc3BsaXQsIHRvby4NCg0KPiAtIGlkZWFsbHkgZG9jcyBoYXZl
IGEgc2hvcnQgaW50cm8gc2VjdGlvbiB0aGF0IGV4cGxhaW5zIHRoZSBtYWluIGNvbmNlcHRzDQo+
ICAgYW5kIGxpbmtzIHRvIHRoZSBtYWluIGRhdGEgc3RydWN0dXJlcyBhbmQgZnVuY3Rpb25zLiBK
dXN0IHRvIGdpdmUNCj4gICByZWFkZXJzIGEgZ29vZCBzdGFydGluZyBwb2ludCB0byBleHBsb3Jl
Lg0KDQpBZ3JlZWQsIHRoaXMgaXMgdHlwaWNhbGx5IGRvbmUgaW4gUnVzdCBpbiB0aGUgdG9wLWxl
dmVsIGRvYyBjb21tZW50cw0KKG1vZHVsZSBvciBjcmF0ZSkuIEZvciB0aGUgUnVzdCBzaWRlIG9m
IHRoZSBrZXJuZWwsIHdlIGFyZSBkZWZpbml0ZWx5DQp0cnlpbmcgdG8gZW1waGFzaXplIHRoZSBx
dWFsaXR5IG9mIHRoZSBkb2NzLCBpbmNsdWRpbmcgY29tcGlsZS0gYW5kDQpydW50aW1lLXRlc3Rl
ZCBleGFtcGxlcy4NCg0KUmVnYXJkaW5nIGxpbmtpbmcsIGBydXN0ZG9jYCBhbHJlYWR5IGdlbmVy
YXRlcyBhIGxpc3Rpbmcgd2l0aCB0aGUNCmNvbnRlbnRzIG9mIGVhY2ggY3JhdGUvbW9kdWxlIGV2
ZW4gaWYgdGhlcmUgaXMgbm8gb3RoZXIgZG9jcy4gU28gYXMNCmxvbmcgYXMgdGhlIHNob3J0IGRl
c2NyaXB0aW9ucyBvZiB0aGUgaXRlbXMgYXJlIGdvb2QsIGl0IG1heSBiZSBmYWlybHkNCnJlYWRh
YmxlIGFscmVhZHksIGUuZy4gc2VlDQpodHRwczovL3J1c3QtZm9yLWxpbnV4LmdpdGh1Yi5pby9k
b2NzL3J1c3Qva2VybmVsL3N5bmMvaW5kZXguaHRtbCBmb3INCmFuIGV4YW1wbGUgaW4gb3VyIG9s
ZCBgcnVzdGAgYnJhbmNoLiBCdXQsIG9mIGNvdXJzZSwgeW91IGNhbiBhZGQgZXh0cmENCmRvY3Mg
YXQgdGhhdCBsZXZlbCB0b28gd2hlbiB0aGVyZSBhcmUgbWFueSB0aGluZ3Mgb3IgaXMgdW5jbGVh
ciB3aGF0DQpzaG91bGQgYmUgdXNlZC4NCg0KQWxzbyBub3RlIHRoYXQsIHNvbWV0aW1lcywgdGhl
IGRvY3Mgd2Ugd3JpdGUgYXJlIGluIHRoZSB0eXBlLCByYXRoZXINCnRoYW4gdGhlIG1vZHVsZSwg
ZS5nLiBzZWUgdGhlIG5pY2UgZXhhbXBsZXMgV2Vkc29uIHdyb3RlIGZvciBgUkJUcmVlYDoNCmh0
dHBzOi8vcnVzdC1mb3ItbGludXguZ2l0aHViLmlvL2RvY3MvcnVzdC9rZXJuZWwvcmJ0cmVlL3N0
cnVjdC5SQlRyZWUuaHRtbC4NCg0KPiAtIExpbmtpbmcgYWxsIHRoZSB0aGluZ3MsIHNvIHRoYXQg
cmVhZGVycyBjYW4gY29ubmVjdCB0aGUgZGlmZmVyZW50IHBhcnRzLg0KPiAgIFRoaXMgaXMgcmVh
bGx5IGltcG9ydGFudCBpbiBDIHdoZXJlIGUuZy4gZ2V0L3B1dCgpIG9yIGFueSBzdWNoIGZ1bmN0
aW9uDQo+ICAgcGFpcnMgYWxsIG5lZWRlZCB0byBiZSBsaW5rZWQgdG9nZXRoZXIuIFdpdGggcnVz
dCBJJ20gaG9waW5nIHRoYXQNCj4gICBydXN0ZG9jIGxpYmVyYWxseSBzcHJpbmtsZXMgbGlua3Mg
YWxyZWFkeSBhbmQgd2UgZG9uJ3QgaGF2ZSB0byBkbyB0aGlzDQo+ICAgYXMgbXVjaC4NCg0KSWYg
eW91IG1lYW4gd2l0aGluIGRvYyBjb21tZW50cywgaXQgZG9lcyEgOikgSXQgaXMgY2FsbGVkICJp
bnRyYS1kb2MNCmxpbmtzIi4gQmFzaWNhbGx5LCB5b3UganVzdCB3cml0ZSBzb21ldGhpbmcgaW4t
YmV0d2VlbiBzcXVhcmUNCmJyYWNrZXRzLCBhbmQgaXQgaXMgYWJsZSB0byBjcmVhdGUgdGhlIGxp
bmsgdG8gdGhlIHJpZ2h0IHRoaW5nIChpbg0KbW9zdCBjYXNlcywgb3RoZXJ3aXNlIHlvdSBjYW4g
aGVscCBpdCBtb3JlKSwgZS5nLg0KDQogICAgLy8vIFJldHVybnMgYSBuZXcgW2BGb29gXS4NCg0K
QW5kLCBvZiBjb3Vyc2UsIGZvciB0aGUgcmVzdCBvZiB0aGluZ3MgdGhhdCBhcmVuJ3QgaW5zaWRl
IGNvbW1lbnRzLCBpdA0KYXV0b21hdGljYWxseSBwcm92aWRlcyBsaW5rcyBldGMuDQoNClRoZXJl
IGhhcyBiZWVuIHdvcmsgb24gYHJ1c3Rkb2NgIG9uIGdldHRpbmcgIkp1bXAgdG8gRGVmaW5pdGlv
biIgYW5kDQpzaW1pbGFyIGZlYXR1cmVzIHRvIHdvcmsgb24gdGhlIHNvdXJjZSB2aWV3LCB0b28u
DQoNCj4gLSBTaG9ydCBleHBsYWluZXJzIGZvciBwYXJhbWV0ZXJzLiBGb3IgcnVzdCB0aGlzIGFs
c28gbWVhbnMgdHlwZQ0KPiAgIHBhcmFtZXRlcnMsIGZvciB0aG9zZSBldmVuIHNpbXBsaWZpZWQg
ZXhhbXBsZXMgb2YgaG93IGRyaXZlcnMgYXJlDQo+ICAgc3VwcG9zZWQgdG8gdXNlIHRoZW0gd291
bGQgaGVscCBhIGxvdCBpbiByZWFkaW5nIGRvY3MgJiB1bmRlcnN0YW5kaW5nDQo+ICAgY29uY2Vw
dHMuDQoNCkZvciBwYXJhbWV0ZXJzLCB3ZSBhcmUgbm90IGZvcmNpbmcgdG8gd3JpdGUgZXhwbGFu
YXRpb25zIGZvciBldmVyeQ0KcGFyYW1ldGVyIChhcyBpbiBwcm92aWRpbmcgYSBsaXN0KSwgYnV0
IHJhdGhlciB3cml0aW5nIHdoYXQgaXMNCmFjdHVhbGx5IHVzZWZ1bCB0byBrbm93IChyZWZlcnJp
bmcgdG8gdGhlIHBhcmFtZXRlcnMgYXMgbmVlZGVkKS4gU28gaXQNCmRlcGVuZHMgb24gYSBjYXNl
LWJ5LWNhc2UuDQoNCkluIGFueSBjYXNlLCBpbiBnZW5lcmFsIGlzIGNsZWFyZXIgd2hhdCBwYXJh
bWV0ZXJzIGFyZSBjb21wYXJlZCB0byBDLA0KZHVlIHRvIHRoZSBzdHJvbmdlciB0eXBpbmcuIE9m
IGNvdXJzZSwgaWYgb25lIHVzZXMgaW50ZWdlcnMNCmV2ZXJ5d2hlcmUsIGl0IGlzIGFzIGNvbmZ1
c2luZyBhcyBDLiBCdXQgaWYgb25lIGhhcyBhIHR5cGUsIGl0IGlzDQplYXNpZXIgdG8gdGVsbCwg
cGx1cyBvbmUgbWF5IGp1bXAgd2l0aCBhIGNsaWNrIGludG8gdGhlIGV4cGxhbmF0aW9uIG9mDQp0
aGF0IHR5cGUgZXRjLg0KDQpSZWdhcmRpbmcgZXhhbXBsZXMsIDEwMCUgYWdyZWVkLiBBbmQgbm90
IG9ubHkgdGhhdCwgdGhlIGV4YW1wbGVzIGFyZQ0KZW5mb3JjZWQgdG8gYmUga2VwdCB1cCB0byBk
YXRlIGJ5IGNvbXBpbGluZyBhbmQgcnVubmluZyB0aGVtIHZpYSBLVW5pdA0KKG5vdCB5ZXQgc3Vi
bWl0dGVkIGZvciBtYWlubGluZSwgYnV0IHdlIGhhdmUgYmVlbiBlbmZvcmNpbmcgaXQgZm9yIG91
cg0Kb2xkIGBydXN0YCBicmFuY2ggZm9yIGEgbG9uZyB0aW1lKS4NCg0KPiAtIElkZWFsbHkgbGlu
a3MgZnJvbSB0aGUgcnVzdCB0byB0aGUgc3BoaW54IHNpZGUgdG8gbGlua2UgcmVsZXZhbnQNCj4g
ICBjaGFwdGVycyB0b2dldGhlci4gT2Z0ZW4gdGhlIGJpZ2dlciBleHBsYW5hdGlvbnMgYXJlIGlu
IC5yc3QgZmlsZXMgd2l0aA0KPiAgIERPVCBncmFwaHMgKGttcyBoYXMgYSBidW5jaCBJJ3ZlIGFk
ZGVkKSBvciBzaW1pbGFyLCBhbmQgaXQgZG9lc24ndCBtYWtlDQo+ICAgdGhhdCBtdWNoIHNlbnNl
IHRvIGR1cGxpY2F0ZSBhbGwgdGhhdCBvbiB0aGUgcnVzdCBzaWRlIEkgZ3Vlc3MuIEJ1dCBpdA0K
PiAgIG5lZWRzIHRvIGJlIGRpc2NvdmVyYWJsZS4NCg0KRGVmaW5pdGVseS4gT25lIG5leHQgc3Rl
cCBpcyBoYXZpbmcgZWFzeS10by13cml0ZSBsaW5rcyB0byB0aGUgclNUDQpkb2NzLiBGb3IgdGhp
cywgYSBjb3VwbGUgeWVhcnMgYWdvIEkgdGFsa2VkIHdpdGggdGhlIGBydXN0ZG9jYA0KbWFpbnRh
aW5lcnMgYWJvdXQgaGF2aW5nIGEgIkV4dGVybmFsIHJlZmVyZW5jZXMgbWFwIGZpbGUiIGZlYXR1
cmUsIHNvDQp0aGF0IHdlIGNhbiBsaW5rIHJTVCBkb2N1bWVudHMgZnJvbSB0aGUgUnVzdCBkb2Nz
LCBpbmNsdWRpbmcgZ2VuZXJhdGVkDQpDIGRvY3MgdG9vLiBGb3IgaW5zdGFuY2UsIGlkZWFsbHkg
d2Ugd291bGQgYmUgYWJsZSB0byB1c2UgdGhlIHNxdWFyZQ0KYnJhY2tldHMgYXJvdW5kIGEgQyB0
eXBlIGFuZCBoYXZlIGl0IHdvcms6DQoNCiAgICAvLy8gRXhwb3NlcyB0aGUga2VybmVs4oCZcyBb
YHN0cnVjdCB3YWl0X3F1ZXVlX2hlYWRgXSBhcyBhIGNvbmRpdGlvbiB2YXJpYWJsZS4NCg0KUmVn
YXJkaW5nIHRoZSBiaWdnZXIgZXhwbGFuYXRpb25zOiB3ZSBhcmUgdHJ5aW5nIHRvIGtlZXAgbW9z
dCBvZiB0aGUNCmRvY3MgY2xvc2UgdG8gdGhlIFJ1c3QgY29kZSB3aGVyZSBpdCBtYWtlcyBzZW5z
ZSwgYXMNCm1vZHVsZS1sZXZlbC9jcmF0ZS1sZXZlbCBkb2NzLCByYXRoZXIgdGhhbiBhcyByU1Qg
ZG9jcy4gVGhpcyBoYXMNCnNldmVyYWwgYmVuZWZpdHMsIGxpa2Uga2VlcGluZyB0aGVtIGNsb3Nl
ciB0byB0aGUgY29kZSwgdGhlIGxpbmtpbmcNCmZlYXR1cmVzLCBoYXZpbmcgdGhlbSBvcmdhbml6
ZWQgZXF1YWxseSBhcyB0aGUgY29kZSwgbm8gbmVlZCB0byBrbm93DQp3aGV0aGVyIHRoZXJlIGlz
IGEgZG9jIHNvbWV3aGVyZSBvciBub3QgKGUuZy4gaWYgaXQgaXMsIGl0IGlzIG5lYXIgdGhlDQpj
b2RlKSwgZXhhbXBsZXMgYXJlIGNvbXBpbGVkLCBldGMuDQoNCk9mIGNvdXJzZSwgc29tZXRpbWVz
IGxvbmdlci1mb3JtIGRvY3MgYW5kIG90aGVyIGRvY3VtZW50cyBtYXkgbm90IG1ha2UNCnNlbnNl
IGFzIHBhcnQgb2YgYW55IGNvZGUgaW4gcGFydGljdWxhciwgb3IgbWF5IGJlIHNoYXJlZCBhY3Jv
c3MgQyBhbmQNClJ1c3QsIGV0Yy4sIGFuZCB0aGVyZSBpdCBtYXkgbW9yZSBzZW5zZSB0byB1c2Ug
YERvY3VtZW50YXRpb24vYCBmaWxlcw0KaW5zdGVhZC4NCg0KQnV0LCBpbiBnZW5lcmFsLCB0aGUg
aWRlYSBpcyB0aGF0LCBjb21wYXJlZCB0byBDLCBtb3N0IG9mIHRoZSBkb2NzIGdvDQppbnRvIHRo
ZSBjb2RlLiBUbyBnaXZlIGFuIGlkZWEgb2YgdGhlIGRpZmZlcmVuY2U6IHNvIGZhciwgaW4gb3Vy
IG9sZA0KYHJ1c3RgIGJyYW5jaCwgd2Ugb25seSBuZWVkZWQgYSBmZXcgZG9jdW1lbnRzIGluIGBE
b2N1bWVudGF0aW9uL2ANCihlLmcuIHRoZSBRdWljayBTdGFydCBndWlkZSBldGMuKSwgYW5kIGV2
ZXJ5dGhpbmcgZWxzZSB3ZW50IGludG8gdGhlDQpjb2RlIGl0c2VsZi4NCg0KQ2hlZXJzLA0KTWln
dWVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
