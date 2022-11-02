Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BF16B616D92
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 20:14:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 721123EE5B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 19:14:02 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by lists.linaro.org (Postfix) with ESMTPS id 1940C3EE5B
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Nov 2022 19:13:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=U2eBcsbA;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.51 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id y16so25895617wrt.12
        for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Nov 2022 12:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n+I+Lqokjv7sP6aJLEDNgwE9GeDzJdWH6K3Vidb4Obw=;
        b=U2eBcsbAYLW3Pn33GYw1axfu0Cz/KESYcsYtr+LCNN70uMdNXawXPkd1JxsRmiosIr
         ajAHUraTMuotqldfowBp7cL5kYvu7oZHM/3S5l1h99PIuPBvFxuDnRSe+IYKrLmO05Yz
         rsOnzorNWeld5o9raTzLIFQkSn0HxNVq6MuG2uggRMKU5zC5qyLlfdICA57+6ybp5H/y
         q3LRPnpZBqW/mNCDM/kmQVu53hbeKnHrh5dHcrfmSNaXM2cuzRxCAfgw0M3gdAJaV1m1
         OcSja73BJt10AA6CI3EDxUSzW7R86IMXKgyBuIpE7d1zWGi5Z+TlaQi0DgVaL7zqj58N
         2tDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n+I+Lqokjv7sP6aJLEDNgwE9GeDzJdWH6K3Vidb4Obw=;
        b=sbc+3OH/ukFQTr5UxyNKta92S1onCncVt74Zmvfstq1mwaL7p9/vRbfQtCoOczqAlm
         KI8tNDGUpCQ8A90rfTPWzCNwKGHOcPGRwPDaRSFeqUmoQbiDPsT49M9iHYkrsuX/aAR5
         0yr49RSQzTBXddpF+N3Fwz72X+X/HOgdu6wTcbWCQmNHuWnSOTxLGPu0q2q5Dx05r4mO
         lN5yI9c8Bi06UgMrzjgTRGLAndhp7kQty2Tbrtav8dTOjt61GeSwd8bSelJ6SnHw1hpI
         bEjM5lcagx9DD8Hz6OGMmWd7cLhqpzVvrWjU+Jh5z49GRa8NUTU0KNyynZP0UA736Zb7
         NRJA==
X-Gm-Message-State: ACrzQf1NRaTMiHNWbyj2kTBaGPe6KizXUzMBV5PxINTDke/mnKWSYtS3
	aw4LH620t9N79CrN5SS93UU=
X-Google-Smtp-Source: AMsMyM543lj4gCmh1kYmpDtRqF8et3Mf+4gJEiJdH2ZILvi7OHvPW1cDTlzKCrvNU2z9/OUys6fagw==
X-Received: by 2002:a05:6000:c3:b0:236:a261:a2a5 with SMTP id q3-20020a05600000c300b00236a261a2a5mr16499588wrx.137.1667416425027;
        Wed, 02 Nov 2022 12:13:45 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:7c81:2208:32f3:412e? ([2a02:908:1256:79a0:7c81:2208:32f3:412e])
        by smtp.gmail.com with ESMTPSA id w12-20020a05600c474c00b003b4a699ce8esm3175987wmo.6.2022.11.02.12.13.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 12:13:44 -0700 (PDT)
Message-ID: <1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com>
Date: Wed, 2 Nov 2022 20:13:43 +0100
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
 <cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com>
 <0abc6efddb8dfc1888de15a1bedaaac6688fd078.camel@pengutronix.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <0abc6efddb8dfc1888de15a1bedaaac6688fd078.camel@pengutronix.de>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: 1940C3EE5B
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.968];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_FROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.51:from];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org]
Message-ID-Hash: PC6HRM7OWSWTGFJ6PNQMWN7HXAOLVAM5
X-Message-ID-Hash: PC6HRM7OWSWTGFJ6PNQMWN7HXAOLVAM5
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PC6HRM7OWSWTGFJ6PNQMWN7HXAOLVAM5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDIuMTEuMjIgdW0gMTg6MTAgc2NocmllYiBMdWNhcyBTdGFjaDoNCj4gQW0gTWl0dHdvY2gs
IGRlbSAwMi4xMS4yMDIyIHVtIDEzOjIxICswMTAwIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5pZzoN
Cj4gW1NOSVBdDQo+PiBJdCB3b3VsZCBqdXN0IGJlIGRvaW5nIHRoaXMgZm9yIHRoZSBpbXBvcnRl
ciBhbmQgZXhhY3RseSB0aGF0DQo+PiB3b3VsZCBiZSBiYWQgZGVzaWduIGJlY2F1c2Ugd2UgdGhl
biBoYXZlIGhhbmRsaW5nIGZvciB0aGUgZGlzcGxheSBkcml2ZXINCj4+IG91dHNpZGUgb2YgdGhl
IGRyaXZlci4NCj4+DQo+IFRoZSBkcml2ZXIgd291bGQgaGF2ZSB0byBkbyB0aG9zZSBjYWNoZSBt
YWludGVuYW5jZSBvcGVyYXRpb25zIGlmIGl0DQo+IGRpcmVjdGx5IHdvcmtlZCB3aXRoIGEgbm9u
LWNvaGVyZW50IGRldmljZS4gRG9pbmcgaXQgZm9yIHRoZSBpbXBvcnRlcg0KPiBpcyBqdXN0IGRv
aW5nIGl0IGZvciBhbm90aGVyIGRldmljZSwgbm90IHRoZSBvbmUgZGlyZWN0bHkgbWFuYWdlZCBi
eQ0KPiB0aGUgZXhwb3J0ZXIuDQo+DQo+IEkgcmVhbGx5IGRvbid0IHNlZSB0aGUgZGlmZmVyZW5j
ZSB0byB0aGUgb3RoZXIgZG1hLWJ1ZiBvcHM6IGluDQo+IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQg
dGhlIGV4cG9ydGVyIG1hcHMgdGhlIGRtYS1idWYgb24gYmVoYWxmIGFuZCBpbnRvDQo+IHRoZSBh
ZGRyZXNzIHNwYWNlIG9mIHRoZSBpbXBvcnRlci4gV2h5IHdvdWxkIGNhY2hlIG1haW50ZW5hbmNl
IGJlIGFueQ0KPiBkaWZmZXJlbnQ/DQoNClRoZSBpc3N1ZSBoZXJlIGlzIHRoZSBleHBsaWNpdCBv
d25lcnNoaXAgdHJhbnNmZXIuDQoNCldlIGludGVudGlvbmFsbHkgZGVjaWRlZCBhZ2FpbnN0IHRo
YXQgYmVjYXVzZSBpdCBicmVha3MgdG9ucyBvZiB1c2UgDQpjYXNlcyBhbmQgaXMgYXQgbGVhc3Qg
YnkgbWUgYW5kIGEgY291cGxlIG9mIG90aGVycyBzZWVuIGFzIGdlbmVyYWxseSANCmRlc2lnbiBm
YWlsdXJlIG9mIHRoZSBMaW51eCBETUEtQVBJLg0KDQpETUEtQnVmIGxldCdzIHRoZSBleHBvcnRl
ciBzZXR1cCB0aGUgRE1BIGFkZHJlc3NlcyB0aGUgaW1wb3J0ZXIgdXNlcyB0byANCmJlIGFibGUg
dG8gZGlyZWN0bHkgZGVjaWRlZCB3aGVyZSBhIGNlcnRhaW4gb3BlcmF0aW9uIHNob3VsZCBnby4g
RS5nLiB3ZSANCmhhdmUgY2FzZXMgd2hlcmUgZm9yIGV4YW1wbGUgYSBQMlAgd3JpdGUgZG9lc24n
dCBldmVuIGdvIHRvIG1lbW9yeSwgYnV0IA0KcmF0aGVyIGEgZG9vcmJlbGwgQkFSIHRvIHRyaWdn
ZXIgYW5vdGhlciBvcGVyYXRpb24uIFRocm93aW5nIGluIENQVSANCnJvdW5kIHRyaXBzIGZvciBl
eHBsaWNpdCBvd25lcnNoaXAgdHJhbnNmZXIgY29tcGxldGVseSBicmVha3MgdGhhdCBjb25jZXB0
Lg0KDQpBZGRpdGlvbmFsIHRvIHRoYXQgYSB2ZXJ5IGJhc2ljIGNvbmNlcHQgb2YgRE1BLWJ1ZiBp
cyB0aGF0IHRoZSBleHBvcnRlciANCnByb3ZpZGVzIHRoZSBidWZmZXIgYXMgaXQgaXMgYW5kIGp1
c3QgZG91YmxlIGNoZWNrcyBpZiB0aGUgaW1wb3J0ZXIgY2FuIA0KYWNjZXNzIGl0LiBGb3IgZXhh
bXBsZSB3ZSBoYXZlIFhHTUkgbGlua3Mgd2hpY2ggbWFrZXMgbWVtb3J5IGFjY2Vzc2libGUgDQp0
byBvdGhlciBkZXZpY2VzIG9uIHRoZSBzYW1lIGJ1cywgYnV0IG5vdCB0byBQQ0llIGRldmljZSBh
bmQgbm90IGV2ZW4gdG8gDQp0aGUgQ1BVLiBPdGhlcndpc2UgeW91IHdvdWxkbid0IGJlIGFibGUg
dG8gaW1wbGVtZW50IHRoaW5ncyBsaWtlIHNlY3VyZSANCmRlY29kaW5nIHdoZXJlIHRoZSBkYXRh
IGlzbid0IGV2ZW4gYWNjZXNzaWJsZSBvdXRzaWRlIHRoZSBkZXZpY2UgdG8gDQpkZXZpY2UgbGlu
ay4NCg0KU28gaWYgYSBkZXZpY2UgZHJpdmVyIHVzZXMgY2FjaGVkIHN5c3RlbSBtZW1vcnkgb24g
YW4gYXJjaGl0ZWN0dXJlIHdoaWNoIA0KZGV2aWNlcyB3aGljaCBjYW4ndCBhY2Nlc3MgaXQgdGhl
IHJpZ2h0IGFwcHJvYWNoIGlzIGNsZWFybHkgdG8gcmVqZWN0IA0KdGhlIGFjY2Vzcy4NCg0KV2hh
dCB3ZSBjYW4gZG8gaXMgdG8gcmV2ZXJzZSB0aGUgcm9sZSBvZiB0aGUgZXhwb3J0ZXIgYW5kIGlt
cG9ydGVyIGFuZCANCmxldCB0aGUgZGV2aWNlIHdoaWNoIG5lZWRzIHVuY2FjaGVkIG1lbW9yeSB0
YWtlIGNvbnRyb2wuIFRoaXMgd2F5IHRoaXMgDQpkZXZpY2UgY2FuIGluc2VydCBvcGVyYXRpb25z
IGFzIG5lZWRlZCwgZS5nLiBmbHVzaCByZWFkIGNhY2hlcyBvciANCmludmFsaWRhdGUgd3JpdGUg
Y2FjaGVzLg0KDQpUaGlzIGlzIHdoYXQgd2UgaGF2ZSBhbHJlYWR5IGRvbmUgaW4gRE1BLWJ1ZiBh
bmQgd2hhdCBhbHJlYWR5IHdvcmtzIA0KcGVyZmVjdGx5IGZpbmUgd2l0aCB1c2UgY2FzZXMgd2hp
Y2ggYXJlIGV2ZW4gbW9yZSBjb21wbGljYXRlZCB0aGFuIGEgDQpzaW1wbGUgd3JpdGUgY2FjaGUg
aW52YWxpZGF0aW9uLg0KDQo+Pj4+IFRoaXMgaXMganVzdCBhIHNvZnR3YXJlIHNvbHV0aW9uIHdo
aWNoIHdvcmtzIGJlY2F1c2Ugb2YgY29pbmNpZGVudCBhbmQNCj4+Pj4gbm90IGJlY2F1c2Ugb2Yg
ZW5naW5lZXJpbmcuDQo+Pj4gQnkgbWFuZGF0aW5nIGEgc29mdHdhcmUgZmFsbGJhY2sgZm9yIHRo
ZSBjYXNlcyB3aGVyZSB5b3Ugd291bGQgbmVlZA0KPj4+IGJyYWNrZXRlZCBhY2Nlc3MgdG8gdGhl
IGRtYS1idWYsIHlvdSBzaW1wbHkgc2hpZnQgdGhlIHByb2JsZW0gaW50bw0KPj4+IHVzZXJzcGFj
ZS4gVXNlcnNwYWNlIHRoZW4gY3JlYXRlcyB0aGUgYnJhY2tldCBieSBmYWxsaW5nIGJhY2sgdG8g
c29tZQ0KPj4+IG90aGVyIGltcG9ydCBvcHRpb24gdGhhdCBtb3N0bHkgZG8gYSBjb3B5IGFuZCB0
aGVuIHRoZSBhcHByb3ByaWF0ZQ0KPj4+IGNhY2hlIG1haW50ZW5hbmNlLg0KPj4+DQo+Pj4gV2hp
bGUgSSB1bmRlcnN0YW5kIHlvdXIgc2VudGltZW50IGFib3V0IHRoZSBETUEtQVBJIGRlc2lnbiBi
ZWluZw0KPj4+IGluY29udmVuaWVudCB3aGVuIHRoaW5ncyBhcmUganVzdCBjb2hlcmVudCBieSBz
eXN0ZW0gZGVzaWduLCB0aGUgRE1BLQ0KPj4+IEFQSSBkZXNpZ24gd2Fzbid0IGRvbmUgdGhpcyB3
YXkgZHVlIHRvIGJhZCBlbmdpbmVlcmluZywgYnV0IGR1ZSB0byB0aGUNCj4+PiBmYWN0IHRoYXQg
cGVyZm9ybWFudCBETUEgYWNjZXNzIG9uIHNvbWUgc3lzdGVtcyBqdXN0IHJlcXVpcmUgdGhpcyBr
aW5kDQo+Pj4gb2YgYnJhY2tldGluZy4NCj4+IFdlbGwsIHRoaXMgaXMgZXhhY3RseSB3aGF0IEkn
bSBjcml0aWNpemluZyBvbiB0aGUgRE1BLUFQSS4gSW5zdGVhZCBvZg0KPj4gZ2l2aW5nIHlvdSBh
IHByb3BlciBlcnJvciBjb2RlIHdoZW4gc29tZXRoaW5nIHdvbid0IHdvcmsgaW4gYSBzcGVjaWZp
Yw0KPj4gd2F5IGl0IGp1c3QgdHJpZXMgdG8gaGlkZSB0aGUgcmVxdWlyZW1lbnRzIGluc2lkZSB0
aGUgRE1BIGxheWVyLg0KPj4NCj4+IEZvciBleGFtcGxlIHdoZW4geW91ciBkZXZpY2UgY2FuIG9u
bHkgYWNjZXNzIDMyYml0cyB0aGUgRE1BLUFQSQ0KPj4gdHJhbnNwYXJlbnRseSBpbnNlcnQgYm91
bmNlIGJ1ZmZlcnMgaW5zdGVhZCBvZiBnaXZpbmcgeW91IGEgcHJvcGVyIGVycm9yDQo+PiBjb2Rl
IHRoYXQgdGhlIG1lbW9yeSBpbiBxdWVzdGlvbiBjYW4ndCBiZSBhY2Nlc3NlZC4NCj4+DQo+PiBU
aGlzIGp1c3QgdHJpZXMgdG8gaGlkZSB0aGUgdW5kZXJseWluZyBwcm9ibGVtIGluc3RlYWQgb2Yg
cHVzaGluZyBpdA0KPj4gaW50byB0aGUgdXBwZXIgbGF5ZXIgd2hlcmUgaXQgY2FuIGJlIGhhbmRs
ZWQgbXVjaCBtb3JlIGdyYWNlZnVsbHkuDQo+IEhvdyB3b3VsZCB5b3UgZXhwZWN0IHRoZSBETUEg
QVBJIHRvIGJlaGF2ZSBvbiBhIHN5c3RlbSB3aGVyZSB0aGUgZGV2aWNlDQo+IGRyaXZlciBpcyBv
cGVyYXRpbmcgb24gY2FjaGVhYmxlIG1lbW9yeSwgYnV0IHRoZSBkZXZpY2UgaXMgbm9uLQ0KPiBj
b2hlcmVudD8gVGVsbGluZyB0aGUgZHJpdmVyIHRoYXQgdGhpcyBqdXN0IGRvZXNuJ3Qgd29yaz8N
Cg0KWWVzLCBleGFjdGx5IHRoYXQuDQoNCkl0J3MgdGhlIGpvYiBvZiB0aGUgaGlnaGVyIGxldmVs
IHRvIHByZXBhcmUgdGhlIGJ1ZmZlciBhIGRldmljZSB3b3JrIA0Kd2l0aCwgbm90IHRoZSBvbmUg
b2YgdGhlIGxvd2VyIGxldmVsLg0KDQpJbiBvdGhlciB3b3JkcyBpbiBhIHByb3BlciBkZXNpZ24g
dGhlIGhpZ2hlciBsZXZlbCB3b3VsZCBwcmVwYXJlIHRoZSANCm1lbW9yeSBpbiBhIHdheSB0aGUg
ZGV2aWNlIGRyaXZlciBjYW4gd29yayB3aXRoIGl0LCBub3QgdGhlIG90aGVyIHdheSANCmFyb3Vu
ZC4NCg0KV2hlbiBhIGRldmljZSBkcml2ZXIgZ2V0cyBtZW1vcnkgaXQgY2FuJ3Qgd29yayB3aXRo
IHRoZSBjb3JyZWN0IHJlc3BvbnNlIA0KaXMgdG8gdGhyb3cgYW4gZXJyb3IgYW5kIGJ1YmJsZSB0
aGF0IHVwIGludG8gYSBsYXllciB3aGVyZSBpdCBjYW4gYmUgDQpoYW5kbGVkIGdyYWNlZnVsbHku
DQoNCkZvciBleGFtcGxlIGluc3RlYWQgb2YgdXNpbmcgYm91bmNlIGJ1ZmZlcnMgdW5kZXIgdGhl
IGhvb2QgdGhlIERNQSBsYXllciANCnRoZSBNTSBzaG91bGQgbWFrZSBzdXJlIHRoYXQgd2hlbiB5
b3UgY2FsbCByZWFkKCkgd2l0aCBPX0RJUkVDVCB0aGF0IHRoZSANCnBhZ2VzIGluIHF1ZXN0aW9u
IGFyZSBhY2Nlc3NpYmxlIGJ5IHRoZSBkZXZpY2UuDQoNCj4gSXQncyBhIHVzZS1jYXNlIHRoYXQg
aXMgd29ya2luZyBmaW5lIHRvZGF5IHdpdGggbWFueSBkZXZpY2VzIChlLmcuIG5ldHdvcmsNCj4g
YWRhcHRlcnMpIGluIHRoZSBBUk0gd29ybGQsIGV4YWN0bHkgYmVjYXVzZSB0aGUgYXJjaGl0ZWN0
dXJlIHNwZWNpZmljDQo+IGltcGxlbWVudGF0aW9uIG9mIHRoZSBETUEgQVBJIGluc2VydHMgdGhl
IGNhY2hlIG1haW50ZW5hbmNlIG9wZXJhdGlvbnMNCj4gb24gYnVmZmVyIG93bmVyc2hpcCB0cmFu
c2Zlci4NCg0KWWVhaCwgSSdtIHBlcmZlY3RseSBhd2FyZSBvZiB0aGF0LiBUaGUgcHJvYmxlbSBp
cyB0aGF0IGV4YWN0bHkgdGhhdCANCmRlc2lnbiB0b3RhbGx5IGJyZWFrcyBHUFVzIG9uIFhlbiBE
T00wIGZvciBleGFtcGxlLg0KDQpBbmQgWGVuIGlzIGp1c3Qgb25lIGV4YW1wbGUsIEkgY2FuIGNl
cnRhaW5seSBzYXkgZnJvbSBleHBlcmllbmNlIHRoYXQgDQp0aGlzIGRlc2lnbiB3YXMgYSByZWFs
bHkgcmVhbGx5IGJhZCBpZGVhIGJlY2F1c2UgaXQgZmF2b3JzIGp1c3Qgb25lIHVzZSANCmNhc2Ug
d2hpbGUgbWFraW5nIG90aGVyIHVzZSBjYXNlcyBwcmFjdGljYWxseSBpbXBvc3NpYmxlIGlmIG5v
dCByZWFsbHkgDQpoYXJkIHRvIGltcGxlbWVudC4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0K
Pg0KPiBSZWdhcmRzLA0KPiBMdWNhcw0KPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
