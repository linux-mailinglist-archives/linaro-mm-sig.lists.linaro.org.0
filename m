Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDEC844191
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jan 2024 15:15:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE5E0400DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jan 2024 14:15:34 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id 8728C3EA59
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jan 2024 14:15:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="Fz/L2irG";
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of joakim.bech@linaro.org designates 209.85.218.44 as permitted sender) smtp.mailfrom=joakim.bech@linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a28a6cef709so700630266b.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jan 2024 06:15:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706710526; x=1707315326; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nNlIzsJJ/O803DqutNwmb0UTB7M/H8vgIySfsDe/068=;
        b=Fz/L2irGEBRvJrbYiDHMokDDPXMH9mJ9EfQgcKW1WOn9faaym2UbSEBW0Jt9ZCi0/P
         MzIfI2JwVDWkfb34J7RSR9clVl7LUK/wo1zO6MBDwsexxnW4GUFOu0+N4tTPV3RdIHTA
         4H5r6XKv/dC8ej2rkvSUsZLF6KqS6GTHZf5F3ETxx7vtxunAgH8M3qORHNW3GPCrmiDP
         wtWB/xONvJ/cHLb9oQ16iyKTeSAw+iVkKl+XcQSaqUIKdJHg1IrJHeQull2duEIAl1hF
         /rrUxMIC2efTCx4XNKyMWuM4fmuBq4KH+ga66l9T+r7TtfpxREh3Q+GIMBVc9S0VYbH/
         KjKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706710526; x=1707315326;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nNlIzsJJ/O803DqutNwmb0UTB7M/H8vgIySfsDe/068=;
        b=E/yXLr0XqjJvoWmhAzBNqt2m3qef5Wd/tzNEnJd5XYJP3jLdi8zGuU5LvndfAvLkOo
         cdRvT3TGOB0MBeGLIxZMJrLk5do3gUc3w982tQWWpDn5xLn2Ewig8YFJhs8lZppz/u3s
         z+fwMv2aXw3+QzVltBHa6OjZCRygy6rQjWKhaarkgQpvL4qFeHJQ5yheN0Ns9Fo4eN98
         2yJEP7rZnuNXgbSF9vpwbZ7KxBt/XVaDdz8afiz3GdRd+pOqrzFUz+NpHeMEwkzuhF2C
         PB5+gzYsonwIjYPiY5jVUWF2SFMYToi8O1Zyy8kgap40Cd1L2DzAGsZOoeSpWU3s9OYg
         erEg==
X-Gm-Message-State: AOJu0YxLpPqREMcKPGep1YH1asyAT2IvavVh7wHKVnVeyTZqsCD3v5mI
	lVzZGAs3IP4uKTBb2mQXfM0roiY8CwaFPnEsNsgTP7naQRd63OYI8AoJBJtsuVedwA==
X-Google-Smtp-Source: AGHT+IHGSNrZrx8lhdfpuacSLRFgTdJ5NfMsSvc/CvwYDYgJxFvfWZNSFP+DAnXhOop8GVnRQDrb6A==
X-Received: by 2002:a17:906:6d8:b0:a31:3dc5:6bda with SMTP id v24-20020a17090606d800b00a313dc56bdamr1293250ejb.64.1706710526369;
        Wed, 31 Jan 2024 06:15:26 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCU6efCsWycPh1JAhTyNPAjNvnweXqD7LfOvLHeNnwv0SvdHIfC7xlCv5STV+33dO+lY6NYJYz4SAyhuS25W5HmIsKnF6IG7JdUB21pnh0QfOQ1lCcEwg8NWyt4e7a9vNb//fZPrFcLCq+mt6UfXnuYVq5RS8RnavneViDd5N6Su2aFK4whsxxRmJoif7dJWT+chAcUGwWlZxUbGvoOWMB3G8DV6VDnhGda0U96+67dma+Nv9E085BKS4tGcAovVwU7cgXUWywrg032CUiidKOXOU15Ran40Whooteb7Lk+RUuOmzz49sVTJwT/eI1hJVuiV1YSchMZ0NHwXYr6VjCNtQHOfBYpy5AmBEGhHJSSC3kgPn1HwSA52JP2g+oE2lN1hzC8o4Jo1Y8j6DU+PoPuR+FKrKBX0SwGcxLWfvq1CMFwwBVdkDj1fb5FSBa2TvRsV+KQx8ksmqvY3/bRSHobT0Bl+kbLmt0tTUm+R7Y9tHXnEz2tuNvmP5aHV+g6ZlruKt2lwSJfaPzujaeV5DSNv4+yyJnDLfBRUzCefUVy5aId4uCPDgO/JDcDDEegEi6k6RD2wfQFIK8X0HUkbHUt6YigPf5ZcLX+0X9ezZFfZ+0oInafUsOsICdEzpL4wIlsdXL9P1Vi443C3RLBTMEfR/u9yh61fxe3tVeJmfWxowtX9iage1AwJTiXHCvEDedDpY4omThjVx/SYLcBLMPk8Wi5Nen1zWtD6NsJIh8Y+WOxwQATkh/am6qDgLjdayMNiBblkaO9v7fj7mxybs0lRhqpVAYJEDXv++KavYBBKZWqp7kLnRMr0JlWmty201Js0Kj6EkatLZd2kDdGgUvp6ysOgjFO/IvCN7dmQ7wzBsKbPdxyTsC+X8CPg+XM3S5TT4t+qMOLotFHsEN+9geGbqdJYz0xGgVAbWzhxNWl8h6WZhk96k9pCCvsuvjwe6qpVQ5
 6Z0BQFdKikglYoMlYcES1SpehdgBV2xwU=
Received: from pop-os.localdomain (81-231-61-187-no276.tbcn.telia.com. [81.231.61.187])
        by smtp.gmail.com with ESMTPSA id vk8-20020a170907cbc800b00a352afd952fsm5396812ejc.43.2024.01.31.06.15.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 06:15:25 -0800 (PST)
Date: Wed, 31 Jan 2024 15:15:23 +0100
From: Joakim Bech <joakim.bech@linaro.org>
To: John Stultz <jstultz@google.com>
Message-ID: <20240131141523.yh74hsddtuooqfgi@pop-os.localdomain>
References: <20240112092014.23999-1-yong.wu@mediatek.com>
 <20240112092014.23999-4-yong.wu@mediatek.com>
 <CANDhNCrxpeqEhJD0xJzu3vm8a4jMXD2v+_dbDNvaKhLsLB5-4g@mail.gmail.com>
 <CA+ddPcNdniUTpE_pJb-fL7+MHNSUZTkQojL48iqvW9JPr-Tc-g@mail.gmail.com>
 <CANDhNCqieBaH-Wi=vy3NSKTpwHcWef6qMOFi-7sgdGiDW7JtwA@mail.gmail.com>
 <CA+ddPcP9bgApNw_Nu7bxcV-oK_s3Bq1i5qun+vNSuRUO9tPEkA@mail.gmail.com>
 <CANDhNCrGxhHJLA2ct-iqemLAsQRt3C8m5=xAD3_dDdKH6Njrdg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANDhNCrGxhHJLA2ct-iqemLAsQRt3C8m5=xAD3_dDdKH6Njrdg@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8728C3EA59
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.44:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[google.com,mediatek.com,kernel.org,gmail.com,amd.com,linaro.org,collabora.com,arm.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: LI4UL4NWG3N24S4BNFDP3EQAZUDQ62CA
X-Message-ID-Hash: LI4UL4NWG3N24S4BNFDP3EQAZUDQ62CA
X-MailFrom: joakim.bech@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jeffrey Kardatzke <jkardatzke@google.com>, Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com, Sumit Semwal <sumit.semwal@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 3/7] dma-buf: heaps: restricted_heap: Add private heap ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LI4UL4NWG3N24S4BNFDP3EQAZUDQ62CA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKYW4gMTIsIDIwMjQgYXQgMDU6MjM6MDdQTSAtMDgwMCwgSm9obiBTdHVsdHogd3Jv
dGU6DQo+IE9uIEZyaSwgSmFuIDEyLCAyMDI0IGF0IDQ6MTPigK9QTSBKZWZmcmV5IEthcmRhdHpr
ZSA8amthcmRhdHprZUBnb29nbGUuY29tPiB3cm90ZToNCj4gPiBPbiBGcmksIEphbiAxMiwgMjAy
NCBhdCAzOjUx4oCvUE0gSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+
ID4gPg0KPiA+ID4gT24gRnJpLCBKYW4gMTIsIDIwMjQgYXQgMzoyN+KAr1BNIEplZmZyZXkgS2Fy
ZGF0emtlIDxqa2FyZGF0emtlQGdvb2dsZS5jb20+IHdyb3RlOg0KPiA+ID4gPiBPbiBGcmksIEph
biAxMiwgMjAyNCBhdCAyOjUy4oCvUE0gSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4g
d3JvdGU6DQo+ID4gPiA+ID4gSSBrbm93IHBhcnQgb2YgdGhpcyBlZmZvcnQgaGVyZSBpcyB0byBz
dGFydCB0byBjZW50cmFsaXplIGFsbCB0aGVzZQ0KPiA+ID4gPiA+IHZlbmRvciBzcGVjaWZpYyBy
ZXN0cmljdGVkIGJ1ZmZlciBpbXBsZW1lbnRhdGlvbnMsIHdoaWNoIEkgdGhpbmsgaXMNCj4gPiA+
ID4gPiBncmVhdCwgYnV0IEkganVzdCB3b3JyeSB0aGF0IGluIGRvaW5nIGl0IGluIHRoZSBkbWFi
dWYgaGVhcCBpbnRlcmZhY2UsDQo+ID4gPiA+ID4gaXQgaXMgYSBiaXQgdG9vIHVzZXItZmFjaW5n
LiBUaGUgbGlrZWxpaG9vZCBvZiBlbmNvZGluZyBhIHBhcnRpY3VsYXINCj4gPiA+ID4gPiBzZW1h
bnRpYyB0byB0aGUgc2luZ3VsYXIgInJlc3RyaWN0ZWRfaGVhcCIgbmFtZSBzZWVtcyBoaWdoLg0K
PiA+ID4gPg0KPiA+ID4gPiBJbiBwYXRjaCAjNSBpdCBoYXMgdGhlIGFjdHVhbCBkcml2ZXIgaW1w
bGVtZW50YXRpb24gZm9yIHRoZSBNVEsgaGVhcA0KPiA+ID4gPiB0aGF0IGluY2x1ZGVzIHRoZSBo
ZWFwIG5hbWUgb2YgInJlc3RyaWN0ZWRfbXRrX2NtIiwgc28gdGhlcmUgc2hvdWxkbid0DQo+ID4g
PiA+IGJlIGEgaGVhcCBuYW1lZCAicmVzdHJpY3RlZF9oZWFwIiB0aGF0J3MgYWN0dWFsbHkgZ2V0
dGluZyBleHBvc2VkLiBUaGUNCj4gPiA+DQo+ID4gPiBBaCwgSSBhcHByZWNpYXRlIHRoYXQgY2xh
cmlmaWNhdGlvbiEgSW5kZWVkLCB5b3UncmUgcmlnaHQgdGhlIG5hbWUgaXMNCj4gPiA+IHBhc3Nl
ZCB0aHJvdWdoLiBBcG9sb2dpZXMgZm9yIG1pc3NpbmcgdGhhdCBkZXRhaWwuDQo+ID4gPg0KPiA+
ID4gPiByZXN0cmljdGVkX2hlYXAgY29kZSBpcyBhIGZyYW1ld29yaywgYW5kIG5vdCBhIGRyaXZl
ciBpdHNlbGYuICBVbmxlc3MNCj4gPiA+ID4gSSdtIG1pc3Npbmcgc29tZXRoaW5nIGluIHRoaXMg
cGF0Y2hzZXQuLi5idXQgdGhhdCdzIHRoZSB3YXkgaXQncw0KPiA+ID4gPiAqc3VwcG9zZWQqIHRv
IGJlLg0KPiA+ID4NCj4gPiA+IFNvIEkgZ3Vlc3MgSSdtIG5vdCBzdXJlIEkgdW5kZXJzdGFuZCB0
aGUgYmVuZWZpdCBvZiB0aGUgZXh0cmENCj4gPiA+IGluZGlyZWN0aW9uLiBXaGF0IHRoZW4gZG9l
cyB0aGUgcmVzdHJpY3RlZF9oZWFwLmMgbG9naWMgaXRzZWxmDQo+ID4gPiBwcm92aWRlPw0KPiA+
ID4gVGhlIGRtYWJ1ZiBoZWFwcyBmcmFtZXdvcmsgYWxyZWFkeSBwcm92aWRlcyBhIHdheSB0byBh
ZGQgaGVhcCBpbXBsZW1lbnRhdGlvbnMuDQo+ID4NCj4gPiBTbyBpbiB0aGUgdjEgcGF0Y2hzZXQs
IGl0IHdhcyBkb25lIHdpdGgganVzdCBhIE1lZGlhdGVrIHNwZWNpZmljIGhlYXANCj4gPiB3aXRo
IG5vIGZyYW1ld29yayBvciBhYnN0cmFjdGlvbnMgZm9yIGFub3RoZXIgdmVuZG9yIHRvIGJ1aWxk
IG9uIHRvcA0KPiA+IG9mLiBUaGUgZmVlZGJhY2sgd2FzIHRvIG1ha2UgdGhpcyBtb3JlIGdlbmVy
aWMgc2luY2UgTWVkaWF0ZWsgd29uJ3QgYmUNCj4gPiB0aGUgb25seSB2ZW5kb3Igd2hvIHdhbnRz
IGEgcmVzdHJpY3RlZCBoZWFwLi53aGljaCBpcyBob3cgaXQgZW5kZWQgdXANCj4gPiBoZXJlLiBU
aGVyZSB3YXMgbW9yZSBjb2RlIGluIHRoZSBmcmFtZXdvcmsgYmVmb3JlIHJlbGF0aW5nIHRvIFRF
RQ0KPiA+IGNhbGxzLCBidXQgdGhlbiB0aGF0IHdhcyBtb3ZlZCB0byB0aGUgdmVuZG9yIHNwZWNp
ZmljIGNvZGUgc2luY2Ugbm90DQo+ID4gYWxsIHJlc3RyaWN0ZWQgaGVhcHMgYXJlIGFsbG9jYXRl
ZCB0aHJvdWdoIGEgVEVFLg0KPiANCj4gWWVhaC4gSSBhcG9sb2dpemUsIGFzIEkga25vdyBob3cg
ZnJ1c3RyYXRpbmcgdGhlIGNvbnRyYWRpY3RvcnkNCj4gZmVlZGJhY2sgY2FuIGJlLiBJIGRvbid0
IG1lYW4gdG8gZGVtb3RpdmF0ZS4gOigNCj4gDQo+IEkgdGhpbmsgZm9sa3Mgd291bGQgdmVyeSBt
dWNoIGxpa2UgdG8gc2VlIGNvbnNvbGlkYXRpb24gYXJvdW5kIHRoZQ0KPiB2YXJpb3VzIGltcGxl
bWVudGF0aW9ucywgYW5kIEkgYWdyZWUhDQo+IEkganVzdCB3b3JyeSB0aGF0IGNyZWF0aW5nIHRo
ZSBjb21tb24gZnJhbWV3b3JrIGZvciB0aGlzIGNvbmNlcHQgaW4gYQ0KPiBkbWFidWYgaGVhcHMg
ZHJpdmVyIGlzIG1heWJlIHRvbyBwZXJpcGhlcmFsL2Nsb3NlIHRvIHVzZXJsYW5kLg0KPiANCj4g
PiBUaGlzIHdhcyBhbHNvIGRlc2lyYWJsZSBmb3IgdGhlIFY0TDIgcGllY2VzIHNpbmNlIHRoZXJl
J3MgZ29pbmcgdG8gYmUNCj4gPiBhIFY0TDIgZmxhZyBzZXQgd2hlbiB1c2luZyByZXN0cmljdGVk
IGRtYV9idWZzIChhbmQgaXQgd2FudHMgdG8NCj4gPiB2YWxpZGF0ZSB0aGF0KS4uLi5zbyBpbiBv
cmRlciB0byBrZWVwIHRoYXQgbW9yZSBnZW5lcmljLCB0aGVyZSBzaG91bGQNCj4gPiBiZSBhIGhp
Z2hlciBsZXZlbCBjb25jZXB0IG9mIHJlc3RyaWN0ZWQgZG1hX2J1ZnMgdGhhdCBpc24ndCBzcGVj
aWZpYw0KPiA+IHRvIGEgc2luZ2xlIHZlbmRvci4gIE9uZSBvdGhlciB0aGluZyB0aGF0IHdvdWxk
IGlkZWFsbHkgY29tZSBvdXQgb2YNCj4gPiB0aGlzIGlzIGEgY2xlYW5lciB3YXkgdG8gY2hlY2sg
dGhhdCBhIGRtYV9idWYgaXMgcmVzdHJpY3RlZCBvciBub3QuDQo+IA0KPiBZZWFoLiBJZiB0aGVy
ZSBpcyBhIGNsZWFyIG1lYW5pbmcgdG8gInJlc3RyaWN0ZWQiIGhlcmUsIEkgdGhpbmsgaGF2aW5n
DQo+IGEgcXVlcnkgbWV0aG9kIG9uIHRoZSBkbWFidWYgaXMgcmVhc29uYWJsZS4NCj4gTXkgb25s
eSBmcmV0IGlzIGlmIHRoZSBtZWFuaW5nIGlzIHRvbyB2YWd1ZSBhbmQgdXNlcmxhbmQgc3RhcnRz
DQo+IGRlcGVuZGluZyBvbiBpdCBtZWFuaW5nIHdoYXQgaXQgbWVhbnQgZm9yIHZlbmRvcjEsIGJ1
dCBkb2Vzbid0IG1lYW4NCj4gZm9yIHZlbmRvcjIuDQo+IA0KPiBTbyB3ZSBuZWVkIHNvbWUgY2xh
cml0eSBpbiB3aGF0ICJyZXN0cmljdGVkIiByZWFsbHkgbWVhbnMuICBGb3INCj4gaW5zdGFuY2Us
IGl0IGJlaW5nIG5vdCBjcHUgbWFwcGFibGUgdnMgb3RoZXIgcG90ZW50aWFsIHZhcmlhdGlvbnMg
bGlrZQ0KPiBiZWluZyBjcHUgbWFwcGFibGUsIGJ1dCBub3QgY3B1IGFjY2Vzc2libGUuICBPciBu
b3QgY3B1IG1hcHBhYmxlLCBidXQNCj4gb25seSBtYXBwYWJsZSBiZXR3ZWVuIGEgc2V0IG9mIDMg
ZGV2aWNlcyAoV2hpY2ggMyBkZXZpY2VzPyEgSG93IGNhbiB3ZQ0KPiB0ZWxsPykuDQo+IA0KQ2Fu
IHdlIGZsaXAgdGhpbmdzIGFyb3VuZD8gSS5lLiwgaW5zdGVhZCBvZiBzYXlpbmcgd2hpY2ggZGV2
aWNlcyBhcmUNCmFsbG93ZWQgdG8gdXNlIHRoZSByZXN0cmljdGVkIGJ1ZmZlciwgY2FuIHdlIGlu
c3RlYWQgc2F5IHdoZXJlIGl0J3Mgbm90DQphbGxvd2VkIHRvIGJlIHVzZWQ/IE15IHZpZXcgaGFz
IGJlZW4gdGhhdCBieSBkZWZhdWx0IHRoZSBjb250ZW50cyBvZiB0aGUNCnR5cGVzIG9mIGJ1ZmZl
cnMgd2hlcmUgdGFsa2luZyBhYm91dCBoZXJlIGlzIG9ubHkgYWNjZXNzaWJsZSB0byB0aGluZ3MN
CnJ1bm5pbmcgb24gdGhlIHNlY3VyZSBzaWRlLCBpLmUsIHR5cGljYWxseSBTLUVMMywgUy1FTDEg
YW5kIGEgc3BlY2lmaWMNClRydXN0ZWQgQXBwbGljYXRpb24gcnVubmluZyBpbiBTLUVMMC4gSSBn
dWVzcyB0aGF0IHNlcnZlcyBhcyBzb21lIGtpbmQNCm9mIGJhc2VsaW5lLiANCg0KPkZyb20gdGhl
cmUsIHRoaW5ncyB0dXJucyB0byBhIG1vcmUgZHluYW1pYyBuYXR1cmUsIHdoZXJlIGZpcmV3YWxs
cyBldGMsDQpjYW4gYmUgY29uZmlndXJlZCB0byBnaXZlIGFjY2VzcyB0byB2YXJpb3VzIElQcywg
YmxvY2tzIGFuZCBydW50aW1lcy4NCg0KSSB1bmRlcnN0YW5kIHRoYXQgaXQncyBuaWNlIHRvIGJl
IGFibGUgdG8ga25vdyBhbGwgdGhpcyBmcm9tIHRoZSBMaW51eA0Ka2VybmVsIHBvaW50IG9mIHZp
ZXcsIGJ1dCBkb2VzIGl0IGhhdmUgdG8gYmUgYXdhcmUgb2YgdGhpcz8gV2hhdCdzIHRoZQ0KbWFq
b3IgZHJhd2JhY2sgaWYgTGludXggZG9lc24ndCBrbm93IGFib3V0IGl0Pw0KDQo+IEFuZCBpZiB0
aGVyZSBpcyB2YXJpYXRpb24sIG1heWJlIHdlIG5lZWQgdG8gZW51bWVyYXRlIHRoZSB0eXBlcyBv
Zg0KPiAicmVzdHJpY3RlZCIgYnVmZmVycyBzbyB3ZSBjYW4gYmUgc3BlY2lmaWMgd2hlbiBpdCdz
IHF1ZXJpZWQuDQo+IA0KPiBUaGF0J3Mgd2hlcmUgbWF5YmUgaGF2aW5nIHRoZSBmcmFtZXdvcmsg
Zm9yIHRoaXMgYmUgbW9yZSBjZW50cmFsIG9yDQo+IGNsb3NlciB0byB0aGUga2VybmVsIG1tIGNv
ZGUgYW5kIG5vdCBqdXN0IGEgc3ViLXR5cGUgb2YgYSBkbWFidWYgaGVhcA0KPiBkcml2ZXIgbWln
aHQgYmUgYmV0dGVyPw0KPiANCj4gPiBUaGUgY3VycmVudCBWNEwyIHBhdGNoc2V0IGp1c3QgYXR0
YWNoZXMgdGhlIGRtYV9idWYgYW5kIHRoZW4gY2hlY2tzIGlmDQo+ID4gdGhlIHBhZ2UgdGFibGUg
aXMgZW1wdHkuLi4uYW5kIGlmIHNvLCBpdCdzIHJlc3RyaWN0ZWQuIEJ1dCBub3cgSSBzZWUNCj4g
PiB0aGVyZSdzIG90aGVyIGZlZWRiYWNrIGluZGljYXRpbmcgYXR0YWNoaW5nIGEgcmVzdHJpY3Rl
ZCBkbWFfYnVmDQo+ID4gc2hvdWxkbid0IGV2ZW4gYmUgYWxsb3dlZCwgc28gd2UnbGwgbmVlZCBh
bm90aGVyIHN0cmF0ZWd5IGZvcg0KPiA+IGRldGVjdGluZyB0aGVtLiBJZGVhbGx5IHRoZXJlIGlz
IHNvbWUgZnVuY3Rpb24vbWFjcm8gbGlrZQ0KPiA+IGlzX2RtYV9idWZfcmVzdHJpY3RlZChzdHJ1
Y3QgZG1hX2J1ZiopIHRoYXQgY2FuIGluZGljYXRlIHRoYXQuLi5idXQgd2UNCj4gPiBoYXZlbid0
IGNvbWUgdXAgd2l0aCBhIGdvb2Qgd2F5IHRvIGRvIHRoYXQgeWV0IHdoaWNoIGRvZXNuJ3QgaW52
b2x2ZQ0KPiA+IGFkZGluZyBhbm90aGVyIGZpZWxkIHRvIGRtYV9idWYgb3IgdG8gZG1hX2J1Zl9v
cHMgKGFuZCBpZiBzdWNoIGEgdGhpbmcNCj4gPiB3b3VsZCBiZSBmaW5lLCB0aGVuIE9LLi4uYnV0
IEkgaGFkIGFzc3VtZWQgd2Ugd291bGQgZ2V0IHB1c2hiYWNrIG9uDQo+ID4gbW9kaWZ5aW5nIGVp
dGhlciBvZiB0aG9zZSBzdHJ1Y3RzKS4NCj4gDQo+IElmIHRoZXJlJ3MgYSBuZWVkIGFuZCB0aGUg
YmVzdCBwbGFjZSB0byBwdXQgc29tZXRoaW5nIGlzIGluIHRoZQ0KPiBkbWFfYnVmIG9yIGRtYV9i
dWZfb3BzLCB0aGF0J3Mgd2hlcmUgaXQgc2hvdWxkIGdvLiAgRm9sa3MgbWF5DQo+IHJlYXNvbmFi
bHkgZGlzYWdyZWUgaWYgaXQncyB0aGUgYmVzdCBwbGFjZSAodGhlcmUgbWF5IGJlIHlldCBiZXR0
ZXINCj4gc3BvdHMgZm9yIHRoZSBzdGF0ZSB0byBzaXQgaW4gdGhlIGFic3RyYWN0aW9ucyksIGJ1
dCBmb3Igc3R1ZmYgZ29pbmcNCj4gdXBzdHJlYW0sIHRoZXJlJ3Mgbm8gcmVhc29uIHRvIHRyeSB0
byBoYWNrIGFyb3VuZCB0aGluZ3Mgb3Igc211Z2dsZQ0KPiBzdGF0ZSBqdXN0IHRvIGF2b2lkIGNo
YW5naW5nIGNvcmUgc3RydWN0dXJlcy4gRXNwZWNpYWxseSBpZiBjb3JlDQo+IHN0cnVjdHVyZXMg
YXJlIGludGVybmFsIG9ubHkgYW5kIGhhdmUgbm8gQUJJIGltcGxpY2F0aW9ucy4NCj4gDQo+IFNp
bWEncyBzdWdnZXN0aW9uIHRoYXQgYXR0YWNobWVudHMgc2hvdWxkIGZhaWwgaWYgdGhlIGRldmlj
ZSBjYW5ub3QNCj4gcHJvcGVybHkgbWFwIHRoZSByZXN0cmljdGVkIGJ1ZmZlciBtYWtlcyBzZW5z
ZSB0byBtZS4gVGhvdWdoIEkgZG9uJ3QNCj4gcXVpdGUgc2VlIHdoeSBhbGwgYXR0YWNobWVudHMg
c2hvdWxkIGZhaWwsIGFuZCBJIGRvbid0IHJlYWxseSBsaWtlIHRoZQ0KPiBpZGVhIG9mIGEgcHJp
dmF0ZSBhcGksIGJ1dCBJIG5lZWQgdG8gbG9vayBtb3JlIGF0IHRoZSBzdWdnZXN0ZWQgdmlydGlv
DQo+IGV4YW1wbGUgKGJ1dCBldmVuIHRoZXkgc2FpZCB0aGF0IHdhc24ndCB0aGVpciBwcmVmZXJy
ZWQgcm91dGUpLg0KPiANCj4gTXkgc2Vuc2Ugb2YgYXR0YWNoIHdhcyBvbmx5IHRoYXQgaXQgd2Fz
IHN1cHBvc2VkIHRvIGNvbm5lY3QgYSBkZXZpY2Uncw0KPiBpbnRlcmVzdCBpbiB0aGUgYnVmZmVy
LCBhbGxvd2luZyBsYXp5IGFsbG9jYXRpb24gdG8gc2F0aXNmeSB2YXJpb3VzDQo+IGRldmljZSBj
b25zdHJhaW50cyBiZWZvcmUgZmlyc3QgbWFwcGluZyAtIGEgZGVzaWduIGZlYXR1cmUgdGhhdCBJ
DQo+IGRvbid0IHRoaW5rIGFueW9uZSBldmVyIGltcGxlbWVudGVkLiAgU28gbXkgc2Vuc2Ugd2Fz
IGl0IGRpZG4ndCBoYXZlDQo+IG11Y2ggbWVhbmluZyBvdGhlcndpc2UgKGJ1dCB3YXMgYSByZXF1
aXJlbWVudCB0byBjYWxsIGJlZm9yZSBtYXApLiBCdXQNCj4gdGhhdCBtYXkgaGF2ZSBldm9sdmVk
IHNpbmNlIHRoZSBlYXJseSBkYXlzLg0KPiANCj4gQW5kIEknbSBzdXJlIHRoZSBtZXRob2QgdG8g
ZmlndXJlIG91dCBpZiB0aGUgYXR0YWNobWVudCBjYW4gd29yayB3aXRoDQo+IHRoZSBkZXZpY2Ug
bWF5IGJlIGNvbXBsaWNhdGVkL2RpZmZpY3VsdCwgc28gaXQgc291bmRpbmcgcmVhc29uYWJsZSBj
YW4NCj4gYmUgZmFyIGZyb20gaXQgYmVpbmcgcmVhc29uYWJsZSB0byBpbXBsZW1lbnQuDQo+IA0K
PiBBbmQgYWdhaW4sIEkgZG9uJ3QgbWVhbiB0byBmcnVzdHJhdGUgb3IgZGVtb3RpdmF0ZSBoZXJl
LiBJJ20gcmVhbGx5DQo+IGV4Y2l0ZWQgdG8gc2VlIHRoaXMgZWZmb3J0IGJlaW5nIHB1c2hlZCB1
cHN0cmVhbSENCj4gDQo+IHRoYW5rcw0KPiAtam9obg0KDQotLSANCi8vIFJlZ2FyZHMNCkpvYWtp
bQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
