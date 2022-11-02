Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D02A761629E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 13:22:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E65A43F5C2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 12:22:04 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id CD7DE3EBED
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Nov 2022 12:21:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b="g+oMk/EQ";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.41 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id n12so44710581eja.11
        for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Nov 2022 05:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nBruoFaLBpJXHn50CsZ8DVc757M6ZPA1prT8ktYsSL8=;
        b=g+oMk/EQ8MWArETuO9KmFChjV72ZgJK6vX5H40L/xvbQXD2Uht1BupzBzVdPhnVZJM
         EgruKiOdhPpZTsnSdLtHR714gjvYNNS5/YQifCskQ15h59xHlhyxQXV+7StvLxDHpkwO
         96dpU5KpWNACeOPfiizW7v4fnW6L08trzq6uZMRfJBR2l7E2O1lxON54zDwbsiwh5HHe
         03xjIgdnnBzqHpUhRj6ks67DjLfAYFvQ9J5we3jjTlLKRrSo/kDO58tuMDQL6ZXpDWLQ
         /6hbJmUiL5gSt8vRBFZYTfe7ZF6jjgEaTRHf4DrEnzVo7dEFTbMQ00fq7opye3CqhNxA
         YNSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nBruoFaLBpJXHn50CsZ8DVc757M6ZPA1prT8ktYsSL8=;
        b=LxM/EqKTX+stNUFZk7x2yuRQ7DO5hpYFr528o1VU4apbYVRzYguLiE/6OPsnE99zVa
         Ecos82Irg263dT1F9N4QJuJD3hcvvRTzdGhFdcFjEP/8uTb1vVrPq6EME/3Exq9ts2Ly
         b70ZgwDxrXfzHu3mubMZaBrNFbJE7HkT+fRp029izJpV/H1fcXduonT1KortDSShqqEQ
         vA2MAZYkDZhq+SfErNc3+RaXQtKCDATOfG50WUI3mlSv2aWzmfYZ3iTT85jx6CtOFEqa
         /MbRrbDBQtdbTpAODb6iom5AgC0+kHjL2GzcbrwODdeaVTRh6IqlU1bedKS0gr6UXyuA
         k/hw==
X-Gm-Message-State: ACrzQf1XOMvhdvHCsVvTnTuRfwYDJvxXtYBvy0xKHKwbnTd6nvUGW5P5
	NUC89R5/2Nrn/XKoBqRKsCo=
X-Google-Smtp-Source: AMsMyM4soMXrLJz3jWdR9MoCOuQXJS4eVMNcLuXalmenyDIh9Vl5qdY1agLegNzfpbDTvoyWNmz4kQ==
X-Received: by 2002:a17:907:3f23:b0:78e:260a:fc33 with SMTP id hq35-20020a1709073f2300b0078e260afc33mr24071056ejc.152.1667391707891;
        Wed, 02 Nov 2022 05:21:47 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:576c:b102:647e:9ffd? ([2a02:908:1256:79a0:576c:b102:647e:9ffd])
        by smtp.gmail.com with ESMTPSA id g6-20020aa7c586000000b00461c6e8453dsm5695854edq.23.2022.11.02.05.21.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 05:21:47 -0700 (PDT)
Message-ID: <cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com>
Date: Wed, 2 Nov 2022 13:21:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Lucas Stach <l.stach@pengutronix.de>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Daniel Stone <daniel@fooishbar.org>
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
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <4fa4e5d3b1f46e46139bad069cbf5e795e63afa8.camel@pengutronix.de>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: CD7DE3EBED
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.41:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.985];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org]
Message-ID-Hash: O5BVWULAGJK5PNZHTGQBUWC7N3JGXFXF
X-Message-ID-Hash: O5BVWULAGJK5PNZHTGQBUWC7N3JGXFXF
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O5BVWULAGJK5PNZHTGQBUWC7N3JGXFXF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgTHVjYXMsDQoNCkFtIDAyLjExLjIyIHVtIDEyOjM5IHNjaHJpZWIgTHVjYXMgU3RhY2g6DQo+
IEhpIENocmlzdGlhbiwNCj4NCj4gZ29pbmcgdG8gcmVwbHkgaW4gbW9yZSBkZXRhaWwgd2hlbiBJ
IGhhdmUgc29tZSBtb3JlIHRpbWUsIHNvIGp1c3Qgc29tZQ0KPiBxdWljayB0aG91Z2h0cyBmb3Ig
bm93Lg0KPg0KPiBBbSBNaXR0d29jaCwgZGVtIDAyLjExLjIwMjIgdW0gMTI6MTggKzAxMDAgc2No
cmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPj4gQW0gMDEuMTEuMjIgdW0gMjI6MDkgc2NocmllYiBO
aWNvbGFzIER1ZnJlc25lOg0KPj4+IFtTTklQXQ0KPj4gQXMgZmFyIGFzIEkgY2FuIHNlZSBpdCB5
b3UgZ3V5cyBqdXN0IGFsbG9jYXRlIGEgYnVmZmVyIGZyb20gYSBWNEwyDQo+PiBkZXZpY2UsIGZp
bGwgaXQgd2l0aCBkYXRhIGFuZCBzZW5kIGl0IHRvIFdheWxhbmQgZm9yIGRpc3BsYXlpbmcuDQo+
Pg0KPj4gVG8gYmUgaG9uZXN0IEknbSByZWFsbHkgc3VycHJpc2VkIHRoYXQgdGhlIFdheWxhbmQg
Z3V5cyBoYXNuJ3QgcHVzaGVkDQo+PiBiYWNrIG9uIHRoaXMgcHJhY3RpY2UgYWxyZWFkeS4NCj4+
DQo+PiBUaGlzIG9ubHkgd29ya3MgYmVjYXVzZSB0aGUgV2F5bGFuZCBhcyB3ZWxsIGFzIFggZGlz
cGxheSBwaXBlbGluZSBpcw0KPj4gc21hcnQgZW5vdWdoIHRvIGluc2VydCBhbiBleHRyYSBjb3B5
IHdoZW4gaXQgZmluZCB0aGF0IGFuIGltcG9ydGVkDQo+PiBidWZmZXIgY2FuJ3QgYmUgdXNlZCBh
cyBhIGZyYW1lYnVmZmVyIGRpcmVjdGx5Lg0KPj4NCj4gV2l0aCBicmFja2V0ZWQgYWNjZXNzIHlv
dSBjb3VsZCBldmVuIG1ha2UgdGhpcyBjYXNlIHdvcmssIGFzIHRoZSBkR1BVDQo+IHdvdWxkIGJl
IGFibGUgdG8gc2x1cnAgYSBjb3B5IG9mIHRoZSBkbWEtYnVmIGludG8gTE1FTSBmb3Igc2Nhbm91
dC4NCg0KV2VsbCwgdGhpcyBjb3B5IGlzIHdoYXQgd2UgYXJlIHRyeWluZyB0byBhdm9pZCBoZXJl
LiBUaGUgY29kZWMgc2hvdWxkIA0KcHVtcCB0aGUgZGF0YSBpbnRvIExNRU0gaW4gdGhlIGZpcnN0
IHBsYWNlLg0KDQo+Pj4gVGhlIG9ubHkgY2FzZSB0aGUgY29tbW9ubHkgZmFpbHMgaXMgd2hlbmV2
ZXIgd2UgdHJ5IHRvIGRpc3BsYXkgVVZDDQo+Pj4gY3JlYXRlZCBkbWFidWYsDQo+PiBXZWxsLCBl
eGFjdGx5IHRoYXQncyBub3QgY29ycmVjdCEgVGhlIHdob2xlIHg4NiB1c2UgY2FzZXMgb2YgZGly
ZWN0DQo+PiBkaXNwbGF5IGZvciBkR1BVcyBhcmUgYnJva2VuIGJlY2F1c2UgbWVkaWEgcGxheWVy
cyB0aGluayB0aGV5IGNhbiBkbyB0aGUNCj4+IHNpbXBsZSB0aGluZyBhbmQgb2ZmbG9hZCBhbGwg
dGhlIHByb2JsZW1hdGljIGNhc2VzIHRvIHRoZSBkaXNwbGF5IHNlcnZlci4NCj4+DQo+PiBUaGlz
IGlzIGFic29sdXRlbHkgKm5vdCogdGhlIGNvbW1vbiB1c2UgY2FzZSB5b3UgZGVzY3JpYmUgaGVy
ZSwgYnV0DQo+PiByYXRoZXIgc29tZXRoaW5nIGNvbXBsZXRlbHkgc3BlY2lhbCB0byBBUk0uDQo+
IEl0IHRoZSBub3JtYWwgY2FzZSBmb3IgYSBsb3Qgb2YgQVJNIFNvQ3MuDQoNClllYWgsIGJ1dCBp
dCdzIG5vdCB0aGUgbm9ybWFsIGNhc2UgZm9yIGV2ZXJ5Ym9keS4NCg0KV2UgaGFkIG51bWVyb3Vz
IHByb2plY3RzIHdoZXJlIGN1c3RvbWVycyB3YW50ZWQgdG8gcHVtcCB2aWRlbyBkYXRhIA0KZGly
ZWN0bHkgZnJvbSBhIGRlY29kZXIgaW50byBhbiBHUFUgZnJhbWUgb3IgZnJvbSBhIEdQVSBmcmFt
ZSBpbnRvIGFuIA0KZW5jb2Rlci4NCg0KVGhlIGZhY3QgdGhhdCBtZWRpYSBmcmFtZXdvcmtzIGRv
ZXNuJ3Qgc3VwcG9ydCB0aGF0IG91dCBvZiB0aGUgYm94IGlzIA0Kc2ltcGx5IGEgYnVnLg0KDQo+
IFRoYXQgd29ybGQgaXMgY2VydGFpbmx5IG5vdA0KPiBhbnkgbGVzcyBiaWcgdGhhbiB0aGUgeDg2
IGRHUFUgd29ybGQuIEEgaHVnZSBudW1iZXIgb2YgZGV2aWNlcyBhcmUgQVJNDQo+IGJhc2VkIHNl
dC10b3AgYm94ZXMgYW5kIG90aGVyIHZpZGVvIHBsYXllcnMuIEp1c3QgYmVjYXVzZSBpdCBpcyBh
DQo+IHNwZWNpYWwgY2FzZSBmb3IgeW91IGRvZXNuJ3QgbWVhbiBpdCdzIGEgZ2xvYmFsIHNwZWNp
YWwgY2FzZS4NCg0KT2ssIGxldCdzIHN0b3Agd2l0aCB0aGF0LiBUaGlzIGlzbid0IGhlbHBmdWwg
aW4gdGhlIHRlY2huaWNhbCBkaXNjdXNzaW9uLg0KDQo+DQo+PiBUaGF0IHdlIGhhdmVuJ3QgaGVh
cmQgYW55Ym9keSBzY3JlYW1pbmcgdGhhdCB4ODYgZG9lc24ndCB3b3JrIGlzIGp1c3QNCj4+IGJl
Y2F1c2Ugd2UgaGFuZGxlIHRoZSBjYXNlIHRoYXQgYSBidWZmZXIgaXNuJ3QgZGlyZWN0bHkgZGlz
cGxheWFibGUgaW4NCj4+IFgvV2F5bGFuZCBhbnl3YXksIGJ1dCB0aGlzIGlzIGFic29sdXRlbHkg
bm90IHRoZSBvcHRpbWFsIHNvbHV0aW9uLg0KPj4NCj4+IFRoZSBhcmd1bWVudCB0aGF0IHlvdSB3
YW50IHRvIGtlZXAgdGhlIGFsbG9jYXRpb24gb24gdGhlIGNvZGVjIHNpZGUgaXMNCj4+IGNvbXBs
ZXRlbHkgZmFsc2UgYXMgZmFyIGFzIEkgY2FuIHNlZS4NCj4+DQo+PiBXZSBhbHJlYWR5IGhhZCBu
dW1lcm91cyBwcm9qZWN0cyB3aGVyZSB3ZSByZXBvcnRlZCB0aGlzIHByYWN0aWNlIGFzIGJ1Z3MN
Cj4+IHRvIHRoZSBHU3RyZWFtZXIgYW5kIEZGTVBFRyBwcm9qZWN0IGJlY2F1c2UgaXQgd29uJ3Qg
d29yayBvbiB4ODYgd2l0aCBkR1BVcy4NCj4+DQo+IEFuZCBvbiBhIGxvdCBvZiBBUk0gU29DcyBp
dCdzIGV4YWN0bHkgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvLg0KDQpZZWFoIGFuZCB0aGF0J3MgZmlu
ZSwgaXQganVzdCBkb2Vzbid0IHNlZW0gdG8gd29yayBpbiBhbGwgY2FzZXMuDQoNCkZvciBib3Ro
IHg4NiBhcyB3ZWxsIGFzIHRoZSBjYXNlIGhlcmUgdGhhdCB0aGUgQ1BVIGNhY2hlIG1pZ2h0IGJl
IGRpcnR5IA0KdGhlIGV4cG9ydGVyIG5lZWRzIHRvIGJlIHRoZSBkZXZpY2Ugd2l0aCB0aGUgcmVx
dWlyZW1lbnRzLg0KDQpGb3IgeDg2IGRHUFVzIHRoYXQncyB0aGUgYmFja2luZyBzdG9yZSBpcyBz
b21lIGxvY2FsIG1lbW9yeS4gRm9yIHRoZSANCm5vbi1jb2hlcmVudCBBUk0gZGV2aWNlcyBpdCdz
IHRoYXQgdGhlIENQVSBjYWNoZSBpcyBub3QgZGlydHkuDQoNCkZvciBhIGRldmljZSBkcml2ZXIg
d2hpY2ggc29sZWx5IHdvcmtzIHdpdGggY2FjaGVkIHN5c3RlbSBtZW1vcnkgDQppbnNlcnRpbmcg
Y2FjaGUgZmx1c2ggb3BlcmF0aW9ucyBpcyBzb21ldGhpbmcgaXQgd291bGQgbmV2ZXIgZG8gZm9y
IA0KaXRzZWxmLiBJdCB3b3VsZCBqdXN0IGJlIGRvaW5nIHRoaXMgZm9yIHRoZSBpbXBvcnRlciBh
bmQgZXhhY3RseSB0aGF0IA0Kd291bGQgYmUgYmFkIGRlc2lnbiBiZWNhdXNlIHdlIHRoZW4gaGF2
ZSBoYW5kbGluZyBmb3IgdGhlIGRpc3BsYXkgZHJpdmVyIA0Kb3V0c2lkZSBvZiB0aGUgZHJpdmVy
Lg0KDQo+PiBUaGlzIGlzIGp1c3QgYSBzb2Z0d2FyZSBzb2x1dGlvbiB3aGljaCB3b3JrcyBiZWNh
dXNlIG9mIGNvaW5jaWRlbnQgYW5kDQo+PiBub3QgYmVjYXVzZSBvZiBlbmdpbmVlcmluZy4NCj4g
QnkgbWFuZGF0aW5nIGEgc29mdHdhcmUgZmFsbGJhY2sgZm9yIHRoZSBjYXNlcyB3aGVyZSB5b3Ug
d291bGQgbmVlZA0KPiBicmFja2V0ZWQgYWNjZXNzIHRvIHRoZSBkbWEtYnVmLCB5b3Ugc2ltcGx5
IHNoaWZ0IHRoZSBwcm9ibGVtIGludG8NCj4gdXNlcnNwYWNlLiBVc2Vyc3BhY2UgdGhlbiBjcmVh
dGVzIHRoZSBicmFja2V0IGJ5IGZhbGxpbmcgYmFjayB0byBzb21lDQo+IG90aGVyIGltcG9ydCBv
cHRpb24gdGhhdCBtb3N0bHkgZG8gYSBjb3B5IGFuZCB0aGVuIHRoZSBhcHByb3ByaWF0ZQ0KPiBj
YWNoZSBtYWludGVuYW5jZS4NCj4NCj4gV2hpbGUgSSB1bmRlcnN0YW5kIHlvdXIgc2VudGltZW50
IGFib3V0IHRoZSBETUEtQVBJIGRlc2lnbiBiZWluZw0KPiBpbmNvbnZlbmllbnQgd2hlbiB0aGlu
Z3MgYXJlIGp1c3QgY29oZXJlbnQgYnkgc3lzdGVtIGRlc2lnbiwgdGhlIERNQS0NCj4gQVBJIGRl
c2lnbiB3YXNuJ3QgZG9uZSB0aGlzIHdheSBkdWUgdG8gYmFkIGVuZ2luZWVyaW5nLCBidXQgZHVl
IHRvIHRoZQ0KPiBmYWN0IHRoYXQgcGVyZm9ybWFudCBETUEgYWNjZXNzIG9uIHNvbWUgc3lzdGVt
cyBqdXN0IHJlcXVpcmUgdGhpcyBraW5kDQo+IG9mIGJyYWNrZXRpbmcuDQoNCldlbGwsIHRoaXMg
aXMgZXhhY3RseSB3aGF0IEknbSBjcml0aWNpemluZyBvbiB0aGUgRE1BLUFQSS4gSW5zdGVhZCBv
ZiANCmdpdmluZyB5b3UgYSBwcm9wZXIgZXJyb3IgY29kZSB3aGVuIHNvbWV0aGluZyB3b24ndCB3
b3JrIGluIGEgc3BlY2lmaWMgDQp3YXkgaXQganVzdCB0cmllcyB0byBoaWRlIHRoZSByZXF1aXJl
bWVudHMgaW5zaWRlIHRoZSBETUEgbGF5ZXIuDQoNCkZvciBleGFtcGxlIHdoZW4geW91ciBkZXZp
Y2UgY2FuIG9ubHkgYWNjZXNzIDMyYml0cyB0aGUgRE1BLUFQSSANCnRyYW5zcGFyZW50bHkgaW5z
ZXJ0IGJvdW5jZSBidWZmZXJzIGluc3RlYWQgb2YgZ2l2aW5nIHlvdSBhIHByb3BlciBlcnJvciAN
CmNvZGUgdGhhdCB0aGUgbWVtb3J5IGluIHF1ZXN0aW9uIGNhbid0IGJlIGFjY2Vzc2VkLg0KDQpU
aGlzIGp1c3QgdHJpZXMgdG8gaGlkZSB0aGUgdW5kZXJseWluZyBwcm9ibGVtIGluc3RlYWQgb2Yg
cHVzaGluZyBpdCANCmludG8gdGhlIHVwcGVyIGxheWVyIHdoZXJlIGl0IGNhbiBiZSBoYW5kbGVk
IG11Y2ggbW9yZSBncmFjZWZ1bGx5Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IFJl
Z2FyZHMsDQo+IEx1Y2FzDQo+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
