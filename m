Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD5D79A8D7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:45:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 43DEC3F505
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:45:49 +0000 (UTC)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	by lists.linaro.org (Postfix) with ESMTPS id 43A943E925
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Jul 2023 02:06:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=zxGaglwS;
	spf=pass (lists.linaro.org: domain of almasrymina@google.com designates 209.85.222.45 as permitted sender) smtp.mailfrom=almasrymina@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-799a451ca9cso101771241.2
        for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Jul 2023 19:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689559616; x=1692151616;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lJjcGeSu1yBzoQ4uVSesM2ecyKuvRbwcrty4LUDKxlU=;
        b=zxGaglwS9CAZ4msTb2quYvVyDdhCIfdP2OL8sIgGnG5ZrFeTCE1QL4ZnSKCEdj6i8U
         HDPe3D4zfgWy9P9W+agC7wGRI3sQRiTRoBug2lQICmfMxP2K0I/k5G4Fbctruv0fvLoo
         5Es07Z8HBY+N6cD6d9Vx5Wax3v/pyCywcDRYs4p0aDfCtiM98L23hfe3kCQ52wtF8ixf
         lsDh/biJ5vpGPQegdVr4JAoKaJXir25xPHbt3SuzrctZ+GQVDLm3gD31jjnfOmiY4Kpl
         GhjsXDLHLeYMFzbUcdJzXCnFuuolCnWqPKidoYZOZ6hGqJXcOcBbsDS+OGRUPsdYt+f9
         Cd8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689559616; x=1692151616;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lJjcGeSu1yBzoQ4uVSesM2ecyKuvRbwcrty4LUDKxlU=;
        b=fByCQ8plbruqPqw55mshziHkPeLQH4RJdnVmcg0cqhSOuHsGEoV2Ml5yb9Jozlob8N
         uo6ppRnGniyZIZ7RaMb3YhYZX3S8oOm37j+rHUMpB/6wuWNTkyQ13znzphWa997U9APT
         EhsIqjUZvc49m7YskTvfyRjSgb16lyDFr4RxJD53uzbPg9ElImSMF9vmgKnQZXBb9++b
         o9lQRKUQTg5XIq62RmPPFxx01j7UT6yCHRu9DUltqbP09YlW8MNICnYpsZ7lUnA8HRUF
         ZgtuHo+Em/m+Ai8UoPdAMwr+r+vPCCkxJrQYnTk8+6ZEL9ZhSGvYTACAAGV7cy3/43y3
         A5Ug==
X-Gm-Message-State: ABy/qLYiub27E5OzekdICUwK/sDK9+NVEA8xWTHajLZU22Ml3m1sykDS
	mM6tAZmlBArSebVI8TVDFExxvO9ruvG4tWV89Z1hQg==
X-Google-Smtp-Source: APBJJlHX7G2n3fcw5u4/GzstdODdaVAWzRgj1dnNd8IYjjUYPzYGUi9QZj015F6z+NhwE8S8c+kxZ7VupF4wWL7vlS0=
X-Received: by 2002:a1f:5ed4:0:b0:471:1785:e838 with SMTP id
 s203-20020a1f5ed4000000b004711785e838mr5240616vkb.2.1689559615726; Sun, 16
 Jul 2023 19:06:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230710223304.1174642-1-almasrymina@google.com>
 <20230710223304.1174642-7-almasrymina@google.com> <73971895-6fa7-a5e1-542d-3faccbc4a830@kernel.org>
In-Reply-To: <73971895-6fa7-a5e1-542d-3faccbc4a830@kernel.org>
From: Mina Almasry <almasrymina@google.com>
Date: Sun, 16 Jul 2023 19:06:44 -0700
Message-ID: <CAHS8izNrbrU2EHxJvBXm4QMyO25-OqHcCm3HiJ590HCNt=N5LQ@mail.gmail.com>
To: Andy Lutomirski <luto@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 43A943E925
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.222.45:from];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org,amd.com,davemloft.net,google.com,kernel.org,redhat.com,arndb.de,gmail.com,ziepe.ca];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.981];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mail-ua1-f45.google.com:helo,mail-ua1-f45.google.com:rdns];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.45:from]
X-MailFrom: almasrymina@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PCMFA3NLJJB5RBF62AN7Z6WZFPA5ODTM
X-Message-ID-Hash: PCMFA3NLJJB5RBF62AN7Z6WZFPA5ODTM
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:42 +0000
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, jgg@ziepe.ca
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 06/10] net: add SO_DEVMEM_DONTNEED setsockopt to release RX pages
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PCMFA3NLJJB5RBF62AN7Z6WZFPA5ODTM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBKdWwgMTYsIDIwMjMgYXQgNDo1N+KAr1BNIEFuZHkgTHV0b21pcnNraSA8bHV0b0Br
ZXJuZWwub3JnPiB3cm90ZToNCj4NCj4gT24gNy8xMC8yMyAxNTozMiwgTWluYSBBbG1hc3J5IHdy
b3RlOg0KPiA+IEFkZCBhbiBpbnRlcmZhY2UgZm9yIHRoZSB1c2VyIHRvIG5vdGlmeSB0aGUga2Vy
bmVsIHRoYXQgaXQgaXMgZG9uZSByZWFkaW5nDQo+ID4gdGhlIE5FVF9SWCBkbWFidWYgcGFnZXMg
cmV0dXJuZWQgYXMgY21zZy4gVGhlIGtlcm5lbCB3aWxsIGRyb3AgdGhlDQo+ID4gcmVmZXJlbmNl
IG9uIHRoZSBORVRfUlggcGFnZXMgdG8gbWFrZSB0aGVtIGF2YWlsYWJsZSBmb3IgcmUtdXNlLg0K
PiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWluYSBBbG1hc3J5IDxhbG1hc3J5bWluYUBnb29nbGUu
Y29tPg0KPiA+IC0tLQ0KPg0KPiA+ICsgICAgICAgICAgICAgZm9yIChpID0gMDsgaSA8IG51bV90
b2tlbnM7IGkrKykgew0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBmb3IgKGogPSAwOyBqIDwg
dG9rZW5zW2ldLnRva2VuX2NvdW50OyBqKyspIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgcGFnZSAqcGcgPSB4YV9lcmFzZSgmc2stPnNrX3BhZ2Vwb29sLA0KPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHRva2Vuc1tpXS50b2tlbl9zdGFydCArIGopOw0KPiA+ICsNCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBpZiAocGcpDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBwdXRfcGFnZShwZyk7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ZWxzZQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogLUVJTlRS
IGhlcmUgbm90aWZpZXMgdGhlIHVzZXJzcGFjZQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICogdGhhdCBub3QgYWxsIHRva2VucyBwYXNzZWQgdG8gaXQgaGF2ZQ0K
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICogYmVlbiBmcmVlZC4N
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqLw0KPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0ID0gLUVJTlRSOw0KPg0KPiBVbmxl
c3MgSSdtIG1pc3Npbmcgc29tZXRoaW5nLCB0aGlzIHR5cGUgb2YgZXJyb3IgcmVwb3J0aW5nIGlz
DQo+IHVucmVjb3ZlcmFibGUgLS0gdXNlcnNwYWNlIGRvZXNuJ3Qga25vdyBob3cgbWFueSB0b2tl
bnMgaGF2ZSBiZWVuIGZyZWVkLg0KPg0KPiBJIHRoaW5rIHlvdSBzaG91bGQgZWl0aGVyIG1ha2Ug
aXQgZXhwbGljaXRseSB1bnJlY292ZXJhYmxlIChzb21laG93IHNodXQNCj4gZG93biBkbWFidWYg
aGFuZGxpbmcgZW50aXJlbHkpIG9yIHRlbGwgdXNlcnNwYWNlIGhvdyBtYW55IHRva2VucyB3ZXJl
DQo+IHN1Y2Nlc3NmdWxseSBmcmVlZC4NCj4NCg0KVGhhbmsgeW91LCB0aGUgbGF0dGVyIHN1Z2dl
c3Rpb24gc291bmRzIHBlcmZlY3QgYWN0dWFsbHkuIFRoZSB1c2VyDQpjYW4ndCBkbyBtdWNoIGlm
IHRoZSBrZXJuZWwgZmFpbHMgdG8gZnJlZSBhbGwgdGhlIHRva2VucywgYnV0IGF0IGxlYXN0DQpp
dCBjYW4ga25vdyB0aGF0IHNvbWV0aGluZyB3cm9uZyBpcyBoYXBwZW5pbmcgYW5kIGNhbiBsb2cg
YW4gZXJyb3IgZm9yDQpmdXJ0aGVyIGRlYnVnZ2luZy4gR3JlYXQgc3VnZ2VzdGlvbiEgVGhhbmtz
IQ0KDQoNCi0tIA0KVGhhbmtzLA0KTWluYQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
