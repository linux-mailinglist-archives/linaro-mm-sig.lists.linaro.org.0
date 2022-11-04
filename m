Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4420C619AAF
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 15:58:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C9433EC30
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 14:58:12 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	by lists.linaro.org (Postfix) with ESMTPS id 397983EC30
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 14:57:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=NfGTep0W;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.160.44 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-13bef14ea06so5808645fac.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Nov 2022 07:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K1gVxuAF8E1wt+B0yAv3PkO74sKGbKOwH5XfGox/81U=;
        b=NfGTep0WZ282nqPfUCT1yPZnvr5+ho8fiJ/z0UpoCyVZzhrQdMNRii/8GOTt1jOwW1
         d4UXaR4Hrk7qLw+Ivht92BPiQ7Tjj0o92VDDVGfLqf81zK5btnIlC7GAz0lLHJk8fiPc
         6t5wfU1ZcdJIqNF9JK3cjS/ttqBrNIeMFeXAjwpMO11T/q7EzoNa2qrAAQsnP3ZX3EWC
         UQnxBwDeHStXRIuFSIWULamY3yMVfoFHNYt5huwSYpkkjD8MNiNzw8a6JKxgXXHMolhX
         7uqdGFCHN5rsSP7Rt2mTfjalzA/Ut7FN3KgDMSLox1NXn19GtLEgVS+t7DpzOSy8FA0e
         NB0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K1gVxuAF8E1wt+B0yAv3PkO74sKGbKOwH5XfGox/81U=;
        b=zn+zAHg25UbUf69sykOSgeh2ti7YOdjNz8x9ToyrsqMC04rJmJ2T7H6DP2PJGXMPKC
         SvCXFEpIQv/7Doo1tJJZyKAV/E+raShHDlhYFpGpI+CC2WrZf79NrKZRZ9D0YoCKMwfn
         VqbXJV9LmqgPYOaRs4s7G9J301cji8fXSVgmJVAGZubOsRQgcQuIdhK/CLiIMjDW1yJ8
         axXAkqEEjGOXKCbJ+rKm46sBWvyOB/LaKayzOdt2rxclSBAyqCyayEev0I5fsXtqdoCC
         FQFy2B3LY/4srpo62nL9cWvI6DHGUp/1AsIKMLaTPBuRZMVwmuPKlDNaCi9gMUWRwGYE
         GC8g==
X-Gm-Message-State: ACrzQf0UZF/5yvVJfGcYItgK1QoyLfj7TTpkz4xe1+N+xwTCrA7/KfGk
	QinVrw3u2zvaB+clPA2IFHDr7WCZW3ZyXYXn+BI=
X-Google-Smtp-Source: AMsMyM5mz3AyGVGUjs64ztiZ8jLTD6vuWi8Q2ktVP7OaVqbvnBliCbxIy/fr43OWxh//b+OpIdMHQIq0HkRF1DOtzQQ=
X-Received: by 2002:a05:6871:6a4:b0:13b:a056:f97f with SMTP id
 l36-20020a05687106a400b0013ba056f97fmr21374670oao.38.1667573874523; Fri, 04
 Nov 2022 07:57:54 -0700 (PDT)
MIME-Version: 1.0
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
 <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com> <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
 <e02cedc2-6741-8813-a7a5-f8769e301745@gmail.com> <a53e5df51ec0f2f9d4c2d377c0cc5ba85f2e58ff.camel@ndufresne.ca>
 <9d716641-55c6-1590-26c2-1c3b14a28226@gmail.com> <CAPj87rMPkmimR_RJHhxYZokH__TVpPArk0h6drOUSx7Z9+oAHA@mail.gmail.com>
 <11a6f97c-e45f-f24b-8a73-48d5a388a2cc@gmail.com> <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
 <b422be59-4b4b-2d0d-8e8c-b19f27c6832e@gmail.com> <4fa4e5d3b1f46e46139bad069cbf5e795e63afa8.camel@pengutronix.de>
 <cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com>
In-Reply-To: <cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 4 Nov 2022 07:58:12 -0700
Message-ID: <CAF6AEGsA_AqMm2csMv_21Y8wFdbnCiYT36AEUszGK63zJM0hqw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --
X-Rspamd-Queue-Id: 397983EC30
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.44:from];
	NEURAL_HAM(-0.00)[-0.889];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[pengutronix.de,ndufresne.ca,fooishbar.org,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.160.44:from]
Message-ID-Hash: RCLLB7LYQOJKZZ3RAYGG3U6AZKIRCMUA
X-Message-ID-Hash: RCLLB7LYQOJKZZ3RAYGG3U6AZKIRCMUA
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, Daniel Stone <daniel@fooishbar.org>, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RCLLB7LYQOJKZZ3RAYGG3U6AZKIRCMUA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBOb3YgMiwgMjAyMiBhdCA1OjIxIEFNIENocmlzdGlhbiBLw7ZuaWcNCjxja29lbmln
LmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IEhpIEx1Y2FzLA0KPg0KPiBB
bSAwMi4xMS4yMiB1bSAxMjozOSBzY2hyaWViIEx1Y2FzIFN0YWNoOg0KPiA+IEhpIENocmlzdGlh
biwNCj4gPg0KPiA+IGdvaW5nIHRvIHJlcGx5IGluIG1vcmUgZGV0YWlsIHdoZW4gSSBoYXZlIHNv
bWUgbW9yZSB0aW1lLCBzbyBqdXN0IHNvbWUNCj4gPiBxdWljayB0aG91Z2h0cyBmb3Igbm93Lg0K
PiA+DQo+ID4gQW0gTWl0dHdvY2gsIGRlbSAwMi4xMS4yMDIyIHVtIDEyOjE4ICswMTAwIHNjaHJp
ZWIgQ2hyaXN0aWFuIEvDtm5pZzoNCj4gPj4gQW0gMDEuMTEuMjIgdW0gMjI6MDkgc2NocmllYiBO
aWNvbGFzIER1ZnJlc25lOg0KPiA+Pj4gW1NOSVBdDQo+ID4+IEFzIGZhciBhcyBJIGNhbiBzZWUg
aXQgeW91IGd1eXMganVzdCBhbGxvY2F0ZSBhIGJ1ZmZlciBmcm9tIGEgVjRMMg0KPiA+PiBkZXZp
Y2UsIGZpbGwgaXQgd2l0aCBkYXRhIGFuZCBzZW5kIGl0IHRvIFdheWxhbmQgZm9yIGRpc3BsYXlp
bmcuDQo+ID4+DQo+ID4+IFRvIGJlIGhvbmVzdCBJJ20gcmVhbGx5IHN1cnByaXNlZCB0aGF0IHRo
ZSBXYXlsYW5kIGd1eXMgaGFzbid0IHB1c2hlZA0KPiA+PiBiYWNrIG9uIHRoaXMgcHJhY3RpY2Ug
YWxyZWFkeS4NCj4gPj4NCj4gPj4gVGhpcyBvbmx5IHdvcmtzIGJlY2F1c2UgdGhlIFdheWxhbmQg
YXMgd2VsbCBhcyBYIGRpc3BsYXkgcGlwZWxpbmUgaXMNCj4gPj4gc21hcnQgZW5vdWdoIHRvIGlu
c2VydCBhbiBleHRyYSBjb3B5IHdoZW4gaXQgZmluZCB0aGF0IGFuIGltcG9ydGVkDQo+ID4+IGJ1
ZmZlciBjYW4ndCBiZSB1c2VkIGFzIGEgZnJhbWVidWZmZXIgZGlyZWN0bHkuDQo+ID4+DQo+ID4g
V2l0aCBicmFja2V0ZWQgYWNjZXNzIHlvdSBjb3VsZCBldmVuIG1ha2UgdGhpcyBjYXNlIHdvcmss
IGFzIHRoZSBkR1BVDQo+ID4gd291bGQgYmUgYWJsZSB0byBzbHVycCBhIGNvcHkgb2YgdGhlIGRt
YS1idWYgaW50byBMTUVNIGZvciBzY2Fub3V0Lg0KPg0KPiBXZWxsLCB0aGlzIGNvcHkgaXMgd2hh
dCB3ZSBhcmUgdHJ5aW5nIHRvIGF2b2lkIGhlcmUuIFRoZSBjb2RlYyBzaG91bGQNCj4gcHVtcCB0
aGUgZGF0YSBpbnRvIExNRU0gaW4gdGhlIGZpcnN0IHBsYWNlLg0KPg0KDQpGb3IgdGhlIGRHUFUg
VlJBTSBjYXNlLCBzaG91bGRuJ3QgdGhpcyBiZSBhbWRncHUgcmUtaW1wb3J0aW5nIGl0J3Mgb3du
DQpkbWFidWYsIHdoaWNoIG1vcmUgb3IgbGVzcyBieXBhc3NlcyBkbWEtYnVmIHRvIGdldCBiYWNr
IHRoZSBiYWNraW5nDQpHRU0gb2JqPw0KDQpCUiwNCi1SDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
