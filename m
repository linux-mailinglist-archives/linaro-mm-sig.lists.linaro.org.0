Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EE85EE2C3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 19:13:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7349B3F528
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 17:13:35 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	by lists.linaro.org (Postfix) with ESMTPS id 7CE553EF2F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 17:13:15 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id v10-20020a17090a634a00b00205e48cf845so3156821pjs.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 10:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date;
        bh=d6n7vVcWWAUhY50nx1oX+SjTLgFqeY1Yq8iTalyfqd0=;
        b=lIRHIZiWHITqRmakxRZHSG2SU2bpWinoR3Swar+fPYJBmT1qOO/MT6WnWN5yBDlhGu
         /lQXgjvlz0O4V2+hnYy+98Yh09p4wB3YUjZ22bnBWEa9dMSwUm7gVI6Ae5kXcacwBn8L
         BoOjiPYblWsCdJGhH6goLGXzHmU5/JoB80oyI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=d6n7vVcWWAUhY50nx1oX+SjTLgFqeY1Yq8iTalyfqd0=;
        b=ImOtmd6UbalMcxOBC6htzNT4Zw1ksfyDfjI5nzOfQtzHa+gdZ5ixwugtZ3kzV3KOYo
         ldbJjOUdt6R6b3dPk7YcDA1tEQ1/anjOjmIXBpY0zQepUltPmS6omnyUydnBKbdVucak
         WIHlLCbahnYkpJhWoc97MEBulVwd2gfY3yjiaextHXkBLWhWLty63ADukgId//zdE7+j
         Mn/xIbsSVRcobvYoGeZcmiszkafcIssUoDh4Pud1CTnH0l3w8e2QEWVmnk7BGmM3srud
         lk4FBiPD4TqyxUhFkpoBrmQ8P7nYXrLuE78NvOrVHh0iFHWQOXTrnof36vJNyxcu8q2M
         6fYg==
X-Gm-Message-State: ACrzQf2rFbyEv8++NzLxQDW4i1Gpt12vlw19P4T4dq26Rs2R+U62iYDn
	zUw5V+PcWB5fCaWcsABJ2IIWUQ==
X-Google-Smtp-Source: AMsMyM6sCBBdOCLg/ekAp2unP2+2il2GSYEdTvWU2WPyIonTKW/L3Ua/pLmu7ZGbcH4WrqStMgqaPQ==
X-Received: by 2002:a17:902:db08:b0:176:d40e:4b57 with SMTP id m8-20020a170902db0800b00176d40e4b57mr799977plx.172.1664385194575;
        Wed, 28 Sep 2022 10:13:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q3-20020a170902dac300b00177faf558b5sm4082449plx.250.2022.09.28.10.13.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 10:13:13 -0700 (PDT)
Date: Wed, 28 Sep 2022 10:13:12 -0700
From: Kees Cook <keescook@chromium.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <202209281011.66DD717D@keescook>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-2-keescook@chromium.org>
 <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: 7CE553EF2F
X-Spamd-Result: default: False [-6.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.41:from];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[39];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	TAGGED_RCPT(0.00)[];
	URIBL_BLOCKED(0.00)[chromium.org:email,chromium.org:dkim,kvack.org:email];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[suse.cz,linux.com,kernel.org,google.com,lge.com,linux-foundation.org,linux.dev,gmail.com,kvack.org,intel.com,davemloft.net,redhat.com,linuxfoundation.org,toxicpanda.com,suse.com,linaro.org,amd.com,fb.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,openvswitch.org,lists.linux.dev];
	DKIM_TRACE(0.00)[chromium.org:+];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=lIRHIZiW;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.216.41 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Message-ID-Hash: T2VZ2TR5GDX3W6LGS2VHWXCOSRJP2NWS
X-Message-ID-Hash: T2VZ2TR5GDX3W6LGS2VHWXCOSRJP2NWS
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vlastimil Babka <vbabka@suse.cz>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <roman.gushchin@linux.dev>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Marco Elver <elver@google.com>, linux-mm@kvack.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Miguel Ojeda <ojeda@kernel.org>, linux-ke
 rnel@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/16] slab: Remove __malloc attribute from realloc functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T2VZ2TR5GDX3W6LGS2VHWXCOSRJP2NWS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBTZXAgMjgsIDIwMjIgYXQgMDk6MjY6MTVBTSArMDIwMCwgR2VlcnQgVXl0dGVyaG9l
dmVuIHdyb3RlOg0KPiBIaSBLZWVzLA0KPiANCj4gT24gRnJpLCBTZXAgMjMsIDIwMjIgYXQgMTA6
MzUgUE0gS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+IHdyb3RlOg0KPiA+IFRoZSBf
X21hbGxvYyBhdHRyaWJ1dGUgc2hvdWxkIG5vdCBiZSBhcHBsaWVkIHRvICJyZWFsbG9jIiBmdW5j
dGlvbnMsIGFzDQo+ID4gdGhlIHJldHVybmVkIHBvaW50ZXIgbWF5IGFsaWFzIHRoZSBzdG9yYWdl
IG9mIHRoZSBwcmlvciBwb2ludGVyLiBJbnN0ZWFkDQo+ID4gb2Ygc3BsaXR0aW5nIF9fbWFsbG9j
IGZyb20gX19hbGxvY19zaXplLCB3aGljaCB3b3VsZCBiZSBhIGh1Z2UgYW1vdW50IG9mDQo+ID4g
Y2h1cm4sIGp1c3QgY3JlYXRlIF9fcmVhbGxvY19zaXplIGZvciB0aGUgZmV3IGNhc2VzIHdoZXJl
IGl0IGlzIG5lZWRlZC4NCj4gPg0KPiA+IEFkZGl0aW9uYWxseSByZW1vdmVzIHRoZSBjb25kaXRp
b25hbCB0ZXN0IGZvciBfX2FsbG9jX3NpemVfXywgd2hpY2ggaXMNCj4gPiBhbHdheXMgZGVmaW5l
ZCBub3cuDQo+ID4NCj4gPiBDYzogQ2hyaXN0b3BoIExhbWV0ZXIgPGNsQGxpbnV4LmNvbT4NCj4g
PiBDYzogUGVra2EgRW5iZXJnIDxwZW5iZXJnQGtlcm5lbC5vcmc+DQo+ID4gQ2M6IERhdmlkIFJp
ZW50amVzIDxyaWVudGplc0Bnb29nbGUuY29tPg0KPiA+IENjOiBKb29uc29vIEtpbSA8aWFtam9v
bnNvby5raW1AbGdlLmNvbT4NCj4gPiBDYzogQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3Vu
ZGF0aW9uLm9yZz4NCj4gPiBDYzogVmxhc3RpbWlsIEJhYmthIDx2YmFia2FAc3VzZS5jej4NCj4g
PiBDYzogUm9tYW4gR3VzaGNoaW4gPHJvbWFuLmd1c2hjaGluQGxpbnV4LmRldj4NCj4gPiBDYzog
SHllb25nZ29uIFlvbyA8NDIuaHlleW9vQGdtYWlsLmNvbT4NCj4gPiBDYzogTWFyY28gRWx2ZXIg
PGVsdmVyQGdvb2dsZS5jb20+DQo+ID4gQ2M6IGxpbnV4LW1tQGt2YWNrLm9yZw0KPiA+IFNpZ25l
ZC1vZmYtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPg0KPiANCj4gVGhhbmtz
IGZvciB5b3VyIHBhdGNoLCB3aGljaCBpcyBub3cgY29tbWl0IDYzY2FhMDRlYzYwNTgzYjEgKCJz
bGFiOg0KPiBSZW1vdmUgX19tYWxsb2MgYXR0cmlidXRlIGZyb20gcmVhbGxvYyBmdW5jdGlvbnMi
KSBpbiBuZXh0LTIwMjIwOTI3Lg0KPiANCj4gTm9yZXBseUBlbGxlcm1hbi5pZC5hdSByZXBvcnRl
ZCBhbGwgZ2NjOC1iYXNlZCBidWlsZHMgdG8gZmFpbA0KPiAoZS5nLiBbMV0sIG1vcmUgYXQgWzJd
KToNCj4gDQo+ICAgICBJbiBmaWxlIGluY2x1ZGVkIGZyb20gPGNvbW1hbmQtbGluZT46DQo+ICAg
ICAuL2luY2x1ZGUvbGludXgvcGVyY3B1Lmg6IEluIGZ1bmN0aW9uIOKAmF9fYWxsb2NfcmVzZXJ2
ZWRfcGVyY3B14oCZOg0KPiAgICAgLi8uL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaDoy
Nzk6MzA6IGVycm9yOiBleHBlY3RlZA0KPiBkZWNsYXJhdGlvbiBzcGVjaWZpZXJzIGJlZm9yZSDi
gJhfX2FsbG9jX3NpemVfX+KAmQ0KPiAgICAgICNkZWZpbmUgX19hbGxvY19zaXplKHgsIC4uLikg
X19hbGxvY19zaXplX18oeCwgIyMgX19WQV9BUkdTX18pIF9fbWFsbG9jDQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fg0KPiAgICAgLi9pbmNsdWRlL2xp
bnV4L3BlcmNwdS5oOjEyMDo3NDogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmF9fYWxs
b2Nfc2l6ZeKAmQ0KPiAgICAgWy4uLl0NCj4gDQo+IEl0J3MgYnVpbGRpbmcgZmluZSB3aXRoIGUu
Zy4gZ2NjLTkgKHdoaWNoIGlzIG15IHVzdWFsIG02OGsgY3Jvc3MtY29tcGlsZXIpLg0KPiBSZXZl
cnRpbmcgdGhpcyBjb21taXQgb24gbmV4dC0yMDIyMDkyNyBmaXhlcyB0aGUgaXNzdWUuDQo+IA0K
PiBbMV0gaHR0cDovL2tpc3NrYi5lbGxlcm1hbi5pZC5hdS9raXNza2IvYnVpbGRyZXN1bHQvMTQ4
MDM5MDgvDQo+IFsyXSBodHRwOi8va2lzc2tiLmVsbGVybWFuLmlkLmF1L2tpc3NrYi9oZWFkLzFi
ZDhiNzVmZTZhZGVhYTg5ZDAyOTY4YmRkODExZmZlNzA4Y2Y4MzkvDQoNCkVlayEgVGhhbmtzIGZv
ciBsZXR0aW5nIG1lIGtub3cuIEknbSBjb25mdXNlZCBhYm91dCB0aGlzIC0tDQpfX2FsbG9jX3Np
emVfXyB3YXNuJ3Qgb3B0aW9uYWwgaW4gY29tcGlsZXJfYXR0cmlidXRlcy5oIC0tIGJ1dCBvYnZp
b3VzbHkNCkkgYnJva2Ugc29tZXRoaW5nISBJJ2xsIGdvIGZpZ3VyZSB0aGlzIG91dC4NCg0KLUtl
ZXMNCg0KLS0gDQpLZWVzIENvb2sNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
