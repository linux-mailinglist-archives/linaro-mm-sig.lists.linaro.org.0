Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F41E479C7A7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 09:06:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A329A3EF33
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 07:06:22 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id 0B65A3EF28
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 07:06:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=TV0toPsw;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.51 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-52a23227567so6741674a12.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 00:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694502376; x=1695107176; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CMy6jSxlLVQzjvcfRtLq3NXvZdu60RtRCF9sxWo1nvI=;
        b=TV0toPsw9ev1xh9P548CRfBOOXHoOfPL13hinhlEZaSzGt6dH4lc2qRESQcaxoXkWf
         hoGKc+YbrixmZvv/Kv7yV0jUljplZqNHbqlwpmswir6+L1mVQW/HMChlT3e7rAOsLc4n
         36WPiKG6OUiXUp02kZiPYLM1HggjTYnq6ToIOdZL2BWlKCAmothdF/GEDm/Gsu28IvH3
         tZEKDufLaVX+3ahpyNJD7Uaj+9alAE+WGYp+jehcxXVIISE5yJDpWJfZbI5ovydcjABQ
         Mbtvyuw+3NBewWN8/MDV6fIwfr0vpmtmCrd6JSNJvSeYNr3JUmb4zVGaMTJ/W7n24Fmj
         o8+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694502376; x=1695107176;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CMy6jSxlLVQzjvcfRtLq3NXvZdu60RtRCF9sxWo1nvI=;
        b=Lg0tgs421OmPvKeQ+Vq+CISxWle6jAMlGgPi98yQeh/GGXOZQUzmPLQPo/UvVKxU4h
         zElexVQjKeB62Y41jq9XnBmWOX3DHU032A98Tu2+1taMCN3SeHV4nrbuTECeeiTfuyd8
         ElLjJGL/k2zUYpVniK6MZcP9UrzAnlvziVeva7rp0uk5+ZN9XS1Wj7BGV5M1lioFPSCh
         Pv5X/0SjP/IeDbXYtEgD3Z3SumDA9TF5vo2mL/hy/9syoSTDMmgUOowJ57urYxdkmK8E
         0zAY2O1VEdLKUkVxAAe9n3TMABz9e4bEZWcpATGsa/3u0UP7gwJ3LwMR322hsJLrE1KT
         BXew==
X-Gm-Message-State: AOJu0YyvZ1DfgDnENLxN85vEE6F894I/xFfirmCSOmF7UMt7fb09ne4f
	FMma+SafZRpa6/5DtuvDquA=
X-Google-Smtp-Source: AGHT+IEOrMxMs1WFBCbVhLR01bYFYeYSawxe090qODnBi4upxpLOi7jNd1Rrxbto/3+X6VvKL39rYA==
X-Received: by 2002:a17:906:8b:b0:9a1:d7cd:6040 with SMTP id 11-20020a170906008b00b009a1d7cd6040mr9828714ejc.37.1694502375674;
        Tue, 12 Sep 2023 00:06:15 -0700 (PDT)
Received: from [192.168.178.25] ([185.254.126.42])
        by smtp.gmail.com with ESMTPSA id p21-20020a170906b21500b0099b6becb107sm6415474ejz.95.2023.09.12.00.06.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 00:06:15 -0700 (PDT)
Message-ID: <23e71d1f-08c1-3834-5b1f-2b5714c7bfaa@gmail.com>
Date: Tue, 12 Sep 2023 09:06:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: John Stultz <jstultz@google.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-4-yong.wu@mediatek.com>
 <803846bc-fd1d-d2ec-2855-456af22c82f8@amd.com>
 <CANDhNCrQyiFZ+8DnG0iyKBXC0H1698K1a9d2AxOq4whDsZBn+Q@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <CANDhNCrQyiFZ+8DnG0iyKBXC0H1698K1a9d2AxOq4whDsZBn+Q@mail.gmail.com>
X-Rspamd-Queue-Id: 0B65A3EF28
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,linaro.org,gmail.com,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.51:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2MUK6VLJ32C7TSOGTCBIGJTVYGEWJ7DU
X-Message-ID-Hash: 2MUK6VLJ32C7TSOGTCBIGJTVYGEWJ7DU
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] dma-heap: Provide accessors so that in-kernel drivers can allocate dmabufs from specific heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2MUK6VLJ32C7TSOGTCBIGJTVYGEWJ7DU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTEuMDkuMjMgdW0gMjA6Mjkgc2NocmllYiBKb2huIFN0dWx0ejoNCj4gT24gTW9uLCBTZXAg
MTEsIDIwMjMgYXQgMzoxNOKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCj4gPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4gd3JvdGU6DQo+PiBBbSAxMS4wOS4yMyB1bSAwNDozMCBzY2hyaWViIFlvbmcg
V3U6DQo+Pj4gRnJvbTogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4NCj4+Pg0KPj4+
IFRoaXMgYWxsb3dzIGRyaXZlcnMgd2hvIGRvbid0IHdhbnQgdG8gY3JlYXRlIHRoZWlyIG93bg0K
Pj4+IERNQS1CVUYgZXhwb3J0ZXIgdG8gYmUgYWJsZSB0byBhbGxvY2F0ZSBETUEtQlVGcyBkaXJl
Y3RseQ0KPj4+IGZyb20gZXhpc3RpbmcgRE1BLUJVRiBIZWFwcy4NCj4+Pg0KPj4+IFRoZXJlIGlz
IHNvbWUgY29uY2VybiB0aGF0IHRoZSBwcmVtaXNlIG9mIERNQS1CVUYgaGVhcHMgaXMNCj4+PiB0
aGF0IHVzZXJsYW5kIGtub3dzIGJldHRlciBhYm91dCB3aGF0IHR5cGUgb2YgaGVhcCBtZW1vcnkN
Cj4+PiBpcyBuZWVkZWQgZm9yIGEgcGlwZWxpbmUsIHNvIGl0IHdvdWxkIGxpa2VseSBiZSBiZXN0
IGZvcg0KPj4+IGRyaXZlcnMgdG8gaW1wb3J0IGFuZCBmaWxsIERNQS1CVUZzIGFsbG9jYXRlZCBi
eSB1c2VybGFuZA0KPj4+IGluc3RlYWQgb2YgYWxsb2NhdGluZyBvbmUgdGhlbXNlbHZlcywgYnV0
IHRoaXMgaXMgc3RpbGwNCj4+PiB1cCBmb3IgZGViYXRlLg0KPj4gVGhlIG1haW4gZGVzaWduIGdv
YWwgb2YgaGF2aW5nIERNQS1oZWFwcyBpbiB0aGUgZmlyc3QgcGxhY2UgaXMgdG8gYXZvaWQNCj4+
IHBlciBkcml2ZXIgYWxsb2NhdGlvbiBhbmQgdGhpcyBpcyBub3QgbmVjZXNzYXJ5IGJlY2F1c2Ug
dXNlcmxhbmQga25vdw0KPj4gYmV0dGVyIHdoYXQgdHlwZSBvZiBtZW1vcnkgaXQgd2FudHMuDQo+
Pg0KPj4gVGhlIGJhY2tncm91bmQgaXMgcmF0aGVyIHRoYXQgd2UgZ2VuZXJhbGx5IHdhbnQgdG8g
ZGVjb3VwbGUgYWxsb2NhdGlvbg0KPj4gZnJvbSBoYXZpbmcgYSBkZXZpY2UgZHJpdmVyIGNvbm5l
Y3Rpb24gc28gdGhhdCB3ZSBoYXZlIGJldHRlciBjaGFuY2UNCj4+IHRoYXQgbXVsdGlwbGUgZGV2
aWNlcyBjYW4gd29yayB3aXRoIHRoZSBzYW1lIG1lbW9yeS4NCj4gWWVwLCB2ZXJ5IG11Y2ggYWdy
ZWVkLCBhbmQgdGhpcyBpcyB3aGF0IHRoZSBjb21tZW50IGFib3ZlIGlzIHRyeWluZyB0byBkZXNj
cmliZS4NCj4NCj4gSWRlYWxseSB1c2VyLWFsbG9jYXRlZCBidWZmZXJzIHdvdWxkIGJlIHVzZWQg
dG8gZW5zdXJlIGRyaXZlcidzIGRvbid0DQo+IGNyZWF0ZSBidWZmZXJzIHdpdGggY29uc3RyYWlu
dHMgdGhhdCBsaW1pdCB3aGljaCBkZXZpY2VzIHRoZSBidWZmZXJzDQo+IG1pZ2h0IGxhdGVyIGJl
IHNoYXJlZCB3aXRoLg0KPg0KPiBIb3dldmVyLCB0aGlzIHBhdGNoIHdhcyBjcmVhdGVkIGFzIGEg
aG9sZC1vdmVyIGZyb20gdGhlIG9sZCBJT04gbG9naWMNCj4gdG8gaGVscCB2ZW5kb3JzIHRyYW5z
aXRpb24gdG8gZG1hYnVmIGhlYXBzLCBhcyB2ZW5kb3JzIGhhZCBzaXR1YXRpb25zDQo+IHdoZXJl
IHRoZXkgc3RpbGwgd2FudGVkIHRvIGV4cG9ydCBkbWFidWZzIHRoYXQgd2VyZSBub3QgdG8gYmUN
Cj4gZ2VuZXJhbGx5IHNoYXJlZCBhbmQgZm9sa3Mgd2FudGVkIHRvIGF2b2lkIGR1cGxpY2F0aW9u
IG9mIGxvZ2ljDQo+IGFscmVhZHkgaW4gZXhpc3RpbmcgaGVhcHMuICBBdCB0aGUgdGltZSwgSSBu
ZXZlciBwdXNoZWQgaXQgdXBzdHJlYW0gYXMNCj4gdGhlcmUgd2VyZSBubyB1cHN0cmVhbSB1c2Vy
cy4gIEJ1dCBJIHRoaW5rIGlmIHRoZXJlIGlzIG5vdyBhIHBvdGVudGlhbA0KPiB1cHN0cmVhbSB1
c2VyLCBpdCdzIHdvcnRoIGhhdmluZyB0aGUgZGlzY3Vzc2lvbiB0byBiZXR0ZXIgdW5kZXJzdGFu
ZA0KPiB0aGUgbmVlZC4NCg0KWWVhaCwgdGhhdCBpbmRlZWQgbWFrZXMgbXVjaCBtb3JlIHNlbnNl
Lg0KDQpXaGVuIGV4aXN0aW5nIGRyaXZlcnMgd2FudCB0byBhdm9pZCB0aGVpciBvd24gaGFuZGxp
bmcgYW5kIG1vdmUgdGhlaXIgDQptZW1vcnkgbWFuYWdlbWVudCBvdmVyIHRvIHVzaW5nIERNQS1o
ZWFwcyBldmVuIGZvciBpbnRlcm5hbCBhbGxvY2F0aW9ucyANCnRoZW4gbm8gb2JqZWN0aW9ucyBm
cm9tIG15IHNpZGUuIFRoYXQgaXMgY2VydGFpbmx5IHNvbWV0aGluZyB3ZSBzaG91bGQgDQphaW0g
Zm9yIGlmIHBvc3NpYmxlLg0KDQpCdXQgd2hhdCB3ZSBzaG91bGQgdHJ5IHRvIGF2b2lkIGlzIHRo
YXQgbmV3bHkgbWVyZ2VkIGRyaXZlcnMgcHJvdmlkZSANCmJvdGggYSBkcml2ZXIgc3BlY2lmaWMg
VUFQSSBhbmQgRE1BLWhlYXBzLiBUaGUganVzdGlmaWNhdGlvbiB0aGF0IHRoaXMgDQptYWtlcyBp
dCBlYXNpZXIgdG8gdHJhbnNpdCB1c2Vyc3BhY2UgdG8gdGhlIG5ldyBVQVBJIGRvZXNuJ3QgcmVh
bGx5IGNvdW50Lg0KDQpUaGF0IHdvdWxkIGJlIGFkZGluZyBVQVBJIGFscmVhZHkgd2l0aCBhIHBs
YW4gdG8gZGVwcmVjYXRlIGl0IGFuZCB0aGF0IA0KaXMgbW9zdCBsaWtlbHkgbm90IGhlbHBmdWwg
Y29uc2lkZXJpbmcgdGhhdCBVQVBJIG11c3QgYmUgc3VwcG9ydGVkIA0KZm9yZXZlciBhcyBzb29u
IGFzIGl0IGlzIHVwc3RyZWFtLg0KDQo+IFNvIEkgdGhpbmsgdGhpcyBwYXRjaCBpcyBhIGxpdHRs
ZSBjb25mdXNpbmcgaW4gdGhpcyBzZXJpZXMsIGFzIEkgZG9uJ3QNCj4gc2VlIG11Y2ggb2YgaXQg
YWN0dWFsbHkgYmVpbmcgdXNlZCBoZXJlICh0aG91Z2ggZm9yZ2l2ZSBtZSBpZiBJJ20NCj4gbWlz
c2luZyBpdCkuDQo+DQo+IEluc3RlYWQsIEl0IHNlZW1zIGl0IGdldCB1c2VkIGluIGEgc2VwYXJh
dGUgcGF0Y2ggc2VyaWVzIGhlcmU6DQo+ICAgIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDIzMDkxMTEyNTkzNi4xMDY0OC0xLXl1bmZlaS5kb25nQG1lZGlhdGVrLmNvbS8NCg0KUGxlYXNl
IHRyeSB0byBhdm9pZCBzdHVmZiBsaWtlIHRoYXQgaXQgaXMgcmVhbGx5IGNvbmZ1c2luZyBhbmQg
ZWF0cyANCnJldmlld2VycyB0aW1lLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IFlv
bmcsIEkgYXBwcmVjaWF0ZSB5b3Ugc2VuZGluZyB0aGlzIG91dCEgQnV0IG1heWJlIGlmIHRoZSBz
ZWN1cmUgaGVhcA0KPiBzdWJtaXNzaW9uIGRvZXNuJ3QgZGVwZW5kIG9uIHRoaXMgZnVuY3Rpb25h
bGl0eSwgSSBtaWdodCBzdWdnZXN0DQo+IG1vdmluZyB0aGlzIHBhdGNoIChvciBhdCBsZWFzdCB0
aGUgbWFqb3JpdHkgb2YgaXQpIHRvIGJlIHBhcnQgb2YgdGhlDQo+IHZjb2RlYyBzZXJpZXMgaW5z
dGVhZD8gIFRoYXQgd2F5IHJldmlld2VycyB3aWxsIGhhdmUgbW9yZSBjb250ZXh0IGZvcg0KPiBo
b3cgdGhlIGNvZGUgYmVpbmcgYWRkZWQgaXMgdXNlZD8NCj4NCj4gdGhhbmtzDQo+IC1qb2huDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
