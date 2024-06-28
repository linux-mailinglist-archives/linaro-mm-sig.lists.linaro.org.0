Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE2891C72F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 22:17:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CBEBB44983
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 20:17:01 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by lists.linaro.org (Postfix) with ESMTPS id 46DA23F2F7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 20:16:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b="nz/0b9r2";
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.128.176) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-643acefd1afso10343507b3.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 13:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1719605818; x=1720210618; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=m2vvGH+Z5PRv9C1/1Kg2WLGJOBKFCREheDNXNwXq490=;
        b=nz/0b9r2vHGTYZirdwJnEg05qgfSeSD+PPCe9jgTTvi49kudsUnVIMUmCE8NEL/FWa
         NkbnIpCSK8SN64ziOuB56No6tt4HyMdIoNhUmLuShEBoWp+Fl/F9Eib0r4cnYOiUP+q2
         7uZCTKC4U/j93smJ6Plv7SzUJfp5wmxa8cw0pkGeKoRJAu0KfkkP+QbiF/zGgnXoUXH3
         5/Ze+U0bw/i3oQVq/lHP0W8H3t7OzUxxPB6JpaKp5MtgRIedF/9LQRRP1zxPIcQ9GwLv
         1vpP/ZvQa85gUgZ0yox4iKMjQLzmgqRqCfXIDpuV+0ze6Jdj7YV8o/D1PWKx3UpHsRj0
         8nlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719605818; x=1720210618;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m2vvGH+Z5PRv9C1/1Kg2WLGJOBKFCREheDNXNwXq490=;
        b=Yw+AE4ZcvV2QLc2P3o/3hHGFKBgLvQswHuftiIQFLQwakDdkzCQXRwQuH97XkWCRKd
         kSELiH01uVMaYYRTXrn0ZdPtwLg632haSMPtBGUhf2hZA4GJ80u04x09s4cJuPinZcTI
         v/T976e37qmc+GB0+ImWnKPOKH2jUTSh9vMBeIalimzKGa3H5B/bsE1ijtGaZPQdBvv4
         1EajYT/crCqjfutd4Po50US1HlqY+Z3+ooB4gLckL6zN/ezViGBUpbwh64g7k85tVhaP
         NHZF6AvSq+XeyQBymzs9QA5TxdZ1xxUyVyDoaND9GfccQtBvUshMyzCffR41GQ5MlMv8
         fFlA==
X-Forwarded-Encrypted: i=1; AJvYcCVuwtQ9SGQhNCHSMH7+O4uzbksLpGu17gtF0PVnIFjhYkEiQKi4ifXJWjzNSDDsEAnKv+UUH8ce8A09iQqROM8YfsTR0XFx6kuA/b2vr1E=
X-Gm-Message-State: AOJu0YxqjgkrubypYgZ/LD0ZoJZoSiFboQtF1b2oxiNnoqKOohJN2sEA
	+mS3k+NaZNql7x0BG5qw+m+N3IYOZJbnPwAYu9vDMTio5gc2J9rW3y9b6cg157I=
X-Google-Smtp-Source: AGHT+IHH8GNlM8rKewH+h4ANugMUQbUwWJEtQ5rC13yHwJFh9UDtqPw7nNyJ2Z5wwDX2U220J+AoVg==
X-Received: by 2002:a05:690c:95d:b0:647:e079:da73 with SMTP id 00721157ae682-647e079db0bmr101713777b3.10.1719605817658;
        Fri, 28 Jun 2024 13:16:57 -0700 (PDT)
Received: from nicolas-tpx395.mtl.collabora.ca (mtl.collabora.ca. [66.171.169.34])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-64a9c4fdb78sm4445677b3.145.2024.06.28.13.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 13:16:57 -0700 (PDT)
Message-ID: <183f2ae09c2dbcf687e69cd13a9d258fd24fd80c.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Jason-JH Lin =?UTF-8?Q?=28=E6=9E=97=E7=9D=BF=E7=A5=A5=29?=
	 <Jason-JH.Lin@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>
Date: Fri, 28 Jun 2024 16:16:55 -0400
In-Reply-To: <5739abdb-0234-412a-9f25-49219411bbc6@amd.com>
References: <20240515112308.10171-1-yong.wu@mediatek.com>
	 <20240515112308.10171-3-yong.wu@mediatek.com>
	 <98721904-003d-4d0d-8cfe-1cecdd59ce01@amd.com>
	 <779ce30a657754ff945ebd32b66e1c644635e84d.camel@mediatek.com>
	 <cef8f87d-edab-41d8-8b95-f3fc39ad7f74@amd.com>
	 <1050c44512374031d1349b5dced228d0efc3fbde.camel@mediatek.com>
	 <3104b765-5666-44e4-8788-f1b1b296fe17@amd.com>
	 <98c11bad7f40bcc79ed7a2039ddb3a46f99908f5.camel@mediatek.com>
	 <75dc1136-7751-4772-9fa7-dd9124684cd2@amd.com>
	 <ZnxWWtdShekGSUif@phenom.ffwll.local>
	 <ae73a0203d6acf2878c9e3ae2d7554816b9c66ad.camel@mediatek.com>
	 <5739abdb-0234-412a-9f25-49219411bbc6@amd.com>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 46DA23F2F7
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.176:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[35];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[quicinc.com,collabora.com,linaro.org,kernel.org,google.com,mediatek.com,deltatee.com,lists.freedesktop.org,emersion.fr,gmail.com,lists.infradead.org,lists.linaro.org,infradead.org,ucw.cz,linux-foundation.org,arm.com,vger.kernel.org];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ENJ2JJR2P7GHUCE4MY36UOJKEF4LIGLX
X-Message-ID-Hash: ENJ2JJR2P7GHUCE4MY36UOJKEF4LIGLX
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "jkardatzke@google.com" <jkardatzke@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, Youlin Pei =?UTF-8?Q?=28=E8=A3=B4=E5=8F=8B=E6=9E=97=29?= <youlin.pei@mediatek.com>, "logang@deltatee.com" <logang@deltatee.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?= <kuohong.wang@mediatek.com>, Jianjiao Zeng =?UTF-8?Q?=28=E6=9B=BE=E5=81=A5=E5=A7=A3=29?= <Jianjiao.Zeng@mediatek.com>, "contact@emersion.fr" <contact@emersion.fr>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linux-mediatek@lists.infradead.org" <linux-
 mediatek@lists.infradead.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "willy@infradead.org" <willy@infradead.org>, "pavel@ucw.cz" <pavel@ucw.cz>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "tjmercier@google.com" <tjmercier@google.com>, "jstultz@google.com" <jstultz@google.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "mripard@kernel.org" <mripard@kernel.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>, Yong Wu =?UTF-8?Q?=28=E5=90=B4=E5=8B=87=29?= <Yong.Wu@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "ppaalanen@gmail.com" <ppaalanen@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ENJ2JJR2P7GHUCE4MY36UOJKEF4LIGLX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpMZSBqZXVkaSAyNyBqdWluIDIwMjQgw6AgMDg6NTcgKzAyMDAsIENo
cmlzdGlhbiBLw7ZuaWcgYSDDqWNyaXTCoDoNCj4gQW0gMjcuMDYuMjQgdW0gMDU6MjEgc2Nocmll
YiBKYXNvbi1KSCBMaW4gKOael+edv+elpSk6DQo+ID4gDQo+ID4gT24gV2VkLCAyMDI0LTA2LTI2
IGF0IDE5OjU2ICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOg0KPiA+ID4gICANCj4gPiA+IEV4
dGVybmFsIGVtYWlsIDogUGxlYXNlIGRvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1l
bnRzIHVudGlsDQo+ID4gPiB5b3UgaGF2ZSB2ZXJpZmllZCB0aGUgc2VuZGVyIG9yIHRoZSBjb250
ZW50Lg0KPiA+ID4gIE9uIFdlZCwgSnVuIDI2LCAyMDI0IGF0IDEyOjQ5OjAyUE0gKzAyMDAsIENo
cmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+ID4gPiA+IEFtIDI2LjA2LjI0IHVtIDEwOjA1IHNjaHJp
ZWIgSmFzb24tSkggTGluICjmnpfnnb/npaUpOg0KPiA+ID4gPiA+ID4gPiBJIHRoaW5rIEkgaGF2
ZSB0aGUgc2FtZSBwcm9ibGVtIGFzIHRoZSBFQ0NfRkxBRyBtZW50aW9uIGluOg0KPiA+ID4gPiA+
ID4gPiA+ID4gDQo+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tZWRpYS8yMDI0
MDUxNS1kbWEtYnVmLWVjYy1oZWFwLXYxLTAtNTRjYmJkMDQ5NTExQGtlcm5lbC5vcmcvDQo+ID4g
PiA+ID4gPiA+ID4gPiBJIHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciB0byBoYXZlIHRoZSB1c2Vy
IGNvbmZpZ3VyYWJsZQ0KPiA+ID4gcHJpdmF0ZQ0KPiA+ID4gPiA+ID4gPiBpbmZvcm1hdGlvbiBp
biBkbWEtYnVmLCBzbyBhbGwgdGhlIGRyaXZlcnMgd2hvIGhhdmUgdGhlIHNhbWUNCj4gPiA+ID4g
PiA+ID4gcmVxdWlyZW1lbnQgY2FuIGdldCB0aGVpciBwcml2YXRlIGluZm9ybWF0aW9uIGZyb20g
ZG1hLWJ1Zg0KPiA+ID4gZGlyZWN0bHkNCj4gPiA+ID4gPiA+ID4gYW5kDQo+ID4gPiA+ID4gPiA+
IG5vIG5lZWQgdG8gY2hhbmdlIG9yIGFkZCB0aGUgaW50ZXJmYWNlLg0KPiA+ID4gPiA+ID4gPiA+
ID4gV2hhdCdzIHlvdXIgb3BpbmlvbiBpbiB0aGlzIHBvaW50Pw0KPiA+ID4gPiA+ID4gID4gV2Vs
bCBvZiBoYW5kIEkgZG9uJ3Qgc2VlIHRoZSBuZWVkIGZvciB0aGF0Lg0KPiA+ID4gPiA+ID4gPiBX
aGF0IGhhcHBlbnMgaWYgeW91IGdldCBhIG5vbi1zZWN1cmUgYnVmZmVyIGltcG9ydGVkIGluIHlv
dXINCj4gPiA+IHNlY3VyZQ0KPiA+ID4gPiA+ID4gZGV2aWNlPw0KPiA+ID4gPiA+IA0KPiA+ID4g
PiA+IFdlIHVzZSB0aGUgc2FtZSBtZWRpYXRlay1kcm0gZHJpdmVyIGZvciBzZWN1cmUgYW5kIG5v
bi1zZWN1cmUNCj4gPiA+IGJ1ZmZlci4NCj4gPiA+ID4gPiBJZiBub24tc2VjdXJlIGJ1ZmZlciBp
bXBvcnRlZCB0byBtZWRpYXRlay1kcm0gZHJpdmVyLCBpdCdzIGdvIHRvDQo+ID4gPiB0aGUNCj4g
PiA+ID4gPiBub3JtYWwgZmxvdyB3aXRoIG5vcm1hbCBoYXJkd2FyZSBzZXR0aW5ncy4NCj4gPiA+
ID4gPiANCj4gPiA+ID4gPiBXZSB1c2UgZGlmZmVyZW50IGNvbmZpZ3VyYXRpb25zIHRvIG1ha2Ug
aGFyZHdhcmUgaGF2ZSBkaWZmZXJlbnQNCj4gPiA+ID4gPiBwZXJtaXNzaW9uIHRvIGFjY2VzcyB0
aGUgYnVmZmVyIGl0IHNob3VsZCBhY2Nlc3MuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gU28gaWYg
d2UgY2FuJ3QgZ2V0IHRoZSBpbmZvcm1hdGlvbiBvZiAidGhlIGJ1ZmZlciBpcyBhbGxvY2F0ZWQN
Cj4gPiA+IGZyb20NCj4gPiA+ID4gPiByZXN0cmljdGVkX210a19jbWEiIHdoZW4gaW1wb3J0aW5n
IHRoZSBidWZmZXIgaW50byB0aGUgZHJpdmVyLCB3ZQ0KPiA+ID4gd29uJ3QNCj4gPiA+ID4gPiBi
ZSBhYmxlIHRvIGNvbmZpZ3VyZSB0aGUgaGFyZHdhcmUgY29ycmVjdGx5Lg0KPiA+ID4gPiANCj4g
PiA+ID4gV2h5IGNhbid0IHlvdSBnZXQgdGhpcyBpbmZvcm1hdGlvbiBmcm9tIHVzZXJzcGFjZT8N
Cj4gPiA+IA0KPiA+ID4gU2FtZSByZWFzb24gYW1kIGFuZCBpOTE1L3hlIGFsc28gcGFzcyB0aGlz
IGFyb3VuZCBpbnRlcm5hbGx5IGluIHRoZQ0KPiA+ID4ga2VybmVsLCBpdCdzIGp1c3QgdGhhdCBm
b3IgdGhvc2UgZ3B1cyB0aGUgcmVuZGVyIGFuZCBrbXMgbm9kZSBhcmUgdGhlDQo+ID4gPiBzYW1l
DQo+ID4gPiBkcml2ZXIgc28gdGhpcyBpcyBlYXN5Lg0KPiA+ID4gDQo+IA0KPiBUaGUgcmVhc29u
IEkgYXNrIGlzIHRoYXQgZW5jcnlwdGlvbiBoZXJlIGxvb2tzIGp1c3QgbGlrZSBhbm90aGVyIA0K
PiBwYXJhbWV0ZXIgZm9yIHRoZSBidWZmZXIsIGUuZy4gbGlrZSBmb3JtYXQsIHN0cmlkZSwgdGls
bGluZyBldGMuLg0KDQpJJ20gbW9zdGx5IGEgcmVhZGVyIG9mIHRoZSB0aHJlYWQgaGVyZSwgYnV0
IEknZCBsaWtlIHRvIGF2b2lkIGJhc2ljIG1pc3Rha2VzLg0KVGhlIGJ1ZmZlciBpbiBxdWVzdGlv
biBhcmUgInByb3RlY3RlZCIsIG1lYW5pbmcgdGhhdCB0aGUgQ1BVIEhXIGRvZXMgbm90IGhhdmUN
CmFjY2VzcyB0byB0aGUgdW5kZXJseWluZyBwYWdlcyAob3Igem9uZSBpbiB0aGUgY2FzZSBvZiBN
ZWRpdGF0ZWspLg0KDQpUaGlzIGlzIGRpZmZlcmVudCBmcm9tIGVuY3J5cHRlZCBidWZmZXJzLCB3
aGljaCBkb24ndCBuZWVkIHRoaXMgbGV2ZWwgb2YNCnByb3RlY3Rpb24sIGFzIHdpdGhvdXQgdGhl
IHNlY3VyaXR5IGtleSB0byBkZWNyeXB0IHRoZW0sIHRoZWlyIGNvbnRlbnQgaXMgY2xvc2UNCnRv
IHJhbmRvbSBkYXRhLg0KDQo+IA0KPiBTbyBpbnN0ZWFkIG9mIHRoaXMgZHVyaW5nIGJ1ZmZlciBp
bXBvcnQ6DQo+IA0KPiBtdGtfZ2VtLT5zZWN1cmUgPSAoIXN0cm5jbXAoYXR0YWNoLT5kbWFidWYt
PmV4cF9uYW1lLCAicmVzdHJpY3RlZCIsIDEwKSk7DQo+IG10a19nZW0tPmRtYV9hZGRyID0gc2df
ZG1hX2FkZHJlc3Moc2ctPnNnbCk7DQo+IG10a19nZW0tPnNpemUgPSBhdHRhY2gtPmRtYWJ1Zi0+
c2l6ZTsNCj4gbXRrX2dlbS0+c2cgPSBzZzsNCj4gDQo+IFlvdSBjYW4gdHJpdmlhbGx5IHNheSBk
dXJpbmcgdXNlIGhleSB0aGlzIGJ1ZmZlciBpcyBlbmNyeXB0ZWQuDQo+IA0KPiBBdCBsZWFzdCB0
aGF0J3MgbXkgMTAgbWlsZSBoaWdoIHZpZXcsIG1heWJlIEknbSBtaXNzaW5nIHNvbWUgZXh0ZW5z
aXZlIA0KPiBrZXkgZXhjaGFuZ2Ugb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4NCg0KSWYgd2UgdGFr
ZSBzZWN1cmUgdmlkZW8gcGF0aCBhcyBhbiBleGFtcGxlLCBpbiB0aGUgY29udGV4dCBvZiBkaWdp
dGFsIHJpZ2h0DQptYW5hZ2VtZW50LCB0aGUgaGFuZGxpbmcgb2YgdXNlciBzZXNzaW9uLCByZXRy
aWV2YWwgb2YgdGhlIGRldmljZSBzcGVjaWZpYyAia2V5Ig0KaXMgZW50aXJlbHkgc29tZXRoaW5n
IGZvciB1c2Vyc3BhY2UgdG8gaGFuZGxlIGFuZCB0aGUga2VybmVsIGhhdmUgbm8gYnVzaW5lc3MN
CmludG8gdGhhdC4gQXMgbG9uZyBhcyB0aGUgZGF0YSBpcyBlbmNyeXB0ZWQsIGl0cyBzYWZlIHRv
IGNhcnJ5IGFyb3VuZCBsaWtlIGFueQ0Kb3RoZXIgYnVmZmVycy4NCg0KSXQgaXMgb25seSBvbmNl
IGRlY3J5cHRpb24gKHVzYWxseSBkb25lIGJ5IGEgVEYtQSkgdGhhdCByZXN0cmljdGVkIG1lbW9y
eSBzdGFydA0KYmVpbmcgdXNlZC4gSW5pdGlhbGx5IGluIHRoZSBmb3JtIG9mIGEgY29tcHJlc3Nl
ZCB2aWRlbyBzdHJlYW0sIGFuZCBldmVudHVhbGx5DQppbiB0aGUgZm9ybWF0IG9mIHJhdyBpbWFn
ZXMuDQoNCj4gPiAgIA0KPiA+ID4gQnV0IG9uIGFybSB5b3UgaGF2ZSBzcGxpdCBkZXNpZ25zIGV2
ZXJ5d2hlcmUgYW5kIGRtYS1idWYNCj4gPiA+IGltcG9ydC9leHBvcnQsIHNvDQo+ID4gPiBzb21l
dGhpbmcgZWxzZSBpcyBuZWVkZWQuIEFuZCBuZWl0aGVyIGN1cnJlbnQga21zIHVhcGkgbm9yDQo+
ID4gPiBwcm90b2NvbHMvZXh0ZW5zaW9ucyBoYXZlIHByb3Zpc2lvbnMgZm9yIHRoaXMgKGFmYWlr
KSBiZWNhdXNlIGl0DQo+ID4gPiB3b3JrcyBvbg0KPiA+ID4gdGhlIGJpZyBncHVzLCBhbmQgb24g
YW5kcm9pZCBpdCdzIGp1c3QgaGFja2VkIHVwIHdpdGggYmFja2NoYW5uZWxzLg0KPiA+ID4gDQo+
ID4gPiBTbyB5ZWFoIGVzc2VudGlhbGx5IEkgdGhpbmsgd2UgcHJvYmFibHkgbmVlZCBzb21ldGhp
bmcgbGlrZSB0aGlzLCBhcw0KPiA+ID4gbXVjaA0KPiA+ID4gYXMgaXQgc3Vja3MuIEkgc2VlIGl0
IHNvbWV3aGF0IHNpbWlsYXIgdG8gaGFuZGxpbmcgcGNpcDJwZG1hDQo+ID4gPiBsaW1pdGF0aW9u
cw0KPiA+ID4gaW4gdGhlIGtlcm5lbCB0b28uDQo+ID4gPiANCj4gPiA+IE5vdCBzdXJlIHdoZXJl
L2hvdyBpdCBzaG91bGQgYmUgaGFuZGxlZCB0aG91Z2gsIGFuZCBtYXliZSBJJ3ZlIG1pc3NlZA0K
PiA+ID4gc29tZXRoaW5nIGFyb3VuZCBwcm90b2NvbHMsIGluIHdoaWNoIGNhc2UgSSBndWVzcyB3
ZSBzaG91bGQgYWRkIHNvbWUNCj4gPiA+IHNlY3VyZSBidWZmZXIgZmxhZ3MgdG8gdGhlIEFEREZC
MiBpb2N0bC4NCj4gPiANCj4gPiBUaGFua3MgZm9yIHlvdXIgaGludCwgSSdsbCB0cnkgdG8gYWRk
IHRoZSBzZWN1cmUgZmxhZyB0byB0aGUgQURERkIyDQo+ID4gaW9jdGwuIElmIGl0IHdvcmtzLCBJ
J2xsIHNlbmQgdGhlIHBhdGNoLg0KPiANCj4gWWVhaCwgZXhhY3RseSB3aGF0IEkgd291bGQgc3Vn
Z2VzdCBhcyB3ZWxsLg0KPiANCj4gSSdtIG5vdCBhbiBleHBlcnQgZm9yIHRoYXQgcGFydCwgYnV0
IGFzIGZhciBhcyBJIGtub3cgd2UgYWxyZWFkeSBoYXZlIA0KPiBidW5jaCBvZiBkZXZpY2Ugc3Bl
Y2lmaWMgdGlsbGluZyBmbGFncyBpbiB0aGVyZS4NCj4gDQo+IEFkZGluZyBhbiBNVEtfRU5DUllQ
VEVEIGZsYWcgc2hvdWxkIGJlIHRyaXZpYWwuDQoNCkp1c3QgdG8gYmUgY2xlYXIsIG15IGNvbW1l
bnQgd2FzIGp1c3QgYSBjb25jZXB0IGNvcnJlY3Rpb24sIEkgYWxzbyB0aGluayBpdHMNCm5pY2Ug
dG8gZ2l2ZSBhIEFEREZCMiBmbGFnIGEgdHJ5LCBmcm9tIG15IHVzZXJzcGFjZSBleHBlcmllbmNl
LCB0aGlzIGlzIGFuIGVhc3kNCnBsYWNlIHRvIHByb3ZpZGUgdGhpcyB0eXBlIG9mIGluZm9ybWF0
aW9uLiBBbHNvLCB0aGUgVjRMMiBwcm9wb3NhbCBmb3IgdGhlIHNhbWUNCmVuZHVwIHdpdGggYSBm
bGFnIGF0IGR1cmluZyBidWZmZXIgcXVldWUgY29uZmlndXJhdGlvbiwgd2hpY2ggaXMgcHJldHR5
IGNsb3NlLg0KDQpOaWNvbGFzDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4gDQo+
ID4gDQo+ID4gUmVnYXJkcywNCj4gPiBKYXNvbi1KSC5MaW4NCj4gPiANCj4gPiA+IC1TaW1hDQo+
ID4gDQo+ID4gKioqKioqKioqKioqKiBNRURJQVRFSyBDb25maWRlbnRpYWxpdHkgTm90aWNlICoq
KioqKioqKioqKioqKioqKioqDQo+ID4gVGhlIGluZm9ybWF0aW9uIGNvbnRhaW5lZCBpbiB0aGlz
IGUtbWFpbCBtZXNzYWdlIChpbmNsdWRpbmcgYW55DQo+ID4gYXR0YWNobWVudHMpIG1heSBiZSBj
b25maWRlbnRpYWwsIHByb3ByaWV0YXJ5LCBwcml2aWxlZ2VkLCBvciBvdGhlcndpc2UNCj4gPiBl
eGVtcHQgZnJvbSBkaXNjbG9zdXJlIHVuZGVyIGFwcGxpY2FibGUgbGF3cy4gSXQgaXMgaW50ZW5k
ZWQgdG8gYmUNCj4gPiBjb252ZXllZCBvbmx5IHRvIHRoZSBkZXNpZ25hdGVkIHJlY2lwaWVudChz
KS4gQW55IHVzZSwgZGlzc2VtaW5hdGlvbiwNCj4gPiBkaXN0cmlidXRpb24sIHByaW50aW5nLCBy
ZXRhaW5pbmcgb3IgY29weWluZyBvZiB0aGlzIGUtbWFpbCAoaW5jbHVkaW5nIGl0cw0KPiA+IGF0
dGFjaG1lbnRzKSBieSB1bmludGVuZGVkIHJlY2lwaWVudChzKSBpcyBzdHJpY3RseSBwcm9oaWJp
dGVkIGFuZCBtYXkNCj4gPiBiZSB1bmxhd2Z1bC4gSWYgeW91IGFyZSBub3QgYW4gaW50ZW5kZWQg
cmVjaXBpZW50IG9mIHRoaXMgZS1tYWlsLCBvciBiZWxpZXZlDQo+ID4gdGhhdCB5b3UgaGF2ZSBy
ZWNlaXZlZCB0aGlzIGUtbWFpbCBpbiBlcnJvciwgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyDQo+
ID4gaW1tZWRpYXRlbHkgKGJ5IHJlcGx5aW5nIHRvIHRoaXMgZS1tYWlsKSwgZGVsZXRlIGFueSBh
bmQgYWxsIGNvcGllcyBvZg0KPiA+IHRoaXMgZS1tYWlsIChpbmNsdWRpbmcgYW55IGF0dGFjaG1l
bnRzKSBmcm9tIHlvdXIgc3lzdGVtLCBhbmQgZG8gbm90DQo+ID4gZGlzY2xvc2UgdGhlIGNvbnRl
bnQgb2YgdGhpcyBlLW1haWwgdG8gYW55IG90aGVyIHBlcnNvbi4gVGhhbmsgeW91IQ0KPiANCj4g
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
