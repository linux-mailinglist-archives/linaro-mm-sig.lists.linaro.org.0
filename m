Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F74985CC6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Sep 2024 14:54:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF01C445EF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Sep 2024 12:54:41 +0000 (UTC)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	by lists.linaro.org (Postfix) with ESMTPS id 9904A3F3C2
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Sep 2024 12:53:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=lerh2lJd;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.160.42 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-277f19ee2a2so3341219fac.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Sep 2024 05:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727268827; x=1727873627; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j3P64Nuj8GlT9wDKZ+1u3zuMiJRKJGP8MnD/jd+llEk=;
        b=lerh2lJd6wuwhRRXEr1FAldpWo2F7ppaOQZNZrHTKmRgsKkKjCFZJt+WmdCJuyMy8K
         swyxaRFPttICj/MgjXrMOapxMnJsa5xNFxcup0fMkC8FfP6x8FqWilKhxBZPFyhUe0KU
         8z2V1lfzbNxgMnmhnsZVpX06KPDjiexWXAXXd6wl3qqqf+iONevNzQkf/TtlN46qsPBU
         VBJn+SH0/rVWTunA37QTNFkr8tfIRCHCLBdbBDumnc8s/fQiaQZD8Hp+/eWXrRAYTy5k
         +NH4CeHcm1Fr+rVmsrJ/9CUQlhk3kdDzqlxESqS/vWG1P/rCA1TGqY1k/4YlHXxV4n6W
         zbOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727268827; x=1727873627;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j3P64Nuj8GlT9wDKZ+1u3zuMiJRKJGP8MnD/jd+llEk=;
        b=QbbngtC9HCJ4cDNYfm3eKQvNXe7TVMh2HHJSAHAILHIkOgzvQLa/NqEhQOzSnFiSGg
         ytOVKenVWOO5GLS4z6LzcUYukzWj1njcgn7Oj1lQp9PDLaHZJiuXYCs2qTBL2oATo0NN
         AwcbhcYhH7LITt7O2wVXOqLKLVdbiCKaTV1ZIhb/7K6KLWbclTCJldwAbsqcWN9r5daP
         4c/9Fgaok/QFwD7Y6cfYo+2alZ0/pMTj2HAIDZ8WWA39CTE/yy6JvN5rsru/9+TGtoW2
         ZfcQD4ai/0W0j2YHYtXZB0kPqPP7gtB6WsbLCdUl/+PIWiJdetYsHZN1I3sC0mDqg2Al
         1CcA==
X-Forwarded-Encrypted: i=1; AJvYcCXwvmqar5pFUaq5ZZgGGlQrJH/Zx2zDKSZwsyoaVwxSfCoxbv5NOCF9XimYpyijZR56qgKMwKfpv/QONVYU@lists.linaro.org
X-Gm-Message-State: AOJu0YyOUlGTXWF7tlMXPlt66j4mVGG/sFFVzaS7rttgPpwdh7Hzu/HS
	wYwuOY5xMCDNSoc/fbF3dRGhsrnLv9YQM2ENpaq9s55IhWsNFocSCKapfSaSOpnrMvYNLNRDasS
	cLXh3M8Zx3i7b0DqcQsNW9sD4xGRq8gNp4HSgKD/h
X-Google-Smtp-Source: AGHT+IHSJDI5zJNXgia6m+wvn3Z88Lm1Gqvx0KTAh7NQ/EUXrFKHeoOj7pRQGL8LyhcvQBz8DCABmsPEnqj7Sd60oPU=
X-Received: by 2002:a05:6870:5487:b0:277:f329:f111 with SMTP id
 586e51a60fabf-286e141f056mr1950128fac.22.1727268826783; Wed, 25 Sep 2024
 05:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <dhxvyshwi4qmcmwceokhqey2ww4azjcs6qrpnkgivdj7tv5cke@r36srvvbof6q>
 <20240925071504.GA3519798@rayden> <bktt4yanmfn4gjljy2wxmigj6mncpga237oxyf4g4h2vxu2a3q@asnsn7smi4u2>
In-Reply-To: <bktt4yanmfn4gjljy2wxmigj6mncpga237oxyf4g4h2vxu2a3q@asnsn7smi4u2>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Wed, 25 Sep 2024 14:53:34 +0200
Message-ID: <CAHUa44EvgcUg0QFvwsgU6BSs_BtZg6bO_5rx3CJbyCUPbiQZXQ@mail.gmail.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9904A3F3C2
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.42:from];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.160.42:from];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: ABKOC4X5AMMTW775E7ISFESFFRT2RJZW
X-Message-ID-Hash: ABKOC4X5AMMTW775E7ISFESFFRT2RJZW
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/4] Linaro restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ABKOC4X5AMMTW775E7ISFESFFRT2RJZW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBTZXAgMjUsIDIwMjQgYXQgMTo0MeKAr1BNIERtaXRyeSBCYXJ5c2hrb3YNCjxkbWl0
cnkuYmFyeXNoa292QGxpbmFyby5vcmc+IHdyb3RlOg0KPg0KPiBPbiBXZWQsIFNlcCAyNSwgMjAy
NCBhdCAwOToxNTowNEFNIEdNVCwgSmVucyBXaWtsYW5kZXIgd3JvdGU6DQo+ID4gT24gTW9uLCBT
ZXAgMjMsIDIwMjQgYXQgMDk6MzM6MjlBTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToN
Cj4gPiA+IEhpLA0KPiA+ID4NCj4gPiA+IE9uIEZyaSwgQXVnIDMwLCAyMDI0IGF0IDA5OjAzOjQ3
QU0gR01ULCBKZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiA+ID4gSGksDQo+ID4gPiA+DQo+ID4g
PiA+IFRoaXMgcGF0Y2ggc2V0IGlzIGJhc2VkIG9uIHRvcCBvZiBZb25nIFd1J3MgcmVzdHJpY3Rl
ZCBoZWFwIHBhdGNoIHNldCBbMV0uDQo+ID4gPiA+IEl0J3MgYWxzbyBhIGNvbnRpbnVhdGlvbiBv
biBPbGl2aWVyJ3MgQWRkIGRtYS1idWYgc2VjdXJlLWhlYXAgcGF0Y2ggc2V0IFsyXS4NCj4gPiA+
ID4NCj4gPiA+ID4gVGhlIExpbmFybyByZXN0cmljdGVkIGhlYXAgdXNlcyBnZW5hbGxvYyBpbiB0
aGUga2VybmVsIHRvIG1hbmFnZSB0aGUgaGVhcA0KPiA+ID4gPiBjYXJ2b3V0LiBUaGlzIGlzIGEg
ZGlmZmVyZW5jZSBmcm9tIHRoZSBNZWRpYXRlayByZXN0cmljdGVkIGhlYXAgd2hpY2gNCj4gPiA+
ID4gcmVsaWVzIG9uIHRoZSBzZWN1cmUgd29ybGQgdG8gbWFuYWdlIHRoZSBjYXJ2ZW91dC4NCj4g
PiA+ID4NCj4gPiA+ID4gSSd2ZSB0cmllZCB0byBhZHJlc3MgdGhlIGNvbW1lbnRzIG9uIFsyXSwg
YnV0IFsxXSBpbnRyb2R1Y2VzIGNoYW5nZXMgc28gSSdtDQo+ID4gPiA+IGFmcmFpZCBJJ3ZlIGhh
ZCB0byBza2lwIHNvbWUgY29tbWVudHMuDQo+ID4gPg0KPiA+ID4gSSBrbm93IEkgaGF2ZSByYWlz
ZWQgdGhlIHNhbWUgcXVlc3Rpb24gZHVyaW5nIExQQyAoaW4gY29ubmVjdGlvbiB0bw0KPiA+ID4g
UXVhbGNvbW0ncyBkbWEtaGVhcCBpbXBsZW1lbnRhdGlvbikuIElzIHRoZXJlIGFueSByZWFzb24g
d2h5IHdlIGFyZQ0KPiA+ID4gdXNpbmcgZ2VuZXJpYyBoZWFwcyBpbnN0ZWFkIG9mIGFsbG9jYXRp
bmcgdGhlIGRtYS1idWZzIG9uIHRoZSBkZXZpY2UNCj4gPiA+IHNpZGU/DQo+ID4gPg0KPiA+ID4g
SW4geW91ciBjYXNlIHlvdSBhbHJlYWR5IGhhdmUgVEVFIGRldmljZSwgeW91IGNhbiB1c2UgaXQg
dG8gYWxsb2NhdGUgYW5kDQo+ID4gPiBleHBvcnQgZG1hLWJ1ZnMsIHdoaWNoIHRoZW4gZ2V0IGlt
cG9ydGVkIGJ5IHRoZSBWNEwgYW5kIERSTSBkcml2ZXJzLg0KPiA+ID4NCj4gPiA+IEkgaGF2ZSBh
IGZlZWxpbmcgKEkgbWlnaHQgYmUgY29tcGxldGVseSB3cm9uZyBoZXJlKSB0aGF0IGJ5IHVzaW5n
DQo+ID4gPiBnZW5lcmljIGRtYS1idWYgaGVhcHMgd2UgY2FuIGVhc2lseSBlbmQgdXAgaW4gYSBz
aXR1YXRpb24gd2hlbiB0aGUNCj4gPiA+IHVzZXJzcGFjZSBkZXBlbmRzIGhlYXZpbHkgb24gdGhl
IGFjdHVhbCBwbGF0Zm9ybSBiZWluZyB1c2VkICh0byBtYXAgdGhlDQo+ID4gPiBwbGF0Zm9ybSB0
byBoZWFwIG5hbWVzKS4gSSB0aGluayB3ZSBzaG91bGQgaW5zdGVhZCBkZXBlbmQgb24gdGhlDQo+
ID4gPiBleGlzdGluZyBkZXZpY2VzIChlLmcuIGlmIHRoZXJlIGlzIGEgVEVFIGRldmljZSwgdXNl
IGFuIElPQ1RMIHRvDQo+ID4gPiBhbGxvY2F0ZSBzZWN1cmVkIERNQSBCVUYgZnJvbSBpdCwgb3Ro
ZXJ3aXNlIGNoZWNrIGZvciBRVEVFIGRldmljZSwNCj4gPiA+IG90aGVyd2lzZSBjaGVjayBmb3Ig
c29tZSBvdGhlciB2ZW5kb3IgZGV2aWNlKS4NCj4gPg0KPiA+IFRoYXQgbWFrZXMgc2Vuc2UsIGl0
J3Mgc2ltaWxhciB0byB3aGF0IHdlIGRvIHdpdGggVEVFX0lPQ19TSE1fQUxMT0MNCj4gPiB3aGVy
ZSB3ZSBhbGxvY2F0ZSBmcm9tIGEgY2FydmVvdXQgcmVzZXJ2ZXJkIGZvciBzaGFyZWQgbWVtb3J5
IHdpdGggdGhlDQo+ID4gc2VjdXJlIHdvcmxkLiBJdCB3YXMgZXZlbiBiYXNlZCBvbiBkbWEtYnVm
IHVudGlsIGNvbW1pdCBkZmQwNzQzZjFkOWUNCj4gPiAoInRlZTogaGFuZGxlIGxvb2t1cCBvZiBz
aG0gd2l0aCByZWZlcmVuY2UgY291bnQgMCIpLg0KPiA+DQo+ID4gV2Ugc2hvdWxkIHVzZSBhIG5l
dyBURUVfSU9DXypfQUxMT0MgZm9yIHRoZXNlIG5ldyBkbWEtYnVmcyB0byBhdm9pZA0KPiA+IGNv
bmZ1c2lvbiBhbmQgdG8gaGF2ZSBtb3JlIGZyZWVkb20gd2hlbiBkZXNpZ25pbmcgdGhlIGludGVy
ZmFjZS4NCj4gPg0KPiA+ID4NCj4gPiA+IFRoZSBtZW50YWwgZXhwZXJpbWVudCB0byBjaGVjayBp
ZiB0aGUgQVBJIGlzIGNvcnJlY3QgaXMgcmVhbGx5IHNpbXBsZToNCj4gPiA+IENhbiB5b3UgdXNl
IGV4YWN0bHkgdGhlIHNhbWUgcm9vdGZzIG9uIHNldmVyYWwgZGV2aWNlcyB3aXRob3V0DQo+ID4g
PiBhbnkgYWRkaXRpb25hbCB0dW5pbmcgKGUuZy4geW91ciBRRU1VLCBIaUtleSwgYSBNZWRpYXRl
ayBib2FyZCwgUXVhbGNvbW0NCj4gPiA+IGxhcHRvcCwgZXRjKT8NCj4gPg0KPiA+IE5vLCBJIGRv
bid0IHRoaW5rIHNvLg0KPg0KPiBUaGVuIHRoZSBBUEkgbmVlZHMgdG8gYmUgbW9kaWZpZWQuDQoN
CkkgZG9uJ3QgdGhpbmsgdGhhdCBpcyBlbm91Z2guIEkgd291bGQgaGF2ZSBhbnN3ZXJlZCBubyBl
dmVuIHdpdGhvdXQNCnRoZSBzZWN1cmUgZGF0YSBwYXRoIGluIG1pbmQuIENvbW11bmljYXRpb24g
d2l0aCB0aGUgc2VjdXJlIHdvcmxkIGlzDQpzdGlsbCB0b28gZnJhZ21lbnRlZC4NCg0KPg0KPiBP
ciB0aGUgdXNlcnNwYWNlIG5lZWRzIHRvIGJlIG1vZGlmaWVkIGluIHRoZSB3YXkgc2ltaWxhciB0
byBWdWxrYW4gLw0KPiBPcGVuQ0wgLyBnbHZuZCAvIFZBIC8gVkRQVTogcGxhdGZvcm0tc3BlY2lm
aWMgYmFja2VuZHMsIGNvZXhpc3Rpbmcgb24gYQ0KPiBzaW5nbGUgcm9vdGZzLg0KDQpZZXMsIHRo
YXQncyBsaWtlbHkgYSBuZWVkZWQgc3RlcC4gQnV0IHRoZSBmaXJzdCBzdGVwIGlzIHRvIGhhdmUN
CnNvbWV0aGluZyB0byByZWxhdGUgdG8gdXBzdHJlYW0sIHdpdGhvdXQgdGhhdCB0aGVyZSdzIG9u
bHkgYW4NCmV2ZXItY2hhbmdpbmcgZG93bnN0cmVhbSBBQkkuDQoNCj4NCj4gSXQgaXMgbW9yZSBv
ciBsZXNzIGZpbmUgdG8gaGF2ZSBwbGF0Zm9ybS1zcGVjaWZpYyByb290ZnMgd2hlbiB3ZSBhcmUN
Cj4gdGFsa2luZyBhYm91dCB0aGUgZW1iZWRkZWQsIHJlc291cmNlLWxpbWl0ZWQgZGV2aWNlcy4g
QnV0IGZvciB0aGUNCj4gZW5kLXVzZXIgZGV2aWNlcyB3ZSBtdXN0IGJlIGFibGUgdG8gaW5zdGFs
bCBhIGdlbmVyaWMgZGlzdHJvIHdpdGggbm8NCj4gZGV2aWNlLXNwZWNpZmljIHBhY2thZ2VzIGJl
aW5nIHNlbGVjdGVkLg0KDQpJJ20gbm90IHN1cmUgd2UgY2FuIHNvbHZlIHRoYXQgcHJvYmxlbSBo
ZXJlLiBCdXQgd2Ugc2hvdWxkIG9mIGNvdXJzZQ0Kbm90IG1ha2UgbWF0dGVycyB3b3JzZS4gSW4g
dGhlIHJlc3RyaWN0ZWQgaGVhcCBwYXRjaCBzZXQgd2hpY2ggdGhpcw0KcGF0Y2hzZXQgYnVpbGRz
IG9uIHdlIGRlZmluZSBhIHdheSB0byBhbGxvY2F0ZSBtZW1vcnkgZnJvbSBhDQpyZXN0cmljdGVk
IGhlYXAsIGJ1dCB3ZSBsZWF2ZSB0aGUgcHJvYmxlbSBvZiBmaW5kaW5nIHRoZSByaWdodCBoZWFw
IHRvDQp1c2Vyc3BhY2UuDQoNClRoYW5rcywNCkplbnMNCg0KPg0KPiA+DQo+ID4gPg0KPiA+ID4g
Pg0KPiA+ID4gPiBUaGlzIGNhbiBiZSB0ZXN0ZWQgb24gUUVNVSB3aXRoIHRoZSBmb2xsb3dpbmcg
c3RlcHM6DQo+ID4gPiA+IHJlcG8gaW5pdCAtdSBodHRwczovL2dpdGh1Yi5jb20vamVuc3dpLWxp
bmFyby9tYW5pZmVzdC5naXQgLW0gcWVtdV92OC54bWwgXA0KPiA+ID4gPiAgICAgICAgIC1iIHBy
b3RvdHlwZS9zZHAtdjENCj4gPiA+ID4gcmVwbyBzeW5jIC1qOA0KPiA+ID4gPiBjZCBidWlsZA0K
PiA+ID4gPiBtYWtlIHRvb2xjaGFpbnMgLWo0DQo+ID4gPiA+IG1ha2UgYWxsIC1qJChucHJvYykN
Cj4gPiA+ID4gbWFrZSBydW4tb25seQ0KPiA+ID4gPiAjIGxvZ2luIGFuZCBhdCB0aGUgcHJvbXB0
Og0KPiA+ID4gPiB4dGVzdCAtLXNkcC1iYXNpYw0KPiA+ID4gPg0KPiA+ID4gPiBodHRwczovL29w
dGVlLnJlYWR0aGVkb2NzLmlvL2VuL2xhdGVzdC9idWlsZGluZy9wcmVyZXF1aXNpdGVzLmh0bWwN
Cj4gPiA+ID4gbGlzdCBkZXBlbmRlbmNpZXMgbmVlZGVkIHRvIGJ1aWxkIHRoZSBhYm92ZS4NCj4g
PiA+ID4NCj4gPiA+ID4gVGhlIHRlc3RzIGFyZSBwcmV0dHkgYmFzaWMsIG1vc3RseSBjaGVja2lu
ZyB0aGF0IGEgVHJ1c3RlZCBBcHBsaWNhdGlvbiBpbg0KPiA+ID4gPiB0aGUgc2VjdXJlIHdvcmxk
IGNhbiBhY2Nlc3MgYW5kIG1hbmlwdWxhdGUgdGhlIG1lbW9yeS4NCj4gPiA+DQo+ID4gPiAtIENh
biB3ZSB0ZXN0IHRoYXQgdGhlIHN5c3RlbSBkb2Vzbid0IGNyYXNoIGJhZGx5IGlmIHVzZXIgcHJv
dmlkZXMNCj4gPiA+ICAgbm9uLXNlY3VyZWQgbWVtb3J5IHRvIHRoZSB1c2VycyB3aGljaCBleHBl
Y3QgYSBzZWN1cmUgYnVmZmVyPw0KPiA+ID4NCj4gPiA+IC0gQXQgdGhlIHNhbWUgdGltZSBjb3Jy
ZXNwb25kaW5nIGVudGl0aWVzIHNob3VsZG4ndCBkZWNvZGUgZGF0YSB0byB0aGUNCj4gPiA+ICAg
YnVmZmVycyBhY2Nlc3NpYmxlIHRvIHRoZSByZXN0IG9mIHRoZSBzeXRlbS4NCj4gPg0KPiA+IEkn
bGwgYSBmZXcgdGVzdHMgYWxvbmcgdGhhdC4NCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBKZW5zDQo+
ID4NCj4gPiA+DQo+ID4gPiA+DQo+ID4gPiA+IENoZWVycywNCj4gPiA+ID4gSmVucw0KPiA+ID4g
Pg0KPiA+ID4gPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjQwNTE1
MTEyMzA4LjEwMTcxLTEteW9uZy53dUBtZWRpYXRlay5jb20vDQo+ID4gPiA+IFsyXSBodHRwczov
L2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjIwODA1MTM1MzMwLjk3MC0xLW9saXZpZXIubWFzc2VA
bnhwLmNvbS8NCj4gPiA+ID4NCj4gPiA+ID4gQ2hhbmdlcyBzaW5jZSBPbGl2aWVyJ3MgcG9zdCBb
Ml06DQo+ID4gPiA+ICogQmFzZWQgb24gWW9uZyBXdSdzIHBvc3QgWzFdIHdoZXJlIG11Y2ggb2Yg
ZG1hLWJ1ZiBoYW5kbGluZyBpcyBkb25lIGluDQo+ID4gPiA+ICAgdGhlIGdlbmVyaWMgcmVzdHJp
Y3RlZCBoZWFwDQo+ID4gPiA+ICogU2ltcGxpZmljYXRpb25zIGFuZCBjbGVhbnVwDQo+ID4gPiA+
ICogTmV3IGNvbW1pdCBtZXNzYWdlIGZvciAiZG1hLWJ1ZjogaGVhcHM6IGFkZCBMaW5hcm8gcmVz
dHJpY3RlZCBkbWFidWYgaGVhcA0KPiA+ID4gPiAgIHN1cHBvcnQiDQo+ID4gPiA+ICogUmVwbGFj
ZWQgdGhlIHdvcmQgInNlY3VyZSIgd2l0aCAicmVzdHJpY3RlZCIgd2hlcmUgYXBwbGljYWJsZQ0K
PiA+ID4gPg0KPiA+ID4gPiBFdGllbm5lIENhcnJpZXJlICgxKToNCj4gPiA+ID4gICB0ZWU6IG5l
dyBpb2N0bCB0byBhIHJlZ2lzdGVyIHRlZV9zaG0gZnJvbSBhIGRtYWJ1ZiBmaWxlIGRlc2NyaXB0
b3INCj4gPiA+ID4NCj4gPiA+ID4gSmVucyBXaWtsYW5kZXIgKDIpOg0KPiA+ID4gPiAgIGRtYS1i
dWY6IGhlYXBzOiByZXN0cmljdGVkX2hlYXA6IGFkZCBub19tYXAgYXR0cmlidXRlDQo+ID4gPiA+
ICAgZG1hLWJ1ZjogaGVhcHM6IGFkZCBMaW5hcm8gcmVzdHJpY3RlZCBkbWFidWYgaGVhcCBzdXBw
b3J0DQo+ID4gPiA+DQo+ID4gPiA+IE9saXZpZXIgTWFzc2UgKDEpOg0KPiA+ID4gPiAgIGR0LWJp
bmRpbmdzOiByZXNlcnZlZC1tZW1vcnk6IGFkZCBsaW5hcm8scmVzdHJpY3RlZC1oZWFwDQo+ID4g
PiA+DQo+ID4gPiA+ICAuLi4vbGluYXJvLHJlc3RyaWN0ZWQtaGVhcC55YW1sICAgICAgICAgICAg
ICAgfCAgNTYgKysrKysrDQo+ID4gPiA+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvS2NvbmZpZyAg
ICAgICAgICAgICAgICAgfCAgMTAgKysNCj4gPiA+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9N
YWtlZmlsZSAgICAgICAgICAgICAgICB8ICAgMSArDQo+ID4gPiA+ICBkcml2ZXJzL2RtYS1idWYv
aGVhcHMvcmVzdHJpY3RlZF9oZWFwLmMgICAgICAgfCAgMTcgKy0NCj4gPiA+ID4gIGRyaXZlcnMv
ZG1hLWJ1Zi9oZWFwcy9yZXN0cmljdGVkX2hlYXAuaCAgICAgICB8ICAgMiArDQo+ID4gPiA+ICAu
Li4vZG1hLWJ1Zi9oZWFwcy9yZXN0cmljdGVkX2hlYXBfbGluYXJvLmMgICAgfCAxNjUgKysrKysr
KysrKysrKysrKysrDQo+ID4gPiA+ICBkcml2ZXJzL3RlZS90ZWVfY29yZS5jICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgMzggKysrKw0KPiA+ID4gPiAgZHJpdmVycy90ZWUvdGVlX3NobS5jICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgMTA0ICsrKysrKysrKystDQo+ID4gPiA+ICBpbmNsdWRl
L2xpbnV4L3RlZV9kcnYuaCAgICAgICAgICAgICAgICAgICAgICAgfCAgMTEgKysNCj4gPiA+ID4g
IGluY2x1ZGUvdWFwaS9saW51eC90ZWUuaCAgICAgICAgICAgICAgICAgICAgICB8ICAyOSArKysN
Cj4gPiA+ID4gIDEwIGZpbGVzIGNoYW5nZWQsIDQyNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9u
cygtKQ0KPiA+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9yZXNlcnZlZC1tZW1vcnkvbGluYXJvLHJlc3RyaWN0ZWQtaGVhcC55YW1sDQo+
ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0
ZWRfaGVhcF9saW5hcm8uYw0KPiA+ID4gPg0KPiA+ID4gPiAtLQ0KPiA+ID4gPiAyLjM0LjENCj4g
PiA+ID4NCj4gPiA+DQo+ID4gPiAtLQ0KPiA+ID4gV2l0aCBiZXN0IHdpc2hlcw0KPiA+ID4gRG1p
dHJ5DQo+DQo+IC0tDQo+IFdpdGggYmVzdCB3aXNoZXMNCj4gRG1pdHJ5DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
