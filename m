Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F24A6D9C9A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Apr 2023 17:45:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DA293F332
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Apr 2023 15:45:51 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 9515E3F09B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  6 Apr 2023 15:45:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=UwgzXrcR;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.47) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-930bc91df7bso133761366b.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 06 Apr 2023 08:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680795937;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o4s/AMWTHPQ0Z3regicJnZ+4belPQ4UloMO8BfOKLAI=;
        b=UwgzXrcRFsm3HAZ3tj9A9ayYh9opklvikGWNzA8Zs+rKhFCMFyPJ3nM9Qe0o/WrOnt
         QGdzJUijU5vlI/c0ZV/2+Pr0ECTnQcPIwR+GS0O90gg/zsWfdQg1FJEg/Wu1PTcSUNMK
         WssImuOUr7pyYoGsDK49IQmNh66lQt8/KxJ7s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680795937;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o4s/AMWTHPQ0Z3regicJnZ+4belPQ4UloMO8BfOKLAI=;
        b=Yr7nGw5ylch9UTihIv1QTiQ8zIp8UQuv9fiTNB2hlJmENkrPmdiOfiCUe1Al507g55
         xXH8cmXUPK8j1nSRVFyBGYgQRAHLb8FSiybIYPyNBlGhygQdeawoWtJOoZEl7jO5IxAl
         8o0iCisnzdtpBf8S7VZ9FdGrq6gRDjkS6gPNA7yupZkVohHtU2h51DicNw703CDy0Cme
         UB9Iu2uYSnS8kI8+GDFHudFfUoiTg6nfZurGCFpqDCt4YWmSxIhPe76Q9fRflYL+KA8J
         wdNVf/JV7lLcBXtgaqm7+sjVsZEsJAob9xEISOiYk/rQ4bCL4QQwk6QSDv+L8T+rS8l6
         jOUg==
X-Gm-Message-State: AAQBX9dVN9TYoS8t8ecWKuJiE4AishuBeFjWiG0xRXgUwERBrt/MbthW
	66dRvZcgaVbSZerPGKVKAagdYg==
X-Google-Smtp-Source: AKy350YwqwW1z5k7uN136V0I41uI+PtWwRyr9V7ixGL/0ewgSzzeYzSvJkplfR8X5tYH4vq2nignvA==
X-Received: by 2002:a17:906:2cd:b0:92f:27c2:13c0 with SMTP id 13-20020a17090602cd00b0092f27c213c0mr5772280ejk.6.1680795937501;
        Thu, 06 Apr 2023 08:45:37 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id cw10-20020a170906478a00b009486efb9192sm990297ejc.11.2023.04.06.08.45.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 08:45:36 -0700 (PDT)
Date: Thu, 6 Apr 2023 17:45:34 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Message-ID: <ZC7pHlLFutMWJF1s@phenom.ffwll.local>
Mail-Followup-To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Asahi Lina <lina@asahilina.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Wedson Almeida Filho <wedsonaf@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Luben Tuikov <luben.tuikov@amd.com>,
	Jarkko Sakkinen <jarkko@kernel.org>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Karol Herbst <kherbst@redhat.com>,
	Ella Stanforth <ella@iglunix.org>,
	Faith Ekstrand <faith.ekstrand@collabora.com>,
	Mary <mary@mary.zone>, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	linux-sgx@vger.kernel.org, asahi@lists.linux.dev
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-7-917ff5bc80a8@asahilina.net>
 <ZC7T92F7K9XTZPZ1@phenom.ffwll.local>
 <CANiq72=E2k7+_cwYw_EjVezk0mWCRqbH4MUjsEmxWgJMh=3AEQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANiq72=E2k7+_cwYw_EjVezk0mWCRqbH4MUjsEmxWgJMh=3AEQ@mail.gmail.com>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9515E3F09B
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: 4SSULLPY52LNVI2BOIPDZURW747QSPFS
X-Message-ID-Hash: 4SSULLPY52LNVI2BOIPDZURW747QSPFS
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Asahi Lina <lina@asahilina.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asah
 i@lists.linux.dev, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 07/18] rust: drm: mm: Add DRM MM Range Allocator abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4SSULLPY52LNVI2BOIPDZURW747QSPFS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBcHIgMDYsIDIwMjMgYXQgMDU6Mjg6NTlQTSArMDIwMCwgTWlndWVsIE9qZWRhIHdy
b3RlOg0KPiBPbiBUaHUsIEFwciA2LCAyMDIzIGF0IDQ6MTXigK9QTSBEYW5pZWwgVmV0dGVyIDxk
YW5pZWxAZmZ3bGwuY2g+IHdyb3RlOg0KPiA+DQo+ID4gRG9jdW1lbnRhdGlvbjoNCj4gPg0KPiA+
IEluIGRybSB3ZSB0cnkgdG8gZG9jdW1lbnQgYWxsIHRoZSBpbnRlcmZhY2VzIHRoYXQgZHJpdmVy
cyB1c2Ugd2l0aCBmb3JtYWwNCj4gPiBkb2NzLiBZZXMgdGhlcmUncyBzb21lIGFyZWFzIHRoYXQg
YXJlIG5vdCBncmVhdCBmb3IgaGlzdG9yaWNhbCByZWFzb25zLA0KPiA+IGJ1dCBmb3IgbmV3IHN0
dWZmIGFuZCBuZXcgd3JhcHBlcnMgd2UncmUgcmVhbGx5IHRyeWluZzoNCj4gPg0KPiA+IC0gVGhp
cyBoZWxwcyBpbiB0ZWxsaW5nIGludGVybmFsIChldmVuIGFjcm9zcyAuYyBmaWxlcyBvciBpbiBy
dXN0IGFjcm9zcw0KPiA+ICAgbW9kdWxlcyB3aXRoaW4gYSBjcmF0ZSkgZnJvbSBzdHVmZiBkcml2
ZXJzIGFjY2Vzcy4gU3VyZSB5b3UgaGF2ZSBzdGF0aWMNCj4gPiAgIGluIEMgb3IgcHViIGluIHJ1
c3QsIGJ1dCB0aGF0IGRvZXNuJ3QgdGVsbCB5b3Ugd2hldGhlciBpdCdzIHB1YmxpYyBhbGwNCj4g
PiAgIHRoZSB3YXkgdG8gZHJpdmVycy4NCj4gDQo+IEkgdGhpbmsgeW91IG1heSBiZSB0YWxraW5n
IGFib3V0IHRoZSB2YWx1ZSBoaWdoLWxldmVsIGRvY3MgaGVyZSwgYnV0DQo+IGp1c3QgaW4gY2Fz
ZSwgdmlzaWJpbGl0eSBpbiBSdXN0IGlzIGZsZXhpYmxlIGVub3VnaCB0byBleHBvc2UgKG9yIG5v
dCkNCj4gQVBJcyB0byB0aG9zZSB0aGF0IHlvdSBuZWVkLiBJbiBvdGhlciB3b3JkcywgaXQgZG9l
cyB0ZWxsIHlvdSAoYW5kDQo+IGVuZm9yY2VzISkgd2hldGhlciBpdCBpcyBwdWJsaWMgYWxsIHRo
ZSB3YXkgdG8gZHJpdmVycy4NCj4gDQo+IFRoZXJlIGlzIGFsc28gdGhlIHBvc3NpYmlsaXR5IG9m
IGV2ZW4gbW9yZSBmYW5jeSB2aXNpYmlsaXR5LCBidXQgc28NCj4gZmFyIHdlIGp1c3QgbmVlZGVk
IGBwdWIoY3JhdGUpYC4NCj4gDQo+IGBydXN0ZG9jYCBhbHNvIHNob3dzL2hpZGVzIHRoaW5ncyBh
cyBuZWVkZWQsIHRodXMgdGhlIGdlbmVyYXRlZCBkb2NzDQo+IGZvciB0aGUgY3JhdGUgc2hvdWxk
IG9ubHkgc2hvdyB3aGF0IGlzIHVzYWJsZSBieSBvdGhlcnMuDQo+IA0KPiBUaGVuIHRoZXJlIGlz
IHRoZSBga2VybmVsYCBjcmF0ZSBzcGxpdCwgdG9vLg0KPiANCj4gPiAtIGlkZWFsbHkgZG9jcyBo
YXZlIGEgc2hvcnQgaW50cm8gc2VjdGlvbiB0aGF0IGV4cGxhaW5zIHRoZSBtYWluIGNvbmNlcHRz
DQo+ID4gICBhbmQgbGlua3MgdG8gdGhlIG1haW4gZGF0YSBzdHJ1Y3R1cmVzIGFuZCBmdW5jdGlv
bnMuIEp1c3QgdG8gZ2l2ZQ0KPiA+ICAgcmVhZGVycyBhIGdvb2Qgc3RhcnRpbmcgcG9pbnQgdG8g
ZXhwbG9yZS4NCj4gDQo+IEFncmVlZCwgdGhpcyBpcyB0eXBpY2FsbHkgZG9uZSBpbiBSdXN0IGlu
IHRoZSB0b3AtbGV2ZWwgZG9jIGNvbW1lbnRzDQo+IChtb2R1bGUgb3IgY3JhdGUpLiBGb3IgdGhl
IFJ1c3Qgc2lkZSBvZiB0aGUga2VybmVsLCB3ZSBhcmUgZGVmaW5pdGVseQ0KPiB0cnlpbmcgdG8g
ZW1waGFzaXplIHRoZSBxdWFsaXR5IG9mIHRoZSBkb2NzLCBpbmNsdWRpbmcgY29tcGlsZS0gYW5k
DQo+IHJ1bnRpbWUtdGVzdGVkIGV4YW1wbGVzLg0KPiANCj4gUmVnYXJkaW5nIGxpbmtpbmcsIGBy
dXN0ZG9jYCBhbHJlYWR5IGdlbmVyYXRlcyBhIGxpc3Rpbmcgd2l0aCB0aGUNCj4gY29udGVudHMg
b2YgZWFjaCBjcmF0ZS9tb2R1bGUgZXZlbiBpZiB0aGVyZSBpcyBubyBvdGhlciBkb2NzLiBTbyBh
cw0KPiBsb25nIGFzIHRoZSBzaG9ydCBkZXNjcmlwdGlvbnMgb2YgdGhlIGl0ZW1zIGFyZSBnb29k
LCBpdCBtYXkgYmUgZmFpcmx5DQo+IHJlYWRhYmxlIGFscmVhZHksIGUuZy4gc2VlDQo+IGh0dHBz
Oi8vcnVzdC1mb3ItbGludXguZ2l0aHViLmlvL2RvY3MvcnVzdC9rZXJuZWwvc3luYy9pbmRleC5o
dG1sIGZvcg0KPiBhbiBleGFtcGxlIGluIG91ciBvbGQgYHJ1c3RgIGJyYW5jaC4gQnV0LCBvZiBj
b3Vyc2UsIHlvdSBjYW4gYWRkIGV4dHJhDQo+IGRvY3MgYXQgdGhhdCBsZXZlbCB0b28gd2hlbiB0
aGVyZSBhcmUgbWFueSB0aGluZ3Mgb3IgaXMgdW5jbGVhciB3aGF0DQo+IHNob3VsZCBiZSB1c2Vk
Lg0KPiANCj4gQWxzbyBub3RlIHRoYXQsIHNvbWV0aW1lcywgdGhlIGRvY3Mgd2Ugd3JpdGUgYXJl
IGluIHRoZSB0eXBlLCByYXRoZXINCj4gdGhhbiB0aGUgbW9kdWxlLCBlLmcuIHNlZSB0aGUgbmlj
ZSBleGFtcGxlcyBXZWRzb24gd3JvdGUgZm9yIGBSQlRyZWVgOg0KPiBodHRwczovL3J1c3QtZm9y
LWxpbnV4LmdpdGh1Yi5pby9kb2NzL3J1c3Qva2VybmVsL3JidHJlZS9zdHJ1Y3QuUkJUcmVlLmh0
bWwuDQoNClllYWggdGhpcyBhbGwgbG9va3MgZ3JlYXQgYW5kIHZlcnkgaHlwZXJsaW5rZWQuDQoN
CkkgdGhpbmsgdGhlIG9ubHkgbml0IEkgaGF2ZSBpcyB0aGF0IGZvciB0eXBlcyB3aXRoIHR3byBv
ciBtb3JlIHR5cGUNCnZhcmlhYmxlcyAobGlrZSB0aGUgcmJ0cmVlKSB3aGF0IGVhY2ggb2YgdGhl
bSBzaG91bGQgcmVwcmVzZW50IGluIHRoZSB0b3ANCmludHJvLiBJIGNhbiBndWVzcyBpdCdzIDxL
ZXksIFZhbHVlPiBhbmQgbm90IHRoZSBvdGhlciB3YXkgcm91bmQsIGJ1dA0KY29uZmlybWF0aW9u
IHRha2VzIHF1aXRlIGEgYml0IG9mIHNjcm9sbGluZyB0byBjaGVjayB3aXRoIHRoZSBmdW5jdGlv
bg0KdHlwZXMuDQoNCk90aGVyd2lzZSBJIHRoaW5rIHBlcmZlY3QgYXBpIGRvY3MuDQoNCj4gPiAt
IExpbmtpbmcgYWxsIHRoZSB0aGluZ3MsIHNvIHRoYXQgcmVhZGVycyBjYW4gY29ubmVjdCB0aGUg
ZGlmZmVyZW50IHBhcnRzLg0KPiA+ICAgVGhpcyBpcyByZWFsbHkgaW1wb3J0YW50IGluIEMgd2hl
cmUgZS5nLiBnZXQvcHV0KCkgb3IgYW55IHN1Y2ggZnVuY3Rpb24NCj4gPiAgIHBhaXJzIGFsbCBu
ZWVkZWQgdG8gYmUgbGlua2VkIHRvZ2V0aGVyLiBXaXRoIHJ1c3QgSSdtIGhvcGluZyB0aGF0DQo+
ID4gICBydXN0ZG9jIGxpYmVyYWxseSBzcHJpbmtsZXMgbGlua3MgYWxyZWFkeSBhbmQgd2UgZG9u
J3QgaGF2ZSB0byBkbyB0aGlzDQo+ID4gICBhcyBtdWNoLg0KPiANCj4gSWYgeW91IG1lYW4gd2l0
aGluIGRvYyBjb21tZW50cywgaXQgZG9lcyEgOikgSXQgaXMgY2FsbGVkICJpbnRyYS1kb2MNCj4g
bGlua3MiLiBCYXNpY2FsbHksIHlvdSBqdXN0IHdyaXRlIHNvbWV0aGluZyBpbi1iZXR3ZWVuIHNx
dWFyZQ0KPiBicmFja2V0cywgYW5kIGl0IGlzIGFibGUgdG8gY3JlYXRlIHRoZSBsaW5rIHRvIHRo
ZSByaWdodCB0aGluZyAoaW4NCj4gbW9zdCBjYXNlcywgb3RoZXJ3aXNlIHlvdSBjYW4gaGVscCBp
dCBtb3JlKSwgZS5nLg0KPiANCj4gICAgIC8vLyBSZXR1cm5zIGEgbmV3IFtgRm9vYF0uDQo+IA0K
PiBBbmQsIG9mIGNvdXJzZSwgZm9yIHRoZSByZXN0IG9mIHRoaW5ncyB0aGF0IGFyZW4ndCBpbnNp
ZGUgY29tbWVudHMsIGl0DQo+IGF1dG9tYXRpY2FsbHkgcHJvdmlkZXMgbGlua3MgZXRjLg0KPiAN
Cj4gVGhlcmUgaGFzIGJlZW4gd29yayBvbiBgcnVzdGRvY2Agb24gZ2V0dGluZyAiSnVtcCB0byBE
ZWZpbml0aW9uIiBhbmQNCj4gc2ltaWxhciBmZWF0dXJlcyB0byB3b3JrIG9uIHRoZSBzb3VyY2Ug
dmlldywgdG9vLg0KPiANCj4gPiAtIFNob3J0IGV4cGxhaW5lcnMgZm9yIHBhcmFtZXRlcnMuIEZv
ciBydXN0IHRoaXMgYWxzbyBtZWFucyB0eXBlDQo+ID4gICBwYXJhbWV0ZXJzLCBmb3IgdGhvc2Ug
ZXZlbiBzaW1wbGlmaWVkIGV4YW1wbGVzIG9mIGhvdyBkcml2ZXJzIGFyZQ0KPiA+ICAgc3VwcG9z
ZWQgdG8gdXNlIHRoZW0gd291bGQgaGVscCBhIGxvdCBpbiByZWFkaW5nIGRvY3MgJiB1bmRlcnN0
YW5kaW5nDQo+ID4gICBjb25jZXB0cy4NCj4gDQo+IEZvciBwYXJhbWV0ZXJzLCB3ZSBhcmUgbm90
IGZvcmNpbmcgdG8gd3JpdGUgZXhwbGFuYXRpb25zIGZvciBldmVyeQ0KPiBwYXJhbWV0ZXIgKGFz
IGluIHByb3ZpZGluZyBhIGxpc3QpLCBidXQgcmF0aGVyIHdyaXRpbmcgd2hhdCBpcw0KPiBhY3R1
YWxseSB1c2VmdWwgdG8ga25vdyAocmVmZXJyaW5nIHRvIHRoZSBwYXJhbWV0ZXJzIGFzIG5lZWRl
ZCkuIFNvIGl0DQo+IGRlcGVuZHMgb24gYSBjYXNlLWJ5LWNhc2UuDQo+IA0KPiBJbiBhbnkgY2Fz
ZSwgaW4gZ2VuZXJhbCBpcyBjbGVhcmVyIHdoYXQgcGFyYW1ldGVycyBhcmUgY29tcGFyZWQgdG8g
QywNCj4gZHVlIHRvIHRoZSBzdHJvbmdlciB0eXBpbmcuIE9mIGNvdXJzZSwgaWYgb25lIHVzZXMg
aW50ZWdlcnMNCj4gZXZlcnl3aGVyZSwgaXQgaXMgYXMgY29uZnVzaW5nIGFzIEMuIEJ1dCBpZiBv
bmUgaGFzIGEgdHlwZSwgaXQgaXMNCj4gZWFzaWVyIHRvIHRlbGwsIHBsdXMgb25lIG1heSBqdW1w
IHdpdGggYSBjbGljayBpbnRvIHRoZSBleHBsYW5hdGlvbiBvZg0KPiB0aGF0IHR5cGUgZXRjLg0K
PiANCj4gUmVnYXJkaW5nIGV4YW1wbGVzLCAxMDAlIGFncmVlZC4gQW5kIG5vdCBvbmx5IHRoYXQs
IHRoZSBleGFtcGxlcyBhcmUNCj4gZW5mb3JjZWQgdG8gYmUga2VwdCB1cCB0byBkYXRlIGJ5IGNv
bXBpbGluZyBhbmQgcnVubmluZyB0aGVtIHZpYSBLVW5pdA0KPiAobm90IHlldCBzdWJtaXR0ZWQg
Zm9yIG1haW5saW5lLCBidXQgd2UgaGF2ZSBiZWVuIGVuZm9yY2luZyBpdCBmb3Igb3VyDQo+IG9s
ZCBgcnVzdGAgYnJhbmNoIGZvciBhIGxvbmcgdGltZSkuDQo+IA0KPiA+IC0gSWRlYWxseSBsaW5r
cyBmcm9tIHRoZSBydXN0IHRvIHRoZSBzcGhpbnggc2lkZSB0byBsaW5rZSByZWxldmFudA0KPiA+
ICAgY2hhcHRlcnMgdG9nZXRoZXIuIE9mdGVuIHRoZSBiaWdnZXIgZXhwbGFuYXRpb25zIGFyZSBp
biAucnN0IGZpbGVzIHdpdGgNCj4gPiAgIERPVCBncmFwaHMgKGttcyBoYXMgYSBidW5jaCBJJ3Zl
IGFkZGVkKSBvciBzaW1pbGFyLCBhbmQgaXQgZG9lc24ndCBtYWtlDQo+ID4gICB0aGF0IG11Y2gg
c2Vuc2UgdG8gZHVwbGljYXRlIGFsbCB0aGF0IG9uIHRoZSBydXN0IHNpZGUgSSBndWVzcy4gQnV0
IGl0DQo+ID4gICBuZWVkcyB0byBiZSBkaXNjb3ZlcmFibGUuDQo+IA0KPiBEZWZpbml0ZWx5LiBP
bmUgbmV4dCBzdGVwIGlzIGhhdmluZyBlYXN5LXRvLXdyaXRlIGxpbmtzIHRvIHRoZSByU1QNCj4g
ZG9jcy4gRm9yIHRoaXMsIGEgY291cGxlIHllYXJzIGFnbyBJIHRhbGtlZCB3aXRoIHRoZSBgcnVz
dGRvY2ANCj4gbWFpbnRhaW5lcnMgYWJvdXQgaGF2aW5nIGEgIkV4dGVybmFsIHJlZmVyZW5jZXMg
bWFwIGZpbGUiIGZlYXR1cmUsIHNvDQo+IHRoYXQgd2UgY2FuIGxpbmsgclNUIGRvY3VtZW50cyBm
cm9tIHRoZSBSdXN0IGRvY3MsIGluY2x1ZGluZyBnZW5lcmF0ZWQNCj4gQyBkb2NzIHRvby4gRm9y
IGluc3RhbmNlLCBpZGVhbGx5IHdlIHdvdWxkIGJlIGFibGUgdG8gdXNlIHRoZSBzcXVhcmUNCj4g
YnJhY2tldHMgYXJvdW5kIGEgQyB0eXBlIGFuZCBoYXZlIGl0IHdvcms6DQo+IA0KPiAgICAgLy8v
IEV4cG9zZXMgdGhlIGtlcm5lbOKAmXMgW2BzdHJ1Y3Qgd2FpdF9xdWV1ZV9oZWFkYF0gYXMgYSBj
b25kaXRpb24gdmFyaWFibGUuDQo+IA0KPiBSZWdhcmRpbmcgdGhlIGJpZ2dlciBleHBsYW5hdGlv
bnM6IHdlIGFyZSB0cnlpbmcgdG8ga2VlcCBtb3N0IG9mIHRoZQ0KPiBkb2NzIGNsb3NlIHRvIHRo
ZSBSdXN0IGNvZGUgd2hlcmUgaXQgbWFrZXMgc2Vuc2UsIGFzDQo+IG1vZHVsZS1sZXZlbC9jcmF0
ZS1sZXZlbCBkb2NzLCByYXRoZXIgdGhhbiBhcyByU1QgZG9jcy4gVGhpcyBoYXMNCj4gc2V2ZXJh
bCBiZW5lZml0cywgbGlrZSBrZWVwaW5nIHRoZW0gY2xvc2VyIHRvIHRoZSBjb2RlLCB0aGUgbGlu
a2luZw0KPiBmZWF0dXJlcywgaGF2aW5nIHRoZW0gb3JnYW5pemVkIGVxdWFsbHkgYXMgdGhlIGNv
ZGUsIG5vIG5lZWQgdG8ga25vdw0KPiB3aGV0aGVyIHRoZXJlIGlzIGEgZG9jIHNvbWV3aGVyZSBv
ciBub3QgKGUuZy4gaWYgaXQgaXMsIGl0IGlzIG5lYXIgdGhlDQo+IGNvZGUpLCBleGFtcGxlcyBh
cmUgY29tcGlsZWQsIGV0Yy4NCg0KSnVzdCBhIHF1aWNrIGNvbW1lbnQgb24gdGhpcywgdGhhdCdz
IHRoZSBzYW1lIHdlIGRvIG9uIHRoZSBDIHNpZGUuIE1vc3QNCm92ZXJ2aWV3IGNoYXB0ZXJzIGFy
ZSBhY3R1YWxseSBET0M6IHNlY3Rpb25zIHB1bGxlZCBpbiBmcm9tIHRoZSBjb2RlLg0KDQpXaGF0
IEkgbWVhbnQgaGVyZSBpcyB0aGF0IGZvciBiaWcgb3ZlcnZpZXcgc3R1ZmYgKGxpa2UgZm9yIG1v
ZGVzZXR0aW5nIGhvdw0KdGhlIGRpc3BsYXkgcGlwZSBzdHJ1Y3R1cmVzIHRpZSB0b2dldGhlciBh
cyBhbiBleGFtcGxlOg0KaHR0cHM6Ly9kcmkuZnJlZWRlc2t0b3Aub3JnL2RvY3MvZHJtL2dwdS9k
cm0ta21zLmh0bWwjb3ZlcnZpZXcpDQppdCBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gZHVwbGljYXRl
IHRoYXQgaW4gcnVzdGRvYyBvbmNlIG1vcmUuDQoNCj4gT2YgY291cnNlLCBzb21ldGltZXMgbG9u
Z2VyLWZvcm0gZG9jcyBhbmQgb3RoZXIgZG9jdW1lbnRzIG1heSBub3QgbWFrZQ0KPiBzZW5zZSBh
cyBwYXJ0IG9mIGFueSBjb2RlIGluIHBhcnRpY3VsYXIsIG9yIG1heSBiZSBzaGFyZWQgYWNyb3Nz
IEMgYW5kDQo+IFJ1c3QsIGV0Yy4sIGFuZCB0aGVyZSBpdCBtYXkgbW9yZSBzZW5zZSB0byB1c2Ug
YERvY3VtZW50YXRpb24vYCBmaWxlcw0KPiBpbnN0ZWFkLg0KPiANCj4gQnV0LCBpbiBnZW5lcmFs
LCB0aGUgaWRlYSBpcyB0aGF0LCBjb21wYXJlZCB0byBDLCBtb3N0IG9mIHRoZSBkb2NzIGdvDQo+
IGludG8gdGhlIGNvZGUuIFRvIGdpdmUgYW4gaWRlYSBvZiB0aGUgZGlmZmVyZW5jZTogc28gZmFy
LCBpbiBvdXIgb2xkDQo+IGBydXN0YCBicmFuY2gsIHdlIG9ubHkgbmVlZGVkIGEgZmV3IGRvY3Vt
ZW50cyBpbiBgRG9jdW1lbnRhdGlvbi9gDQo+IChlLmcuIHRoZSBRdWljayBTdGFydCBndWlkZSBl
dGMuKSwgYW5kIGV2ZXJ5dGhpbmcgZWxzZSB3ZW50IGludG8gdGhlDQo+IGNvZGUgaXRzZWxmLg0K
DQpNYXliZSBkcm0gaXMgdGhlIGV4Y2VwdGlvbiwgYnV0IGlmIHlvdSBsb29rIGF0IG91ciAucnN0
IGZpbGVzIHdlIGFsc28gaGF2ZQ0KbW9zdCBvZiBvdXIgZG9jcyBpbiB0aGUgY29kZToNCg0KaHR0
cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtL3RyZWUvRG9jdW1lbnRhdGlvbi9ncHUv
ZHJtLWttcy1oZWxwZXJzLnJzdA0KDQpUaGUgcnN0IGZpbGVzIGp1c3QgcHJvdmlkZSB0aGUgc2Nh
ZmZvbGRpbmcgYmVjYXVzZSBDIGRvc24ndCBoYXZlDQpjcmF0ZXMvbW9kdWxlcyBoaWVyYXJjaHkg
dGhhdCB3b3VsZCBkbyB0aGlzIGZvciB5b3UgYXV0b21hdGljYWxseS4NCg0KQ2hlZXJzLCBEYW5p
ZWwNCi0tIA0KRGFuaWVsIFZldHRlcg0KU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0
aW9uDQpodHRwOi8vYmxvZy5mZndsbC5jaA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
