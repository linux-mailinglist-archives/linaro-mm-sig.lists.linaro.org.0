Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 106BC59710C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Aug 2022 16:29:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0810E3F5F5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Aug 2022 14:29:28 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by lists.linaro.org (Postfix) with ESMTPS id E90DB3F509
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Aug 2022 14:29:24 +0000 (UTC)
Received: by mail-qk1-f182.google.com with SMTP id m5so10477088qkk.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Aug 2022 07:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc;
        bh=nbI+k5DQHbTWrnCEgebBhMe02FygG1PsU1gqd/fMVzQ=;
        b=0iHMYg0kCRDW8yqhXS+ynKl/wauUqc5ln3Q+N+/vnttHptHNQjC8LPtSbNMVBNToQZ
         mG2rnVvxcZ9p3glmpKKS/KOx0OrrmYnG2ieDwB4AOMp7Aq/gtBGmYZbMo8buhWK/fKYn
         Y/L9B6L6dLg4WpDCUzMEopU6aVaa7cWDS3cdCTwP6Irk+szWOYD2Kp5AKwoBAoLualBm
         8wekDBT3vUtmKgbfztzwq8vp/mfW8X+EY3GlkqdFWSBuGDBa9+LvqQG6+NdbE2F2JpSr
         AWvyZcYLCI3ALNAQ0Asd2GEA8Wg/PpgzlyE7k5LuWyprQl3sDyX2HCW57YyjLF4p/aSn
         5Etw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc;
        bh=nbI+k5DQHbTWrnCEgebBhMe02FygG1PsU1gqd/fMVzQ=;
        b=hGWEFF+lkbNxfV+0oyHsrYo8rII/hnlTKdtYxOsKy13dAI+f5ec+ddr65YeYj1B168
         lIK90DMS/+MOqmTfAjWJRAVrf4uaj530lyUiwuJgUYG4qugp+ne8IoQcrN0E3/D2cECL
         9Oo3wwVWR75RhkB9hfGseshZptgXMymZqHebMTjBFXVB039CMYOiGDlx8jH/CE6RzCFX
         8fKFhgwHOorp120pGpoeVMmzL5POx18U0SmzL1EMcpWJ7A9pyb2MgJSljL9/2oFQDKc9
         lxY/BMZnDhQjcWhoDiORTh25TWK/lT7E46ydYhMXkQWHI5c40EMPVjNYl+RrCX76Kv3s
         RAmA==
X-Gm-Message-State: ACgBeo0q4XMAtBAQVcXJ7X+U5LdlYez9UDsVc3lNdL6E3Ivo5S+ohZvL
	XarVLyi4M0tetomvSXd1/FINjA==
X-Google-Smtp-Source: AA6agR6C6mJevKTBi3H2YQPBbQVqiNBMdYN0rm8sN6vMAzMhaxKrVi45NNefk9toDAu3+nfmMuslpQ==
X-Received: by 2002:a05:620a:261d:b0:6bb:fa6:1ad6 with SMTP id z29-20020a05620a261d00b006bb0fa61ad6mr12091743qko.65.1660746564595;
        Wed, 17 Aug 2022 07:29:24 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id n6-20020a05622a040600b00339b8a5639csm13236130qtx.95.2022.08.17.07.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 07:29:23 -0700 (PDT)
Message-ID: <eef2fc413695cb96a5071627bfe44830f80cfe9e.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Olivier Masse <olivier.masse@nxp.com>, "brian.starkey@arm.com"
	 <brian.starkey@arm.com>
Date: Wed, 17 Aug 2022 10:29:22 -0400
In-Reply-To: <de46324d8fa8fb6a8dda4641e531d30842410744.camel@nxp.com>
References: <20220805135330.970-1-olivier.masse@nxp.com>
	 <20220805135330.970-2-olivier.masse@nxp.com>
	 <20220805154139.2qkqxwklufjpsfdx@000377403353>
	 <7e61668164f8bf02f6c4ee166e85abc42b5ee958.camel@nxp.com>
	 <20220812163922.v7sf3havi5dpgi5u@000377403353>
	 <de46324d8fa8fb6a8dda4641e531d30842410744.camel@nxp.com>
User-Agent: Evolution 3.44.4 (3.44.4-1.fc36) 
MIME-Version: 1.0
Message-ID-Hash: KO6ZSJBQNKBHE767UPOJTMP2U5OZETGF
X-Message-ID-Hash: KO6ZSJBQNKBHE767UPOJTMP2U5OZETGF
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "nd@arm.com" <nd@arm.com>, =?ISO-8859-1?Q?Cl=E9ment?= Faure <clement.faure@nxp.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [EXT] Re: [PATCH 1/3] dma-buf: heaps: add Linaro secure dmabuf heap support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KO6ZSJBQNKBHE767UPOJTMP2U5OZETGF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRm9sa3MsDQoNCkxlIG1hcmRpIDE2IGFvw7t0IDIwMjIgw6AgMTE6MjAgKzAwMDAsIE9saXZp
ZXIgTWFzc2UgYSDDqWNyaXTCoDoNCj4gSGkgQnJpYW4sDQo+IA0KPiANCj4gT24gdmVuLiwgMjAy
Mi0wOC0xMiBhdCAxNzozOSArMDEwMCwgQnJpYW4gU3RhcmtleSB3cm90ZToNCj4gPiBDYXV0aW9u
OiBFWFQgRW1hDQo+ID4gDQoNClsuLi5dDQoNCj4gPiANCj4gPiBJbnRlcmVzdGluZywgdGhhdCdz
IG5vdCBob3cgdGhlIGRldmljZXMgSSd2ZSB3b3JrZWQgb24gb3BlcmF0ZWQuDQo+ID4gDQo+ID4g
QXJlIHlvdSBzYXlpbmcgdGhhdCB5b3UgaGF2ZSB0byBoYXZlIGEgZGlzcGxheSBjb250cm9sbGVy
IGRyaXZlcg0KPiA+IHJ1bm5pbmcgaW4gdGhlIFRFRSB0byBkaXNwbGF5IG9uZSBvZiB0aGVzZSBi
dWZmZXJzPw0KPiANCj4gSW4gZmFjdCB0aGUgZGlzcGxheSBjb250cm9sbGVyIGlzIG1hbmFnaW5n
IDMgcGxhbnMgOiBVSSwgUGlQIGFuZA0KPiB2aWRlby4gVGhlIHZpZGVvIHBsYW4gaXMgcHJvdGVj
dGVkIGluIHNlY3VyZSBhcyB5b3UgY2FuIHNlZSBvbiBzbGlkZQ0KPiAxMToNCj4gaHR0cHM6Ly9z
dGF0aWMubGluYXJvLm9yZy9jb25uZWN0L3NhbjE5L3ByZXNlbnRhdGlvbnMvc2FuMTktMTA3LnBk
Zg0KDQoNCg0KanVzdCB3YW50ZWQgdG8gaGlnaGxpZ2h0IHRoYXQgYWxsIHRoZSBXUEUvR1N0cmVh
bWVyIGJpdCBpbiB0aGlzIHByZXNlbnRhdGlvbiBpcw0KYmFzZWQgb24gTlhQIFZlbmRvciBNZWRp
YSBDT0RFQyBkZXNpZ24sIHdoaWNoIHJlbHkgb24gdGhlaXIgb3duIGkuTVggVlBVIEFQSS4gSQ0K
ZG9uJ3Qgc2VlIGFueSBlZmZvcnQgdG8gZXh0ZW5kIHRoaXMgdG8gYSB3aWRlciBhdWRpZW5jZS4g
SXQgaXMgbm90IGV4cGxhaW5pbmcNCmhvdyB0aGlzIGNhbiB3b3JrIHdpdGggYSBtYWlubGluZSBr
ZXJuZWwgd2l0aCB2NGwyIHN0YXRlZnVsIG9yIHN0YXRlbGVzcyBkcml2ZXJzDQphbmQgZ2VuZXJp
YyBHU3RyZWFtZXIvRkZNUEVHL0Nocm9taXVtIHN1cHBvcnQuDQoNCkknbSByYWlzaW5nIHRoaXMs
IHNpbmNlIEknbSB3b3JyaWVkIHRoYXQgbm8gb25lIGNhcmVzIG9mIHNvbHZpbmcgdGhhdCBoaWdo
IGxldmVsDQpwcm9ibGVtIGZyb20gYSBnZW5lcmljIHBvaW50IG9mIHZpZXcuIEluIHRoYXQgY29u
dGV4dCwgYW55IGFkZGl0aW9ucyB0byB0aGUNCm1haW5saW5lIExpbnV4IGtlcm5lbCBjYW4gb25s
eSBiZSBmbGF3ZWQgYW5kIHdpbGwgb25seSBzZXJ2ZXMgc3BlY2lmaWMgdmVuZG9ycw0KYW5kIG5v
dCB0aGUgbGFyZ2VyIGF1ZGllbmNlLg0KDQpBbm90aGVyIGFzcGVjdCwgaXMgdGhhdCB0aGlzIGRl
c2lnbiBtaWdodCBiZSBib3VuZCB0byBhIHNwZWNpZmljIChOWFAgPykNCnNlY3VyaXR5IGRlc2ln
bi4gSSd2ZSBsZWFybiByZWNlbnRseSB0aGF0IG5ld2VyIEhXIGlzIGdvaW5nIHRvIHVzZSBtdWx0
aXBsZQ0KbGV2ZWwgb2YgTU1VIChsaWtlIHZpcnR1YWwgbWFjaGluZXMgZG8pIHRvIHByb3RlY3Qg
dGhlIG1lbW9yeSByYXRoZXIgdGhlbg0KbWFya2luZyBwYWdlcy4gV2lsbCBhbGwgdGhpcyB3b3Jr
IGZvciB0aGF0IHRvbyA/DQoNCnJlZ2FyZHMsDQpOaWNvbGFzDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
