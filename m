Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5346BBAE3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:30:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 216BF3F0AC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:30:54 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id D000C3F455
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 20:39:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=f5sKTEgT;
	spf=pass (lists.linaro.org: domain of kherbst@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=kherbst@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678394398;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zeMyLQ59ICXaR3k0fXJSK8w4EuWIRJHEotPWxBc3jeE=;
	b=f5sKTEgT79tXTnbDv8cU6vAaQC8NLMnPsxT50EpBTu85qtzezMrSXvZECMRpCcZ69LQOdG
	eqiHbBEQw+0xAQNzyl8oUTxC4Ewe3J6lg0HBsfWGkjplIZ5ayhTkYrTU6wr/xiWpYwG5v+
	t0bMvWYGzcpqGyAdV8mLEs9VF5idwpo=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-638-QL0w2vxrOuqeDkSqO6sumA-1; Thu, 09 Mar 2023 15:39:57 -0500
X-MC-Unique: QL0w2vxrOuqeDkSqO6sumA-1
Received: by mail-lj1-f198.google.com with SMTP id m3-20020a2e9103000000b002959b43571dso979618ljg.7
        for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Mar 2023 12:39:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678394396;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zeMyLQ59ICXaR3k0fXJSK8w4EuWIRJHEotPWxBc3jeE=;
        b=7kvt+OKRgCGwmFREBZSCwnsuTpPejoh7CMb3iQJKZ7l6reAb/UTV/dM8bEz7kCSBGO
         +b+gyWkbrUw1OE9pTEt3SsfSZ+s4mPfFCk0WgVGj33GZhZGPYomEiD26KiZxVQWsSgpB
         ux12mcsZG3hV1oP4bEkcFgzcM9jYuJntauHgSs0UltfdBIX9W2Ux85J8SV+/VRNhXicr
         hFhcecdcs14PtPgqg04wNTnRFK6+OmJK1chGmLmRkZVgDHnCaGL69k0MmgsB857ei8Ps
         YhmNOVcWYRaIo26ni1ii7AYJjxTTVzhwtaL/yozOaVn0UKrmVYG9nMH+JPe2S5V3FBSu
         6BnA==
X-Gm-Message-State: AO0yUKW0Y+F/SKBK2eELR8Yb864l3Qc6+MXGHh26nGrGEeCkC5thINHw
	0dGnVIdoV2L8IuAjo/zaFKDPJstVCwoeTQhSZSUUreRInfWgrB/yyQstLBx0Arzeh9tFDX+XyQb
	xvggSUW08qCP5GPxwccItU3YhoMd40LXOn9RV+6q6R/A=
X-Received: by 2002:a05:6512:24f:b0:4dd:fd4e:5a21 with SMTP id b15-20020a056512024f00b004ddfd4e5a21mr7221203lfo.11.1678394396020;
        Thu, 09 Mar 2023 12:39:56 -0800 (PST)
X-Google-Smtp-Source: AK7set8Ggw77nlrwunPRgDCpaIaB7tQGweTebDCE7OESc24dT5ASfvD1foGPomTGYfbg4tMplkm2UwvTs8/qSogzdS0=
X-Received: by 2002:a05:6512:24f:b0:4dd:fd4e:5a21 with SMTP id
 b15-20020a056512024f00b004ddfd4e5a21mr7221181lfo.11.1678394395659; Thu, 09
 Mar 2023 12:39:55 -0800 (PST)
MIME-Version: 1.0
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-1-917ff5bc80a8@asahilina.net> <D9Cyx-9kbjaeb8QVBFqapDyctoDdVyu5uXEJDR41sdXUDXM1VgdRicV5huJDwfC3-T2J-R_DYHH8JZ1_aRdgbeYZFT78J9QveeeYbiTq4yU=@protonmail.com>
 <11ce9291-c17f-e73d-fb5d-13d5386fe6be@asahilina.net> <c9e0c6fdcd642192a59a2fea95941a773ea7b3e3.camel@collabora.com>
In-Reply-To: <c9e0c6fdcd642192a59a2fea95941a773ea7b3e3.camel@collabora.com>
From: Karol Herbst <kherbst@redhat.com>
Date: Thu, 9 Mar 2023 21:39:43 +0100
Message-ID: <CACO55tukF-+HWUHve0YUPbq4jPFgU3szuedKLjAw55h_3uX5gg@mail.gmail.com>
To: Faith Ekstrand <faith.ekstrand@collabora.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D000C3F455
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[asahilina.net,protonmail.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,linaro.org,amd.com,rosenzweig.io,iglunix.org,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[28];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.133.124:from]
X-MailFrom: kherbst@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3X5AJ53JB7AHR3GDV3KAJLPU77T27DED
X-Message-ID-Hash: 3X5AJ53JB7AHR3GDV3KAJLPU77T27DED
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:24:30 +0000
CC: Asahi Lina <lina@asahilina.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Ella Stanforth <ella@iglunix.org>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] rust: drm: ioctl: Add DRM ioctl abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3X5AJ53JB7AHR3GDV3KAJLPU77T27DED/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXIgOSwgMjAyMyBhdCA5OjI04oCvUE0gRmFpdGggRWtzdHJhbmQNCjxmYWl0aC5l
a3N0cmFuZEBjb2xsYWJvcmEuY29tPiB3cm90ZToNCj4NCj4gT24gVGh1LCAyMDIzLTAzLTA5IGF0
IDE1OjA0ICswOTAwLCBBc2FoaSBMaW5hIHdyb3RlOg0KPiA+IE9uIDA4LzAzLzIwMjMgMDIuMzQs
IEJqw7ZybiBSb3kgQmFyb24gd3JvdGU6DQo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgLy8gU0FGRVRZOiBUaGlzIGlzIGp1c3QgdGhlIGlvY3RsDQo+ID4gPiA+IGFyZ3VtZW50
LCB3aGljaCBob3BlZnVsbHkgaGFzIHRoZSByaWdodCB0eXBlDQo+ID4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgLy8gKHdlJ3ZlIGRvbmUgb3VyIGJlc3QgY2hlY2tpbmcgdGhlDQo+
ID4gPiA+IHNpemUpLg0KPiA+ID4NCj4gPiA+IEluIHRoZSBydXN0IHRyZWUgdGhlcmUgaXMgdGhl
IFJlYWRhYmxlRnJvbUJ5dGVzIFsxXSB0cmFpdCB3aGljaA0KPiA+ID4gaW5kaWNhdGVzIHRoYXQg
aXQgaXMgc2FmZSB0byByZWFkIGFyYml0cmFyeSBieXRlcyBpbnRvIHRoZSB0eXBlLg0KPiA+ID4g
TWF5YmUgeW91IGNvdWxkIGFkZCBpdCBhcyBib3VuZCBvbiB0aGUgYXJndW1lbnQgdHlwZSB3aGVu
IGl0IGxhbmRzDQo+ID4gPiBpbiBydXN0LW5leHQ/IFRoaXMgd2F5IHlvdSBjYW4ndCBlbmQgdXAg
d2l0aCBmb3IgZXhhbXBsZSBhIHN0cnVjdA0KPiA+ID4gY29udGFpbmluZyBhIGJvb2wgd2l0aCB0
aGUgYnl0ZSB2YWx1ZSAyLCB3aGljaCBpcyBVQi4NCj4gPg0KPiA+IFRoZXJlJ3MgYWN0dWFsbHkg
YSBtdWNoIGJpZ2dlciBzdG9yeSBoZXJlLCBiZWNhdXNlIHRoYXQgdHJhaXQgaXNuJ3QNCj4gPiBy
ZWFsbHkgdmVyeSB1c2VmdWwgd2l0aG91dCBhIHdheSB0byBhdXRvLWRlcml2ZSBpdC4gSSBuZWVk
IHRoZSBzYW1lDQo+ID4ga2luZA0KPiA+IG9mIGd1YXJhbnRlZSBmb3IgYWxsIHRoZSBHUFUgZmly
bXdhcmUgc3RydWN0cy4uLg0KPiA+DQo+ID4gVGhlcmUncyBvbmUgdXNpbmcgb25seSBkZWNsYXJh
dGl2ZSBtYWNyb3MgWzFdIGFuZCBvbmUgdXNpbmcgcHJvYw0KPiA+IG1hY3Jvcw0KPiA+IFsyXS4g
QW5kIHRoZW4sIHNpbmNlIGlvY3RsIGFyZ3VtZW50cyBhcmUgZGVjbGFyZWQgaW4gQyBVQVBJIGhl
YWRlcg0KPiA+IGZpbGVzLCB3ZSBuZWVkIGEgd2F5IHRvIGJlIGFibGUgdG8gZGVyaXZlIHRob3Nl
IHRyYWl0cyBmb3IgdGhlbS4uLg0KPiA+IHdoaWNoDQo+ID4gSSBndWVzcyBtZWFucyBiaW5kZ2Vu
IGNoYW5nZXM/DQo+DQo+IEl0J2QgYmUgY29vbCB0byBiZSBhYmxlIHRvIGF1dG8tdmVyaWZ5IHRo
YXQgdUFQSSBzdHJ1Y3RzIGFyZSBhbGwNCj4gdGlnaHRseSBwYWNrZWQgYW5kIHVzZSB0aGUgcmln
aHQgc3Vic2V0IG9mIHR5cGVzLiAgTWF5YmUgbm90IHBvc3NpYmxlDQo+IHRoaXMgaXRlcmF0aW9u
IGJ1dCBpdCdkIGJlIGNvb2wgdG8gc2VlIGluIGZ1dHVyZS4gIEknZCBsaWtlIHRvIHNlZSBpdA0K
PiBmb3IgQyBhcyB3ZWxsLCBpZGVhbGx5Lg0KPg0KPiB+RmFpdGgNCj4NCg0KSSdtIHN1cmUgdGhh
dCB3aXRoIGEgbWFjcm8geW91IGNvdWxkIHZlcmlmeSB0aGF0IGEgc3RydWN0IGRlZmluaXRpb24N
CmRvZXNuJ3QgY29udGFpbiBhbnkgZ2FwcywganVzdCBub3Qgc3VyZSBvbiBob3cgb25lIHdvdWxk
IGVuZm9yY2UgdGhhdC4NCkNvdWxkIGFkZCBhIHRyYWl0IHdoaWNoIGNhbiBvbmx5IGJlIGltcGxl
bWVudGVkIHRocm91Z2ggYSBwcm9jX21hY3JvPw0KTWF5YmUgd2UgY2FuIGhhdmUgYSBwcm9jX21h
Y3JvIGVuc3VyaW5nIG5vIGdhcHM/IFdvdWxkIGJlIGNvb2wgdGVjaCB0bw0KaGF2ZSBpbmRlZWQu
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
