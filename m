Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F74611483
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 16:27:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED98B3F595
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 14:26:58 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by lists.linaro.org (Postfix) with ESMTPS id 262F73F440
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 14:26:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=f+exP041;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.50 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id j15so6832824wrq.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 07:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jKFG/IV+5ec3zcjXicuA61ey7zmdKiGiE9ULsyhPuWI=;
        b=f+exP041h+qfRVWomwoiD34PApbbnGjZ4whqX4NB/6+BSX+EI5l470FkIUGUWGyBeO
         VWeQD5mkaaa9ZDUFZ/x/lArOKxe5dHqKb7ATwADMtql5k9FHIPCmaOXdwaqkR5HXiCat
         nZ0ukXYnxDth3ReKqcjTryatwqc/YNfMa2AKGvqHvmdjBRbwrkih6qFCxeAEU8A/0iFY
         89QY1Kx2KhCGV36xfqVR9I4P5QoWsLmG7Zhfr0Rh3szJFAqiSNOZMr7P+4VoJd2QI7+L
         8g9MdTvOpGHfwdWpspg2ZPJ+CJJk5N43EXtfglZhv2CKoO1+qEG+cEq5GOlbChptTkGc
         ZCAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jKFG/IV+5ec3zcjXicuA61ey7zmdKiGiE9ULsyhPuWI=;
        b=4av2qud2QaQqU8WQ/eeRv1cw7ba0YQZgsNUTtunA0CJumGVArhCubc1QQanrfIdw2E
         g26Bb5dNxrk/BkRrCq+ak4PCTnCZg3eFcULeRduFooy/eBPUsTRXxFI92A2aUt9gW/UK
         X/eFbgJ6dbY9TDIBvX94ybjWkWOAat7M+h6aH2NNsgOdFd+5kbQenykJpixrsV5Pg6NP
         Seu9RO+cK6cHFxEF/+htXrm/1jKMyxdONtj6q5IotGxt7lsb97+2qwCUbCt/ZItVMnwp
         2I00iu5uZUQl1EDC6BBqxCZR6jKs3FzBcnHmdND72LzmFsJUsnQhMpSIwykBzIbYmZii
         bkSA==
X-Gm-Message-State: ACrzQf2c/QCFt8XG7sjG/f8HZC6+fhoNupZe6ghFbf9Q5CQOxd4DZyis
	b/KagbqNHz+N8RyiGXbgT8Q=
X-Google-Smtp-Source: AMsMyM6Za7KXnYfawwk6J+VO6O6IWomWkhwoo+JKQOab/RhkGAGrhtydsetKEUwhxk2ia4StpdR9Ug==
X-Received: by 2002:adf:fa83:0:b0:236:a97d:693c with SMTP id h3-20020adffa83000000b00236a97d693cmr1159336wrr.108.1666967200999;
        Fri, 28 Oct 2022 07:26:40 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:9377:d2f2:2ed:af4b? ([2a02:908:1256:79a0:9377:d2f2:2ed:af4b])
        by smtp.gmail.com with ESMTPSA id j3-20020a05600c1c0300b003b4ff30e566sm14020929wms.3.2022.10.28.07.26.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 07:26:40 -0700 (PDT)
Message-ID: <e02cedc2-6741-8813-a7a5-f8769e301745@gmail.com>
Date: Fri, 28 Oct 2022 16:26:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Lucas Stach <l.stach@pengutronix.de>, nicolas@ndufresne.ca,
 ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch,
 robdclark@gmail.com, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
 <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com>
 <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: 262F73F440
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.920];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_TO(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.50:from]
Message-ID-Hash: 4SA46SLNASCADSF2PTJBYATMGMWZW2VI
X-Message-ID-Hash: 4SA46SLNASCADSF2PTJBYATMGMWZW2VI
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4SA46SLNASCADSF2PTJBYATMGMWZW2VI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjguMTAuMjIgdW0gMTM6NDIgc2NocmllYiBMdWNhcyBTdGFjaDoNCj4gQW0gRnJlaXRhZywg
ZGVtIDI4LjEwLjIwMjIgdW0gMTA6NDAgKzAyMDAgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0K
Pj4gQnV0IGVzc2VudGlhbGx5IHRoZSByaWdodCB0aGluZyB0byBkby4gVGhlIG9ubHkgYWx0ZXJu
YXRpdmUgSSBjYW4gc2VlIGlzDQo+PiB0byByZXZlcnNlIHRoZSByb2xlIG9mIGV4cG9ydGVyIGFu
ZCBpbXBvcnRlci4NCj4+DQo+IEkgZG9uJ3QgdGhpbmsgdGhhdCB3b3VsZCB3b3JrIGdlbmVyYWxs
eSBlaXRoZXIsIGFzIGJ1ZmZlciBleHBvcnRlciBhbmQNCj4gaW1wb3J0ZXIgaXNuJ3QgYWx3YXlz
IGEgMToxIHRoaW5nLiBBcyBzb29uIGFzIGFueSBhdHRhY2hlZCBpbXBvcnRlciBoYXMNCj4gYSBk
aWZmZXJlbnQgY29oZXJlbmN5IGJlaGF2aW9yIHRoYW4gdGhlIG90aGVycywgdGhpbmdzIGZhbGwg
YXBhcnQuDQoNCkkndmUganVzdCBtZW50aW9uZWQgaXQgYmVjYXVzZSBzb21lYm9keSBub3RlZCB0
aGF0IHdoZW4geW91IHJldmVyc2UgdGhlIA0Kcm9sZXMgb2YgZXhwb3J0ZXIgYW5kIGltcG9ydGVy
IHdpdGggdGhlIFY0TCBkcml2ZXIgYW5kIGk5MTUgdGhlbiB0aGUgdXNlIA0KY2FzZSBzdWRkZW5s
eSBzdGFydHMgd29ya2luZy4NCg0KPj4+PiBGb3IgRFJNIGFuZCBtb3N0IFY0TDIgZGV2aWNlcyBJ
IHRoZW4gZmlsbCBpbiB0aGUgZG1hX2NvaGVyZW50IGZsYWcgYmFzZWQgb24gdGhlDQo+Pj4+IHJl
dHVybiB2YWx1ZSBvZiBkZXZfaXNfZG1hX2NvaGVyZW50KCkuIEV4cG9ydGluZyBkcml2ZXJzIGFy
ZSBhbGxvd2VkIHRvIGNsZWFyDQo+Pj4+IHRoZSBmbGFnIGZvciB0aGVpciBidWZmZXJzIGlmIHNw
ZWNpYWwgaGFuZGxpbmcgbGlrZSB0aGUgVVNXQyBmbGFnIGluIGFtZGdwdSBvcg0KPj4+PiB0aGUg
dW5jYWNoZWQgYWxsb2NhdGlvbnMgZm9yIHJhZGVvbi9ub3V2ZWF1IGFyZSBpbiB1c2UuDQo+Pj4+
DQo+Pj4gSSBkb24ndCB0aGluayB0aGUgVjRMMiBwYXJ0IHdvcmtzIGZvciBtb3N0IEFSTSBzeXN0
ZW1zLiBUaGUgZGVmYXVsdA0KPj4+IHRoZXJlIGlzIGZvciBkZXZpY2VzIHRvIGJlIG5vbmNvaGVy
ZW50IHVubGVzcyBleHBsaWNpdGx5IG1hcmtlZA0KPj4+IG90aGVyd2lzZS4gSSBkb24ndCB0aGlu
ayBhbnkgb2YgdGhlICJkZXZpY2VzIiB3cml0aW5nIHRoZSB2aWRlbyBidWZmZXJzDQo+Pj4gaW4g
Y2FjaGVkIG1lbW9yeSB3aXRoIHRoZSBDUFUgZG8gdGhpcy4gV2hpbGUgd2UgY291bGQgcHJvYmFi
bHkgbWFyaw0KPj4+IHRoZW0gYXMgY29oZXJlbnQsIEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyBtb3Zp
bmcgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbi4NCj4+IFdlbGwgd2h5IG5vdD8gVGhvc2UgZGV2aWNl
cyBhcmUgY29oZXJlbnQgaW4gdGhlIHNlbnNlIG9mIHRoZSBETUEgQVBJDQo+PiB0aGF0IHRoZXkg
ZG9uJ3QgbmVlZCBhbiBleHRyYSBDUFUgY29weSBvbiBzeW5jX3RvX2NwdS9zeW5jX3RvX2Rldmlj
ZS4NCj4+DQo+PiBXZSBjb3VsZCBjb21lIHVwIHdpdGggYSBiZXR0ZXIgbmFtZSBmb3IgY29oZXJl
bmN5LCBlLmcuIHNub29waW5nIGZvcg0KPj4gZXhhbXBsZS4gQnV0IHRoYXQgaXMganVzdCBhbiBk
b2N1bWVudGF0aW9uIGRldGFpbC4NCj4+DQo+IEkgYWdyZWUgdGhhdCB0aG9zZSBkZXZpY2VzIGNv
cHlpbmcgZGF0YSBpbnRvIGEgQ1BVIGNhY2hlYWJsZSBidWZmZXINCj4gc2hvdWxkIGJlIG1hcmtl
ZCBhcyBjb2hlcmVudCwganVzdCBub3Qgc3VyZSByaWdodCBub3cgaWYgb3RoZXIgdGhpbmdzDQo+
IGxpa2UgRE1BIG1hcHBpbmdzIGFyZSBkb25lIG9uIHRoYXQgZGV2aWNlLCB3aGljaCB3b3VsZCBy
ZXF1aXJlIHRoZQ0KPiBjYWNoZSBtYWludGVuYW5jZS4NCg0KWWVhaCwgZ29vZCBwb2ludC4NCg0K
Pj4gQW5kIHRoaXMgdGhlIGV4YWN0IHdyb25nIGFwcHJvYWNoIGFzIGZhciBhcyBJIGNhbiBzZWUu
IEFzIERhbmllbCBub3RlZA0KPj4gYXMgd2VsbCB3ZSBhYnNvbHV0ZWx5IG5lZWQgc29tZSBraW5k
IG9mIGNvaGVyZW5jeSBiZXR3ZWVuIGV4cG9ydGVyIGFuZA0KPj4gaW1wb3J0ZXIuDQo+Pg0KPiBJ
IHRoaW5rIGl0J3MgaW1wb3J0YW50IHRoYXQgd2UgYXJlIHZlcnkgc3BlY2lmaWMgYWJvdXQgdGhl
IHRoaW5nIHdlIGFyZQ0KPiB0YWxraW5nIGFib3V0IGhlcmU6IEkgZ3Vlc3Mgd2hlbiB5b3Ugc2F5
IGNvaGVyZW5jeSB5b3UgbWVhbiBoYXJkd2FyZQ0KPiBlbmZvcmNlZCBjb2hlcmVuY3kgb24gY2Fj
aGVhYmxlIG1lbW9yeSwgd2hpY2ggaXMgdGhlIGRlZmF1bHQgb24NCj4geDg2L1BDSS4NCg0KV2Vs
bCwgbm8uIFdoYXQgSSBtZWFuIHdpdGggY29oZXJlbmN5IGlzIHRoYXQgdGhlIGRldmljZXMgZG9u
J3QgbmVlZCANCmluc2VydCBzcGVjaWFsIG9wZXJhdGlvbiB0byBhY2Nlc3MgZWFjaCBvdGhlcnMg
ZGF0YS4NCg0KVGhpcyBjYW4gYmUgYXJjaGl2ZWQgYnkgbXVsdGlwbGUgYXBwcm9hY2hlcywgZS5n
LiBieSB0aGUgUENJIGNvaGVyZW5jeSANCnJlcXVpcmVtZW50cywgZGV2aWNlIGludGVybmFsIGNv
bm5lY3Rpb25zIChYR01JLCBOVkxpbmssIENYTCBldGMuLi4pIGFzIA0Kd2VsbCBhcyB1c2luZyB1
bmNhY2hlZCBzeXN0ZW0gbWVtb3J5Lg0KDQpUaGUga2V5IHBvaW50IGlzIHdoYXQgd2UgY2VydGFp
bmx5IGRvbid0IHdhbnQgaXMgc3BlY2lhbCBvcGVyYXRpb25zIA0Kd2hpY2ggc2F5OiBPaywgbm93
IGRldmljZSBBIGNhbiBhY2Nlc3MgdGhlIGRhdGEsIG5vdyBkZXZpY2UgQi4uLi4uIA0KYmVjYXVz
ZSB0aGlzIGJyZWFrcyB0b25zIG9mIHVzZSBjYXNlcy4NCg0KPiBUaGUgb3RoZXIgd2F5IHRvIGVu
Zm9yY2UgY29oZXJlbmN5IGlzIHRvIGVpdGhlciBpbnNlcnQgY2FjaGUNCj4gbWFpbnRlbmFuY2Ug
b3BlcmF0aW9ucywgb3IgbWFrZSBzdXJlIHRoYXQgdGhlIGJ1ZmZlciBpcyBub3QgY2FjaGVhYmxl
DQo+IGJ5IGFueSBkZXZpY2UgdGFraW5nIHBhcnQgaW4gdGhlIHNoYXJpbmcsIGluY2x1ZGluZyB0
aGUgQ1BVLg0KDQpZZXMgYW5kIG5vLiBXaGVuIHdlIHdhbnQgdGhlIGRldmljZXMgdG8gaW50ZXJh
Y3Qgd2l0aCBlYWNoIG90aGVyIHdpdGhvdXQgDQp0aGUgQ1BVIHRoZW4gd2UgbmVlZCBzb21lIG5l
Z290aWF0ZWQgY29oZXJlbmN5IGJldHdlZW4gdGhlIHR3by4NCg0KPj4gVGhpcyBjYW4gZWl0aGVy
IGJlIHByb3ZpZGVkIGJ5IHRoZSBQQ0kgc3BlY2lmaWNhdGlvbiB3aGljaCBtYWtlcyBpdA0KPj4g
bWFuZGF0b3J5IGZvciBkZXZpY2UgdG8gc25vb3AgdGhlIGNhY2hlcyBvciBieSBwbGF0Zm9ybSBk
ZXZpY2VzIGFncmVlaW5nDQo+PiB0aGF0IHRoZXkgb25seSB3b3JrIG9uIHVuY2FjaGVkIG1lbW9y
eS4NCj4gV2hhdCB5b3UgZGlzcmVnYXJkIGhlcmUgaXMgdGhlIGZhY3QgdGhhdCB0aGVyZSBhcmUg
bWFueSBzeXN0ZW1zIG91dA0KPiB0aGVyZSB3aXRoIG1peGVkIHRvcG9sb2dpZXMsIHdoZXJlIHNv
bWUgbWFzdGVycyBhcmUgcGFydCBvZiB0aGUNCj4gY29oZXJlbmN5IGRvbWFpbiBhbmQgc29tZSBh
cmUgbm90Lg0KPg0KPiBXZSBoYXZlIHR3byBvcHRpb25zIGhlcmU6IGVpdGhlciBtYW5kYXRlIHRo
YXQgY29oZXJlbmN5IGZvciBkbWEtYnVmcw0KPiBuZWVkIHRvIGJlIGVzdGFibGlzaGVkIGJ5IGhh
cmR3YXJlLCB3aGljaCBpcyB0aGUgb3B0aW9uIHRoYXQgeW91DQo+IHN0cm9uZ2x5IHByZWZlciwg
d2hpY2ggbWVhbnMgZm9yY2luZyBhbGwgYnVmZmVycyB0byBiZSB1bmNhY2hlYWJsZSBpbiBhDQo+
IHN5c3RlbSB3aXRoIG1hc3RlcnMgdGhhdCBhcmUgbm90IGNvaGVyZW50LCBvciBhbGxvd2luZyBz
b21lIGZvcm0gb2YNCj4gYnJhY2tldGVkIERNQSBhY2Nlc3Mgd2l0aCBjYWNoZSBtYWludGVuYW5j
ZSBvcHMuDQoNCldlbGwgSSBkb24ndCBwcmVmZXIgdGhhdCBvcHRpb24sIGl0J3MganVzdCB0aGUg
b25seSBvbmUgSSBjYW4gc2VlLiBPbmUgDQpvZiB0aGUgbWFpbiBnb2FscyBvZiBETUEtYnVmIGlz
IHRvIGFsbG93IGRldmljZSB0byBzaGFyZSBkYXRhIHdpdGhvdXQgDQp0aGUgbmVlZCBmb3IgQ1BV
IGludGVyYWN0aW9ucy4NCg0KSW4gb3RoZXIgd29yZHMgd2UgbmVnb3RpYXRlIHRoZSBoaWdoIGxl
dmVsIHByb3BlcnRpZXMgYW5kIHRoZW4gdGhlIA0KZGV2aWNlIGNhbiB0YWxrIHRvIGVhY2ggb3Ro
ZXIgd2l0aG91dCBleHBsaWNpdGx5IG5vdGluZyB3aG8gaXMgYWNjZXNzaW5nIA0Kd2hhdC4NCg0K
QW5kIHRoaXMgY29uY2VwdCBpcyBjb21wbGV0ZWx5IGluY29tcGF0aWJsZSB3aXRoIG1haW50ZW5h
bmNlIG9wcy4gV2UgDQptYWRlIHRoYXQgbWlzdGFrZSB3aXRoIFNXSU9UTEIgZm9yIHRoZSBETUEg
QVBJIGFuZCBJIGRvbid0IHJlYWxseSB3YW50IA0KdG8gcmVwZWF0IHRoYXQgc3R1bnQuDQoNCj4+
IEV4cGxpY2l0IGNhY2hlIGZsdXNoIG9wZXJhdGlvbnMgYXJlIHNpbXBsZSBub3QgcGFydCBvZiB0
aGUgZGVzaWduIG9mDQo+PiBETUEtYnVmIGJlY2F1c2UgdGhleSBhcmUgbm90IHBhcnQgb2YgdGhl
IGRlc2lnbiBvZiB0aGUgaGlnaGVyIGxldmVsIEFQSXMNCj4+IGxpa2UgVnVsa2FuIGFuZCBPcGVu
R0wuDQo+IEknbSBhd2FyZSB0aGF0IHNvbWUgZ3JhcGhpY3MgQVBJcyBoYXZlIGJlZW4gbGl2aW5n
IGluIGEgdW5pdmVyc2UNCj4gYmxpc3NmdWxseSB1bmF3YXJlIG9mIHN5c3RlbXMgd2l0aG91dCBo
YXJkd2FyZSBlbmZvcmNlZCBjb2hlcmVuY3kuIEJ1dA0KPiB0aGF0IGlzbid0IHRoZSBvbmx5IHVz
ZSBmb3IgZG1hLWJ1ZnMuDQoNClllYWgsIGJ1dCB0aGUgb3RoZXIgdXNlIGNhc2VzIGFyZSBleHRy
ZW1lbHkgbGltaXRlZC4gQXMgZmFyIGFzIEkgY2FuIHNlZQ0KDQo+DQo+IEkgdG90YWxseSBhZ3Jl
ZSB0aGF0IHNvbWUgaGlnaGVyIGxldmVsIEFQSSBwcmltaXRpdmVzIGFyZW4ndCBwb3NzaWJsZQ0K
PiB3aXRob3V0IGNvaGVyZW5jeSBhdCB0aGUgaGFyZHdhcmUgbGV2ZWwgYW5kIGZvciB0aG9zZSB1
c2VzIHdlIHNob3VsZA0KPiByZXF1aXJlwqBlaXRoZXIgSFcgZW5mb3JjZWQgY29oZXJlbmN5IG9y
IHVuY2FjaGFibGUgbWVtb3J5LiBCdXQgSSBkb24ndA0KPiB0aGluayB3ZSBzaG91bGQgbWFrZSB0
aGluZ3Mgc2xvdyBkZWxpYmVyYXRlbHkgb24gc3lzdGVtcyB0aGF0IGFsbG93IHRvDQo+IG9wdGlt
aXplIHRoaW5ncyB3aXRoIHRoZSBoZWxwIG9mIGJyYWNrZXRlZCBhY2Nlc3MuDQo+DQo+IElmIEkg
dW5kZXJzdG9vZCB0aGluZ3MgcmlnaHQgeW91ciBhbWRncHUgdXNlLWNhc2UgZXZlbiBmYWxscyBp
bnRvIHRoaXMNCj4gY2F0ZWdvcnk6IG5vcm1hbGx5IHlvdSB3b3VsZCB3YW50IHRvIHVzZSBjYWNo
ZWFibGUgbWVtb3J5IGZvcg0KPiBldmVyeXRoaW5nLCBidXQganVzdCBtYWtlIHN1cmUgdG8gY2xl
YW4gdGhlIGNhY2hlcyBiZWZvcmUgdXNpbmcgdGhlDQo+IGJ1ZmZlciB3aXRoIHRoZSBub24tY29o
ZXJlbnQgZGlzcGxheSBlbmdpbmUuDQoNCk5vLCB0aGF0IHdvbid0IHdvcmsgbGlrZSB0aGlzLiBU
aGUgY2FjaGluZyBhdHRyaWJ1dGVzIG11c3QgYmUgY29oZXJlbnQgDQpmb3IgdGhlIGRpc3BsYXkg
ZW5naW5lIHRvIHdvcmsgY29ycmVjdGx5Lg0KDQo+PiBBZGRpbmcgdGhpcyB0byBETUEtYnVmIGZv
ciB0aGUgcmF0aGVyIHNwZWNpYWwgdXNlIGNhc2Ugd291bGQgY29tcGxldGVseQ0KPj4gYnJlYWsg
dGhhdCBhbmQgbWFrZSBsaXZlIG11Y2ggbW9yZSBjb21wbGljYXRlZCBmb3IgZXZlcnlib2R5Lg0K
Pj4NCj4+PiBJIGFsc28gdGhpbmsgdGhhdCB3ZSBzaG91bGQga2VlcCBpbiBtaW5kIHRoYXQgdGhl
IHdvcmxkIGlzIG1vdmluZyBpbnRvDQo+Pj4gYSBkaXJlY3Rpb24gd2hlcmUgRE1BIG1hc3RlcnMg
bWF5IG5vdCBvbmx5IHNub29wIHRoZSBDUFUgY2FjaGVzICh3aGF0DQo+Pj4gaXMgdGhlIGRlZmlu
aXRpb24gb2YgY2FjaGUgY29oZXJlbnQgb24geDg2KSwgYnV0IGFjdHVhbGx5IHRha2UgcGFydCBp
bg0KPj4+IHRoZSBzeXN0ZW0gY29oZXJlbmNlIGFuZCBhcmUgYWJsZSB0byBoYXZlIHdyaXRlYmFj
ayBjYWNoZXMgZm9yIHNoYXJlZA0KPj4+IGRhdGEgb24gdGhlaXIgb3duLiBJIGNhbiBvbmx5IHNw
ZWN1bGF0ZSwgYXMgSSBoYXZlbid0IHNlZW4gdGhlIGFtZGdwdQ0KPj4+IHNpZGUgeWV0LCBidXQg
SSB0aGluayB0aGlzIHByb3Bvc2FsIGlzIG1vdmluZyBpbiB0aGUgb3RoZXIgZGlyZWN0aW9uIGJ5
DQo+Pj4gYXNzdW1pbmcgYSBjZW50cmFsIHN5c3RlbSBjYWNoZSwgd2hlcmUgdGhlIGltcG9ydGVy
IGhhcyBzb21lIG1hZ2ljIHdheQ0KPj4+IHRvIGNsZWFuIHRoaXMgY2VudHJhbCBjYWNoZS4NCj4+
IFdoYXQgeW91IG1lYW4gaXMgQ1hMOiBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9Db21w
dXRlX0V4cHJlc3NfTGluaw0KPiBPciBBUk0gQU1CQSBDSEkuDQo+PiBBbmQgeWVzIHdlIHN1cHBv
cnQgdGhhdCBpbiBhIGJ1bmNoIG9mIGNvbmZpZ3VyYXRpb25zIGFuZCBhbHNvIGhhdmUNCj4+IHdv
cmtlZCB3aXRoIHRoYXQgYW5kIGFtZGdwdSB3aXRoIERNQS1idWYgYmFzZWQgc2hhcmVkLg0KPj4N
Cj4+IFRoaXMgc2hvdWxkIG5vdCBiZSBhIHByb2JsZW0gd2l0aCB0aGlzIGFwcHJvYWNoLg0KPiBJ
dCB3b3JrcyBhcyBsb25nIGFzIGFsbCBtYXN0ZXJzIHNoYXJpbmcgdGhlIGJ1ZmZlciBhcmUgYWNj
ZXNzaW5nIHRoZQ0KPiBidWZmZXIgdGhyb3VnaCB0aGUgSFcgY2FjaGUgY29oZXJlbmNlIGZhY2ls
aXRpZXMgcHJvdmlkZWQgYnkgQ1hMLiBBcw0KPiBzb29uIGFzIGEgbWFzdGVyIHdhbnRzIHRvIGJ5
cGFzcyBpdCAobGlrZSB5b3VyIG5vc25vb3Agc2Nhbm91dCkgeW91DQo+IG5lZWQgc29tZSB3YXkg
dG8gZm9yY2UgYWxsIG90aGVyIG1hc3RlcnMgc2hhcmluZyBhY2Nlc3MgdG8gdGhlIGJ1ZmZlcg0K
PiB0byBjbGVhbiB0aGVpciBjYWNoZXMuDQoNClRoYXQgd29uJ3Qgd29yayBsaWtlIHRoaXMuIFRo
ZSBwcm9ibGVtIGlzIHRoYXQgdGhpcyBpcyBhbiBBUFUgYW5kIHNvIHRoZSANCmRpc3BsYXkgaXMg
cGFydCBvZiB0aGUgQ1BVLiBXaGVuIGVpdGhlciB0aGUgTVRSUiBvciBQQVQgc2F5cyB0aGF0IHRo
ZSANCnBoeXNpY2FsIGFkZHJlc3MgaXMgY2FjaGVhYmxlIHRoZSBlbmdpbmUgbWlnaHQganVzdCBo
YW5nIG9uIGFjY2Vzcy4NCg0KPj4+IFNpbmNlIEkgaGF2ZSBhIHZlc3RlZCBpbnRlcmVzdCBpbiBz
ZWVpbmcgVjRMMiBVVkMgYW5kIG5vbi1jb2hlcmVudCBHUFUNCj4+PiBkbWEtYnVmIHNoYXJpbmcg
d29yayBvbiBBUk0gc3lzdGVtcyBhbmQgc2VlbSB0byBob2xkIHNvbWUgc3Ryb25nDQo+Pj4gb3Bp
bmlvbnMgb24gaG93IHRoaXMgc2hvdWxkIHdvcmssIEkgZ3Vlc3MgSSBuZWVkIHRvIG1ha2Ugc29t
ZSB0aW1lDQo+Pj4gYXZhaWxhYmxlIHRvIHR5cGUgaXQgdXAsIHNvIHdlIGNhbiBkaXNjdXNzIG92
ZXIgY29kZXIgcmF0aGVyIHRoYW4NCj4+PiBhYnN0cmFjdCBpZGVhcy4gSWYgSSBjb21lIHVwIHdp
dGggc29tZXRoaW5nIHRoYXQgd29ya3MgZm9yIG15IHVzZS1jYXNlcw0KPj4+IHdvdWxkIHlvdSBi
ZSB1cCBmb3IgdGFraW5nIGEgc2hvdCBhdCBhIGFtZGdwdSBpbXBsZW1lbnRhdGlvbj8NCj4+IFdl
bGwsIG5vdCByZWFsbHkuIEFzIEkgc2FpZCBJIHNlZSB3aGF0IHlvdSBoYXZlIGluIG1pbmQgaGVy
ZSBhcw0KPj4gY29tcGxldGVseSB3cm9uZyBhcHByb2FjaCB3ZSB3aWxsIGNlcnRhaW5seSBub3Qg
c3VwcG9ydCBpbiBhbnkgR1BVIGRyaXZlci4NCj4+DQo+PiBXaGF0IHdlIGNhbiBkbyBpcyB0byBy
ZXF1ZXN0IHRoZSB1c2UgY2FzZSB3aGljaCB3b24ndCB3b3JrIGFuZCB0aGlzIGlzDQo+PiBleGFj
dGx5IHdoYXQgdGhlIHBhdGNoIGhlcmUgZG9lcy4NCj4+DQo+IERpZCB5b3UgbWVhbiB0byB3cml0
ZSAicHJldmVudCB0aGUgdXNlIGNhc2Ugd2hpY2ggd29uJ3Qgd29yayIgaGVyZT8NCg0KT2gsIHll
cy4gVG8gZmFzdCB0eXBpbmcuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gUmVnYXJk
cywNCj4gTHVjYXMNCj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
