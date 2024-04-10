Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BC489FB10
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Apr 2024 17:07:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D989143D41
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Apr 2024 15:07:30 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by lists.linaro.org (Postfix) with ESMTPS id 05FFC3F359
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Apr 2024 15:07:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=scrYqBkP;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.170 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dc23bf7e5aaso7331639276.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Apr 2024 08:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712761647; x=1713366447; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VLKjsUom385xmd5NMGWlteZq1y2bkkhohjUJrbv4Shg=;
        b=scrYqBkPs2XFQu/uDkaqLArlbqzC9ax5j3albqWB++ROkmL0gV+d70B9xAKxxE98Bq
         BdoRchOi9Fh6pGJnk+aQ1rOx+ssptbDyiGgR1JlI/EoxolT5Ln33uPoesmEZVnIC/6ZA
         scLr+hZ90FPYb7XuLPVaT8OweKtaeigCEbOiqu6gl2T5hJc/bckLkhPoNCT/G83Wh2iN
         +CXPoX74IA+LSQOJ0tIOTbqBpDTH8G9O5F+QHcAua/OVaO4O2bOE0hC1xDDbp2IkgBxs
         hLA8Agoy5FihbZrJ8vzhv8TrdCtpT8vwKsmvkb+NJOpWaBKba8oRc5y9ccQj4sKYS+76
         4Myg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712761647; x=1713366447;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VLKjsUom385xmd5NMGWlteZq1y2bkkhohjUJrbv4Shg=;
        b=gh9SOnbh/47IkdLzcpakYEoTYMo0sSXvC2Cwr9ZbW/3RFKGy61JeflsVK9U2+6RTNz
         v+zQHapokz4dwYreWv7879wsVtZwyZZFsNtya4TH3i91EsL2RJ5viHBBMsJ2NHFt1VOS
         gEGzTI4vCEr4yPs3J08rCUdAwdUQK9fTBaZdTiR8C+RZSk1OTXHW5QXX1Q10W/ESCR8j
         St26HetMk0e6HC7wSRp/Y8vI/nxu93M+HMdDBagl9QTZ/nK6sd4UXcaAv4PGqXETmRLr
         eUUZnaP03NoDAUEo7E0WHGcWry/VOjgPlxneW4100k8kIhAdsMafuNBFxnqUw5Oi92BS
         8+lw==
X-Forwarded-Encrypted: i=1; AJvYcCWZs6srkbT7eB+P6UrqytaHJWzwrfjh4cwMgXULO1DNkigaHGq6t6Cbi3+P0PJswD+jBoe4m3UZns/r+wHCwiXB6GTSsMnKlqY/31qgzyQ=
X-Gm-Message-State: AOJu0YyufnkSyWmFL1EpK3mX3l5lFUZ7NFzeApcvh497yxoVWACfeAgX
	LWIcKfxwL3GS98MGucuDtiG3fMbwlkVdO4S8KD/chLZ20+eCaFqmu+ezhQ8AVhv/LTijijgOFQI
	xC2ORZahTnnovAeU6bLPcKTzhAN8dJRgfIl300/NrNMboDsDPiXwk
X-Google-Smtp-Source: AGHT+IF7TCK2LqrJgp8hV7cq9+Ry/b6lOirZ5fldgud6E7mUjNo54gC130kLZJeYihDRzjoyYJ8Lubhyj/db/BZNZCo=
X-Received: by 2002:a05:6902:1b83:b0:dd0:c12:411b with SMTP id
 ei3-20020a0569021b8300b00dd00c12411bmr3692287ybb.8.1712761647378; Wed, 10 Apr
 2024 08:07:27 -0700 (PDT)
MIME-Version: 1.0
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com> <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com> <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
 <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com> <0df41277-ded5-4a42-9df5-864d2b6646f5@amd.com>
In-Reply-To: <0df41277-ded5-4a42-9df5-864d2b6646f5@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 10 Apr 2024 08:07:15 -0700
Message-ID: <CABdmKX03Of7OE_9PfAy5DWcCwwvQvJGXDjzAE8c4WRrz_0Z_eg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 05FFC3F359
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.170:from];
	URIBL_BLOCKED(0.00)[vivo.com:email,googlesource.com:url,mail-yb1-f170.google.com:helo,mail-yb1-f170.google.com:rdns,amd.com:email];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2ZFIEB32SLF63VBNM55ETOLHZC3IJNM4
X-Message-ID-Hash: 2ZFIEB32SLF63VBNM55ETOLHZC3IJNM4
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rong Qianfeng <11065417@vivo.com>, Rong Qianfeng <rongqianfeng@vivo.com>, Jianqun Xu <jay.xu@rock-chips.com>, sumit.semwal@linaro.org, pekka.paalanen@collabora.com, jason@jlekstrand.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2ZFIEB32SLF63VBNM55ETOLHZC3IJNM4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgMTAsIDIwMjQgYXQgNzoyMuKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBBbSAwOS4wNC4yNCB1bSAxODozNyBz
Y2hyaWViIFQuSi4gTWVyY2llcjoNCj4gPiBPbiBUdWUsIEFwciA5LCAyMDI0IGF0IDEyOjM04oCv
QU0gUm9uZyBRaWFuZmVuZyA8MTEwNjU0MTdAdml2by5jb20+IHdyb3RlOg0KPiA+Pg0KPiA+PiDl
nKggMjAyNC80LzggMTU6NTgsIENocmlzdGlhbiBLw7ZuaWcg5YaZ6YGTOg0KPiA+Pj4gQW0gMDcu
MDQuMjQgdW0gMDk6NTAgc2NocmllYiBSb25nIFFpYW5mZW5nOg0KPiA+Pj4+IFtTTklQXQ0KPiA+
Pj4+PiBBbSAxMy4xMS4yMSB1bSAwNzoyMiBzY2hyaWViIEppYW5xdW4gWHU6DQo+ID4+Pj4+PiBB
ZGQgRE1BX0JVRl9JT0NUTF9TWU5DX1BBUlRJQUwgc3VwcG9ydCBmb3IgdXNlciB0byBzeW5jIGRt
YS1idWYgd2l0aA0KPiA+Pj4+Pj4gb2Zmc2V0IGFuZCBsZW4uDQo+ID4+Pj4+IFlvdSBoYXZlIG5v
dCBnaXZlbiBhbiB1c2UgY2FzZSBmb3IgdGhpcyBzbyBpdCBpcyBhIGJpdCBoYXJkIHRvDQo+ID4+
Pj4+IHJldmlldy4gQW5kIGZyb20gdGhlIGV4aXN0aW5nIHVzZSBjYXNlcyBJIGRvbid0IHNlZSB3
aHkgdGhpcyBzaG91bGQNCj4gPj4+Pj4gYmUgbmVjZXNzYXJ5Lg0KPiA+Pj4+Pg0KPiA+Pj4+PiBF
dmVuIHdvcnNlIGZyb20gdGhlIGV4aXN0aW5nIGJhY2tlbmQgaW1wbGVtZW50YXRpb24gSSBkb24n
dCBldmVuIHNlZQ0KPiA+Pj4+PiBob3cgZHJpdmVycyBzaG91bGQgYmUgYWJsZSB0byBmdWxmaWxs
IHRoaXMgc2VtYW50aWNzLg0KPiA+Pj4+Pg0KPiA+Pj4+PiBQbGVhc2UgZXhwbGFpbiBmdXJ0aGVy
LA0KPiA+Pj4+PiBDaHJpc3RpYW4uDQo+ID4+Pj4gSGVyZSBpcyBhIHByYWN0aWNhbCBjYXNlOg0K
PiA+Pj4+IFRoZSB1c2VyIHNwYWNlIGNhbiBhbGxvY2F0ZSBhIGxhcmdlIGNodW5rIG9mIGRtYS1i
dWYgZm9yDQo+ID4+Pj4gc2VsZi1tYW5hZ2VtZW50LCB1c2VkIGFzIGEgc2hhcmVkIG1lbW9yeSBw
b29sLg0KPiA+Pj4+IFNtYWxsIGRtYS1idWYgY2FuIGJlIGFsbG9jYXRlZCBmcm9tIHRoaXMgc2hh
cmVkIG1lbW9yeSBwb29sIGFuZA0KPiA+Pj4+IHJlbGVhc2VkIGJhY2sgdG8gaXQgYWZ0ZXIgdXNl
LCB0aHVzIGltcHJvdmluZyB0aGUgc3BlZWQgb2YgZG1hLWJ1Zg0KPiA+Pj4+IGFsbG9jYXRpb24g
YW5kIHJlbGVhc2UuDQo+ID4+Pj4gQWRkaXRpb25hbGx5LCBjdXN0b20gZnVuY3Rpb25hbGl0aWVz
IHN1Y2ggYXMgbWVtb3J5IHN0YXRpc3RpY3MgYW5kDQo+ID4+Pj4gYm91bmRhcnkgY2hlY2tpbmcg
Y2FuIGJlIGltcGxlbWVudGVkIGluIHRoZSB1c2VyIHNwYWNlLg0KPiA+Pj4+IE9mIGNvdXJzZSwg
dGhlIGFib3ZlLW1lbnRpb25lZCBmdW5jdGlvbmFsaXRpZXMgcmVxdWlyZSB0aGUNCj4gPj4+PiBp
bXBsZW1lbnRhdGlvbiBvZiBhIHBhcnRpYWwgY2FjaGUgc3luYyBpbnRlcmZhY2UuDQo+ID4+PiBX
ZWxsIHRoYXQgaXMgb2J2aW91cywgYnV0IHdoZXJlIGlzIHRoZSBjb2RlIGRvaW5nIHRoYXQ/DQo+
ID4+Pg0KPiA+Pj4gWW91IGNhbid0IHNlbmQgb3V0IGNvZGUgd2l0aG91dCBhbiBhY3R1YWwgdXNl
ciBvZiBpdC4gVGhhdCB3aWxsDQo+ID4+PiBvYnZpb3VzbHkgYmUgcmVqZWN0ZWQuDQo+ID4+Pg0K
PiA+Pj4gUmVnYXJkcywNCj4gPj4+IENocmlzdGlhbi4NCj4gPj4gSW4gZmFjdCwgd2UgaGF2ZSBh
bHJlYWR5IHVzZWQgdGhlIHVzZXItbGV2ZWwgZG1hLWJ1ZiBtZW1vcnkgcG9vbCBpbiB0aGUNCj4g
Pj4gY2FtZXJhIHNob290aW5nIHNjZW5hcmlvIG9uIHRoZSBwaG9uZS4NCj4gPj4NCj4gPj4gICBG
cm9tIHRoZSB0ZXN0IHJlc3VsdHMsIFRoZSBleGVjdXRpb24gdGltZSBvZiB0aGUgcGhvdG8gc2hv
b3RpbmcNCj4gPj4gYWxnb3JpdGhtIGhhcyBiZWVuIHJlZHVjZWQgZnJvbSAzLjhzIHRvIDNzLg0K
PiA+Pg0KPiA+IEZvciBwaG9uZXMsIHRoZSAob3V0IG9mIHRyZWUpIEFuZHJvaWQgdmVyc2lvbiBv
ZiB0aGUgc3lzdGVtIGhlYXAgaGFzIGENCj4gPiBwYWdlIHBvb2wgY29ubmVjdGVkIHRvIGEgc2hy
aW5rZXIuDQo+DQo+IFdlbGwsIGl0IHNob3VsZCBiZSBvYnZpb3VzIGJ1dCBJJ20gZ29pbmcgdG8g
cmVwZWF0IGl0IGhlcmU6IFN1Ym1pdHRpbmcNCj4ga2VybmVsIHBhdGNoZXMgZm9yIG91ciBvZiB0
cmVlIGNvZGUgaXMgYSByYXRoZXIgKmV4dHJlbWUqIG5vLWdvLg0KPg0KU29ycnkgSSB0aGluayBt
eSBjb21tZW50IGxlZCB0byBzb21lIGNvbmZ1c2lvbi4gSSB3YXNuJ3Qgc3VnZ2VzdGluZw0KeW91
IHNob3VsZCB0YWtlIHRoZSBwYXRjaDsgaXQncyBjbGVhcmx5IGluY29tcGxldGUuIEkgd2FzIHBv
aW50aW5nIG91dA0KYW5vdGhlciBvcHRpb24gdG8gUm9uZy4gSXQgYXBwZWFycyBSb25nIGlzIGNy
ZWF0aW5nIGEgc2luZ2xlIG92ZXJzaXplZA0KZG1hLWJ1ZiwgYW5kIHN1YmRpdmlkaW5nIGl0IGlu
IHVzZXJzcGFjZSB0byBhdm9pZCBtdWx0aXBsZSBhbGxvY2F0aW9ucw0KZm9yIG11bHRpcGxlIGJ1
ZmZlcnMuIFRoYXQgd291bGQgbGVhZCB0byBhIG5lZWQgZm9yIGEgcGFydGlhbCBzeW5jIG9mDQp0
aGUgYnVmZmVyIGZyb20gdXNlcnNwYWNlLiBJbnN0ZWFkIG9mIHRoYXQsIHVzaW5nIGEgaGVhcCB3
aXRoIGEgcGFnZQ0KcG9vbCBnZXRzIHlvdSBraW5kIG9mIHRoZSBzYW1lIHRoaW5nIHdpdGggYSBs
b3QgbGVzcyBoZWFkYWNoZSBpbg0KdXNlcnNwYWNlLCBhbmQgbm8gbmVlZCBmb3IgcGFydGlhbCBz
eW5jLiBTbyBJIHdhbnRlZCB0byBzaGFyZSB0aGF0DQpvcHRpb24sIGFuZCB0aGF0IGNhbiBnbyBp
biBqdXN0IEFuZHJvaWQgaWYgbmVjZXNzYXJ5IHdpdGhvdXQgdGhpcw0KcGF0Y2guDQoNCj4gVGhh
dCBpbiBrZXJuZWwgY29kZSAqbXVzdCogaGF2ZSBhbiBpbiBrZXJuZWwgdXNlciBpcyBhIG51bWJl
ciBvbmUgcnVsZS4NCj4NCj4gV2hlbiBzb21lYm9keSB2aW9sYXRlcyB0aGlzIHJ1bGUgaGUgcHJl
dHR5IG11Y2ggZGlzcXVhbGlmeWluZyBoaW1zZWxmIGFzDQo+IHJlbGlhYmxlIHNvdXJjZSBvZiBw
YXRjaGVzIHNpbmNlIG1haW50YWluZXJzIHRoZW4gaGF2ZSB0byBhc3N1bWUgdGhhdA0KPiB0aGlz
IHBlcnNvbiB0cmllcyB0byBzdWJtaXQgY29kZSB3aGljaCBkb2Vzbid0IGhhdmUgYSBqdXN0aWZp
Y2F0aW9uIHRvDQo+IGJlIHVwc3RyZWFtLg0KPg0KPiBTbyB3aGlsZSB0aGlzIGFjdHVhbGx5IGxv
b2tzIHVzZWZ1bCBmcm9tIHRoZSB0ZWNobmljYWwgc2lkZSBhcyBsb25nIGFzDQo+IG5vYm9keSBk
b2VzIGFuIGltcGxlbWVudGF0aW9uIGJhc2VkIG9uIGFuIHVwc3RyZWFtIGRyaXZlciBJIGFic29s
dXRlbHkNCj4gaGF2ZSB0byByZWplY3QgaXQgZnJvbSB0aGUgb3JnYW5pemF0aW9uYWwgc2lkZS4N
Cj4NCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPg0KPiA+ICAgVGhhdCBhbGxvd3MgeW91IHRv
IHNraXAgcGFnZQ0KPiA+IGFsbG9jYXRpb24gd2l0aG91dCBmdWxseSBwaW5uaW5nIHRoZSBtZW1v
cnkgbGlrZSB5b3UgZ2V0IHdoZW4NCj4gPiBhbGxvY2F0aW5nIGEgZG1hLWJ1ZiB0aGF0J3Mgd2F5
IGxhcmdlciB0aGFuIG5lY2Vzc2FyeS4gSWYgaXQncyBmb3IgYQ0KPiA+IGNhbWVyYSBtYXliZSB5
b3UgbmVlZCBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMgbWVtb3J5LCBidXQgaXQncyBhbHNvDQo+ID4g
cG9zc2libGUgdG8gc2V0IHRoYXQgdXAuDQo+ID4NCj4gPiBodHRwczovL2FuZHJvaWQuZ29vZ2xl
c291cmNlLmNvbS9rZXJuZWwvY29tbW9uLysvcmVmcy9oZWFkcy9hbmRyb2lkMTQtNi4xL2RyaXZl
cnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jIzM3Nw0KPiA+DQo+ID4NCj4gPj4gVG8gYmUg
aG9uZXN0LCBJIGRpZG4ndCB1bmRlcnN0YW5kIHlvdXIgY29uY2VybiAiLi4uaG93IGRyaXZlcnMg
c2hvdWxkIGJlDQo+ID4+IGFibGUgdG8gZnVsZmlsbCB0aGlzIHNlbWFudGljcy4iIENhbiB5b3Ug
cGxlYXNlIGhlbHAgZXhwbGFpbiBpdCBpbiBtb3JlDQo+ID4+IGRldGFpbD8NCj4gPj4NCj4gPj4g
VGhhbmtzLA0KPiA+Pg0KPiA+PiBSb25nIFFpYW5mZW5nLg0KPiA+Pg0KPiA+Pj4+IFRoYW5rcw0K
PiA+Pj4+IFJvbmcgUWlhbmZlbmcuDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
