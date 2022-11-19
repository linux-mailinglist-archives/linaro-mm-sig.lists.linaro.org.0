Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AD41E6310BD
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 19 Nov 2022 21:35:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 550B83EA47
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 19 Nov 2022 20:35:57 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by lists.linaro.org (Postfix) with ESMTPS id 08CD23E823
	for <linaro-mm-sig@lists.linaro.org>; Sat, 19 Nov 2022 20:35:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20210112.gappssmtp.com header.s=20210112 header.b=X3f8PGrW;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.160.175) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qt1-f175.google.com with SMTP id cg5so5213956qtb.12
        for <linaro-mm-sig@lists.linaro.org>; Sat, 19 Nov 2022 12:35:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+Q8d53TLpjCP7gdCP7UpIRVe0VEVtUGymc2f5Rbugko=;
        b=X3f8PGrW6OlGIyjAOq5RqjIzl1/LR7qL3lBC8lRK0cVsBBAQ6YIRonj8FxLnWXlimF
         GJvAd4k8Z4JLg5YAoOkXzhvLkyVbKsMkyfhGm5nRnQo6io4NkwbmBgt63d59e+9z+Sfm
         ACcIho6irT4KN1xsNw05BS8UQ3E0pROqRfT+JjAIhLhyzzx+i25Cb+GI2QTj/6OpQVxY
         DaUPG6El0f3FO7iPL3je0iX6/J6WkbAPMgQ6L0cOf+lKuyO5hB9XXctefoubh6J4OgDq
         5j9QZSlda/KLg/q4LSfuv+DtQG6qFV7TZNqxMxm7n4F2NmIR+J7YKDPVf7tZYKBOdjQA
         Nrig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Q8d53TLpjCP7gdCP7UpIRVe0VEVtUGymc2f5Rbugko=;
        b=hqwhRL61oAK7oCsF/xY2/0GIc5jt4FhFCzkgEsSubC2o6CpS1HxQdpY3NZX4WUTmdZ
         zjwaUgp+VXdOsK2dXG+GPpBtHKduUXh5ZwcIUg0BEafKYXXerh4yMsBy4GVqKuZH5Wxt
         W6p61ULtGuthm767SnMfyFyJ+Df4DDXata2XeMAiqCbcld45pfuFLKPXKOhCc83HACmE
         5Us4IGHsn/rfCfcRAkTzqMULkaWFWj/3EO9uYnbLUdxg3MB25pH6YTW4ebRWhJILMnDv
         nHY7vjvdCjX043QnLtYX6sSgOfH0F23V/dzaLea8V+rIQDiRhcAwUqdFaIq90cVzXHOq
         bpDQ==
X-Gm-Message-State: ANoB5pm6Z7jOEcaWmnwO4Ix7hNvcn8KC7QElnF+jIi0sdIYtOn5ufnb6
	YKvI+V/4Eh9LBYw0xrH87DrhUQ==
X-Google-Smtp-Source: AA0mqf7u+gaF38rzqg9VhfXbkShj2Hx3ztQIyZplmwrs/8bVvLIJVPykTe9XjaNAaZ4JqewmP8z3dw==
X-Received: by 2002:ac8:75c9:0:b0:3a5:4a1a:6ff0 with SMTP id z9-20020ac875c9000000b003a54a1a6ff0mr11974238qtq.481.1668890147686;
        Sat, 19 Nov 2022 12:35:47 -0800 (PST)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id x13-20020a05620a448d00b006fa4ac86bfbsm5061437qkp.55.2022.11.19.12.35.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Nov 2022 12:35:47 -0800 (PST)
Message-ID: <4f79e934aac717ca7fac0c3b8b553a5690efd13a.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Rob Clark <robdclark@gmail.com>
Date: Sat, 19 Nov 2022 15:35:46 -0500
In-Reply-To: <CAF6AEGuqgWi0T=B9cb+Uy7aoWBPGQmZ3JbwFcK_45GbkY2nHPg@mail.gmail.com>
References: <20221020121316.3946-1-christian.koenig@amd.com>
	 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
	 <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com>
	 <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
	 <e02cedc2-6741-8813-a7a5-f8769e301745@gmail.com>
	 <a53e5df51ec0f2f9d4c2d377c0cc5ba85f2e58ff.camel@ndufresne.ca>
	 <9d716641-55c6-1590-26c2-1c3b14a28226@gmail.com>
	 <CAPj87rMPkmimR_RJHhxYZokH__TVpPArk0h6drOUSx7Z9+oAHA@mail.gmail.com>
	 <11a6f97c-e45f-f24b-8a73-48d5a388a2cc@gmail.com>
	 <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
	 <b422be59-4b4b-2d0d-8e8c-b19f27c6832e@gmail.com>
	 <4fa4e5d3b1f46e46139bad069cbf5e795e63afa8.camel@pengutronix.de>
	 <cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com>
	 <0abc6efddb8dfc1888de15a1bedaaac6688fd078.camel@pengutronix.de>
	 <1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com>
	 <CAAFQd5B+VHs62M5Wf2L-xOw=_PoaXT+akAySkeZc75HeA3d0jQ@mail.gmail.com>
	 <b2dec9b3-03a7-e7ac-306e-1da024af8982@amd.com>
	 <346d6ad023ef8697aafd93ac1b100890f3637e44.camel@ndufresne.ca>
	 <CAF6AEGuqgWi0T=B9cb+Uy7aoWBPGQmZ3JbwFcK_45GbkY2nHPg@mail.gmail.com>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 08CD23E823
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20210112.gappssmtp.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_CC(0.00)[amd.com,chromium.org,pengutronix.de,fooishbar.org,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20210112.gappssmtp.com:+];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.175:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7TLLDLMW3YY4OZVTXZE2R54D2AE52FLF
X-Message-ID-Hash: 7TLLDLMW3YY4OZVTXZE2R54D2AE52FLF
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Tomasz Figa <tfiga@chromium.org>, Daniel Stone <daniel@fooishbar.org>, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7TLLDLMW3YY4OZVTXZE2R54D2AE52FLF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgdmVuZHJlZGkgMTggbm92ZW1icmUgMjAyMiDDoCAxMTozMiAtMDgwMCwgUm9iIENsYXJrIGEg
w6ljcml0wqA6DQo+IE9uIFRodSwgTm92IDE3LCAyMDIyIGF0IDc6MzggQU0gTmljb2xhcyBEdWZy
ZXNuZSA8bmljb2xhc0BuZHVmcmVzbmUuY2E+IHdyb3RlOg0KPiA+IA0KPiA+IExlIGpldWRpIDE3
IG5vdmVtYnJlIDIwMjIgw6AgMTM6MTAgKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgYSDDqWNyaXQg
Og0KPiA+ID4gPiA+IERNQS1CdWYgbGV0J3MgdGhlIGV4cG9ydGVyIHNldHVwIHRoZSBETUEgYWRk
cmVzc2VzIHRoZSBpbXBvcnRlciB1c2VzIHRvDQo+ID4gPiA+ID4gYmUgYWJsZSB0byBkaXJlY3Rs
eSBkZWNpZGVkIHdoZXJlIGEgY2VydGFpbiBvcGVyYXRpb24gc2hvdWxkIGdvLiBFLmcuIHdlDQo+
ID4gPiA+ID4gaGF2ZSBjYXNlcyB3aGVyZSBmb3IgZXhhbXBsZSBhIFAyUCB3cml0ZSBkb2Vzbid0
IGV2ZW4gZ28gdG8gbWVtb3J5LCBidXQNCj4gPiA+ID4gPiByYXRoZXIgYSBkb29yYmVsbCBCQVIg
dG8gdHJpZ2dlciBhbm90aGVyIG9wZXJhdGlvbi4gVGhyb3dpbmcgaW4gQ1BVDQo+ID4gPiA+ID4g
cm91bmQgdHJpcHMgZm9yIGV4cGxpY2l0IG93bmVyc2hpcCB0cmFuc2ZlciBjb21wbGV0ZWx5IGJy
ZWFrcyB0aGF0DQo+ID4gPiA+ID4gY29uY2VwdC4NCj4gPiA+ID4gSXQgc291bmRzIGxpa2Ugd2Ug
c2hvdWxkIGhhdmUgYSBkbWFfZGV2X2lzX2NvaGVyZW50X3dpdGhfZGV2KCkgd2hpY2gNCj4gPiA+
ID4gYWNjZXB0cyB0d28gKG9yIGFuIGFycmF5Pykgb2YgZGV2aWNlcyBhbmQgdGVsbHMgdGhlIGNh
bGxlciB3aGV0aGVyIHRoZQ0KPiA+ID4gPiBkZXZpY2VzIG5lZWQgZXhwbGljaXQgb3duZXJzaGlw
IHRyYW5zZmVyLg0KPiA+ID4gDQo+ID4gPiBObywgZXhhY3RseSB0aGF0J3MgdGhlIGNvbmNlcHQg
SSdtIHB1c2hpbmcgYmFjayBvbiB2ZXJ5IGhhcmQgaGVyZS4NCj4gPiA+IA0KPiA+ID4gSW4gb3Ro
ZXIgd29yZHMgZXhwbGljaXQgb3duZXJzaGlwIHRyYW5zZmVyIGlzIG5vdCBzb21ldGhpbmcgd2Ug
d291bGQNCj4gPiA+IHdhbnQgYXMgcmVxdWlyZW1lbnQgaW4gdGhlIGZyYW1ld29yaywgY2F1c2Ug
b3RoZXJ3aXNlIHdlIGJyZWFrIHRvbnMgb2YNCj4gPiA+IHVzZSBjYXNlcyB3aGljaCByZXF1aXJl
IGNvbmN1cnJlbnQgYWNjZXNzIHRvIHRoZSB1bmRlcmx5aW5nIGJ1ZmZlci4NCj4gPiANCj4gPiBJ
J20gbm90IHB1c2hpbmcgZm9yIHRoaXMgc29sdXRpb24sIGJ1dCByZWFsbHkgZmVsdCB0aGUgbmVl
ZCB0byBjb3JyZWN0IHlvdSBoZXJlLg0KPiA+IEkgaGF2ZSBxdWl0ZSBzb21lIGV4cGVyaWVuY2Ug
d2l0aCBvd25lcnNoaXAgdHJhbnNmZXIgbWVjaGFuaXNtLCBhcyB0aGlzIGlzIGhvdw0KPiA+IEdT
dHJlYW1lciBmcmFtZXdvcmsgd29ya3Mgc2luY2UgMjAwMC4gQ29uY3VycmVudCBhY2Nlc3MgaXMg
YSByZWFsbHkgY29tbW9uIHVzZQ0KPiA+IGNhc2VzIGFuZCBpdCBpcyBxdWl0ZSB3ZWxsIGRlZmlu
ZWQgaW4gdGhhdCBjb250ZXh0LiBUaGUgYnJhY2tldGluZyBzeXN0ZW0gKGluDQo+ID4gdGhpcyBj
YXNlIGNhbGxlZCBtYXAoKSB1bm1hcCgpLCB3aXRoIGZsYWcgc3RhdGluZyB0aGUgdXNhZ2UgaW50
ZW50aW9uIGxpa2UgcmVhZHMNCj4gPiBhbmQgd3JpdGUpIGlzIGNvbWJpbmVkIHRoZSB0aGUgcmVm
Y291bnQuIFRoZSBiYXNpYyBydWxlcyBhcmUgc2ltcGxlOg0KPiANCj4gVGhpcyBpcyBhbGwgQ1BV
IG9yaWVudGVkLCBJIHRoaW5rIENocmlzdGlhbiBpcyB0YWxraW5nIGFib3V0IHRoZSBjYXNlDQo+
IHdoZXJlIG93bmVyc2hpcCB0cmFuc2ZlciBoYXBwZW5zIHdpdGhvdXQgQ1BVIGludm9sdmVtZW50
LCBzdWNoIGFzIHZpYQ0KPiBHUFUgd2FpdGluZyBvbiBhIGZlbmNlDQoNCkhXIGZlbmNlcyBhbmQg
cHJvcGVyIG93bmVyc2hpcCBpc24ndCBpbmNvbXBhdGlibGUgYXQgYWxsLiBFdmVuIGlmIHlvdSBo
YXZlIG5vDQpzb2Z0d2FyZSBpbnZvbHZlZCBkdXJpbmcgdGhlIHVzYWdlLCBzb2Z0d2FyZSBzdGls
bCBuZWVkIHRvIHNoYXJlIHRoZSBkbWFidWYgKGF0DQpsZWFzdCBvbmNlKSwgYW5kIHNoYXJpbmcg
bW9kaWZ5IHRoZSBvd25lcnNoaXAsIGFuZCBjYW4gYmUgbWFkZSBleHBsaWNpdC4NCg0KcC5zLiBJ
IHdpbGwgYWdyZWUgaWYgc29tZW9uZSByYWlzZXMgdGhhdCB0aGlzIGlzIHRvdGFsbHkgb2ZmIHRv
cGljDQoNCk5pY29sYXMNCj4gQlIsDQo+IC1SDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
