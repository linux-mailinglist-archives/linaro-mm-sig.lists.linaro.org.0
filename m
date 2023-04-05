Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BFD6D7CC6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 14:36:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF4A93EE30
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 12:36:57 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id 72D843EE12
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Apr 2023 12:36:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Mhpu4CDB;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.43) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5002f12ccfeso43458a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Apr 2023 05:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680698206; x=1683290206;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=E6iWx9EB6J3L8iIop1bmZ+pNlziIEisMA1uL8RnykGc=;
        b=Mhpu4CDBYYy7UnbecnwaJGBwUWEJJZkdvrEefXyX2r+r4FENpB1qkR+tX4rIEcLLNc
         HUVfqZlrktiiC1UivQlXrKHRQSwPD9fmbGSjOmWfxRDbCoEgopYVA0XuQ3TzQrDsGHl8
         V/sMzxOY9dAQhT6ShYmtLicdzfCt+/18NkPTo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680698206; x=1683290206;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E6iWx9EB6J3L8iIop1bmZ+pNlziIEisMA1uL8RnykGc=;
        b=SKDYrq50gr1uTya1WbqxXN7Nn68ECOrAOinvK8pV4Je7ZrrI806Ovt76dxBFy9gqZ1
         /1M8eG9jFtSHvG0Lrm+mAbmGHX66JdjG8Y6EQ5d01rCO5PQTk4dSGha4Ar3i1icO6g27
         qDHheTO4jj1af8fsWPC5Dx2bgWuryJm7qt0I2xAhuiV+Og37UWih55IDB7HlvfEA7inn
         l3/86cL8bgEpWmM7R7yJ6tbqTFSNkOzFkSFtwg1+eJlU7RH9bVfWTZCYcJi6RT6pyJ46
         jkpky1at73qlPTVqPINjUvl4D6AnXrBRZ5wwW24iXq7gOj/AUS9pZvwRYQa5e+dgNzkQ
         30HA==
X-Gm-Message-State: AAQBX9disEJBgvydbm3qQA7a6vL9asM0BZYAaz/2J/BHg9cGaNpIxjLH
	j7ViPCwICrEGC0pj6Z7hQSdP3Q==
X-Google-Smtp-Source: AKy350YIBJGEKIbnfG5Qb41ZqY8oW3SBwxFUxtFvD5haG8Sd7EjZxbYnmEZUvlkuPcFwlyaw2lVQPg==
X-Received: by 2002:a05:6402:d0e:b0:502:e50:3358 with SMTP id eb14-20020a0564020d0e00b005020e503358mr1779099edb.3.1680698206345;
        Wed, 05 Apr 2023 05:36:46 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id q16-20020a50aa90000000b004af6c5f1805sm7265301edc.52.2023.04.05.05.36.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 05:36:45 -0700 (PDT)
Date: Wed, 5 Apr 2023 14:36:43 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Message-ID: <ZC1rW+ZktoC9fBaX@phenom.ffwll.local>
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
 <20230307-rust-drm-v1-4-917ff5bc80a8@asahilina.net>
 <ZC1WwJDr1iqSQnYs@phenom.ffwll.local>
 <CANiq72=h9qKrpkY2K962__rs-JLsmWxPXocx040ZeDSKGf_Brw@mail.gmail.com>
 <ZC1aEZpgZLkq8xTv@phenom.ffwll.local>
 <CANiq72=hoVw566orbDYcJyw2+SFfxpR1rdJVbbR3kkrjJUASww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANiq72=hoVw566orbDYcJyw2+SFfxpR1rdJVbbR3kkrjJUASww@mail.gmail.com>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 72D843EE12
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.208.43:from,212.51.149.33:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DMARC_NA(0.00)[ffwll.ch];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[30];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.43:from];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	URIBL_BLOCKED(0.00)[rust-for-linux.com:url,ffwll.ch:dkim,ffwll.ch:email,ffwll.ch:url,mail-ed1-f43.google.com:helo,mail-ed1-f43.google.com:rdns];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: AWFIKLNMDLJRVY7KMUIHULEPT6QT77NP
X-Message-ID-Hash: AWFIKLNMDLJRVY7KMUIHULEPT6QT77NP
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Asahi Lina <lina@asahilina.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asah
 i@lists.linux.dev, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 04/18] rust: drm: gem: Add GEM object abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AWFIKLNMDLJRVY7KMUIHULEPT6QT77NP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgMDUsIDIwMjMgYXQgMDI6MzI6MTJQTSArMDIwMCwgTWlndWVsIE9qZWRhIHdy
b3RlOg0KPiBPbiBXZWQsIEFwciA1LCAyMDIzIGF0IDE6MjPigK9QTSBEYW5pZWwgVmV0dGVyIDxk
YW5pZWxAZmZ3bGwuY2g+IHdyb3RlOg0KPiA+DQo+ID4gT2sgaWYgdGhpcyBpcyBqdXN0IGludGVy
aW0gSSB0aGluayBpdCdzIGZpbmUuIFdvdWxkIHN0aWxsIGJlIGdvb2QgdG8gaGF2ZQ0KPiA+IHRo
ZSBNQUlOVEFJTkVSUyBlbnRyeSB0aG91Z2ggZXZlbiBqdXN0IHRvIGNvdmVyIHRoZSBpbnRlcmlt
IHN0YXRlLiBMZWFzdA0KPiA+IGJlY2F1c2UgSSdtIGFzc3VtaW5nIHRoYXQgd2hlbiB0aGluZ3Mg
YXJlIHNwbGl0IHVwIHlvdSdkIHN0aWxsIHdhbnQgdG8NCj4gPiBrZWVwIHRoZSBydXN0IGxpc3Qg
b24gY2MgZm9yIHRoZSBydXN0IHBhcnRzLCBldmVuIHdoZW4gdGhleSBtb3ZlIGludG8NCj4gPiBz
dWJzeXN0ZW1zPw0KPiANCj4gU29ycnksIEkgbWlzc2VkIHRvIHJlcGx5IHRoZSBzZWNvbmQgcGFy
dCBvZiB5b3VyIGVtYWlsIC0tIHJlcGx5aW5nIGhlcmUuDQo+IA0KPiBDdXJyZW50bHksIHRoZSBz
dWJzeXN0ZW0ncyBjb2RlIGlzIHVuZGVyIGBydXN0L2AgKHRob3VnaCBtb2R1bGVzIGNhbg0KPiBn
byBhbHJlYWR5IGludG8gb3RoZXIgZm9sZGVycykuIE9uZSBvZiB0aGUgcmVhc29ucyB3YXMgdGVj
aG5pY2FsDQo+IHNpbXBsaWNpdHksIGFuZCBhIG5pY2Ugc2lkZSBlZmZlY3QgaXMgdGhhdCB3ZSBj
b3VsZCBib290c3RyYXAgdGhpbmdzDQo+IHdoaWxlIGdldHRpbmcgQyBtYWludGFpbmVycyBpbnZv
bHZlZCBvdmVyIHRpbWUuDQo+IA0KPiBUbyBhY2NvbXBsaXNoIHRoYXQsIHRoZSBndWlkZWxpbmVz
IGZvciBjb250cmlidXRpbmcgUnVzdCBjb2RlIGFyZSB0aGF0DQo+IHRoZSByZXNwZWN0aXZlIG1h
aW50YWluZXJzIG5lZWQgdG8gYmUgYXQgbGVhc3QgQ2MnZCwgZXZlbiBpZiB0aGUgZmlsZXMNCj4g
ZG8gbm90IGhpdCB0aGUgYEY6YCBmaWVsZHMgZm9yIHRoZSB0aW1lIGJlaW5nIC0tIHNlZSBbMV0u
IEJ1dCwgZm9yIHVzLA0KPiBpZGVhbGx5LCB0aGUgbWFpbnRhaW5lcnMgd2lsbCB0YWtlIHRoZSBj
aGFuZ2VzIHRocm91Z2ggdGhlaXIgdHJlZSwNCj4gaW5zdGVhZCBvZiBnb2luZyB0aHJvdWdoIHRo
ZSBSdXN0IG9uZSwgc2luY2UgdGhhdCBpcyB0aGUgZW5kIGdvYWwuDQo+IA0KPiBBbmQsIG9mIGNv
dXJzZSwgaWYgeW91IGFscmVhZHkgd2FudCB0byBoYXZlIGBGOmAgZmllbGRzIGZvciB0aGUgUnVz
dA0KPiBjb2RlLCB0aGF0IGlzIGV2ZW4gYmV0dGVyISAoV2hldGhlciB0aG9zZSBzaG91bGQgYmUg
aW4gdGhlIHNhbWUgZW50cnkNCj4gb3IgaW4gYSBuZXcgb25lLCBpdCBpcyB1cCB0byB5b3UsIG9m
IGNvdXJzZSwgYW5kIHdoZXRoZXIgaXQgaXMgYQ0KPiBkaWZmZXJlbnQgc2V0IG9mIHBlb3BsZSAv
IGxldmVsIG9mIHN1cHBvcnQgLyBldGMuKQ0KPiANCj4gVGhlbiwgd2hlbiB0aGUgYGtlcm5lbGAg
Y3JhdGUgc3BsaXQgaGFwcGVucywgd2UgY2FuIG1vdmUgdGhlIGNvZGUNCj4gZGlyZWN0bHkgdW5k
ZXIgd2hhdGV2ZXIgZm9sZGVycyBpdCBzaG91bGQgYmUgbmF0dXJhbGx5LCB3aGVuIHRoZWlyDQo+
IG1haW50YWluZXJzIGFyZSByZWFkeS4gRm9yIHNvbWUgc3Vic3lzdGVtcywgdGhhdCBtYXkgbWVh
biB0aGV5IGRvIG5vdA0KPiBuZWVkIGFueSBgRjpgIGZpZWxkcyBzaW5jZSB0aGV5IGFyZSBhbHJl
YWR5IGNvdmVyZWQgKGUuZy4gaWYgdGhleSBkaWQNCj4gbm90IGNyZWF0ZSBhIG5ldyBlbnRyeSBm
b3IgUnVzdCBjb2RlIG9ubHkpLiBBbmQgZm9yIGNhc2VzIGxpa2UgeW91cnMsDQo+IHdoZXJlIHlv
dSBhbHJlYWR5IGhhZCBgRjpgIGZpZWxkcywgaXQgbWVhbnMgdGhlIG1vdmUgb2YgdGhlIGZpbGVz
IGNhbg0KPiBiZSBkb25lIHJpZ2h0IGF3YXkgYXMgc29vbiBhcyB0aGUgc3BsaXQgaGFwcGVucy4N
Cj4gDQo+IEluIHNob3J0LCB3ZSB3b3VsZCBkZWZpbml0ZWx5IHdlbGNvbWUgaWYgeW91IGFkZCBg
RjpgIGZpZWxkcyBhbHJlYWR5DQo+ICh3aGV0aGVyIGluIGV4aXN0aW5nIG9yIG5ldyBlbnRyaWVz
KSAtLSBpdCB3b3VsZCBtZWFuIHlvdSBhcmUgYWhlYWQgb2YNCj4gdGhlIGN1cnZlISA6KQ0KPiAN
Cj4gQXMgZm9yIHRoZSBtYWlsaW5nIGxpc3QsIHllcywgZm9yIHRoZSB0aW1lIGJlaW5nLCBJIGFz
ayB0aGF0IGFsbA0KPiBjaGFuZ2VzIHRvIHBsZWFzZSBiZSBzZW50IHRvIHRoZSBSdXN0IGxpc3Qs
IHNvIHRoYXQgZXZlcnlib2R5IHRoYXQNCj4gd2FudHMgdG8gZm9sbG93IHRoZSBSdXN0IHByb2dy
ZXNzIGhhcyBldmVyeXRoaW5nIGluIGEgc2luZ2xlIHBsYWNlLCBzbw0KPiB0aGF0IHdlIHRyeSB0
byByZW1haW4gY29uc2lzdGVudCBpbiB0aGUgYmVnaW5uaW5nIG9uIGUuZy4gY29kaW5nDQo+IGd1
aWRlbGluZXMsIHNvIHRoYXQgUnVzdCByZXZpZXdlcnMgY2FuIGhlbHAgc3BvdCBtaXN0YWtlcywg
YW5kIHNvIG9uDQo+IGFuZCBzbyBmb3J0aC4NCj4gDQo+IEJ1dCwgYXMgUnVzdCBncm93cyBpbiB0
aGUga2VybmVsLCBhcyBzeXN0ZW1zIGJlY29tZSBub24tZXhwZXJpbWVudGFsLA0KPiBhbmQgYXMg
bWFpbnRhaW5lcnMgdGFrZSBvd25lcnNoaXAgb2YgdGhlIGNvZGUsIHRoYXQgc2hvdWxkIGV2ZW50
dWFsbHkNCj4gZ28gYXdheSBhbmQgbGV0IHRoaW5ncyBiZSBhcyB1c3VhbCB3aXRoIEMgY29kZS4g
VGhlbiB0aGUgUnVzdA0KPiBzdWJzeXN0ZW0gKGFuZCBpdHMgbGlzdCkgd2lsbCBiZWNvbWUgc21h
bGxlciwgYW5kIGl0IHdpbGwgYmUgdGhlDQo+IHN1YnN5c3RlbSAoYW5kIHRoZSBkaXNjdXNzaW9u
IHBsYWNlKSBmb3IgYW55dGhpbmcgbm90IGNvdmVyZWQgYnkgb3RoZXINCj4gc3Vic3lzdGVtcywg
c3VjaCBhcyBjb3JlIFJ1c3QgYWJzdHJhY3Rpb25zIGFuZCB0eXBlcywgUnVzdA0KPiBpbmZyYXN0
cnVjdHVyZSBhbmQgc28gb24uDQo+IA0KPiBIb3cgZG9lcyB0aGF0IHNvdW5kPw0KDQpZZWFoIHNv
dW5kcyBhbGwgZ3JlYXQhDQoNCkkgdGhpbmsgaW50ZXJpbSBhdCBsZWFzdCBhIHNlcGFyYXRlIHJ1
c3QgZHJtIGVudHJ5DQp3b3VsZCBiZSBnb29kLCB0byBtYWtlIHN1cmUgd2UgYWx3YXlzIGNjIGJv
dGggcnVzdCBhbmQgZHJpLWRldmVsLiBPbmNlDQppdCdzIHRvbyBtdWNoIGZvciB5b3UgYW5kIHlv
dSBnZW5lcmFsbHkgdHJ1c3QgdGhlIGRyaS1kZXZlbCBmb2xrcyB0byBub3QNCmRlc2lnbiBzdHVw
aWQgaW50ZXJmYWNlcywgd2UgY2FuIHRoZW4gZHJvcCB0aGF0IGFuZCBvbmx5IHBpbmcgcnVzdCBm
b2xrcw0Kd2hlbiBuZWVkZWQuIEkgZG8gZXhwZWN0IHRoYXQncyBzb21lIHllYXJzIG91dCB0aG91
Z2guDQotRGFuaWVsDQoNCj4gDQo+IFsxXSBodHRwczovL3J1c3QtZm9yLWxpbnV4LmNvbS9jb250
cmlidXRpbmcjdGhlLXJ1c3Qtc3Vic3lzdGVtIChJIG1heQ0KPiByZW9yZ2FuaXplIHRoaXMgdG8g
YmUgUnVzdCdzIGBQOmAgZmllbGQsIGJ5IHRoZSB3YXkpDQo+IA0KPiBDaGVlcnMsDQo+IE1pZ3Vl
bA0KDQotLSANCkRhbmllbCBWZXR0ZXINClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3Jh
dGlvbg0KaHR0cDovL2Jsb2cuZmZ3bGwuY2gNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
