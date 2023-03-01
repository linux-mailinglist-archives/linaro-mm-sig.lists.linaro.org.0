Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B99316A68EF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Mar 2023 09:28:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C21EB40E0D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Mar 2023 08:28:30 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by lists.linaro.org (Postfix) with ESMTPS id F357C40E04
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Mar 2023 08:28:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b="E/+sjHiN";
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.214.171 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id i3so13208559plg.6
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Mar 2023 00:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677659291;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7sZ5QMejw6iYZe3voviTFum1T1dofKPjV1mBViIgC/U=;
        b=E/+sjHiN+X5ygvglxuZ8/nnSHxEAHz/HVcpSuWxVf17Q/8mk5CioW0pyKTi1qxGpvn
         r9lXC2Czoa8DLgEY5iI8+wnnKTHdNCUsO4ezS1ygiTn6tWtksLUQ9Nz3a2sWX5dQj8c0
         XVLSeAkYBRgla4jvIbrFS6xneXuGoN5ox7wNeVDKVNPeMEDBQf+bfIzLuuiFZhQ+7i3I
         4+KNf1BXoPA5R4BBkIRWe8nv6Nqai4z1kSJolcVNMnoOCnZKbkcdRTx9Eimx0L/o+MLL
         xH+YZALu0z79b645yC/PMHm2aoUN0M8emzviiVAPIBLU3N4gtsPRaS1HFddEpCphSP55
         ATLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677659291;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7sZ5QMejw6iYZe3voviTFum1T1dofKPjV1mBViIgC/U=;
        b=ZjfJll3LBxsQxXVHHFZr1hRHspHJLiVAQjvYXHQJRwPfzwKEQdtTk4m6jtpFNC6IIL
         sQ9otC+j4FUhCY3k36WF1kxGkwaDPDmfYw3xp2l12lXnM+N0TpZuaesr1vBs3GXIsdh2
         19TvKsGIb2SUHUAygWA5EZiD9uy0LIgN1y/1fcPzDb3Pk33xUNN5T3cjr3b0XZLaEM3P
         7Rv2QzvGHAC+wQ+hlFreOZjSSc7UrjV6ORN1wTVupsKFl1fdNB0lS/YRp7r3wNUUptRh
         hOYgfgH6DJgWUP/J4yZoWWN8ycoMsAh2t7zNF4BD3Jp3n2CaWVSL5YSuA1kRq5lFi58s
         feJQ==
X-Gm-Message-State: AO0yUKUnzptBSJm4Q52q76MZGjp9/xrdhXjXApGN5j+aGPt3IfipJDeC
	DHPDgrn3GQudXSbRnluFMqU=
X-Google-Smtp-Source: AK7set+f85af+gXx0M8VaSMb/VOvinKTLPhYimAmMWJMRIThpaCS0eXbsQbHbmRqFMbxDMhAgNHb7A==
X-Received: by 2002:a05:6a21:6d8a:b0:cc:c69b:f7f1 with SMTP id wl10-20020a056a216d8a00b000ccc69bf7f1mr7161371pzb.15.1677659291078;
        Wed, 01 Mar 2023 00:28:11 -0800 (PST)
Received: from [192.168.43.80] (subs03-180-214-233-68.three.co.id. [180.214.233.68])
        by smtp.gmail.com with ESMTPSA id b15-20020aa7810f000000b005b6f63c6cf4sm7321262pfi.30.2023.03.01.00.28.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Mar 2023 00:28:10 -0800 (PST)
Message-ID: <635a2923-b69a-4ce9-f37d-6fe50b6dd164@gmail.com>
Date: Wed, 1 Mar 2023 15:28:02 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230228225833.2920879-1-robdclark@gmail.com>
 <20230228225833.2920879-2-robdclark@gmail.com>
Content-Language: en-US
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <20230228225833.2920879-2-robdclark@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F357C40E04
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-12.00 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.214.171:from,180.214.233.68:received];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.171:from];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,collabora.com,linaro.org,lwn.net,padovan.org,vger.kernel.org,lists.linaro.org];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[22];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: KZDGL7MSJSPO3SUELJ6TJZU2U5VD2FUZ
X-Message-ID-Hash: KZDGL7MSJSPO3SUELJ6TJZU2U5VD2FUZ
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Pekka Paalanen <pekka.paalanen@collabora.com>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Gustavo Padovan <gustavo@padovan.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 01/16] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KZDGL7MSJSPO3SUELJ6TJZU2U5VD2FUZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMy8xLzIzIDA1OjU4LCBSb2IgQ2xhcmsgd3JvdGU6DQo+IEZyb206IFJvYiBDbGFyayA8cm9i
ZGNsYXJrQGNocm9taXVtLm9yZz4NCj4gDQo+IEFkZCBhIHdheSB0byBoaW50IHRvIHRoZSBmZW5j
ZSBzaWduYWxlciBvZiBhbiB1cGNvbWluZyBkZWFkbGluZSwgc3VjaCBhcw0KPiB2YmxhbmssIHdo
aWNoIHRoZSBmZW5jZSB3YWl0ZXIgd291bGQgcHJlZmVyIG5vdCB0byBtaXNzLiAgVGhpcyBpcyB0
byBhaWQNCj4gdGhlIGZlbmNlIHNpZ25hbGVyIGluIG1ha2luZyBwb3dlciBtYW5hZ2VtZW50IGRl
Y2lzaW9ucywgbGlrZSBib29zdGluZw0KPiBmcmVxdWVuY3kgYXMgdGhlIGRlYWRsaW5lIGFwcHJv
YWNoZXMgYW5kIGF3YXJlbmVzcyBvZiBtaXNzaW5nIGRlYWRsaW5lcw0KPiBzbyB0aGF0IGNhbiBi
ZSBmYWN0b3JlZCBpbiB0byB0aGUgZnJlcXVlbmN5IHNjYWxpbmcuDQo+IA0KPiB2MjogRHJvcCBk
bWFfZmVuY2U6OmRlYWRsaW5lIGFuZCByZWxhdGVkIGxvZ2ljIHRvIGZpbHRlciBkdXBsaWNhdGUN
Cj4gICAgIGRlYWRsaW5lcywgdG8gYXZvaWQgaW5jcmVhc2luZyBkbWFfZmVuY2Ugc2l6ZS4gIFRo
ZSBmZW5jZS1jb250ZXh0DQo+ICAgICBpbXBsZW1lbnRhdGlvbiB3aWxsIG5lZWQgc2ltaWxhciBs
b2dpYyB0byB0cmFjayBkZWFkbGluZXMgb2YgYWxsDQo+ICAgICB0aGUgZmVuY2VzIG9uIHRoZSBz
YW1lIHRpbWVsaW5lLiAgW2Nrb2VuaWddDQo+IHYzOiBDbGFyaWZ5IGxvY2tpbmcgd3J0LiBzZXRf
ZGVhZGxpbmUgY2FsbGJhY2sNCj4gdjQ6IENsYXJpZnkgaW4gZG9jcyBjb21tZW50IHRoYXQgdGhp
cyBpcyBhIGhpbnQNCj4gdjU6IERyb3AgRE1BX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJVC4N
Cj4gdjY6IE1vcmUgZG9jcw0KPiB2NzogRml4IHR5cG8sIGNsYXJpZnkgcGFzdCBkZWFkbGluZXMN
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4N
Cj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4NCj4gQWNrZWQtYnk6IFBla2thIFBhYWxhbmVuIDxwZWtrYS5wYWFsYW5lbkBjb2xsYWJvcmEu
Y29tPg0KDQpJIGhhdmUgZ2l2ZW4gbXkgUmV2aWV3ZWQtYnkgZnJvbSB2NyBbMV0sIGJ1dCBpdCBk
aWRuJ3QgZ2V0IHBpY2tlZCB1cCwNCnRodXMgZ2l2aW5nIGl0IGFnYWluOg0KDQpSZXZpZXdlZC1i
eTogQmFnYXMgU2FuamF5YSA8YmFnYXNkb3RtZUBnbWFpbC5jb20+DQoNClRoYW5rcy4NCg0KWzFd
OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1kb2MvWSUyRjdMZkx4aElqRHBENEQzQGRl
Ymlhbi5tZS8NCg0KLS0gDQpBbiBvbGQgbWFuIGRvbGwuLi4ganVzdCB3aGF0IEkgYWx3YXlzIHdh
bnRlZCEgLSBDbGFyYQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
