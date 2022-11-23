Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A06635726
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 10:39:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EEE703ED5F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 09:39:32 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by lists.linaro.org (Postfix) with ESMTPS id B2AE63EC70
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 09:39:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=Ls8T6MSc;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id n3so11943774wrp.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 01:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xtVY1fbYdCt5+6Wym639LRdXvZTAy2Wrn/gBgTtUC1o=;
        b=Ls8T6MScaXn4Cn7Q/vatDeXNlHgSqc26eVKPUNNcDvvhMePHusIYmHdGO/7fZ2ObRo
         yLSUJGQNXAjohoIgwesn/52CuIZ7H/EDmr+GpA95hMunFb8U1BLXPWTB1gIyMKkmuavq
         dcJXlu8GLSQpiaEhU3DKY6huWuTscC9vfona8k0P+rm3aChiuNYiSnpr30UcU6y+o20j
         ODHfmRQyHKdvPXcaV7/8ny1gZFf7Dol1BVaIPut56Z6Lumdw1ljxikYsabjJ7n3aw8ds
         JilFsues5QlIVaMJrWKEOVQEOvYmgxILRqsDyridWAntTDBVcg0hiOeDmfNZk6PydBEh
         +QdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xtVY1fbYdCt5+6Wym639LRdXvZTAy2Wrn/gBgTtUC1o=;
        b=dGhr5Dx33vq3iPztxet+WDh3tROopSvXD0axhc1y7cYcnKQe1lWi9ID0CNLu4MF2D9
         6FKHqeICVDaNc2eHqmrgR1qG6acY3ZIj4PM881S6LT6p2PLlWCSdTMlZq/S9PbKlXTT2
         One+FgiHwuHlx5o3KjoWC74FR7GH9PeXiufkPVMdA2/aWAjTMKmeteB5LA7jfpugr6Ty
         CMhDJn5K9cY/iyjDl54sy7eXETXkJcEYh7xwYYDajzzhxNrkqIvNEATUzHMm2YNWGS3Z
         BQG5WUyepivANB6jRg4Ye7LUCxIyvFDIE+BT2OaAKQ3gJ9Cn6vMQUYymw6foKzSlRLCx
         Kv1Q==
X-Gm-Message-State: ANoB5pmchNhAz0JqP0G1luDWqeZbYjBNolJQd+80Mp2xkL/VqK7QAPBz
	AhVIcH7avX27sQn1vVtvUME=
X-Google-Smtp-Source: AA0mqf6TI52S2u9Y1mEfqPCpDFRdjST76rMGbBL3i3Bfd7bd3UxqqWaqDoi3bHSMEkKgSKu6V5k0lg==
X-Received: by 2002:a05:6000:1e1d:b0:241:c75c:6831 with SMTP id bj29-20020a0560001e1d00b00241c75c6831mr12526680wrb.16.1669196361566;
        Wed, 23 Nov 2022 01:39:21 -0800 (PST)
Received: from ?IPV6:2a02:908:1256:79a0:d2d7:ceea:efc2:af43? ([2a02:908:1256:79a0:d2d7:ceea:efc2:af43])
        by smtp.gmail.com with ESMTPSA id o42-20020a05600c512a00b003a3442f1229sm1735280wms.29.2022.11.23.01.39.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 01:39:20 -0800 (PST)
Message-ID: <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com>
Date: Wed, 23 Nov 2022 10:39:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20221122170801.842766-1-daniel.vetter@ffwll.ch>
 <Y30PDdsvHIJo5YHR@ziepe.ca>
 <CAKMK7uEccwYTNwDYQazmZvTfBFQOikZt5A6BmegweyO-inKYbQ@mail.gmail.com>
 <Y30Z4VxT7Wdoc1Lc@ziepe.ca>
 <CAKMK7uE=8eqyh9BKg_+7B1jjMi6K4wrmPyi9xeLVvVYFxBgF9g@mail.gmail.com>
 <Y30kK6dsssSLJVgp@ziepe.ca>
 <CAKMK7uFQQkG82PzuSTGQTnN3ZNps5N_4TjR5NRWo0LaJkEaNew@mail.gmail.com>
 <3d8607b4-973d-945d-c184-260157ade7c3@amd.com>
 <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
X-Rspamd-Queue-Id: B2AE63EC70
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-11.50 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,ziepe.ca:email,mail-wr1-f52.google.com:rdns,mail-wr1-f52.google.com:helo];
	RCPT_COUNT_TWELVE(0.00)[13];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.945];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.52:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7VLWJUL7MUQFNJ6225Y2U3YSRJPDD3XW
X-Message-ID-Hash: 7VLWJUL7MUQFNJ6225Y2U3YSRJPDD3XW
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jason Gunthorpe <jgg@ziepe.ca>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7VLWJUL7MUQFNJ6225Y2U3YSRJPDD3XW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMTEuMjIgdW0gMTA6MzAgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBXZWQsIDIz
IE5vdiAyMDIyIGF0IDEwOjA2LCBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+IHdyb3RlOg0KPj4gQW0gMjIuMTEuMjIgdW0gMjA6NTAgc2NocmllYiBEYW5pZWwgVmV0
dGVyOg0KPj4+IE9uIFR1ZSwgMjIgTm92IDIwMjIgYXQgMjA6MzQsIEphc29uIEd1bnRob3JwZSA8
amdnQHppZXBlLmNhPiB3cm90ZToNCj4+Pj4gT24gVHVlLCBOb3YgMjIsIDIwMjIgYXQgMDg6Mjk6
MDVQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToNCj4+Pj4+IFlvdSBudWtlIGFsbCB0aGUg
cHRlcy4gRHJpdmVycyB0aGF0IG1vdmUgaGF2ZSBzbGlnaHRseSBtb3JlIHRoYW4gYQ0KPj4+Pj4g
YmFyZSBzdHJ1Y3QgZmlsZSwgdGhleSBhbHNvIGhhdmUgYSBzdHJ1Y3QgYWRkcmVzc19zcGFjZSBz
byB0aGF0DQo+Pj4+PiBpbnZhbGlkYXRlX21hcHBpbmdfcmFuZ2UoKSB3b3Jrcy4NCj4+Pj4gT2th
eSwgdGhpcyBpcyBvbmUgb2YgdGhlIHdheXMgdGhhdCB0aGlzIGNhbiBiZSBtYWRlIHRvIHdvcmsg
Y29ycmVjdGx5LA0KPj4+PiBhcyBsb25nIGFzIHlvdSBuZXZlciBhbGxvdyBHVVAvR1VQX2Zhc3Qg
dG8gc3VjY2VlZCBvbiB0aGUgUFRFcy4gKHRoaXMNCj4+Pj4gd2FzIHRoZSBEQVggbWlzdGFrZSkN
Cj4+PiBIZW5jZSB0aGlzIHBhdGNoLCB0byBlbmZvcmNlIHRoYXQgbm8gZG1hLWJ1ZiBleHBvcnRl
ciBnZXRzIHRoaXMgd3JvbmcuDQo+Pj4gV2hpY2ggc29tZSBkaWQsIGFuZCB0aGVuIGJsYW1lZCBi
dWcgcmVwb3J0ZXJzIGZvciB0aGUgcmVzdWx0aW5nIHNwbGF0cw0KPj4+IDotKSBPbmUgb2YgdGhl
IHRoaW5ncyB3ZSd2ZSByZXZlcnRlZCB3YXMgdGhlIHR0bSBodWdlIHB0ZSBzdXBwb3J0LA0KPj4+
IHNpbmNlIHRoYXQgZG9lc24ndCBoYXZlIHRoZSBwbWRfc3BlY2lhbCBmbGFnICh5ZXQpIGFuZCBz
byB3b3VsZCBsZXQNCj4+PiBndXBfZmFzdCB0aHJvdWdoLg0KPj4gVGhlIHByb2JsZW0gaXMgbm90
IG9ubHkgZ3VwLCBhIGxvdCBvZiBwZW9wbGUgc2VlbSB0byBhc3N1bWUgdGhhdCB3aGVuDQo+PiB5
b3UgYXJlIGFibGUgdG8gZ3JhYiBhIHJlZmVyZW5jZSB0byBhIHBhZ2UgdGhhdCB0aGUgcHRlcyBw
b2ludGluZyB0bw0KPj4gdGhhdCBwYWdlIGNhbid0IGNoYW5nZSBhbnkgbW9yZS4gQW5kIHRoYXQn
cyBvYnZpb3VzbHkgaW5jb3JyZWN0Lg0KPj4NCj4+IEkgd2l0bmVzc2VkIHRvbnMgb2YgZGlzY3Vz
c2lvbnMgYWJvdXQgdGhhdCBhbHJlYWR5LiBTb21lIGN1c3RvbWVycyBldmVuDQo+PiBtb2RpZmll
ZCBvdXIgY29kZSBhc3N1bWluZyB0aGF0IGFuZCB0aGVuIHdvbmRlcmVkIHdoeSB0aGUgaGVjayB0
aGV5IHJhbg0KPj4gaW50byBkYXRhIGNvcnJ1cHRpb24uDQo+Pg0KPj4gSXQncyBnb3R0ZW4gc28g
YmFkIHRoYXQgSSd2ZSBldmVuIHByb3Bvc2VkIGludGVudGlvbmFsbHkgbWFuZ2xpbmcgdGhlDQo+
PiBwYWdlIHJlZmVyZW5jZSBjb3VudCBvbiBUVE0gYWxsb2NhdGVkIHBhZ2VzOg0KPj4gaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2RyaS1kZXZlbC9wYXRjaC8yMDIyMDkyNzE0
MzUyOS4xMzU2ODktMS1jaHJpc3RpYW4ua29lbmlnQGFtZC5jb20vDQo+IFllYWggbWF5YmUgc29t
ZXRoaW5nIGxpa2UgdGhpcyBjb3VsZCBiZSBhcHBsaWVkIGFmdGVyIHdlIGxhbmQgdGhpcw0KPiBw
YXRjaCBoZXJlLg0KDQpJIHRoaW5rIGJvdGggc2hvdWxkIGxhbmQgQVNBUC4gV2UgZG9uJ3QgaGF2
ZSBhbnkgb3RoZXIgd2F5IHRoYW4gdG8gDQpjbGVhcmx5IHBvaW50IG91dCBpbmNvcnJlY3QgYXBw
cm9hY2hlcyBpZiB3ZSB3YW50IHRvIHByZXZlbnQgdGhlIA0KcmVzdWx0aW5nIGRhdGEgY29ycnVw
dGlvbi4NCg0KPiBXZWxsIG1heWJlIHNob3VsZCBoYXZlIHRoZSBzYW1lIGNoZWNrIGluIGdlbSBt
bWFwIGNvZGUgdG8NCj4gbWFrZSBzdXJlIG5vIGRyaXZlcg0KDQpSZWFkcyBsaWtlIHRoZSBzZW50
ZW5jZSBpcyBzb21laG93IGN1dCBvZj8NCg0KPg0KPj4gSSB0aGluayBpdCB3b3VsZCBiZSBiZXR0
ZXIgdGhhdCBpbnN0ZWFkIG9mIGhhdmluZyBzcGVjaWFsIGZsYWdzIGluIHRoZQ0KPj4gcHRlcyBh
bmQgdm1hcyB0aGF0IHlvdSBjYW4ndCBmb2xsb3cgdGhlbSB0byBhIHBhZ2Ugc3RydWN0dXJlIHdl
IHdvdWxkDQo+PiBhZGQgc29tZXRoaW5nIHRvIHRoZSBwYWdlIGluZGljYXRpbmcgdGhhdCB5b3Ug
Y2FuJ3QgZ3JhYiBhIHJlZmVyZW5jZSB0bw0KPj4gaXQuIEJ1dCB0aGlzIG1pZ2h0IGJyZWFrIHNv
bWUgdXNlIGNhc2VzIGFzIHdlbGwuDQo+IEFmYWlrIHRoZSBwcm9ibGVtIHdpdGggdGhhdCBpcyB0
aGF0IHRoZXJlJ3Mgbm8gZnJlZSBwYWdlIGJpdHMgbGVmdCBmb3INCj4gdGhlc2UgZGVidWcgY2hl
Y2tzLiBQbHVzIHRoZSBwdGUrdm1hIGZsYWdzIGFyZSB0aGUgZmxhZ3MgdG8gbWFrZSB0aGlzDQo+
IGNsZWFyIGFscmVhZHkuDQoNCk1heWJlIGEgR0ZQIGZsYWcgdG8gc2V0IHRoZSBwYWdlIHJlZmVy
ZW5jZSBjb3VudCB0byB6ZXJvIG9yIHNvbWV0aGluZyANCmxpa2UgdGhpcz8NCg0KQ2hyaXN0aWFu
Lg0KDQo+IC1EYW5pZWwNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
