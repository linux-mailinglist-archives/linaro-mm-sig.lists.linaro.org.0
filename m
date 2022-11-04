Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 523AA619AC8
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 16:00:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6081A3F5C9
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 15:00:35 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id 285023F061
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 15:00:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=K+Nzx7aw;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.44 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id ud5so13997407ejc.4
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Nov 2022 08:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CGBWxjsREcf/mRnaEwnaOQb1KRRlx3tSPPTFXGX4lwM=;
        b=K+Nzx7awgnEA6rpeESU2hc1sp8CI7+Uqd3AYJ90O1aJTcFOCdVIFkAo5q2L01sK+35
         fN25CnA/+V/KXRlaq4BmVqPV9UlVZ/AqDlxzCiIVmxYXsrbzRrQehCaCy7t/3I7f6mSF
         j/mkMOCYLHauH5LiphZmR1SLhAw3RFKaXB76x/K5R5taTrHNJ4Q2+pPWQmmWbQ9ZKH0w
         C0ElncD8hRhheA4kWeeceaHA6Q8UuDOpVlhPaLEsL9dR5KN/zUF2t0UR9adVv9ARFdkp
         qh2xplGVQ4J0TvZrGW/Fzw8DXOYYjiR8BK2C8zp4diTLSUIrv46WZ7vGurhi8zSIgfoQ
         mImg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CGBWxjsREcf/mRnaEwnaOQb1KRRlx3tSPPTFXGX4lwM=;
        b=rs0+rAuqa0auMN5riLtlW2yv8WzN1WoR1/BaUpFr+JsKtIiqO01Ci5/oST+/j5djTJ
         GPE2q+oiXY9CqvX+NNgaNrOM5A5vb9gRiFudSAgz7M93+dJK4O2KeRmPPBdhPz7MluQL
         R777P65UUMicasyLkssnF0tRG+S2fTIJqzTswyG0HYksMEXSN86ZS+PnEjIeuPHNHhsH
         2hLbuRxonwf7EsbzieLl3W1sTqfM4xbEPscuObZvcxP8rqFAAvtx89O9khxQM7kfhJzI
         4PUimpR3PlovcoeHVV3kQb/7sxalmnFgfmEDUmlVrjhzjKSwhQ/ADYD2F9CQp8HsD1Df
         tJug==
X-Gm-Message-State: ACrzQf03UjPDb+1PsEyG8pRQ8J0hBFUFI0Wng+rdSNIWPLf1ONsI14wP
	Y2pV6WH9EqiN1SqL4eMAjCQ=
X-Google-Smtp-Source: AMsMyM4/6Xrg+nCjBO6Q4ZHslz5bGkJxxYS6HKmG/P5l/wF4GU9nJDNHE3Nygc3YDM6mHOPBDPSytg==
X-Received: by 2002:a17:907:1188:b0:78d:8267:3379 with SMTP id uz8-20020a170907118800b0078d82673379mr321675ejb.415.1667574018116;
        Fri, 04 Nov 2022 08:00:18 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:8469:5663:826a:8164? ([2a02:908:1256:79a0:8469:5663:826a:8164])
        by smtp.gmail.com with ESMTPSA id fq35-20020a1709069da300b007adb67aec1asm1900944ejc.111.2022.11.04.08.00.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 08:00:17 -0700 (PDT)
Message-ID: <6c9a7faf-b967-de0a-a4e9-6d69b4eb4b20@gmail.com>
Date: Fri, 4 Nov 2022 16:00:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>
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
 <CAF6AEGsA_AqMm2csMv_21Y8wFdbnCiYT36AEUszGK63zJM0hqw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <CAF6AEGsA_AqMm2csMv_21Y8wFdbnCiYT36AEUszGK63zJM0hqw@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 285023F061
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.981];
	TAGGED_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-ej1-f44.google.com:helo,mail-ej1-f44.google.com:rdns];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a02:908:1256:79a0:8469:5663:826a:8164:received];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.44:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,ndufresne.ca,fooishbar.org,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org]
Message-ID-Hash: 4YLBAYDZ62ZQYW7LHJNFNPXXYJSHSJLN
X-Message-ID-Hash: 4YLBAYDZ62ZQYW7LHJNFNPXXYJSHSJLN
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, Daniel Stone <daniel@fooishbar.org>, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4YLBAYDZ62ZQYW7LHJNFNPXXYJSHSJLN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDQuMTEuMjIgdW0gMTU6NTggc2NocmllYiBSb2IgQ2xhcms6DQo+IE9uIFdlZCwgTm92IDIs
IDIwMjIgYXQgNToyMSBBTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxja29lbmlnLmxlaWNodHp1bWVy
a2VuQGdtYWlsLmNvbT4gd3JvdGU6DQo+PiBIaSBMdWNhcywNCj4+DQo+PiBBbSAwMi4xMS4yMiB1
bSAxMjozOSBzY2hyaWViIEx1Y2FzIFN0YWNoOg0KPj4+IEhpIENocmlzdGlhbiwNCj4+Pg0KPj4+
IGdvaW5nIHRvIHJlcGx5IGluIG1vcmUgZGV0YWlsIHdoZW4gSSBoYXZlIHNvbWUgbW9yZSB0aW1l
LCBzbyBqdXN0IHNvbWUNCj4+PiBxdWljayB0aG91Z2h0cyBmb3Igbm93Lg0KPj4+DQo+Pj4gQW0g
TWl0dHdvY2gsIGRlbSAwMi4xMS4yMDIyIHVtIDEyOjE4ICswMTAwIHNjaHJpZWIgQ2hyaXN0aWFu
IEvDtm5pZzoNCj4+Pj4gQW0gMDEuMTEuMjIgdW0gMjI6MDkgc2NocmllYiBOaWNvbGFzIER1ZnJl
c25lOg0KPj4+Pj4gW1NOSVBdDQo+Pj4+IEFzIGZhciBhcyBJIGNhbiBzZWUgaXQgeW91IGd1eXMg
anVzdCBhbGxvY2F0ZSBhIGJ1ZmZlciBmcm9tIGEgVjRMMg0KPj4+PiBkZXZpY2UsIGZpbGwgaXQg
d2l0aCBkYXRhIGFuZCBzZW5kIGl0IHRvIFdheWxhbmQgZm9yIGRpc3BsYXlpbmcuDQo+Pj4+DQo+
Pj4+IFRvIGJlIGhvbmVzdCBJJ20gcmVhbGx5IHN1cnByaXNlZCB0aGF0IHRoZSBXYXlsYW5kIGd1
eXMgaGFzbid0IHB1c2hlZA0KPj4+PiBiYWNrIG9uIHRoaXMgcHJhY3RpY2UgYWxyZWFkeS4NCj4+
Pj4NCj4+Pj4gVGhpcyBvbmx5IHdvcmtzIGJlY2F1c2UgdGhlIFdheWxhbmQgYXMgd2VsbCBhcyBY
IGRpc3BsYXkgcGlwZWxpbmUgaXMNCj4+Pj4gc21hcnQgZW5vdWdoIHRvIGluc2VydCBhbiBleHRy
YSBjb3B5IHdoZW4gaXQgZmluZCB0aGF0IGFuIGltcG9ydGVkDQo+Pj4+IGJ1ZmZlciBjYW4ndCBi
ZSB1c2VkIGFzIGEgZnJhbWVidWZmZXIgZGlyZWN0bHkuDQo+Pj4+DQo+Pj4gV2l0aCBicmFja2V0
ZWQgYWNjZXNzIHlvdSBjb3VsZCBldmVuIG1ha2UgdGhpcyBjYXNlIHdvcmssIGFzIHRoZSBkR1BV
DQo+Pj4gd291bGQgYmUgYWJsZSB0byBzbHVycCBhIGNvcHkgb2YgdGhlIGRtYS1idWYgaW50byBM
TUVNIGZvciBzY2Fub3V0Lg0KPj4gV2VsbCwgdGhpcyBjb3B5IGlzIHdoYXQgd2UgYXJlIHRyeWlu
ZyB0byBhdm9pZCBoZXJlLiBUaGUgY29kZWMgc2hvdWxkDQo+PiBwdW1wIHRoZSBkYXRhIGludG8g
TE1FTSBpbiB0aGUgZmlyc3QgcGxhY2UuDQo+Pg0KPiBGb3IgdGhlIGRHUFUgVlJBTSBjYXNlLCBz
aG91bGRuJ3QgdGhpcyBiZSBhbWRncHUgcmUtaW1wb3J0aW5nIGl0J3Mgb3duDQo+IGRtYWJ1Ziwg
d2hpY2ggbW9yZSBvciBsZXNzIGJ5cGFzc2VzIGRtYS1idWYgdG8gZ2V0IGJhY2sgdGhlIGJhY2tp
bmcNCj4gR0VNIG9iaj8NCg0KV2hlbiB0aGUgY29kZWMgYW5kIHNjYW5vdXQgaXMgb24gdGhlIHNh
bWUgZGV2aWNlLCB0aGVuIHllcy4NCg0KQnV0IHdlIGFscmVhZHkgaGFkIGNhc2VzIHdoZXJlIHRo
ZSBjb2RlYyB3YXMgb24gdGhlIGRHUFUgYW5kIHNjYW5vdXQgDQpoYXBwZW5lZCBvbiB0aGUgaW50
ZWdyYXRlZCBlbmdpbmUuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gQlIsDQo+IC1S
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
