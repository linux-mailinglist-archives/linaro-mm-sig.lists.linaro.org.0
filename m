Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A93F6D7B27
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 13:23:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4AA363F6F7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 11:23:12 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id B71493EC71
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Apr 2023 11:23:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=IzUuFtOR;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.46) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-502208f7cb3so51213a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Apr 2023 04:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680693779;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AIDpAXeql8fQFsGeJuksLHT5Tjntg1bMf3SzmtbVWuw=;
        b=IzUuFtORfMloOmhavJNJm9+NYqNJWfWN3eSrH31qlNxLnm25lvYHZ2fIb6dJnqSka+
         SpBIB8riody8aUQPvt3fp0ovl1FfSifeegOtFVTa6GHoWCHb6Quy+A+EN1KmxTZzYS9u
         ybpg5VvnxOECq8NHuR8NC19mUO9NNjdIsenCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680693779;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AIDpAXeql8fQFsGeJuksLHT5Tjntg1bMf3SzmtbVWuw=;
        b=50n/qyi90ClDNRg5E02VlxG5lfFmPBo/eAjilL7Q94ot8Ee8BWKYBEsDhk+zAGg2ry
         rLgoYbSWZMn9j6yC5H7yM0rAuEPuwUY39N0beCUg1vwaaXPg/VoGJog8H+ba3nEdLs7E
         InJAwU6x2zrBwz0Ik48XZLfQ1YRdb33NK+Jw0Rq19eGeinOxa/AiGadn2DecBgbyOoo/
         CjCYEYI6Yu0vWQhnTeWKoHtvzyBhOFyxwKPbZJRjhOZdkDjV/AgT7MqTEMrPLtE6i+ny
         uBj7E3MLmr3LaQXrLrd7siVZr1HoIj4LrD8M8b2EhAm7vKpgvd88qbSvmn43DK0EySMX
         jrxw==
X-Gm-Message-State: AAQBX9ee4+u4owiTFnm/NqLnYOaKtV44Jo6es8zN7Z9PzwS9mhXcInul
	cmYjJen29Kmg0s6Pw7+hDOJ2bg==
X-Google-Smtp-Source: AKy350YDzxjFtsEmZYUsxOHSYuXCTDzqNZtYc94nVGRrMWnan5/9qyZpfua6PXz/dekKVYvqi2sjiQ==
X-Received: by 2002:a17:906:2219:b0:92f:39d9:1e50 with SMTP id s25-20020a170906221900b0092f39d91e50mr1509304ejs.3.1680693779731;
        Wed, 05 Apr 2023 04:22:59 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id ke4-20020a17090798e400b009327ed171f2sm7186340ejc.129.2023.04.05.04.22.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 04:22:59 -0700 (PDT)
Date: Wed, 5 Apr 2023 13:22:57 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Message-ID: <ZC1aEZpgZLkq8xTv@phenom.ffwll.local>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANiq72=h9qKrpkY2K962__rs-JLsmWxPXocx040ZeDSKGf_Brw@mail.gmail.com>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B71493EC71
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.46:from];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: 53HVCJP6LAE6FEZ7TB2A6FDYN6S7CTMP
X-Message-ID-Hash: 53HVCJP6LAE6FEZ7TB2A6FDYN6S7CTMP
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Asahi Lina <lina@asahilina.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asah
 i@lists.linux.dev, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 04/18] rust: drm: gem: Add GEM object abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/53HVCJP6LAE6FEZ7TB2A6FDYN6S7CTMP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgMDUsIDIwMjMgYXQgMDE6MTk6NDdQTSArMDIwMCwgTWlndWVsIE9qZWRhIHdy
b3RlOg0KPiBPbiBXZWQsIEFwciA1LCAyMDIzIGF0IDE6MDjigK9QTSBEYW5pZWwgVmV0dGVyIDxk
YW5pZWxAZmZ3bGwuY2g+IHdyb3RlOg0KPiA+DQo+ID4gVWggYWxsIHRoZSBydXN0IGhlbHBlciB3
cmFwcGVycyBmb3IgYWxsIHRoZSBrZXJuZWwgaW4gYSBzaW5nbGUgZmlsZSBkb2VzDQo+ID4gbm90
IHNvdW5kIGdvb2QuIENhbiB3ZSBub3Qgc3BsaXQgdGhlc2UgdXAgaW50byBlYWNoIHN1YnN5c3Rl
bSwgYW5kIHRoZW4NCj4gPiBtYXliZSBpbnN0ZWFkIG9mIHNwcmlua2xpbmcgI2lmZGVmIGFsbCBv
dmVyIGEgLmMgZmlsZSBNYWtlIHRoZSBjb21waWxhdGlvbg0KPiA+IG9mIHRoYXQgZmlsZSBjb25k
aXRpb25hbCBvbiBydXN0IHN1cHBvcnQgKHBsdXMgd2hhdGV2ZXIgb3RoZXIgS2NvbmZpZyBnYXRl
DQo+ID4gdGhlIG90aGVyIGMgZmlsZXMgaGFzIGFscmVhZHkpPw0KPiANCj4gSW5kZWVkLCB0aGUg
cGxhbiBpcyBzcGxpdHRpbmcgdGhlIGBrZXJuZWxgIGNyYXRlIGFuZCBnaXZpbmcgZWFjaA0KPiBz
dWJzeXN0ZW0gaXRzIG93biBjcmF0ZSwgYmluZGluZ3MsIGhlbHBlcnMsIGV0Yy4NCg0KT2sgaWYg
dGhpcyBpcyBqdXN0IGludGVyaW0gSSB0aGluayBpdCdzIGZpbmUuIFdvdWxkIHN0aWxsIGJlIGdv
b2QgdG8gaGF2ZQ0KdGhlIE1BSU5UQUlORVJTIGVudHJ5IHRob3VnaCBldmVuIGp1c3QgdG8gY292
ZXIgdGhlIGludGVyaW0gc3RhdGUuIExlYXN0DQpiZWNhdXNlIEknbSBhc3N1bWluZyB0aGF0IHdo
ZW4gdGhpbmdzIGFyZSBzcGxpdCB1cCB5b3UnZCBzdGlsbCB3YW50IHRvDQprZWVwIHRoZSBydXN0
IGxpc3Qgb24gY2MgZm9yIHRoZSBydXN0IHBhcnRzLCBldmVuIHdoZW4gdGhleSBtb3ZlIGludG8N
CnN1YnN5c3RlbXM/DQotRGFuaWVsDQotLSANCkRhbmllbCBWZXR0ZXINClNvZnR3YXJlIEVuZ2lu
ZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbg0KaHR0cDovL2Jsb2cuZmZ3bGwuY2gNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
