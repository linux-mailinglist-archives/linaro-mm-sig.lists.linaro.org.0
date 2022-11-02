Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 987DD6162B0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 13:27:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6B8B3F5C6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 12:27:37 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id 6DAE13EEC1
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Nov 2022 12:27:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=JgkkpnVf;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.43 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id y69so26173750ede.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Nov 2022 05:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xdNcjSzMT/xbDLiKbtpdXhcZmpWwCkU4t2l372cy+Nw=;
        b=JgkkpnVfgctl0PtCmaLB0wK4r8Z+IzbnHelFuEZ0tJ70dmYw7yvSu0SwUOXnhRvVTG
         Osat0B5eVOeH2YkDyrTqvTaAYXgMdte9i9WI9Riu0m8g9Y02Lkic2rhBwewIBimvV9gr
         VYyKwMKM/pYMJwpClUCtEEq3/MTlXaZs+YTSR0W1HiVYIEQQob/+tM+B7R2iBZDhAYRe
         W5rZ1kMK6cY3pwVdDVnPmc9iQpc58B5Td+7Anh50IQ3zvQuSC5KHP89AcryKvrc/sDSW
         oLLZQL2wnzj7xQsdFjEe3spgKskLjQsdNV3LTm1O2ctop3PeZ24HiuPF6EtDuH0RFm+D
         G2XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xdNcjSzMT/xbDLiKbtpdXhcZmpWwCkU4t2l372cy+Nw=;
        b=7x8D1yk6HOdfBrkvN8sQVdELZYTVdT1UwVcT0Lztkc2+VLsnQT1DdEWFKSrLZMO7Ls
         ULRstbMIAnLszfvgic0ElSASTGC6M1yry+FKUP9iKbLIEDkhopISb83N3Bl++9rKaVHy
         CREnD4p3szDdXs0Pc41FIjWkqrmK8CoGHdV6ZloAPqoz+3N5LCArg3ibxLRGAiGT+G4S
         hImZcj/+HXnyCJi1GVG6wYvjBXtX0ZBuWL3ZgfkM5EbHihxHBFLlr5DRuCzWvWXmEvIr
         pAVgy8nDBxIzUEq6palxIdAHHJgcC87/IHaw4Ho3zYCxD2tCpZ83E17Z9oZt2bVvaODt
         1gRw==
X-Gm-Message-State: ACrzQf1iLNkbKLTMfaiZRddcR70EBdjq7Kwgxr2H5ORRNpVA1MhoNEIn
	84+DQHUTC39CPDPqHCt1+0IeWOmjfu4=
X-Google-Smtp-Source: AMsMyM6b0N4MxEp+n5qguXpFMadwuU9rXeaEWoev9RRlfRtCbtSMXwvT6JbW7u+gd4UG604taM2nAQ==
X-Received: by 2002:a05:6402:428f:b0:454:c988:4bb1 with SMTP id g15-20020a056402428f00b00454c9884bb1mr24024317edc.196.1667392040515;
        Wed, 02 Nov 2022 05:27:20 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:576c:b102:647e:9ffd? ([2a02:908:1256:79a0:576c:b102:647e:9ffd])
        by smtp.gmail.com with ESMTPSA id q16-20020a17090676d000b007ae035374a0sm692576ejn.214.2022.11.02.05.27.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 05:27:19 -0700 (PDT)
Message-ID: <cc470b3d-a611-044f-2b35-cc827c962f9b@gmail.com>
Date: Wed, 2 Nov 2022 13:27:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Pekka Paalanen <ppaalanen@gmail.com>
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
 <20221102141954.7d362068@eldfell>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20221102141954.7d362068@eldfell>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 6DAE13EEC1
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.43:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[ndufresne.ca,fooishbar.org,pengutronix.de,linaro.org,ffwll.ch,gmail.com,lists.freedesktop.org,lists.linaro.org,vger.kernel.org]
Message-ID-Hash: Z4GTAGQFQ4QBV7TCFA6TF5AS7PZQGWOY
X-Message-ID-Hash: Z4GTAGQFQ4QBV7TCFA6TF5AS7PZQGWOY
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, Daniel Stone <daniel@fooishbar.org>, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z4GTAGQFQ4QBV7TCFA6TF5AS7PZQGWOY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDIuMTEuMjIgdW0gMTM6MTkgc2NocmllYiBQZWtrYSBQYWFsYW5lbjoNCj4gT24gV2VkLCAy
IE5vdiAyMDIyIDEyOjE4OjAxICswMTAwDQo+IENocmlzdGlhbiBLw7ZuaWcgPGNrb2VuaWcubGVp
Y2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToNCj4NCj4+IEFtIDAxLjExLjIyIHVtIDIyOjA5
IHNjaHJpZWIgTmljb2xhcyBEdWZyZXNuZToNCj4+PiBbU05JUF0NCj4+Pj4+IEJ1dCB0aGUgY2xp
ZW50IGlzIGp1c3QgYSB2aWRlbyBwbGF5ZXIuIEl0IGRvZXNuJ3QgdW5kZXJzdGFuZCBob3cgdG8N
Cj4+Pj4+IGFsbG9jYXRlIEJPcyBmb3IgUGFuZnJvc3Qgb3IgQU1EIG9yIGV0bmF2aXYuIFNvIHdp
dGhvdXQgYSB1bml2ZXJzYWwNCj4+Pj4+IGFsbG9jYXRvciAoYWdhaW4gLi4uKSwgJ2p1c3QgYWxs
b2NhdGUgb24gdGhlIEdQVScgaXNuJ3QgYSB1c2VmdWwNCj4+Pj4+IHJlc3BvbnNlIHRvIHRoZSBj
bGllbnQuDQo+Pj4+IFdlbGwgZXhhY3RseSB0aGF0J3MgdGhlIHBvaW50IEknbSByYWlzaW5nOiBU
aGUgY2xpZW50ICptdXN0KiB1bmRlcnN0YW5kDQo+Pj4+IHRoYXQhDQo+Pj4+DQo+Pj4+IFNlZSB3
ZSBuZWVkIHRvIGJlIGFibGUgdG8gaGFuZGxlIGFsbCByZXN0cmljdGlvbnMgaGVyZSwgY29oZXJl
bmN5IG9mIHRoZQ0KPj4+PiBkYXRhIGlzIGp1c3Qgb25lIG9mIHRoZW0uDQo+Pj4+DQo+Pj4+IEZv
ciBleGFtcGxlIHRoZSBtdWNoIG1vcmUgaW1wb3J0YW50IHF1ZXN0aW9uIGlzIHRoZSBsb2NhdGlv
biBvZiB0aGUgZGF0YQ0KPj4+PiBhbmQgZm9yIHRoaXMgYWxsb2NhdGluZyBmcm9tIHRoZSBWNEwy
IGRldmljZSBpcyBpbiBtb3N0IGNhc2VzIGp1c3Qgbm90DQo+Pj4+IGdvaW5nIHRvIGZseS4NCj4+
PiBJdCBmZWVscyBsaWtlIHRoaXMgaXMgYSBnZW5lcmljIHN0YXRlbWVudCBhbmQgdGhlcmUgaXMg
bm8gcmVhc29uIGl0IGNvdWxkIG5vdCBiZQ0KPj4+IHRoZSBvdGhlciB3YXkgYXJvdW5kLg0KPj4g
QW5kIGV4YWN0bHkgdGhhdCdzIG15IHBvaW50LiBZb3UgYWx3YXlzIG5lZWQgdG8gbG9vayBhdCBi
b3RoIHdheXMgdG8NCj4+IHNoYXJlIHRoZSBidWZmZXIgYW5kIGNhbid0IGFzc3VtZSB0aGF0IG9u
ZSB3aWxsIGFsd2F5cyB3b3JrLg0KPj4NCj4+IEFzIGZhciBhcyBJIGNhbiBzZWUgaXQgeW91IGd1
eXMganVzdCBhbGxvY2F0ZSBhIGJ1ZmZlciBmcm9tIGEgVjRMMg0KPj4gZGV2aWNlLCBmaWxsIGl0
IHdpdGggZGF0YSBhbmQgc2VuZCBpdCB0byBXYXlsYW5kIGZvciBkaXNwbGF5aW5nLg0KPj4NCj4+
IFRvIGJlIGhvbmVzdCBJJ20gcmVhbGx5IHN1cnByaXNlZCB0aGF0IHRoZSBXYXlsYW5kIGd1eXMg
aGFzbid0IHB1c2hlZA0KPj4gYmFjayBvbiB0aGlzIHByYWN0aWNlIGFscmVhZHkuDQo+IFdoYXQg
c2hvdWxkIHdlIFdheWxhbmQgcGVvcGxlIGJlIHB1c2hpbmcgYmFjayBvbiBleGFjdGx5PyBBbmQg
d2hlcmUgaXMNCj4gb3VyIGF1dGhvcml0eSBhbmQgb3Bwb3J0dW5pdHkgdG8gZG8gc28/DQo+DQo+
IFRoZSBXYXlsYW5kIHByb3RvY29sIGRtYWJ1ZiBleHRlbnNpb24gYWxsb3dzIGEgZ3JhY2VmdWwg
ZmFpbHVyZSBpZiB0aGUNCj4gV2F5bGFuZCBjb21wb3NpdG9yIGNhbm5vdCB1c2UgdGhlIGdpdmVu
IGRtYWJ1ZiBhdCBhbGwsIGdpdmluZyB0aGUNCj4gY2xpZW50IGFuIG9wcG9ydHVuaXR5IHRvIHRy
eSBzb21ldGhpbmcgZWxzZS4NCg0KVGhhdCdzIGV4YWN0bHkgd2hhdCBJIG1lYW50IHdpdGggcHVz
aGluZyBiYWNrIDopDQoNCkkgd2Fzbid0IGF3YXJlIHRoYXQgdGhpcyBoYW5kbGluZyBpcyBhbHJl
YWR5IGltcGxlbWVudGVkLg0KDQo+IFRoZSBXYXlsYW5kIHByb3RvY29sIGFsc28NCj4gdGVsbHMg
Y2xpZW50cyB3aGljaCBEUk0gcmVuZGVyaW5nIGRldmljZSBhdCBtaW5pbXVtIHRoZSBkbWFidWYg
bmVlZHMgdG8NCj4gYmUgY29tcGF0aWJsZSB3aXRoLiBJdCBldmVuIHRlbGxzIHdoaWNoIEtNUyBk
ZXZpY2UgdGhlIGRtYWJ1ZiBjb3VsZCBiZQ0KPiBwdXQgb24gZGlyZWN0IHNjYW5vdXQgaWYgdGhl
IGRtYWJ1ZiB3YXMgc3VpdGFibGUgZm9yIHRoYXQgYW5kIGRpcmVjdA0KPiBzY2Fub3V0IGlzIG90
aGVyd2lzZSBwb3NzaWJsZS4NCg0KWWVhaCwgcGVyZmVjdC4gRXhhY3RseSB0aGF0J3Mgd2hhdCdz
IG5lZWRlZCBoZXJlLg0KDQo+IFdoYXQgdGhlIGNsaWVudCAoYXBwbGljYXRpb24pIGRvZXMgd2l0
aCBhbGwgdGhhdCBpbmZvcm1hdGlvbiBpcyB1cCB0bw0KPiB0aGUgY2xpZW50LiBUaGF0IGNvZGUg
aXMgbm90IHBhcnQgb2YgV2F5bGFuZC4NCj4NCj4gSSdtIHN1cmUgd2Ugd291bGQgYmUgaGFwcHkg
dG8gYWRkIHByb3RvY29sIGZvciBhbnl0aGluZyB0aGF0DQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9j
dWJhbmlzbW8vYWxsb2NhdG9yIG5lZWRzIHRvIGJlY29tZSB0aGUgdW5pdmVyc2FsDQo+IG9wdGlt
YWwgYnVmZmVyIGFsbG9jYXRvciBsaWJyYXJ5Lg0KDQogRnJvbSB3aGF0IHlvdSB3cm90ZSBpdCdz
IGFscmVhZHkgcGVyZmVjdGx5IGNvdmVyZWQuDQoNCj4+IFRoaXMgb25seSB3b3JrcyBiZWNhdXNl
IHRoZSBXYXlsYW5kIGFzIHdlbGwgYXMgWCBkaXNwbGF5IHBpcGVsaW5lIGlzDQo+PiBzbWFydCBl
bm91Z2ggdG8gaW5zZXJ0IGFuIGV4dHJhIGNvcHkgd2hlbiBpdCBmaW5kIHRoYXQgYW4gaW1wb3J0
ZWQNCj4+IGJ1ZmZlciBjYW4ndCBiZSB1c2VkIGFzIGEgZnJhbWVidWZmZXIgZGlyZWN0bHkuDQo+
IFRoZSBvbmx5IGZhbGxiYWNrIFdheWxhbmQgY29tcG9zaXRvcnMgdGVuZCB0byBkbyBpcyB1c2Ug
T3BlbkdML1Z1bGthbg0KPiByZW5kZXJpbmcgZm9yIGNvbXBvc2l0aW9uIGlmIGRpcmVjdCBzY2Fu
b3V0IG9uIGEgS01TIHBsYW5lIGRvZXMgbm90DQo+IHdvcmsuIFRoZXJlIGFyZSBtYW55IHJlYXNv
bnMgd2h5IGRpcmVjdCBzY2Fub3V0IG1heSBub3QgYmUgcG9zc2libGUgaW4NCj4gYWRkaXRpb24g
dG8gaGFyZHdhcmUgYW5kIGRyaXZlcnMgbm90IGFncmVlaW5nIHRvIGRvIGl0IHdpdGggdGhlIGdp
dmVuDQo+IHNldCBvZiBidWZmZXJzLg0KPg0KPiBBIGdlbmVyYWwgcHVycG9zZSAocmVhZDogZGVz
a3RvcCkgV2F5bGFuZCBjb21wb3NpdG9yIHNpbXBseSBjYW5ub3QgbGl2ZQ0KPiB3aXRob3V0IGJl
aW5nIGFibGUgdG8gZmFsbCBiYWNrIGZyb20gS01TIGNvbXBvc2l0aW9uIHRvIHNvZnR3YXJlL0dQ
VQ0KPiBjb21wb3NpdGlvbi4NCj4NCj4gQnV0IHllcywgdGhlcmUgYXJlIHVzZSBjYXNlcyB3aGVy
ZSB0aGF0IGZhbGxiYWNrIGlzIGFzIGdvb2QgYXMgZmFpbGluZw0KPiBjb21wbGV0ZWx5LiBUaG9z
ZSBhcmUgbm90IGRlc2t0b3BzIGJ1dCBtb3JlIGxpa2Ugc2V0LXRvcC1ib3hlcyBhbmQgVFZzLg0K
DQpDb21wbGV0ZWx5IGFncmVlIHRvIHRoaXMgYXBwcm9hY2guDQoNClRoZSBvbmx5IHByb2JsZW0g
aXMgdGhhdCBtZWRpYSBwbGF5ZXJzIHRlbmQgdG8gbm90IGltcGxlbWVudCBhIHdheSB0byANCmFs
bG93IGRpcmVjdCBzY2Fub3V0IGJlY2F1c2Ugb2YgdGhvc2UgZmFsbGJhY2sgcGF0aHMuDQoNCkJ1
dCBhcyB5b3Ugc2FpZCB0aGF0J3MgdGhlaXIgZGVjaXNpb24uDQoNClRoYW5rcywNCkNocmlzdGlh
bi4NCg0KPg0KPg0KPiBUaGFua3MsDQo+IHBxDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
