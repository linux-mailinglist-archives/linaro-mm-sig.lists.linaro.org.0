Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E058BEDF6
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 22:19:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4ACEA44895
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 20:19:40 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by lists.linaro.org (Postfix) with ESMTPS id C35713F02C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 20:19:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=REt5kYpj;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.160.177 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-43c5c5496a3so16628871cf.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 13:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715113168; x=1715717968; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=es6kOeqxgl2y45OhjVGBF/iXix85aXMFVxnvsRCztrQ=;
        b=REt5kYpjpM6E51FtTmrNjmL251VN7QfN/OKsYIeeJP8SiZ30tRCNpJayXvRr+UC2+W
         opV4/tsMV5J9Av+lULp45Z9GFdIAtecEpN2m4GZ9spEL6Kr+SNfEO5FkBGYSmg/QUBbC
         sG+NkEfX6ZLiYAfUGLFxZaHUP+OpMNoht2trc4k/SxN134bc2KEpzc5Zt9pr94eT7wL7
         kHzHOLGiZv0FJL7Y15986kJhIfB3la1XmAe3vBXgBjd2HwqgSkz1uu6rIgZmmyhbjM2p
         BVqu5mwjbo1c1XZquG7yCk3nzdnFvGxseAvV1+LqmAucOoUdjZYc8mB/0cUaczx0KUMn
         V/tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715113168; x=1715717968;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=es6kOeqxgl2y45OhjVGBF/iXix85aXMFVxnvsRCztrQ=;
        b=ojrWqxYlqT7f0uKWtlvLnKGRjEhGeaVVCBTceEpzaLuRuYRCMFmDMtE3jJeHVMQ+GL
         axfeojLRLqf6FsNvTWfgbOH0MODqUjbnPw1Mr/lP1miJ/lJZ3dz9MwANPakcoS/vvh9z
         llfwe+u3vaSjIHJJXPYmEVuZQl550ph9Ko4bdEeE0kFsXsdWDfA8dpaWp01rmCrcSfL/
         vFJ5OQw/Qtfn1BD+QLrx0ZscLgmzA9drcUhi39GBDXCJaZV9a5Uw4k6FoEAg2Y640a/n
         c41v+RlzNrouJEwfJW121SSZR9eoDEOe32nqrgH1jVPZDWdWDbKBFqyYUTPWqZtz9e0o
         mJag==
X-Forwarded-Encrypted: i=1; AJvYcCWtruQ4xJq1fbNnQkEJgdCzy7A9eERIsyKZ/VaGNIoYjLcjnjeXc3B2ib/lERLaugyg+rgXA5xJD4IOqQzbA5OmEg9Nx2XnVUNf33HSAWY=
X-Gm-Message-State: AOJu0Yx4NkOpzrCnw8j4Xz+EaE8HMarhQfrj6o2PuuTUFhsaes5Vzf+o
	lz/+gVn9UaMeIm+t9yXMf7bSDiFj4xIU20kbedWGYgYnE66AwVwT4ju0pJWMcSRjk29hk6fIibm
	hjv3kxRrM79HWCnpjIRiOX8DsDLY=
X-Google-Smtp-Source: AGHT+IGjQYEmujwDqITllarXLP0VSc4Xwa06HzUYmRdr1deTa3vLo/f8zZvGJuZm3wydGhy1EMQyC+TW2MVkAkeMlMU=
X-Received: by 2002:a05:622a:2990:b0:43a:e248:12d3 with SMTP id
 d75a77b69052e-43dbec0da59mr11066911cf.14.1715113168226; Tue, 07 May 2024
 13:19:28 -0700 (PDT)
MIME-Version: 1.0
References: <4fedd80c-d5b6-4478-bfd3-02d1ee1a26e5@vivo.com>
 <aab5ec51-fcff-44f2-a4f5-2979bd776a03@amd.com> <2ebca2fd-9465-4e64-b3cc-ffb88ef87800@vivo.com>
 <d4209754-5f26-422d-aca0-45cccbc44ad0@amd.com> <289b9ad6-58a3-aa39-48ae-a244fe108354@quicinc.com>
 <CABdmKX3Zu8LihAFjMuUHx4xzZoqgmY7OKdyVz-D26gM-LECn6A@mail.gmail.com>
 <8ca45837-cbed-28da-4a6f-0dcec8294f51@quicinc.com> <83605228-92ee-b666-d894-1c145af2e5ab@quicinc.com>
 <CABdmKX2MWU9-9YN46PXx-Jy-O9CHMv8hCkvArd7BbWUBs=GPnw@mail.gmail.com>
 <8915fcc1-d8f1-48c2-9e51-65159aaa5a3b@amd.com> <ZjovD5WaWjknd-qv@phenom.ffwll.local>
 <44b08793-cf44-4cbd-a3bb-583af351ab9e@amd.com> <CABdmKX3SpOk4BQU6i31r8jHc1f-o8sz7rXgtRyhTQZ4GJYHH=Q@mail.gmail.com>
In-Reply-To: <CABdmKX3SpOk4BQU6i31r8jHc1f-o8sz7rXgtRyhTQZ4GJYHH=Q@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 7 May 2024 13:19:15 -0700
Message-ID: <CAF6AEGvZTc10nfjEZHWXXYa5AVSNQCOgXsY4H05fcsFkTsdzFg@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C35713F02C
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.177:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,android.com:url];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: WVOQKMPYKCHFCS7522AGTIBIC2B5EPEH
X-Message-ID-Hash: WVOQKMPYKCHFCS7522AGTIBIC2B5EPEH
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Charan Teja Kalla <quic_charante@quicinc.com>, zhiguojiang <justinjiang@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WVOQKMPYKCHFCS7522AGTIBIC2B5EPEH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXkgNywgMjAyNCBhdCAxMToxN+KAr0FNIFQuSi4gTWVyY2llciA8dGptZXJjaWVy
QGdvb2dsZS5jb20+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIE1heSA3LCAyMDI0IGF0IDc6MDTigK9B
TSBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+
DQo+ID4gQW0gMDcuMDUuMjQgdW0gMTU6Mzkgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiA+ID4g
T24gVHVlLCBNYXkgMDcsIDIwMjQgYXQgMTI6MTA6MDdQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPiA+PiBBbSAwNi4wNS4yNCB1bSAyMTowNCBzY2hyaWViIFQuSi4gTWVyY2ll
cjoNCj4gPiA+Pj4gT24gTW9uLCBNYXkgNiwgMjAyNCBhdCAyOjMw4oCvQU0gQ2hhcmFuIFRlamEg
S2FsbGENCj4gPiA+Pj4gPHF1aWNfY2hhcmFudGVAcXVpY2luYy5jb20+IHdyb3RlOg0KPiA+ID4+
Pj4gSGkgVEosDQo+ID4gPj4+Pg0KPiA+ID4+Pj4gU2VlbXMgSSBoYXZlIGdvdCBhbnN3ZXJzIGZy
b20gWzFdLCB3aGVyZSBpdCBpcyBhZ3JlZWQgdXBvbiBlcG9sbCgpIGlzDQo+ID4gPj4+PiB0aGUg
c291cmNlIG9mIGlzc3VlLg0KPiA+ID4+Pj4NCj4gPiA+Pj4+IFRoYW5rcyBhIGxvdCBmb3IgdGhl
IGRpc2N1c3Npb24uDQo+ID4gPj4+Pg0KPiA+ID4+Pj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xrbWwvMDAwMDAwMDAwMDAwMmQ2MzFmMDYxNTkxOGYxZUBnb29nbGUuY29tLw0KPiA+ID4+
Pj4NCj4gPiA+Pj4+IFRoYW5rcw0KPiA+ID4+Pj4gQ2hhcmFuDQo+ID4gPj4+IE9oIG1hbiwgcXVp
dGUgYSBzZXQgb2YgdGhyZWFkcyBvbiB0aGlzIG92ZXIgdGhlIHdlZWtlbmQuIFRoYW5rcyBmb3Ig
dGhlIGxpbmsuDQo+ID4gPj4gWWVhaCBhbmQgaXQgYWxzbyBoYXMgc29tZSBpbnRlcmVzdGluZyBz
aWRlIGNvbmNsdXNpb246IFdlIHNob3VsZCBwcm9iYWJseQ0KPiA+ID4+IHRlbGwgcGVvcGxlIHRv
IHN0b3AgdXNpbmcgRE1BLWJ1ZiB3aXRoIGVwb2xsLg0KPiA+ID4+DQo+ID4gPj4gVGhlIGJhY2tn
cm91bmQgaXMgdGhhdCB0aGUgbXV0ZXggYXBwcm9hY2ggZXBvbGwgdXNlcyB0byBtYWtlIGZpbGVz
IGRpc2FwcGVhcg0KPiA+ID4+IGZyb20gdGhlIGludGVyZXN0IGxpc3Qgb24gY2xvc2UgcmVzdWx0
cyBpbiB0aGUgZmFjdCB0aGF0IGVhY2ggZmlsZSBjYW4gb25seQ0KPiA+ID4+IGJlIHBhcnQgb2Yg
YSBzaW5nbGUgZXBvbGwgYXQgYSB0aW1lLg0KPiA+ID4+DQo+ID4gPj4gTm93IHNpbmNlIERNQS1i
dWYgaXMgYnVpbGQgYXJvdW5kIHRoZSBpZGVhIHRoYXQgd2Ugc2hhcmUgdGhlIGJ1ZmZlcg0KPiA+
ID4+IHJlcHJlc2VudGF0aW9uIGFzIGZpbGUgYmV0d2VlbiBwcm9jZXNzZXMgaXQgbWVhbnMgdGhh
dCBvbmx5IG9uZSBwcm9jZXNzIGF0IGENCj4gPiA+PiB0aW1lIGNhbiB1c2UgZXBvbGwgd2l0aCBl
YWNoIERNQS1idWYuDQo+ID4gPj4NCj4gPiA+PiBTbyBmb3IgZXhhbXBsZSBpZiBhIHdpbmRvdyBt
YW5hZ2VyIHVzZXMgZXBvbGwgZXZlcnl0aGluZyBpcyBmaW5lLiBJZiBhDQo+ID4gPj4gY2xpZW50
IGlzIHVzaW5nIGVwb2xsIGV2ZXJ5dGhpbmcgaXMgZmluZSBhcyB3ZWxsLiBCdXQgaWYgKmJvdGgq
IHVzZSBlcG9sbCBhdA0KPiA+ID4+IHRoZSBzYW1lIHRpbWUgaXQgd29uJ3Qgd29yay4NCj4gPiA+
Pg0KPiA+ID4+IFRoaXMgY2FuIGxlYWQgdG8gcmF0aGVyIGZ1bm55IGFuZCBoYXJkIHRvIGRlYnVn
IGNvbWJpbmF0aW9ucyBvZiBmYWlsdXJlcyBhbmQNCj4gPiA+PiBJIHRoaW5rIHdlIG5lZWQgdG8g
ZG9jdW1lbnQgdGhpcyBsaW1pdGF0aW9uIGFuZCBleHBsaWNpdGx5IHBvaW50IGl0IG91dC4NCj4g
PiA+IE9rLCBJIHRlc3RlZCB0aGlzIHdpdGggYSBzbWFsbCBDIHByb2dyYW0sIGFuZCB5b3UncmUg
bWl4aW5nIHRoaW5ncyB1cC4NCj4gPiA+IEhlcmUncyB3aGF0IEkgZ290DQo+ID4gPg0KPiA+ID4g
LSBZb3UgY2Fubm90IGFkZCBhIGZpbGUgdHdpY2UgdG8gdGhlIHNhbWUgZXBvbGwgZmlsZS9mZC4g
U28gdGhhdCBwYXJ0IGlzDQo+ID4gPiAgICBjb3JyZWN0LCBhbmQgYWxzbyBteSB1bmRlcnN0YW5k
aW5nIGZyb20gcmVhZGluZyB0aGUga2VybmVsIGNvZGUuDQo+ID4gPg0KPiA+ID4gLSBZb3UgY2Fu
IGFkZCB0aGUgc2FtZSBmaWxlIHRvIHR3byBkaWZmZXJlbnQgZXBvbGwgZmlsZSBpbnN0YWNlcy4g
V2hpY2gNCj4gPiA+ICAgIG1lYW5zIGl0J3MgdG90YWxseSBmaW5lIHRvIHVzZSBlcG9sbCBvbiBh
IGRtYV9idWYgaW4gZGlmZmVyZW50IHByb2Nlc3Nlcw0KPiA+ID4gICAgbGlrZSBib3RoIGluIHRo
ZSBjb21wb3NpdG9yIGFuZCBpbiBjbGllbnRzLg0KPiA+DQo+ID4gQWghIFRoYW4gSSBtaXN1bmRl
cnN0b29kIHRoYXQgY29tbWVudCBpbiB0aGUgZGlzY3Vzc2lvbi4gVGhhbmtzIGZvcg0KPiA+IGNs
YXJpZnlpbmcgdGhhdC4NCj4gPg0KPiA+ID4NCj4gPiA+IC0gU3Vic3RhbnRpYWxseSBtb3JlIGVu
dGVydGFpbmluZywgeW91IGNhbiBuZXN0IGVwb2xsIGluc3RhbmNlcywgYW5kIGUuZy4NCj4gPiA+
ICAgIGFkZCBhIDJuZCBlcG9sbCBmaWxlIGFzIGFuIGV2ZW50IHRvIHRoZSBmaXJzdCBvbmUuIFRo
YXQgd2F5IHlvdSBjYW4gYWRkDQo+ID4gPiAgICB0aGUgc2FtZSBmaWxlIHRvIGJvdGggZXBvbGwg
ZmRzLCBhbmQgc28gZW5kIHVwIHdpdGggdGhlIHNhbWUgZmlsZQ0KPiA+ID4gICAgZXNzZW50aWFs
bHkgYmVpbmcgYWRkZWQgdHdpY2UgdG8gdGhlIHRvcC1sZXZlbCBlcG9sbCBmaWxlLiBTbyBldmVu
DQo+ID4gPiAgICB3aXRoaW4gb25lIGFwcGxpY2F0aW9uIHRoZXJlJ3Mgbm8gcmVhbCBpc3N1ZSB3
aGVuIGUuZy4gZGlmZmVyZW50DQo+ID4gPiAgICB1c2Vyc3BhY2UgZHJpdmVycyBhbGwgd2FudCB0
byB1c2UgZXBvbGwgb24gdGhlIHNhbWUgZmQsIGJlY2F1c2UgeW91IGNhbg0KPiA+ID4gICAganVz
dCB0aHJvdyBpbiBhbm90aGVyIGxldmVsIG9mIGVwb2xsIGFuZCBpdCdzIGZpbmUgYWdhaW4gYW5k
IHlvdSB3b24ndA0KPiA+ID4gICAgZ2V0IGFuIEVFWElTVFMgb24gRVBPTExfQ1RMX0FERC4NCj4g
PiA+DQo+ID4gPiAgICBCdXQgSSBhbHNvIGRvbid0IHRoaW5rIHdlIGhhdmUgdGhpcyBpc3N1ZSBy
aWdodCBub3cgYW55d2hlcmUsIHNpbmNlIGl0J3MNCj4gPiA+ICAgIGtpbmRhIGEgZ2VuZXJhbCBl
cG9sbCBpc3N1ZSB0aGF0IGhhcHBlbnMgd2l0aCBhbnkgZHVwbGljYXRlZCBmaWxlLg0KPiA+DQo+
ID4gSSBhY3R1YWxseSBoYXZlIGJlZW4gdGVsbGluZyBwZW9wbGUgdG8gKGFiKXVzZSB0aGUgZXBv
bGwgYmVoYXZpb3IgdG8NCj4gPiBjaGVjayBpZiB0d28gZmlsZSBkZXNjcmlwdG9ycyBwb2ludCB0
byB0aGUgc2FtZSB1bmRlcmx5aW5nIGZpbGUgd2hlbg0KPiA+IEtDTVAgaXNuJ3QgYXZhaWxhYmxl
Lg0KPiA+DQo+ID4gU29tZSBlbnZpcm9ubWVudHMgKEFuZHJvaWQ/KSBkaXNhYmxlIEtDTVAgYmVj
YXVzZSB0aGV5IHNlZSBpdCBhcw0KPiA+IHNlY3VyaXR5IHByb2JsZW0uDQo+ID4NCj4gRGlkbid0
IGtub3cgYWJvdXQgdGhpcyBzbyBJIGNoZWNrZWQuIE91ciBrZXJuZWwgaGFzIENPTkZJR19LQ01Q
LCBidXQNCj4gc2VjY29tcCBkb2VzIGxvb2sgbGlrZSBpdCdzIGJsb2NraW5nIGtjbXAgZm9yIGFw
cHMuDQo+IGh0dHBzOi8vY3MuYW5kcm9pZC5jb20vYW5kcm9pZC9wbGF0Zm9ybS9zdXBlcnByb2pl
Y3QvbWFpbi8rL21haW46YmlvbmljL2xpYmMvU1lTQ0FMTFMuVFhUDQoNCkdldHRpbmcgYSBiaXQg
b2ZmIHRoZSBvcmlnaW5hbCB0b3BpYywgYnV0IGZ3aXcgdGhpcyBpcyB3aGF0IENyT1MgZGlkDQpm
b3IgQ09ORklHX0tDTVA6DQoNCmh0dHBzOi8vY2hyb21pdW0tcmV2aWV3Lmdvb2dsZXNvdXJjZS5j
b20vYy9jaHJvbWl1bW9zL3RoaXJkX3BhcnR5L2tlcm5lbC8rLzM1MDExOTMNCg0KSWUuIGFsbG93
IHRoZSBrY21wIHN5c2NhbGwsIGJ1dCBibG9jayB0eXBlID09IEtDTVBfU1lTVlNFTSwgd2hpY2gg
d2FzDQp0aGUgbW9yZSBzcGVjaWZpYyB0aGluZyB0aGF0IGFuZHJvaWQgd2FudGVkIHRvIGJsb2Nr
Lg0KDQpCUiwNCi1SDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
