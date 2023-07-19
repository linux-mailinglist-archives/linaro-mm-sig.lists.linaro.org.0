Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D947879A8F4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:48:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DADEB3F4C9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:48:45 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	by lists.linaro.org (Postfix) with ESMTPS id D69C13EECC
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jul 2023 17:57:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=networkplumber-org.20221208.gappssmtp.com header.s=20221208 header.b=0Q1tzUOb;
	spf=pass (lists.linaro.org: domain of stephen@networkplumber.org designates 209.85.216.41 as permitted sender) smtp.mailfrom=stephen@networkplumber.org;
	dmarc=pass (policy=quarantine) header.from=networkplumber.org
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2633b669f5fso4348272a91.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jul 2023 10:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1689789434; x=1690394234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4FVEMGAeC4A4acfilWsGklHz88eR5z5EWRCCV9Kst0I=;
        b=0Q1tzUOb9vYJXHmPeDryrYB5A4pEESrmEqXYj9Hg+90Z5+QCPv2ecrkofZgQVHrh2Q
         2SmV6ESktQAtsjCYVJZhJojTRHsrQLvYLqNH0EoTgXcN4+EyUGH6ZSXKFYb02Y0hiirh
         icie1/r4QjaO+Xr/8VrDJJ+t8iIcRUo2snH46DM7aXAbB12rMZS46rJ2h5Z2q3coLAKN
         GMT7GgUwcUUW4SpZr+6zG8X6fnKROWImTBv7u2v/1CdFXwNuMSzJvhzr6uNXEVsoU8p0
         jr3ynj+/29rinW5TGGhTFa+uF7yLH222PS2w2a9Iu7qAlX2Am1gjapUEui6PcMe/HT1i
         pwCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689789434; x=1690394234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4FVEMGAeC4A4acfilWsGklHz88eR5z5EWRCCV9Kst0I=;
        b=YL1Fsak9pTQ277nmXenD21gk0Cy69tgCgrWelAqgnmAozC03ZxEXA/4R9Pkr2DXmWn
         ZZDSGVqmwZyTSWI1pazP/+zdvmdMUiRMQY5SZaGEoioEMDVVwQLMq+GipbN/lAabNtol
         98ceBqeDubRSnmBSEQsTR5WIIbeq9nKUV5dPlx6Pt5Vjao6B0q95vvF1EJ5F/lw/RX4v
         qy46LhGp+kjpzZshTWCUcQ71dyG4us88/TbC26tFG2ItFWGF2J4DrDg3V+a6fANZOBEr
         HHCcxGOWBYxsKyHLKlDExoaOSkUhjI7h0if0mB5GCcASQvgcq673hulPGxH8OBTz4hGp
         tmeg==
X-Gm-Message-State: ABy/qLb8aSAcU0uUJzvR/UuVW8JcwPVWMB84iMjxwwVt4NbX2y8Itx4G
	8SKQf5HBwxIV59upylES5vqRSQ==
X-Google-Smtp-Source: APBJJlEsVXT/riHHb217/IRnC4FkTdrL+WEIRgGEaqW1QkKPQqx7J9SZ2+4YPKCL/Z0Wz9JzjQeyoQ==
X-Received: by 2002:a17:90a:d598:b0:264:97a:2ba6 with SMTP id v24-20020a17090ad59800b00264097a2ba6mr4560333pju.7.1689789434001;
        Wed, 19 Jul 2023 10:57:14 -0700 (PDT)
Received: from hermes.local (204-195-127-207.wavecable.com. [204.195.127.207])
        by smtp.gmail.com with ESMTPSA id nw17-20020a17090b255100b00263f41a655esm1415304pjb.43.2023.07.19.10.57.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 10:57:13 -0700 (PDT)
Date: Wed, 19 Jul 2023 10:57:11 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Mina Almasry <almasrymina@google.com>
Message-ID: <20230719105711.448f8cad@hermes.local>
In-Reply-To: <CAHS8izPORN=r2-hzYSgN4s_Aoo2dnwoJXrU5Hu=43sb8zsWyhQ@mail.gmail.com>
References: <20230710223304.1174642-1-almasrymina@google.com>
	<12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
	<CAHS8izNPTwtk+zN7XYt-+ycpT+47LMcRrYXYh=suTXCZQ6-rVQ@mail.gmail.com>
	<ZLbUpdNYvyvkD27P@ziepe.ca>
	<20230718111508.6f0b9a83@kernel.org>
	<35f3ec37-11fe-19c8-9d6f-ae5a789843cb@kernel.org>
	<20230718112940.2c126677@kernel.org>
	<eb34f812-a866-a1a3-9f9b-7d5054d17609@kernel.org>
	<20230718154503.0421b4cd@kernel.org>
	<CAHS8izPORN=r2-hzYSgN4s_Aoo2dnwoJXrU5Hu=43sb8zsWyhQ@mail.gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D69C13EECC
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[networkplumber.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[networkplumber-org.20221208.gappssmtp.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.41:from];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,ziepe.ca,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org,amd.com,davemloft.net,google.com,redhat.com,arndb.de,gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	BLOCKLISTDE_FAIL(0.00)[204.195.127.207:query timed out,209.85.216.41:query timed out];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[networkplumber-org.20221208.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: stephen@networkplumber.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GVRKMFBO33BUTDKG5YBTQ2U3BQE2NDSY
X-Message-ID-Hash: GVRKMFBO33BUTDKG5YBTQ2U3BQE2NDSY
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:46 +0000
CC: Jakub Kicinski <kuba@kernel.org>, David Ahern <dsahern@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andy Lutomirski <luto@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 00/10] Device Memory TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GVRKMFBO33BUTDKG5YBTQ2U3BQE2NDSY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAxOSBKdWwgMjAyMyAwODoxMDo1OCAtMDcwMA0KTWluYSBBbG1hc3J5IDxhbG1hc3J5
bWluYUBnb29nbGUuY29tPiB3cm90ZToNCg0KPiBPbiBUdWUsIEp1bCAxOCwgMjAyMyBhdCAzOjQ1
4oCvUE0gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4NCj4gPiBP
biBUdWUsIDE4IEp1bCAyMDIzIDE2OjM1OjE3IC0wNjAwIERhdmlkIEFoZXJuIHdyb3RlOiAgDQo+
ID4gPiBJIGRvIG5vdCBzZWUgaG93IDEgUlNTIGNvbnRleHQgKG9yIG1vcmUgc3BlY2lmaWNhbGx5
IGEgaC93IFJ4IHF1ZXVlKSBjYW4NCj4gPiA+IGJlIHVzZWQgcHJvcGVybHkgd2l0aCBtZW1vcnkg
ZnJvbSBkaWZmZXJlbnQgcHJvY2Vzc2VzIChvciBkbWEtYnVmDQo+ID4gPiByZWZlcmVuY2VzKS4g
IA0KPiANCj4gUmlnaHQsIG15IGV4cGVyaWVuY2Ugd2l0aCBkbWEtYnVmcyBmcm9tIEdQVXMgYXJl
IHRoYXQgdGhleSdyZQ0KPiBhbGxvY2F0ZWQgZnJvbSB0aGUgdXNlcnNwYWNlIGFuZCBvd25lZCBi
eSB0aGUgcHJvY2VzcyB0aGF0IGFsbG9jYXRlZA0KPiB0aGUgYmFja2luZyBHUFUgbWVtb3J5IGFu
ZCBnZW5lcmF0ZWQgdGhlIGRtYS1idWYgZnJvbSBpdC4gSS5lLiwgd2UncmUNCj4gbGltaXRlZCB0
byAxIGRtYS1idWYgcGVyIFJYIHF1ZXVlLiBJZiB3ZSBlbmFibGUgYmluZGluZyBtdWx0aXBsZQ0K
PiBkbWEtYnVmcyB0byB0aGUgc2FtZSBSWCBxdWV1ZSwgd2UgaGF2ZSBhIHByb2JsZW0sIGJlY2F1
c2UgQUZBSVUgdGhlDQo+IE5JQyBjYW4ndCBkZWNpZGUgd2hpY2ggZG1hLWJ1ZiB0byBwdXQgdGhl
IHBhY2tldCBpbnRvIChpdCBoYXNuJ3QNCj4gcGFyc2VkIHRoZSBwYWNrZXQncyBkZXN0aW5hdGlv
biB5ZXQpLg0KPiANCj4gPiA+IFdoZW4gdGhlIHByb2Nlc3MgZGllcywgdGhhdCBtZW1vcnkgbmVl
ZHMgdG8gYmUgZmx1c2hlZCBmcm9tDQo+ID4gPiB0aGUgSC9XIHF1ZXVlcy4gUXVldWVzIHdpdGgg
aW50ZXJsYWNlZCBzdWJtaXNzaW9ucyBtYWtlIHRoYXQgbW9yZQ0KPiA+ID4gY29tcGxpY2F0ZWQu
ICANCj4gPiAgDQo+IA0KPiBXaGVuIHRoZSBwcm9jZXNzIGRpZXMsIGRvIHdlIHJlYWxseSB3YW50
IHRvIGZsdXNoIHRoZSBtZW1vcnkgZnJvbSB0aGUNCj4gaGFyZHdhcmUgcXVldWVzPyBUaGUgZHJp
dmVycyBJIGxvb2tlZCBhdCBkb24ndCBzZWVtIHRvIGhhdmUgYSBmdW5jdGlvbg0KPiB0byBmbHVz
aCB0aGUgcnggcXVldWVzIGFsb25lLCB0aGV5IHVzdWFsbHkgZG8gYW4gZW50aXJlIGRyaXZlciBy
ZXNldA0KPiB0byBhY2hpZXZlIHRoYXQuIE5vdCBzdXJlIGlmIHRoYXQncyBqdXN0IGNvbnZlbmll
bmNlIG9yIHRoZXJlIGlzIHNvbWUNCj4gdGVjaG5pY2FsIGxpbWl0YXRpb24gdGhlcmUuIERvIHdl
IHJlYWxseSB3YW50ICB0byB0cmlnZ2VyIGEgZHJpdmVyDQo+IHJlc2V0IGF0IHRoZSBldmVudCBh
IHVzZXJzcGFjZSBwcm9jZXNzIGNyYXNoZXM/DQoNCk5haXZlIGlkZWEuDQpXb3VsZCBpdCBiZSBw
b3NzaWJsZSBmb3IgcHJvY2VzcyB0byB1c2UgbW1hcCgpIG9uIHRoZSBHUFUgbWVtb3J5IGFuZCB0
aGVuDQpkbyB6ZXJvIGNvcHkgVENQIHJlY2VpdmUgc29tZSBob3c/IE9yIGlzIHRoaXMgd2hhdCBp
cyBiZWluZyBwcm9wb3NlZC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
