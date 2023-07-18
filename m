Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A0979A8E6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:47:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4C983E917
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:47:26 +0000 (UTC)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	by lists.linaro.org (Postfix) with ESMTPS id 40B6E3EECC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 17:37:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=GvhF9so1;
	spf=pass (lists.linaro.org: domain of almasrymina@google.com designates 209.85.217.47 as permitted sender) smtp.mailfrom=almasrymina@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-446e8355203so255940137.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 10:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689701824; x=1692293824;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OF7u0tkhZuJp+iYGmAnUNlyXY8n4e2wtaxsLwo/TJ0U=;
        b=GvhF9so1mjJXiE/TvurKZcRANx4xoduJ12AI7tyQuLMZKhF+GAimJJ6+jOxa5DbOxx
         ZkKgtoehuKyPuCc90EiNAJ7pAoNst0vuc7x1Og0cjyuGCU9w9PV4qgvI/S0aUPiFGuJN
         mD9GvO3+AxzbtHsvl3FCd6C1r9kxBvaANizWpS6BgtwFPbXsGnY4AxbcWpXVCkfMIi+y
         vk6k/qLV/s43NfR1l7h6bopJ1DTN9YfxIMYUn8Q74BKBmDVKGcFTYtfFK1Mp2c3EpZK/
         sQWDMvHJls5znmpTUiPK/gD2WQSSwyZ2dzp5+poQJH75Bvsz9D3Yg4w7yp8IzQL6IPsD
         j/2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689701824; x=1692293824;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OF7u0tkhZuJp+iYGmAnUNlyXY8n4e2wtaxsLwo/TJ0U=;
        b=LYoEpR91FhrS/EFw3Al6Xu0CY/0Y0v6ZHT2Frj4+Wr7C9JymIuKc1yY5LWtt0rrcHK
         4QZ7WWKJChZ2mcratSHCJjx7TDlJdf0y6qkquXgN5qqpUrJg5SNh4AoBtHVZRKny+WXO
         5Ep1Xcblo8gf9lP9PeV1h6lBkqTEcMf+8pa7e8iO3Y3hy99toYFYVJH2t6QuN+tOx2aq
         Q/ZqNre2NuknZzZHiPLWoKN9L+lOl4FYKey/VwIu6nrwyHzaD686pYxYdjW2uRkAE9vd
         JBU5kwS6cIejCBnO35YDS5QgFZEhQGpSOW7wpS2awFBN4d/Wgt4wubnf0qVUme6ksjQq
         ac7A==
X-Gm-Message-State: ABy/qLbhn5OStBBLlB2bSd/3i4SA2Wrf1tbubCjgMX2pMBIzhwdqY0V5
	xOZQq31t1DBI4RGiQmOTgXenl7oS52nn2O/2KBRJ5Q==
X-Google-Smtp-Source: APBJJlGybULcU+7z4JGO9VYtEkqhuSOGFBtDCY9RmNEp4loR/4Bx729tLJCCF1e3TIymnhgxCELYGS33nBdmUH493Xw=
X-Received: by 2002:a05:6102:391:b0:443:6052:43ae with SMTP id
 m17-20020a056102039100b00443605243aemr9163796vsq.24.1689701823762; Tue, 18
 Jul 2023 10:37:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230710223304.1174642-1-almasrymina@google.com> <12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
In-Reply-To: <12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
From: Mina Almasry <almasrymina@google.com>
Date: Tue, 18 Jul 2023 10:36:52 -0700
Message-ID: <CAHS8izNPTwtk+zN7XYt-+ycpT+47LMcRrYXYh=suTXCZQ6-rVQ@mail.gmail.com>
To: Andy Lutomirski <luto@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 40B6E3EECC
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org,amd.com,davemloft.net,google.com,kernel.org,redhat.com,arndb.de,gmail.com,ziepe.ca];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.931];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.217.47:from]
X-MailFrom: almasrymina@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CSF5BT6NLD6S357RCWBCSXY3L77UD55K
X-Message-ID-Hash: CSF5BT6NLD6S357RCWBCSXY3L77UD55K
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:44 +0000
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, jgg@ziepe.ca
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 00/10] Device Memory TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CSF5BT6NLD6S357RCWBCSXY3L77UD55K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBKdWwgMTYsIDIwMjMgYXQgNzo0MeKAr1BNIEFuZHkgTHV0b21pcnNraSA8bHV0b0Br
ZXJuZWwub3JnPiB3cm90ZToNCj4NCj4gT24gNy8xMC8yMyAxNTozMiwgTWluYSBBbG1hc3J5IHdy
b3RlOg0KPiA+ICogVEw7RFI6DQo+ID4NCj4gPiBEZXZpY2UgbWVtb3J5IFRDUCAoZGV2bWVtIFRD
UCkgaXMgYSBwcm9wb3NhbCBmb3IgdHJhbnNmZXJyaW5nIGRhdGEgdG8gYW5kL29yDQo+ID4gZnJv
bSBkZXZpY2UgbWVtb3J5IGVmZmljaWVudGx5LCB3aXRob3V0IGJvdW5jaW5nIHRoZSBkYXRhIHRv
IGEgaG9zdCBtZW1vcnkNCj4gPiBidWZmZXIuDQo+DQo+IChJJ20gd3JpdGluZyB0aGlzIGFzIHNv
bWVvbmUgd2hvIG1pZ2h0IHBsYXVzaWJseSB1c2UgdGhpcyBtZWNoYW5pc20sIGJ1dA0KPiBJIGRv
bid0IHRoaW5rIEknbSB2ZXJ5IGxpa2VseSB0byBlbmQgdXAgd29ya2luZyBvbiB0aGUga2VybmVs
IHNpZGUsDQo+IHVubGVzcyBJIHNvbWVob3cgZmVlbCBleHRyZW1lbHkgaW5zcGlyZWQgdG8gaW1w
bGVtZW50IGl0IGZvciBpNDBlLikNCj4NCj4gSSBsb29rZWQgYXQgdGhlc2UgcGF0Y2hlcyBhbmQg
dGhlIEdWRSB0cmVlLCBhbmQgSSdtIHRyeWluZyB0byB3cmFwIG15DQo+IGhlYWQgYXJvdW5kIHRo
ZSBkYXRhIHBhdGguICBBcyBJIHVuZGVyc3RhbmQgaXQsIGZvciBSWDoNCj4NCj4gMS4gVGhlIEdW
RSBkcml2ZXIgbm90aWNlcyB0aGF0IHRoZSBxdWV1ZSBpcyBwcm9ncmFtbWVkIHRvIHVzZSBkZXZt
ZW0sDQo+IGFuZCBpdCBwcm9ncmFtcyB0aGUgTklDIHRvIGNvcHkgcGFja2V0IHBheWxvYWRzIHRv
IHRoZSBkZXZtZW0gdGhhdCBoYXMNCj4gYmVlbiBwcm9ncmFtbWVkLg0KPiAyLiBUaGUgTklDIHJl
Y2VpdmVzIHRoZSBwYWNrZXQgYW5kIGNvcGllcyB0aGUgaGVhZGVyIHRvIGtlcm5lbCBtZW1vcnkN
Cj4gYW5kIHRoZSBwYXlsb2FkIHRvIGRtYS1idWYgbWVtb3J5Lg0KPiAzLiBUaGUga2VybmVsIHRl
bGxzIHVzZXJzcGFjZSB3aGVyZSBpbiB0aGUgZG1hLWJ1ZiB0aGUgZGF0YSBpcy4NCj4gNC4gVXNl
cnNwYWNlIGRvZXMgc29tZXRoaW5nIHdpdGggdGhlIGRhdGEuDQo+IDUuIFVzZXJzcGFjZSBkb2Vz
IERPTlRORUVEIHRvIHJlY3ljbGUgdGhlIG1lbW9yeSBhbmQgbWFrZSBpdCBhdmFpbGFibGUNCj4g
Zm9yIG5ldyByZWNlaXZlZCBwYWNrZXRzLg0KPg0KPiBEaWQgSSBnZXQgdGhpcyByaWdodD8NCj4N
Cg0KU29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5LiBJJ20gYSBiaXQgYnVyaWVkIHdvcmtpbmcgb24g
dGhlIGZvbGxvdyB1cCB0bw0KdGhpcyBwcm9wb3NhbDogZXhwbG9yaW5nIHVzaW5nIGRtYS1idWZz
IHdpdGhvdXQgcGFnZXMuDQoNClllcywgdGhpcyBpcyBjb21wbGV0ZWx5IGNvcnJlY3QuDQoNCj4g
VGhpcyBzZWVtcyBhIGJpdCBhd2t3YXJkIGlmIHRoZXJlJ3MgYW55IGNoYW5jZSB0aGF0IHBhY2tl
dHMgbm90IGludGVuZGVkDQo+IGZvciB0aGUgdGFyZ2V0IGRldmljZSBlbmQgdXAgaW4gdGhlIHJ4
cS4NCj4NCg0KSXQgZG9lcyBhIGJpdC4gV2hhdCBoYXBwZW5zIGluIHByYWN0aWNlIGlzIHRoYXQg
d2UgdXNlIFJTUyB0byBzdGVlcg0KZ2VuZXJhbCB0cmFmZmljIGF3YXkgZnJvbSB0aGUgZGV2bWVt
IHF1ZXVlcywgYW5kIHdlIHVzZSBmbG93IHN0ZWVyaW5nDQp0byBzdGVlciBzcGVjaWZpYyBmbG93
cyB0byBkZXZlbSBxdWV1ZXMuDQoNCkluIHRoZSBjYXNlIHdoZXJlIHRoZSBSU1MvZmxvdyBzdGVl
cmluZyBjb25maWd1cmF0aW9uIGlzIGRvbmUNCmluY29ycmVjdGx5LCB0aGUgdXNlciB3b3VsZCBj
YWxsIHJlY3Ztc2coKSBvbiBhIGRldm1lbSBza2IgYW5kIGlmIHRoZXkNCmhhdmVuJ3Qgc3BlY2lm
aWVkIHRoZSBNU0dfU09DS19ERVZNRU0gZmxhZyB0aGV5J2QgZ2V0IGFuIGVycm9yLg0KDQo+IEkn
bSB3b25kZXJpbmcgaWYgYSBtb3JlIGNhcGFibGUgaWYgc29tZXdoYXQgaGlnaGVyIGxhdGVuY3kg
bW9kZWwgY291bGQNCj4gd29yayB3aGVyZSB0aGUgTklDIHN0b3JlcyByZWNlaXZlZCBwYWNrZXRz
IGluIGl0cyBvd24gZGV2aWNlIG1lbW9yeS4NCj4gVGhlbiB1c2Vyc3BhY2UgKG9yIHRoZSBrZXJu
ZWwgb3IgYSBkcml2ZXIgb3Igd2hhdGV2ZXIpIGNvdWxkIGluaXRpYXRlIGENCj4gc2VwYXJhdGUg
RE1BIGZyb20gdGhlIE5JQyB0byB0aGUgZmluYWwgdGFyZ2V0ICphZnRlciogcmVhZGluZyB0aGUN
Cj4gaGVhZGVycy4gIENhbiB0aGUgaGFyZHdhcmUgc3VwcG9ydCB0aGlzPw0KPg0KDQpOb3QgdGhh
dCBJIGtub3cgb2YuIEkgZ3Vlc3MgSmFrdWIgYWxzbyByZXNwb25kZWQgd2l0aCB0aGUgc2FtZS4N
Cg0KPiBBbm90aGVyIHdheSBvZiBwdXR0aW5nIHRoaXMgaXM6IHN0ZWVyaW5nIHJlY2VpdmVkIGRh
dGEgdG8gYSBzcGVjaWZpYw0KPiBkZXZpY2UgYmFzZWQgb24gdGhlICpyZWNlaXZlIHF1ZXVlKiBm
b3JjZXMgdGhlIGxvZ2ljIHNlbGVjdGluZyBhDQo+IGRlc3RpbmF0aW9uIGRldmljZSB0byBiZSB0
aGUgc2FtZSBhcyB0aGUgbG9naWMgc2VsZWN0aW5nIHRoZSBxdWV1ZS4gIFJYDQo+IHN0ZWVyaW5n
IGxvZ2ljIGlzIHByZXR0eSBsaW1pdGVkIG9uIG1vc3QgaGFyZHdhcmUgKGFzIGZhciBhcyBJIGtu
b3cgLS0NCj4gY2VydGFpbmx5IEkndmUgbmV2ZXIgaGFkIG11Y2ggbHVjayBkb2luZyBhbnl0aGlu
ZyBlc3BlY2lhbGx5IGludGVsbGlnZW50DQo+IHdpdGggUlggZmxvdyBzdGVlcmluZywgYW5kIEkn
dmUgdHJpZWQgb24gYSBjb3VwbGUgb2YgZGlmZmVyZW50IGJyYW5kcyBvZg0KPiBzdXBwb3NlZGx5
IGZhbmN5IE5JQ3MpLiAgQnV0IExpbnV4IGhhcyB2ZXJ5IG5pY2UgY2FwYWJpbGl0aWVzIHRvIGRp
cmVjdA0KPiBwYWNrZXRzLCBpbiBzb2Z0d2FyZSwgdG8gd2hlcmUgdGhleSBhcmUgc3VwcG9zZWQg
dG8gZ28sIGFuZCBpdCB3b3VsZCBiZQ0KPiBuaWNlIGlmIGFsbCB0aGF0IGxvZ2ljIGNvdWxkIGp1
c3Qgd29yaywgc2NhbGFibHksIHdpdGggZGV2aWNlIG1lbW9yeS4NCj4gSWYgTGludXggY291bGQg
ZXhhbWluZSBoZWFkZXJzICpiZWZvcmUqIHRoZSBwYXlsb2FkIGdldHMgRE1BZWQgdG8NCj4gd2hl
cmV2ZXIgaXQgZ29lcywgSSB0aGluayB0aGlzIGNvdWxkIHBsYXVzaWJseSB3b3JrIHF1aXRlIG5p
Y2VseS4gIE9uZQ0KPiBjb3VsZCBldmVuIGhhdmUgYW4gZWFzeS10by11c2UgaW50ZXJmYWNlIGlu
IHdoaWNoIG9uZSBkaXJlY3RzIGEgKnNvY2tldCoNCj4gdG8gYSBQQ0llIGRldmljZS4gIEkgZXhw
ZWN0LCBhbHRob3VnaCBJJ3ZlIG5ldmVyIGxvb2tlZCBhdCB0aGUNCj4gZGF0YXNoZWV0cywgdGhh
dCB0aGUga2VybmVsIGNvdWxkIGV2ZW4gZWZmaWNpZW50bHkgbWFrZSByeCBkZWNpc2lvbnMNCj4g
YmFzZWQgb24gZGF0YSBpbiBkZXZpY2UgbWVtb3J5IG9uIHVwY29taW5nIENYTCBOSUNzIHdoZXJl
IGRldmljZSBtZW1vcnkNCj4gY291bGQgcGFydGljaXBhdGUgaW4gdGhlIGhvc3QgY2FjaGUgaGll
cmFyY2h5Lg0KPg0KPiBNeSByZWFsIHVsdGVyaW9yIG1vdGl2ZSBpcyB0aGF0IEkgdGhpbmsgaXQg
d291bGQgYmUgZ3JlYXQgdG8gdXNlIGFuDQo+IGFiaWxpdHkgbGlrZSB0aGlzIGZvciBEUERLLWxp
a2UgdXNlcy4gIFdvdWxkbid0IGl0IGJlIG5pZnR5IGlmIEkgY291bGQNCj4gb3BlbiBhIG5vcm1h
bCBUQ1Agc29ja2V0LCB0aGVuLCBhZnRlciBpdCdzIG9wZW4sIGFzayB0aGUga2VybmVsIHRvDQo+
IGtpbmRseSBETUEgdGhlIHJlc3VsdHMgZGlyZWN0bHkgdG8gbXkgYXBwbGljYXRpb24gbWVtb3J5
ICh2aWEgdWRtYWJ1ZiwNCj4gcGVyaGFwcyk/ICBPciBoYXZlIGEgd2hvbGUgVkxBTiBvciBtYWN2
bGFuIGdldCBkaXJlY3RlZCB0byBhIHVzZXJzcGFjZQ0KPiBxdWV1ZSwgZXRjPw0KPg0KPg0KPiBJ
dCBhbHNvIHNlZW1zIGEgYml0IG9kZCB0byBtZSB0aGF0IHRoZSBiaW5kaW5nIGZyb20gcnhxIHRv
IGRtYS1idWYgaXMNCj4gZXN0YWJsaXNoZWQgYnkgcHJvZ3JhbW1pbmcgdGhlIGRtYS1idWYuDQoN
ClRoYXQgaXMgc3BlY2lmaWMgdG8gdGhpcyBwcm9wb3NhbCwgYW5kIHdpbGwgbGlrZWx5IGJlIHZl
cnkgZGlmZmVyZW50DQppbiBmdXR1cmUgb25lcy4gSSB0aG91Z2h0IHRoZSBkbWEtYnVmIHBhZ2Vz
IGFwcHJvYWNoIHdhcyBleHRlbnNpYmxlDQphbmQgdGhlIHVhcGkgYmVsb25nZWQgc29tZXdoZXJl
IGluIGRtYS1idWYuIENsZWFybHkgbm90LiBUaGUgbmV4dA0KcHJvcG9zYWwsIEkgdGhpbmssIHdp
bGwgcHJvZ3JhbSB0aGUgcnhxIHZpYSBzb21lIG5ldCB1YXBpIGFuZCB3aWxsDQp0YWtlIHRoZSBk
bWEtYnVmIGFzIGlucHV0LiBQcm9iYWJseSBzb21lIG5ldGxpbmsgYXBpIChub3Qgc3VyZSBpZg0K
ZXRodG9vbCBmYW1pbHkgb3Igb3RoZXJ3aXNlKS4gSSdtIHdvcmtpbmcgb3V0IGRldGFpbHMgb2Yg
dGhpcw0Kbm9uLXBhZ2VkIG5ldHdvcmtpbmcgZmlyc3QuDQoNCj4gVGhpcyBtYWtlcyB0aGUgc2Vj
dXJpdHkgbW9kZWwNCj4gKGFuZCB0aGUgbWVudGFsIG1vZGVsKSBhd2t3YXJkIC0tIHRoaXMgYmlu
ZGluZyBpcyBhIHNldHRpbmcgb24gdGhlDQo+ICpxdWV1ZSosIG5vdCB0aGUgZG1hLWJ1ZiwgYW5k
IGluIGEgY29udGFpbmVyaXplZCBvciBwcml2aWxlZ2Utc2VwYXJhdGVkDQo+IHN5c3RlbSwgYSBw
cm9jZXNzIGNvdWxkIGhhdmUgZW5vdWdoIHByaXZpbGVnZSB0byBtYWtlIGEgZG1hLWJ1Zg0KPiBz
b21ld2hlcmUgYnV0IG5vdCBoYXZlIGFueSBwcml2aWxlZ2VzIG9uIHRoZSBOSUMuICAoQW5kIG1h
eSBub3QgZXZlbg0KPiBoYXZlIHRoZSBOSUMgcHJlc2VudCBpbiBpdHMgbmV0d29yayBuYW1lc3Bh
Y2UhKQ0KPg0KPiAtLUFuZHkNCg0KDQoNCi0tDQpUaGFua3MsDQpNaW5hDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
