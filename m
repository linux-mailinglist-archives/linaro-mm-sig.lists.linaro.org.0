Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B85286BD118
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Mar 2023 14:41:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C68223EC04
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Mar 2023 13:41:05 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 0AD1B3E975
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Mar 2023 13:40:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=PcXHkg2D;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.128.49) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f49.google.com with SMTP id x22so1280700wmj.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Mar 2023 06:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1678974045;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EczCGKLk4fBTHmXyHSJ7ilvmJkZQHqbhf3hkS/Fo9ig=;
        b=PcXHkg2DYEsN4SGmyoKoPXIk7dghTl5j1DrVQd/I+VAlz8ytLioRVaYUlY0BsynH1D
         Re0TvwlalBhQsYImYDkeNrZBpsj3te+fCYUSH+1Xmy/rxOPP2nbxuLR3tfsCx4KO/eoZ
         h9Bz2UewqJAlReH7xWEXkMxtktP7ySRXi5cJc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678974045;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EczCGKLk4fBTHmXyHSJ7ilvmJkZQHqbhf3hkS/Fo9ig=;
        b=m5vO6r8ku6UMum7IrrpdFaeMTuZ6OWQ5HkRInKgBiRtYckOjTUxjYQL8bgVOvs4/3C
         we3rFAd1xqEbzt7QmU+jEgRm5XkA/ZChnYfgEaJoBzoK9pLisbj2IBb0EKTOFAn891Qy
         +A76boPkzg+1GUYOd0LlfMle6XjB7wcWtd+ncRfHRXvtO+OsL5U483YbJVTkK143xSgR
         VdVN6zqT8mdRmeLO2rWz58Xfoo4deC2+Q/dWk72I3aITwabKlSN1bpZemKzAzL/RfnpW
         qWoYSxPc9uedXcogOAXa3DOa4ZZ0e51YeIR3qEMfqjytjAG7SRoj1WZxdFS3bABBhrZR
         3uTA==
X-Gm-Message-State: AO0yUKX/gieae/PdzX72k/nkoDsWYV/XnyvshMupY7Z41AArTS3gfOqI
	fPUhsDNKYf20eSa5e+tFSh/7mA==
X-Google-Smtp-Source: AK7set/fjat3yH3Fc06VMIK6e7qPeFsvuNYHOJTB0RKC8hvnm2dYtyI5Jh2XJJySBg2aaliqjCVONw==
X-Received: by 2002:a05:600c:3b92:b0:3eb:42f6:ac55 with SMTP id n18-20020a05600c3b9200b003eb42f6ac55mr2688631wms.1.1678974044966;
        Thu, 16 Mar 2023 06:40:44 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id y16-20020a05600c365000b003ed23845666sm4915002wmq.45.2023.03.16.06.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 06:40:44 -0700 (PDT)
Date: Thu, 16 Mar 2023 14:40:42 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Karol Herbst <kherbst@redhat.com>
Message-ID: <ZBMcWuu+W2zfP64O@phenom.ffwll.local>
Mail-Followup-To: Karol Herbst <kherbst@redhat.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
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
	Luben Tuikov <luben.tuikov@amd.com>,
	Jarkko Sakkinen <jarkko@kernel.org>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Ella Stanforth <ella@iglunix.org>,
	Faith Ekstrand <faith.ekstrand@collabora.com>,
	Mary <mary@mary.zone>, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	linux-sgx@vger.kernel.org, asahi@lists.linux.dev
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-10-917ff5bc80a8@asahilina.net>
 <cd788ccf-0cf1-85d5-1bf8-efc259bd7e11@amd.com>
 <CACO55tsnCMQt8UW5_UCY139kpZOdNXbMkBkFfUiB12jW5UgVmA@mail.gmail.com>
 <0d6cd23b-8c9e-067d-97ff-aa35dbbcf9bf@amd.com>
 <CACO55tumNMYrcJ0LhnLfTK4DmGLHD-bt3xpXyoPe98V2wmgXQg@mail.gmail.com>
 <269c4fb7-60f6-6778-444d-15703febea58@amd.com>
 <CACO55tuVVnC-_iVmX=SGGVF=0t6kqqr0Cy0pGe3YoppBgUbiXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACO55tuVVnC-_iVmX=SGGVF=0t6kqqr0Cy0pGe3YoppBgUbiXw@mail.gmail.com>
X-Operating-System: Linux phenom 6.1.0-5-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0AD1B3E975
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FREEMAIL_CC(0.00)[amd.com,asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,rosenzweig.io,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[29];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.49:from]
Message-ID-Hash: PY6MJSL4QF7DGZ3FYR47R3YTXPL4OUUR
X-Message-ID-Hash: PY6MJSL4QF7DGZ3FYR47R3YTXPL4OUUR
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Asahi Lina <lina@asahilina.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@
 lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PY6MJSL4QF7DGZ3FYR47R3YTXPL4OUUR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXIgMDgsIDIwMjMgYXQgMDQ6MTk6MTdQTSArMDEwMCwgS2Fyb2wgSGVyYnN0IHdy
b3RlOg0KPiBPbiBXZWQsIE1hciA4LCAyMDIzIGF0IDQ6MDnigK9QTSBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+DQo+ID4gQW0gMDguMDMuMjMg
dW0gMTU6NDMgc2NocmllYiBLYXJvbCBIZXJic3Q6DQo+ID4gPiBbU05JUF0NCj4gPiA+ICJmdXJ0
aGVyIj8gVGhlcmUgd2FzIG5vIGRpc2N1c3Npb24gYXQgYWxsLA0KPiA+DQo+ID4gWWVhaCwgd2Vs
bCB0aGF0IGlzIGV4YWN0bHkgd2hhdCBJIHdhbnRlZCB0byBhcmNoaXZlLg0KPiA+DQo+ID4gPiAg
IHlvdSBqdXN0IHN0YXJ0ZWQgb2ZmIGxpa2UNCj4gPiA+IHRoYXQuIElmIHlvdSB0aGluayBzb21l
Ym9keSBtaXNzZXMgdGhhdCBjb25uZWN0aW9uLCB5b3UgY2FuIHBvaW50IG91dA0KPiA+ID4gdG8g
ZG9jdW1lbnRhdGlvbi92aWRlb3Mgd2hhdGV2ZXIgc28gdGhlIGNvbnRyaWJ1dG9yIGNhbiB1bmRl
cnN0YW5kDQo+ID4gPiB3aGF0J3Mgd3Jvbmcgd2l0aCBhbiBhcHByb2FjaC4gWW91IGRpZCB0aGF0
LCBzbyB0aGF0J3MgZmluZS4gSXQncyBqdXN0DQo+ID4gPiBzdGFydGluZyBvZmYgX2FueV8gZGlz
Y3Vzc2lvbiB3aXRoIGEgIldlbGwgY29tcGxldGUgTkFLIiBpcyB0ZXJyaWJsZQ0KPiA+ID4gc3R5
bGUuIEknZCBmZWVsIHVuY29tZm9ydGFibGUgaWYgdGhhdCBoYXBwZW5lZCB0byBtZSBhbmQgSSdt
IHN1cmUNCj4gPiA+IHRoZXJlIGFyZSBlbm91Z2ggcGVvcGxlIGxpa2UgdGhhdCB0aGF0IHdlIHNo
b3VsZCBiZSBtb3JlIHJlYXNvbmFibGUNCj4gPiA+IHdpdGggb3VyIHJlcGxpZXMuIEp1c3QuLiBk
b24ndC4NCj4gPiA+DQo+ID4gPiBXZSBhcmUgYWxsIGh1bWFucyBoZXJlIGFuZCBwZW9wbGUgcmVh
Y3QgbmVnYXRpdmVseSB0byBzdWNoIHRoaW5ncy4gQW5kDQo+ID4gPiBpZiBwZW9wbGUgZG8gaXQg
b24gcHVycG9zZSBpdCBqdXN0IG1ha2VzIGl0IHdvcnNlLg0KPiA+DQo+ID4gSSBjb21wbGV0ZWx5
IHNlZSB5b3VyIHBvaW50LCBJIGp1c3QgZG9uJ3Qga25vdyBob3cgdG8gaW1wcm92ZSBpdC4NCj4g
Pg0KPiA+IEkgZG9uJ3Qgc3RvcCBwZW9wbGUgbGlrZSB0aGlzIGJlY2F1c2UgSSB3YW50IHRvIG1h
a2UgdGhlbSB1bmNvbWZvcnRhYmxlDQo+ID4gYnV0IGJlY2F1c2UgSSB3YW50IHRvIHByZXZlbnQg
ZnVydGhlciBkaXNjdXNzaW9ucyBvbiB0aGF0IHRvcGljLg0KPiA+DQo+ID4gSW4gb3RoZXIgd29y
ZHMgaG93IGNhbiBJIG1ha2UgcGVvcGxlIG5vdGljZSB0aGF0IHRoaXMgaXMgc29tZXRoaW5nDQo+
ID4gZnVuZGFtZW50YWwgd2hpbGUgc3RpbGwgYmVpbmcgcG9saXRlPw0KDQpBc2sgdGhlbSB0byBp
bXByb3ZlIHRoZSBkb2NzLiBHZXRzIHRoZW0gb24gYm9hcmQsIGFuZCBmb3IgYm9udXMgcG9pbnQg
eW91DQotIGNhbiBjaGVjayB0aGV5IGFjdHVhbGx5IGdldCBpdCB3aGVuIHlvdSByZXZpZXcgdGhl
IGRvYyBwYXRjaA0KLSBnZXQgc2NoZWR1bGVyIGRvY3MgZm9yIGZyZWUNCi0gaGF2ZSBhbiBlYXNp
bHkgcGFzdGVhYmxlIGxpbmsgZm9yIG5leHQgdGltZSBhcm91bmQgaW5zdGVhZCBvZiBqdXN0IGFu
DQogIGFnZ3Jlc3NpdmUgTkFLIHRoYXQgaGVscHMgbm8gb25lIHJlYWxseSAoYXNpZGUgZnJvbSBn
ZXR0aW5nIHBlb3BsZQ0KICBib2lsaW5nKS4NCg0KSXQncyBub3QgcmVhbGx5IGFib3V0IGJlaW5n
IHBvbGl0ZSBidXQgbWFraW5nIHN1cmUgdGhhdCBlZmZpY2llbnQNCmNvbW11bmljdGlvbiBoYXBw
ZW5zIGFuZCB0aGF0IHlvdSBkb24ndCBoYXZlIHRvIHJlcGVhdCB5b3Vyc2VsZi4gSW4gcmFyZQ0K
Y2FzZXMgeW91IGdldCB0byB0eXBlIHRoZSBkb2NzIHRoZW1zZWxmIHdoZW4gcGVvcGxlIGFyZSB0
b28gZGVuc2UgdG8gbGVhcm4NCihsaWtlIHdoYXQgSSBoYWQgdG8gZG8gd2l0aCB0aGUgdmFyaW91
cyBkbWFfZmVuY2UgZG9jcykuDQoNCj4gSSB0aGluayBhIGxpdHRsZSBpbXByb3ZlbWVudCBvdmVy
IHRoaXMgd291bGQgYmUgdG8gYXQgbGVhc3Qgd2FpdCBhIGZldw0KPiByZXBsaWVzIGJlZm9yZSBy
ZXNvcnRpbmcgdG8gdGhvc2Ugc3Ryb25nIHN0YXRlbWVudHMuIEp1c3QgYmVmb3JlIGl0DQo+IGJl
Y29tZXMgYSByaXNrIGluIGp1c3Qgd2FzdGluZyB0aW1lLg0KDQpTZWUgYWJvdmUgd2hhdCBJJ20g
dHJ5aW5nIHRvIGRvLiBXaGVuIHRoZSBtZXNzYWdlIGRvZXNuJ3Qgc2luayBpbiBhcw0KZWl0aGVy
IGEgcHJvcGVyIGRvYyBwYXRjaCBvciB3aGVuIGxpbmtpbmcgdG8gdGhlIGRvYyBwYXRjaCBmb3Ig
bmV4dCB0aW1lDQphcm91bmQgKGJlY2F1c2UgbGV0J3MgZmFjZSBpdCwgdGhpcyBlbnRpcmUgY29u
Y2VwdCBvZiAiZG1hX2ZlbmNlIGNvbW1pdHRlZA0KZm9yIGV4ZWN1dGlvbiIgaXMgZXh0cmVtZWx5
IHRyaWNrLCB0aGVyZSB3aWxsIGJlIHJlcGVhdGlvbnMgb2YgdGhpcw0KcXVlc3Rpb24gdW50aWwg
d2UndmUgc3Vuc2V0IGRtYV9mZW5jZSwgd2hpY2ggaXMgcHJvYmFibHkgZGVjYWRlcyBhd2F5KS4N
Cg0KSWYgdGhlIGxlYXJuaW5nIGRvZXMgbm90IGhhcHBlbiwgdGhlbiBpdCdzIHRoZSB0aW1lIHRv
IHdoYWNrIHRoZSBiaWcNCmhhbW1lciAoYW5kIGlmIHBlb3BsZSBkb24ndCBnZXQgaXQsIHlvdSBj
YW4gZXNjYWxhdGUgdG8gRGF2ZSZtZSwgd2UgaGF2ZQ0KdG9vbHMgdG8gbWFrZSBzdXJlIHBlb3Bs
ZSBnZXQgdGhlIG1lc3NhZ2UpLiBCdXQgdGhpcyByZWFsbHkgc2hvdWxkIGJlIHRoZQ0KZW5kLCBu
b3QgdGhlIHN0YXJ0IG9mIHRoZSBlc2NhbGF0aW9uIGNoYWluIDotKQ0KDQpDaGVlcnMsIERhbmll
bA0KDQo+IA0KPiA+ID4+Pj4gVGhpcyBpcyBjbGVhcmx5IGdvaW5nIGFnYWluc3QgdGhlIGlkZWEg
b2YgaGF2aW5nIGpvYnMgb25seSBkZXBlbmQgb24NCj4gPiA+Pj4+IGZlbmNlcyBhbmQgbm90aGlu
ZyBlbHNlIHdoaWNoIGlzIG1hbmRhdG9yeSBmb3IgY29ycmVjdCBtZW1vcnkgbWFuYWdlbWVudC4N
Cj4gPiA+Pj4+DQo+ID4gPj4+IEknbSBzdXJlIGl0J3MgYWxsIGRvY3VtZW50ZWQgYW5kIHRoZXJl
IGlzIGEgZGVzaWduIGRvY3VtZW50IG9uIGhvdw0KPiA+ID4+PiB0aGluZ3MgaGF2ZSB0byBsb29r
IGxpa2UgeW91IGNhbiBwb2ludCBvdXQ/IE1pZ2h0IGhlbHAgdG8gZ2V0IGEgYmV0dGVyDQo+ID4g
Pj4+IHVuZGVyc3RhbmRpbmcgb24gaG93IHRoaW5ncyBzaG91bGQgYmUuDQo+ID4gPj4gWWVhaCwg
dGhhdCdzIHRoZSBwcm9ibGVtYXRpYyBwYXJ0LiBXZSBoYXZlIGRvY3VtZW50ZWQgdGhpcyB2ZXJ5
DQo+ID4gPj4gZXh0ZW5zaXZlbHk6DQo+ID4gPj4gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2Mv
aHRtbC92NS45L2RyaXZlci1hcGkvZG1hLWJ1Zi5odG1sI2luZGVmaW5pdGUtZG1hLWZlbmNlcw0K
PiA+ID4+DQo+ID4gPj4gQW5kIGJvdGggSmFzb24gYW5kIERhbmllbCBnYXZlIHRhbGtzIGFib3V0
IHRoZSB1bmRlcmx5aW5nIHByb2JsZW0gYW5kDQo+ID4gPiBmeWk6DQo+ID4gPiBzL0phc29uL0Zh
aXRoL2cNCj4gPg0KPiA+ICsxLiBJIHdhc24ndCBhd2FyZSBvZiB0aGF0Lg0KPiA+DQo+ID4gPj4g
dHJ5IHRvIGNvbWUgdXAgd2l0aCBwYXRjaGVzIHRvIHJhaXNlIHdhcm5pbmdzIHdoZW4gdGhhdCBo
YXBwZW5zLCBidXQNCj4gPiA+PiBwZW9wbGUgc3RpbGwga2VlcCBjb21pbmcgdXAgd2l0aCB0aGUg
c2FtZSBpZGVhIG92ZXIgYW5kIG92ZXIgYWdhaW4uDQo+ID4gPj4NCj4gPiA+IFllcywgYW5kIHdl
J2xsIGhhdmUgdG8gdGVsbCB0aGVtIG92ZXIgYW5kIG92ZXIgYWdhaW4uIE5vdGhpbmcgd3JvbmcN
Cj4gPiA+IHdpdGggdGhhdC4gVGhhdCdzIGp1c3QgcGFydCBvZiBtYWludGFpbmluZyBzdWNoIGEg
YmlnIHN1YnN5c3RlbS4gQW5kDQo+ID4gPiB0aGF0J3MgZGVmaW5pdGVseSBub3QgYSB2YWxpZCBy
ZWFzb24gdG8gcGhyYXNlIHRoaW5ncyBsaWtlIGFib3ZlLg0KPiA+ID4NCj4gPiA+PiBJdCdzIGp1
c3QgdGhhdCB0aGUgdGVjaG5pY2FsIHJlbGF0aW9uc2hpcCBiZXR3ZWVuIHByZXZlbnRpbmcgam9i
cyBmcm9tDQo+ID4gPj4gcnVubmluZyBhbmQgd2l0aCB0aGF0IHByZXZlbnRpbmcgZG1hX2ZlbmNl
cyBmcm9tIHNpZ25hbGluZyBhbmQgdGhlIGNvcmUNCj4gPiA+PiBtZW1vcnkgbWFuYWdlbWVudCB3
aXRoIHBhZ2UgZmF1bHRzIGFuZCBzaHJpbmtlcnMgd2FpdGluZyBmb3IgdGhvc2UNCj4gPiA+PiBm
ZW5jZXMgaXMgYWJzb2x1dGVseSBub3Qgb2J2aW91cy4NCj4gPiA+Pg0KPiA+ID4+IFdlIGhhZCBh
dCBsZWFzdCAxMCBkaWZmZXJlbnQgdGVhbXMgZnJvbSBkaWZmZXJlbnQgY29tcGFuaWVzIGZhbGxp
bmcgaW50bw0KPiA+ID4+IHRoZSBzYW1lIHRyYXAgYWxyZWFkeSBhbmQgZWl0aGVyIHRoZSBwYXRj
aGVzIHdlcmUgcmVqZWN0ZWQgb2YgaGFuZCBvcg0KPiA+ID4+IGhhZCB0byBwYWluZnVsbHkgcmV2
ZXJ0ZWQgb3IgbWl0aWdhdGVkIGxhdGVyIG9uLg0KPiA+ID4+DQo+ID4gPiBTdXJlLCBidXQgdGhh
dCdzIGp1c3QgcGFydCBvZiB0aGUgam9iLiBBbmQgcG9pbnRpbmcgb3V0IGZ1bmRhbWVudGFsDQo+
ID4gPiBtaXN0YWtlcyBlYXJseSBvbiBpcyBpbXBvcnRhbnQsIGJ1dCB0aGUgc2l0dWF0aW9uIHdv
bid0IGdldCBhbnkgYmV0dGVyDQo+ID4gPiBieSBiZWluZyBsaWtlIHRoYXQuIFllcywgd2UnbGwg
aGF2ZSB0byByZXBlYXQgdGhlIHNhbWUgd29yZHMgb3ZlciBhbmQNCj4gPiA+IG92ZXIgYWdhaW4s
IGFuZCB5ZXMgdGhhdCBtaWdodCBiZSBhbm5veWluZywgYnV0IHRoYXQncyBqdXN0IGhvdyBpdCBp
cy4NCj4gPg0KPiA+IFdlbGwgSSBoYXZlIG5vIHByb2JsZW0gZXhwbGFpbmluZyBwZW9wbGUgd2h5
IGEgc29sdXRpb24gZG9lc24ndCB3b3JrLg0KPiA+DQo+ID4gQnV0IHdoYXQgdXN1YWxseSBoYXBw
ZW5zIGlzIHRoYXQgcGVvcGxlIGRvbid0IHJlYWxpemUgdGhhdCB0aGV5IG5lZWQgdG8NCj4gPiBi
YWNrIG9mIGZyb20gYSBkZXNpZ24gYW5kIGNvbXBsZXRlbHkgc3RhcnQgb3Zlci4NCj4gPg0KPiA+
IFJlZ2FyZHMsDQo+ID4gQ2hyaXN0aWFuLg0KPiA+DQo+ID4gPg0KPiA+ID4+IFJlZ2FyZHMsDQo+
ID4gPj4gQ2hyaXN0aWFuLg0KPiA+ID4+DQo+ID4gPj4+PiBJZiB0aGUgaHcgaXMgYnVzeSB3aXRo
IHNvbWV0aGluZyB5b3UgbmVlZCB0byByZXR1cm4gdGhlIGZlbmNlIGZvciB0aGlzDQo+ID4gPj4+
PiBmcm9tIHRoZSBwcmVwYXJlX2pvYiBjYWxsYmFjayBzbyB0aGF0IHRoZSBzY2hlZHVsZXIgY2Fu
IGJlIG5vdGlmaWVkIHdoZW4NCj4gPiA+Pj4+IHRoZSBodyBpcyBhdmFpbGFibGUgYWdhaW4uDQo+
ID4gPj4+Pg0KPiA+ID4+Pj4gUmVnYXJkcywNCj4gPiA+Pj4+IENocmlzdGlhbi4NCj4gPiA+Pj4+
DQo+ID4gPj4+Pj4gU2lnbmVkLW9mZi1ieTogQXNhaGkgTGluYSA8bGluYUBhc2FoaWxpbmEubmV0
Pg0KPiA+ID4+Pj4+IC0tLQ0KPiA+ID4+Pj4+ICAgICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVy
L3NjaGVkX21haW4uYyB8IDEwICsrKysrKysrKysNCj4gPiA+Pj4+PiAgICAgaW5jbHVkZS9kcm0v
Z3B1X3NjaGVkdWxlci5oICAgICAgICAgICAgfCAgOCArKysrKysrKw0KPiA+ID4+Pj4+ICAgICAy
IGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykNCj4gPiA+Pj4+Pg0KPiA+ID4+Pj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyBiL2RyaXZl
cnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+ID4gPj4+Pj4gaW5kZXggNGU2YWQ2
ZTEyMmJjLi41YzBhZGQyYzc1NDYgMTAwNjQ0DQo+ID4gPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMNCj4gPiA+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPiA+ID4+Pj4+IEBAIC0xMDAxLDYgKzEwMDEsMTYg
QEAgc3RhdGljIGludCBkcm1fc2NoZWRfbWFpbih2b2lkICpwYXJhbSkNCj4gPiA+Pj4+PiAgICAg
ICAgICAgICAgICAgaWYgKCFlbnRpdHkpDQo+ID4gPj4+Pj4gICAgICAgICAgICAgICAgICAgICAg
ICAgY29udGludWU7DQo+ID4gPj4+Pj4NCj4gPiA+Pj4+PiArICAgICAgICAgICAgIGlmIChzY2hl
ZC0+b3BzLT5jYW5fcnVuX2pvYikgew0KPiA+ID4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBz
Y2hlZF9qb2IgPSB0b19kcm1fc2NoZWRfam9iKHNwc2NfcXVldWVfcGVlaygmZW50aXR5LT5qb2Jf
cXVldWUpKTsNCj4gPiA+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgaWYgKCFzY2hlZF9qb2Ip
IHsNCj4gPiA+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb21wbGV0ZV9hbGwo
JmVudGl0eS0+ZW50aXR5X2lkbGUpOw0KPiA+ID4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGNvbnRpbnVlOw0KPiA+ID4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICB9DQo+ID4g
Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGlmICghc2NoZWQtPm9wcy0+Y2FuX3J1bl9qb2Io
c2NoZWRfam9iKSkNCj4gPiA+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250
aW51ZTsNCj4gPiA+Pj4+PiArICAgICAgICAgICAgIH0NCj4gPiA+Pj4+PiArDQo+ID4gPj4+Pj4g
ICAgICAgICAgICAgICAgIHNjaGVkX2pvYiA9IGRybV9zY2hlZF9lbnRpdHlfcG9wX2pvYihlbnRp
dHkpOw0KPiA+ID4+Pj4+DQo+ID4gPj4+Pj4gICAgICAgICAgICAgICAgIGlmICghc2NoZWRfam9i
KSB7DQo+ID4gPj4+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaCBi
L2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KPiA+ID4+Pj4+IGluZGV4IDlkYjllNWU1MDRl
ZS4uYmQ4OWVhOTUwN2I5IDEwMDY0NA0KPiA+ID4+Pj4+IC0tLSBhL2luY2x1ZGUvZHJtL2dwdV9z
Y2hlZHVsZXIuaA0KPiA+ID4+Pj4+ICsrKyBiL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0K
PiA+ID4+Pj4+IEBAIC0zOTYsNiArMzk2LDE0IEBAIHN0cnVjdCBkcm1fc2NoZWRfYmFja2VuZF9v
cHMgew0KPiA+ID4+Pj4+ICAgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqKCpwcmVwYXJlX2pvYiko
c3RydWN0IGRybV9zY2hlZF9qb2IgKnNjaGVkX2pvYiwNCj4gPiA+Pj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICpzX2Vu
dGl0eSk7DQo+ID4gPj4+Pj4NCj4gPiA+Pj4+PiArICAgICAvKioNCj4gPiA+Pj4+PiArICAgICAg
KiBAY2FuX3J1bl9qb2I6IENhbGxlZCBiZWZvcmUgam9iIGV4ZWN1dGlvbiB0byBjaGVjayB3aGV0
aGVyIHRoZQ0KPiA+ID4+Pj4+ICsgICAgICAqIGhhcmR3YXJlIGlzIGZyZWUgZW5vdWdoIHRvIHJ1
biB0aGUgam9iLiAgVGhpcyBjYW4gYmUgdXNlZCB0bw0KPiA+ID4+Pj4+ICsgICAgICAqIGltcGxl
bWVudCBtb3JlIGNvbXBsZXggaGFyZHdhcmUgcmVzb3VyY2UgcG9saWNpZXMgdGhhbiB0aGUNCj4g
PiA+Pj4+PiArICAgICAgKiBod19zdWJtaXNzaW9uIGxpbWl0Lg0KPiA+ID4+Pj4+ICsgICAgICAq
Lw0KPiA+ID4+Pj4+ICsgICAgIGJvb2wgKCpjYW5fcnVuX2pvYikoc3RydWN0IGRybV9zY2hlZF9q
b2IgKnNjaGVkX2pvYik7DQo+ID4gPj4+Pj4gKw0KPiA+ID4+Pj4+ICAgICAgICAgLyoqDQo+ID4g
Pj4+Pj4gICAgICAgICAgICAgICogQHJ1bl9qb2I6IENhbGxlZCB0byBleGVjdXRlIHRoZSBqb2Ig
b25jZSBhbGwgb2YgdGhlIGRlcGVuZGVuY2llcw0KPiA+ID4+Pj4+ICAgICAgICAgICAgICAqIGhh
dmUgYmVlbiByZXNvbHZlZC4gIFRoaXMgbWF5IGJlIGNhbGxlZCBtdWx0aXBsZSB0aW1lcywgaWYN
Cj4gPiA+Pj4+Pg0KPiA+DQo+IA0KDQotLSANCkRhbmllbCBWZXR0ZXINClNvZnR3YXJlIEVuZ2lu
ZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbg0KaHR0cDovL2Jsb2cuZmZ3bGwuY2gNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
