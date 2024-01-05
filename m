Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B91588250E2
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Jan 2024 10:35:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B82F43E7B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Jan 2024 09:35:29 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 4ECA33F09C
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Jan 2024 09:35:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=m3ry4u+h;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40d5ac76667so10259625e9.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Jan 2024 01:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704447308; x=1705052108; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lJUyDVGU0XKgaKwYDjGSDxNTROvNmlr5rGkLfg67AJU=;
        b=m3ry4u+hfQvew7+tfXUNG7ZMchOS+bCpLauSb+1mCSEgB/u/xiAGkH1mWqsneec/5D
         hi3gT7B5gM8EJi/z39if7IhV8nKTvDtxPzLLyzp3BOwx5ERBl2ibF6jUPoh0+YEqzuQP
         awhdrwZLUNisYpSvR425ptY9/zCcDItHeAE4UeZeR3+0O6ETDDa/VcHGPTgsu/PXb58Y
         P91aj5tWm8OZ8DFxgSlfS//kHq6XLkS/DTR1/mNYf/NxmuJT28qlmhux6DsIIpdgTOC8
         ariMMDuUp4HXT8WosIF5ilypVhUmkveajFE5NXDnhgvkOtbXd4cKtUi9oyx6gQHel+Wc
         smZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704447308; x=1705052108;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lJUyDVGU0XKgaKwYDjGSDxNTROvNmlr5rGkLfg67AJU=;
        b=dTC5Om1cMC49nRaimOct+klV21fsg31BpjL3apQkcaYEBIOb0MB3gHRB2JxeWcz+cm
         Hsv88QbDvsfotl5McPf5HwHnjNybdLuZ7cfSImSLsvdNMUocipzISd7K8XMqtkHuBJfJ
         dE1YZWm/6z4R2Y5cp1Yv5QeIBzcKDJD/V7IwJ8IPP4Qordp+T94GV5LqKuHuhY3gGBJ1
         v0HJOOt9uCxyriVuv+F+S+vus4YKeYq7A99cIJ5sMED4O2ovY5GiICrFojE6M71H2tGe
         oVDDjYXS6ZzezGKtDUZ8wIrfrCy+Joj2swYWEYnZFUOlnj32zYBOsiXKUuA7Bs34jMGn
         q4EA==
X-Gm-Message-State: AOJu0YyyWzoduNKnMZjQ9YX8wUhRKMLDUrBGGwdO4CaFJf8CBGfO2Xqc
	w6/K9CmLkMGMAj9YdcyyV10=
X-Google-Smtp-Source: AGHT+IGdYoX12msFQex2gQBmL00N+tTwnAfTSgVHTKvPHEqpTgUu6NAX8rJzRZKET7C6gVrEN0zBkQ==
X-Received: by 2002:a05:600c:4fcb:b0:40e:347e:b4d with SMTP id o11-20020a05600c4fcb00b0040e347e0b4dmr1100921wmq.89.1704447308037;
        Fri, 05 Jan 2024 01:35:08 -0800 (PST)
Received: from [10.254.108.81] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id j26-20020a05600c1c1a00b0040e3804ea71sm1002466wms.10.2024.01.05.01.35.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jan 2024 01:35:07 -0800 (PST)
Message-ID: <160df81d-e5fa-4798-96d4-5ab1809a9680@gmail.com>
Date: Fri, 5 Jan 2024 10:35:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jeffrey Kardatzke <jkardatzke@google.com>, Simon Ser <contact@emersion.fr>
References: <20231212024607.3681-1-yong.wu@mediatek.com>
 <DPBmATfmfvSP8Cwjz99kj_JvCEiAqRfuMFJZEBF2aIgl8NZqWFR66eyPTX1E8bHyOlimBihEE3E80p9bfOJ-0SNu8pwoIzL9gD2Xae6r97g=@emersion.fr>
 <20231213110517.6ce36aca@eldfell>
 <20231213101549.lioqfzjxcvmqxqu3@pop-os.localdomain>
 <20231213133825.0a329864@eldfell>
 <20231213132229.q3uxdhtdsxuzw3w6@pop-os.localdomain>
 <20231213161614.43e5bca8@eldfell>
 <9m8eC1j8YSwxu9Mr8vCXyzF0nfyCSHpFbfc__FtUjjKppew65jElBbUqa-nkzFTN-N_ME893w0YQRcb3r3UbIajQUP-Y5LxnHKKFoiBepSI=@emersion.fr>
 <CA+ddPcOew7Wtb1-Cakq_LPN1VwtG+4vpjpLFvXdsjBunpefT1A@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <CA+ddPcOew7Wtb1-Cakq_LPN1VwtG+4vpjpLFvXdsjBunpefT1A@mail.gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.49 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,mediatek.com,kernel.org,amd.com,lists.freedesktop.org,google.com,collabora.com,quicinc.com,ndufresne.ca,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.54:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4ECA33F09C
X-Spamd-Bar: ------
Message-ID-Hash: KMH5TBKGN43YK6QSAJYM3LOTF3CIKGHJ
X-Message-ID-Hash: KMH5TBKGN43YK6QSAJYM3LOTF3CIKGHJ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Pekka Paalanen <ppaalanen@gmail.com>, Joakim Bech <joakim.bech@linaro.org>, Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org, tjmercier@google.com, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/7] dma-buf: heaps: Add secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KMH5TBKGN43YK6QSAJYM3LOTF3CIKGHJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDQuMDEuMjQgdW0gMjA6NTAgc2NocmllYiBKZWZmcmV5IEthcmRhdHprZToNCj4gQW55IGZl
ZWRiYWNrIGZyb20gbWFpbnRhaW5lcnMgb24gd2hhdCB0aGVpciBwcmVmZXJlbmNlIGlzPyAgSSdt
IGZpbmUNCj4gd2l0aCAncmVzdHJpY3RlZCcgYXMgd2VsbCwgYnV0IHRoZSBtYWluIHJlYXNvbiB3
ZSBjaG9zZSBzZWN1cmUgd2FzDQo+IGJlY2F1c2Ugb2YgaXRzIHVzZSBpbiBBUk0gbm9tZW5jbGF0
dXJlIGFuZCB0aGlzIGlzIG1vcmUgZm9yIEFSTSB1c2FnZQ0KPiB0aGFuIHg4Ni4NCg0KV2VsbCBB
TUQgY2FsbHMgdGhpcyAidHJ1c3RlZCIsIGJ1dCBJIHRoaW5rIHRoYXQncyBqdXN0IHNsaWdodGx5
IGJldHRlciANCnRoYW4gInNlY3VyZSIuDQoNCisxIGZvciB1c2luZyAicmVzdHJpY3RlZCIgY2F1
c2UgdGhhdCBzZWVtcyB0byBtYXRjaCB0aGUgdGVjaG5pY2FsIA0KY29uc2VxdWVuY2VzLg0KDQpS
ZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IFRoZSBtYWluIGRpZmZlcmVuY2Ugd2l0aCBzaW1p
bGFyIGJ1ZmZlcnMgb24gQU1EL0ludGVsIGlzIHRoYXQgd2l0aA0KPiBBTUQvSW50ZWwgdGhlIGJ1
ZmZlcnMgYXJlIG1hcHBhYmxlIGFuZCByZWFkYWJsZSBieSB0aGUgQ1BVIGluIHRoZQ0KPiBrZXJu
ZWwuIFRoZSBwcm9ibGVtIGlzIHRoZWlyIGNvbnRlbnRzIGFyZSBlbmNyeXB0ZWQgc28geW91IGdl
dCBqdW5rDQo+IGJhY2sgaWYgeW91IGRvIHRoYXQuIE9uIEFSTSwgdGhlIGJ1ZmZlcnMgYXJlIGNv
bXBsZXRlbHkgaW5hY2Nlc3NpYmxlDQo+IGJ5IHRoZSBrZXJuZWwgYW5kIHRoZSBtZW1vcnkgY29u
dHJvbGxlciBwcmV2ZW50cyBhY2Nlc3MgdG8gdGhlbQ0KPiBjb21wbGV0ZWx5IGZyb20gdGhlIGtl
cm5lbC4NCj4NCj4gVGhlcmUgYXJlIGFsc28gb3RoZXIgdXNlIGNhc2VzIGZvciB0aGlzIHdoZXJl
IHRoZSBoeXBlcnZpc29yIGlzIHdoYXQNCj4gaXMgY29udHJvbGxpbmcgYWNjZXNzIChzZWNvbmQg
c3RhZ2UgaW4gdGhlIE1NVSBpcyBwcm92aWRpbmcNCj4gaXNvbGF0aW9uKS4uLi5hbmQgaW4gdGhh
dCBjYXNlIEkgZG8gYWdyZWUgdGhhdCAnc2VjdXJlJyB3b3VsZCBub3QgYmUNCj4gdGhlIHJpZ2h0
IHRlcm1pbm9sb2d5IGZvciB0aG9zZSB0eXBlcyBvZiBidWZmZXJzLiAgIFNvIEkgZG8gYWdyZWUN
Cj4gc29tZXRoaW5nIG90aGVyIHRoYW4gJ3NlY3VyZScgaXMgcHJvYmFibHkgYSBiZXR0ZXIgb3B0
aW9uIG92ZXJhbGwuDQo+DQo+DQo+IE9uIEZyaSwgRGVjIDIyLCAyMDIzIGF0IDE6NDDigK9BTSBT
aW1vbiBTZXIgPGNvbnRhY3RAZW1lcnNpb24uZnI+IHdyb3RlOg0KPj4gT24gV2VkbmVzZGF5LCBE
ZWNlbWJlciAxM3RoLCAyMDIzIGF0IDE1OjE2LCBQZWtrYSBQYWFsYW5lbiA8cHBhYWxhbmVuQGdt
YWlsLmNvbT4gd3JvdGU6DQo+Pg0KPj4+Pj4gSXQgaXMgcHJvdGVjdGVkL3NoaWVsZGVkL2ZvcnRp
ZmllZCBmcm9tIGFsbCB0aGUga2VybmVsIGFuZCB1c2Vyc3BhY2UsDQo+Pj4+PiBidXQgYSBtb3Jl
IGZhbWlsaWFyIHdvcmQgdG8gZGVzY3JpYmUgdGhhdCBpcyBpbmFjY2Vzc2libGUuDQo+Pj4+PiAi
SW5hY2Nlc3NpYmxlIGJ1ZmZlciIgcGVyIHNlIE9UT0ggc291bmRzIGxpa2UgYSB1c2VsZXNzIGNv
bmNlcHQuDQo+Pj4+Pg0KPj4+Pj4gSXQgaXMgbm90IHNlY3VyZSwgYmVjYXVzZSBpdCBkb2VzIG5v
dCBpbnZvbHZlIHNlY3VyaXR5IGluIGFueSB3YXkuIEluDQo+Pj4+PiBmYWN0LCBnaXZlbiBpdCdz
IHNvIGZyYWdpbGUsIEknZCBjbGFzc2lmeSBpdCBhcyBtaWxkbHkgb3Bwb3NpdGUgb2YNCj4+Pj4+
IHNlY3VyZSwgYXMgZS5nLiBjbGllbnRzIG9mIGEgV2F5bGFuZCBjb21wb3NpdG9yIGNhbiBwb3Rl
bnRpYWxseSBEb1MgdGhlDQo+Pj4+PiBjb21wb3NpdG9yIHdpdGggaXQgYnkgc2ltcGx5IHNlbmRp
bmcgc3VjaCBhIGRtYWJ1Zi4gT3IgRG9TIHRoZSB3aG9sZQ0KPj4+Pj4gc3lzdGVtLg0KPj4+PiBJ
IGhlYXIgd2hhdCB5b3UgYXJlIHNheWluZyBhbmQgRG9TIGlzIGEga25vd24gcHJvYmxlbSBhbmQg
YXR0YWNrIHZlY3RvciwNCj4+Pj4gYnV0IHJlZ2FyZGxlc3MsIHdlIGhhdmUgdXNlIGNhc2VzIHdo
ZXJlIHdlIGRvbid0IHdhbnQgdG8gZXhwb3NlDQo+Pj4+IGluZm9ybWF0aW9uIGluIHRoZSBjbGVh
ciBhbmQgd2hlcmUgd2UgYWxzbyB3b3VsZCBsaWtlIHRvIGhhdmUgc29tZQ0KPj4+PiBndWFyYW50
ZWVzIGFib3V0IGNvcnJlY3RuZXNzLiBUaGF0IGlzIHdoZXJlIHZhcmlvdXMgc2VjdXJlIGVsZW1l
bnRzIGFuZA0KPj4+PiBtb3JlIGdlbmVyYWxseSBzZWN1cml0eSBpcyBuZWVkZWQuDQo+Pj4+DQo+
Pj4+IFNvLCBpdCBzb3VuZHMgbGlrZSB3ZSBoYXZlIHR3byB0aGluZ3MgaGVyZSwgdGhlIGZpcnN0
IGlzIHRoZSBuYW1pbmcgYW5kDQo+Pj4+IHRoZSBtZWFuaW5nIGJlaGluZCBpdC4gSSdtIHByZXR0
eSBzdXJlIHRoZSBwZW9wbGUgZm9sbG93aW5nIGFuZA0KPj4+PiBjb250cmlidXRpbmcgdG8gdGhp
cyB0aHJlYWQgY2FuIGFncmVlIG9uIGEgbmFtZSB0aGF0IG1ha2VzIHNlbnNlLiBXb3VsZA0KPj4+
PiB5b3UgcGVyc29uYWxseSBiZSBPSyB3aXRoICJyZXN0cmljdGVkIiBhcyB0aGUgbmFtZT8gSXQg
c291bmRzIGxpa2UgdGhhdC4NCj4+PiBJIHdvdWxkLiBJJ20gYWxzbyBqdXN0IGEgYnktc3RhbmRl
ciwgbm90IGEgbWFpbnRhaW5lciBvZiBrZXJuZWwNCj4+PiBhbnl0aGluZy4gSSBoYXZlIG5vIHBv
d2VyIHRvIGFjY2VwdCBub3IgcmVqZWN0IGFueXRoaW5nIGhlcmUuDQo+PiBJJ2QgYWxzbyBwZXJz
b25hbGx5IGJlIE9LIHdpdGggInJlc3RyaWN0ZWQiLCBJIHRoaW5rIGl0J3MgYSBsb3QgYmV0dGVy
DQo+PiB0aGFuICJzZWN1cmUiLg0KPj4NCj4+IEluIGdlbmVyYWwgSSBhZ3JlZSB3aXRoIGV2ZXJ5
dGhpbmcgUGVra2Egc2FpZC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
