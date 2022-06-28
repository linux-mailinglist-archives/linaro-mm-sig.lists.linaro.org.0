Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE0455F16B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 00:38:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3465D3F459
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jun 2022 22:38:19 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 6EC3F3EC7D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jun 2022 22:38:14 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id be14-20020a05600c1e8e00b003a04a458c54so4449777wmb.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jun 2022 15:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=D2xQiDloUPECELWlq78dtMk8sQX4Mz7K0pGe9yPKMGc=;
        b=OpP84mIDDpru5A5sd+m/hLg4LXMxv18S6LfalFgSCro5gC5aX2kJrOAVb3syqigguo
         8oGL+WAA+7jBv1o2/kR/eJA+AwAJU5BdoIB3/ql4h6SqIRiHHBNgyTqGnuc41dZcOgpS
         8GODFCQAa+sX8LrqL8JWzP/PgAY/8ZBMz/OK9842UPNrneHpiHczXl7ZTRIwNXE7qo5L
         1jhrX7WbggTT1LtgYqfgNI4KrXkFmpLJYyRoy8MnLmZ0UM6rNqKs1IJ0phUZcbz9D+o3
         xbgEc1QeVYLnS15fY8Z2rTrrNwShaQD1Dt6SQf/tzey/enOHsHzoUrOi7sT+lSLcKgVg
         gnKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=D2xQiDloUPECELWlq78dtMk8sQX4Mz7K0pGe9yPKMGc=;
        b=MOs34Z6NI+bNhk4ddit2547w5eCiD26FgCGKJvEsqMckKr0SdYi4Bw/MT4L0HwB4XC
         GMNFAkL+IcH6diBzwSoVz+Bn3AU3VcN8qlq7Z2EOsmCzlp/vinmtvp0kpouqzJQH28Kx
         n0RSLNfalMiPSmkmROFtIqrNCV9am4iRHsCtrC/NFHBJxYwVG9s12GD9eIqLfFQZIbSC
         NeCrph7VfaAAzvfh6ytbtjQ2AMdU1ZIwYqlS4GfNuHG6Evc9m7dIZyjpQd9w9o5xXcyq
         korHtjWZd9Z+/I2ooXk6wTy8rh/MqiGSNnTuieTp0n07UwLHYCqtKaW61WGK1YkWty+8
         xPNA==
X-Gm-Message-State: AJIora/bw4Dc8hivuNVAZGHJtFoosKD9VV2+Enp9QlDwdX/LIbdOQPjj
	08S4gcp7kVvmlix/hxcLkqjrNlG9cjhMiW5v9LaqDg==
X-Google-Smtp-Source: AGRyM1tXi+AtbN0W0GHt4S5SYwxRiDa2yaE7kTT3Z77WdS2mulzizwZgd2HMwe6MD30K5Tf3EqxcjladfBlTrx+MSF0=
X-Received: by 2002:a05:600c:4f84:b0:39c:9897:5295 with SMTP id
 n4-20020a05600c4f8400b0039c98975295mr172377wmq.158.1656455893181; Tue, 28 Jun
 2022 15:38:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220623220613.3014268-1-kaleshsingh@google.com>
 <20220623220613.3014268-2-kaleshsingh@google.com> <Yrrrz7MxMu8OoEPU@bfoster>
In-Reply-To: <Yrrrz7MxMu8OoEPU@bfoster>
From: Kalesh Singh <kaleshsingh@google.com>
Date: Tue, 28 Jun 2022 15:38:02 -0700
Message-ID: <CAC_TJvejs5gbggC1hekyjUNctC_8+3FmVn0B7zAZox2+MkEjaA@mail.gmail.com>
To: Brian Foster <bfoster@redhat.com>
Message-ID-Hash: 6CBU3LLI6NUGBAM67WNIIMA3JEBJQ6FO
X-Message-ID-Hash: 6CBU3LLI6NUGBAM67WNIIMA3JEBJQ6FO
X-MailFrom: kaleshsingh@google.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Alexander Viro <viro@zeniv.linux.org.uk>, Christoph Hellwig <hch@infradead.org>, Stephen Brennan <stephen.s.brennan@oracle.com>, David.Laight@aculab.com, Ioannis Ilkos <ilkos@google.com>, "T.J. Mercier" <tjmercier@google.com>, Suren Baghdasaryan <surenb@google.com>, "Cc: Android Kernel" <kernel-team@android.com>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, Johannes Weiner <hannes@cmpxchg.org>, Christoph Anton Mitterer <mail@christoph.anton.mitterer.name>, Paul Gortmaker <paul.gortmaker@windriver.com>, Mike Rapoport <rppt@kernel.org>, Randy Dunlap <rdunlap@infradead.org>, LKML <linux-kernel@vger.kernel.org>, linux-fsdevel <linux-fsdevel@vger.kernel.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, DRI mailing list <dri-devel@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING 
 FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/2] procfs: Add 'size' to /proc/<pid>/fdinfo/
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6CBU3LLI6NUGBAM67WNIIMA3JEBJQ6FO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKdW4gMjgsIDIwMjIgYXQgNDo1NCBBTSBCcmlhbiBGb3N0ZXIgPGJmb3N0ZXJAcmVk
aGF0LmNvbT4gd3JvdGU6DQo+DQo+IE9uIFRodSwgSnVuIDIzLCAyMDIyIGF0IDAzOjA2OjA2UE0g
LTA3MDAsIEthbGVzaCBTaW5naCB3cm90ZToNCj4gPiBUbyBiZSBhYmxlIHRvIGFjY291bnQgdGhl
IGFtb3VudCBvZiBtZW1vcnkgYSBwcm9jZXNzIGlzIGtlZXBpbmcgcGlubmVkDQo+ID4gYnkgb3Bl
biBmaWxlIGRlc2NyaXB0b3JzIGFkZCBhICdzaXplJyBmaWVsZCB0byBmZGluZm8gb3V0cHV0Lg0K
PiA+DQo+ID4gZG1hYnVmcyBmZHMgYWxyZWFkeSBleHBvc2UgYSAnc2l6ZScgZmllbGQgZm9yIHRo
aXMgcmVhc29uLCByZW1vdmUgdGhpcw0KPiA+IGFuZCBtYWtlIGl0IGEgY29tbW9uIGZpZWxkIGZv
ciBhbGwgZmRzLiBUaGlzIGFsbG93cyB0cmFja2luZyBvZg0KPiA+IG90aGVyIHR5cGVzIG9mIG1l
bW9yeSAoZS5nLiBtZW1mZCBhbmQgYXNobWVtIGluIEFuZHJvaWQpLg0KPiA+DQo+ID4gU2lnbmVk
LW9mZi1ieTogS2FsZXNoIFNpbmdoIDxrYWxlc2hzaW5naEBnb29nbGUuY29tPg0KPiA+IFJldmll
d2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+ID4g
LS0tDQo+ID4NCj4gPiBDaGFuZ2VzIGluIHYyOg0KPiA+ICAgLSBBZGQgQ2hyaXN0aWFuJ3MgUmV2
aWV3ZWQtYnkNCj4gPg0KPiA+IENoYW5nZXMgZnJvbSByZmM6DQo+ID4gICAtIFNwbGl0IGFkZGlu
ZyAnc2l6ZScgYW5kICdwYXRoJyBpbnRvIGEgc2VwYXJhdGUgcGF0Y2hlcywgcGVyIENocmlzdGlh
bg0KPiA+ICAgLSBTcGxpdCBmZGluZm8gc2VxX3ByaW50ZiBpbnRvIHNlcGFyYXRlIGxpbmVzLCBw
ZXIgQ2hyaXN0aWFuDQo+ID4gICAtIEZpeCBpbmRlbnRhdGlvbiAodXNlIHRhYnMpIGluIGRvY3Vt
ZW50YWlvbiwgcGVyIFJhbmR5DQo+ID4NCj4gPiAgRG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy9w
cm9jLnJzdCB8IDEyICsrKysrKysrKystLQ0KPiA+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
ICAgICAgICAgIHwgIDEgLQ0KPiA+ICBmcy9wcm9jL2ZkLmMgICAgICAgICAgICAgICAgICAgICAg
IHwgIDkgKysrKystLS0tDQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwg
NyBkZWxldGlvbnMoLSkNCj4gPg0KPiAuLi4NCj4gPiBkaWZmIC0tZ2l0IGEvZnMvcHJvYy9mZC5j
IGIvZnMvcHJvYy9mZC5jDQo+ID4gaW5kZXggOTEzYmVmMGQyYTM2Li40NjRiYzNmNTU3NTkgMTAw
NjQ0DQo+ID4gLS0tIGEvZnMvcHJvYy9mZC5jDQo+ID4gKysrIGIvZnMvcHJvYy9mZC5jDQo+ID4g
QEAgLTU0LDEwICs1NCwxMSBAQCBzdGF0aWMgaW50IHNlcV9zaG93KHN0cnVjdCBzZXFfZmlsZSAq
bSwgdm9pZCAqdikNCj4gPiAgICAgICBpZiAocmV0KQ0KPiA+ICAgICAgICAgICAgICAgcmV0dXJu
IHJldDsNCj4gPg0KPiA+IC0gICAgIHNlcV9wcmludGYobSwgInBvczpcdCVsbGlcbmZsYWdzOlx0
MCVvXG5tbnRfaWQ6XHQlaVxuaW5vOlx0JWx1XG4iLA0KPiA+IC0gICAgICAgICAgICAgICAgKGxv
bmcgbG9uZylmaWxlLT5mX3BvcywgZl9mbGFncywNCj4gPiAtICAgICAgICAgICAgICAgIHJlYWxf
bW91bnQoZmlsZS0+Zl9wYXRoLm1udCktPm1udF9pZCwNCj4gPiAtICAgICAgICAgICAgICAgIGZp
bGVfaW5vZGUoZmlsZSktPmlfaW5vKTsNCj4gPiArICAgICBzZXFfcHJpbnRmKG0sICJwb3M6XHQl
bGxpXG4iLCAobG9uZyBsb25nKWZpbGUtPmZfcG9zKTsNCj4gPiArICAgICBzZXFfcHJpbnRmKG0s
ICJmbGFnczpcdDAlb1xuIiwgZl9mbGFncyk7DQo+ID4gKyAgICAgc2VxX3ByaW50ZihtLCAibW50
X2lkOlx0JWlcbiIsIHJlYWxfbW91bnQoZmlsZS0+Zl9wYXRoLm1udCktPm1udF9pZCk7DQo+ID4g
KyAgICAgc2VxX3ByaW50ZihtLCAiaW5vOlx0JWx1XG4iLCBmaWxlX2lub2RlKGZpbGUpLT5pX2lu
byk7DQo+ID4gKyAgICAgc2VxX3ByaW50ZihtLCAic2l6ZTpcdCVsbGlcbiIsIChsb25nIGxvbmcp
ZmlsZV9pbm9kZShmaWxlKS0+aV9zaXplKTsNCj4NCj4gSGkgS2FsZXNoLA0KPg0KPiBBbnkgcmVh
c29uIG5vdCB0byB1c2UgaV9zaXplX3JlYWQoKSBoZXJlPw0KDQpIaSBCcmlhbi4NCg0KVGhhbmtz
IGZvciBwb2ludGluZyB0aGlzIG91dC4gWW91IGFyZSByaWdodCwgd2Ugc2hvdWxkIHVzZQ0KaV9z
aXplX3JlYWQoKSBoZXJlLiBJJ2xsIHVwZGF0ZSBpbiB0aGUgbmV4dCB2ZXJzaW9uLg0KDQo+DQo+
IEFsc28gbm90IHN1cmUgaWYgaXQgbWF0dGVycyB0aGF0IG11Y2ggZm9yIHlvdXIgdXNlIGNhc2Us
IGJ1dCBzb21ldGhpbmcNCj4gd29ydGggbm90aW5nIGF0IGxlYXN0IHdpdGggc2htZW0gaXMgdGhh
dCBvbmUgY2FuIGRvIHNvbWV0aGluZyBsaWtlOg0KPg0KPiAjIGNhdCAvcHJvYy9tZW1pbmZvIHwg
Z3JlcCBTaG1lbToNCj4gU2htZW06ICAgICAgICAgICAgICAgNzY0IGtCDQo+ICMgeGZzX2lvIC1m
YyAiZmFsbG9jIC1rIDAgMTBtIiAuL2ZpbGUNCj4gIyBscyAtYWxoIGZpbGUNCj4gLXJ3LS0tLS0t
LS4gMSByb290IHJvb3QgMCBKdW4gMjggMDc6MjIgZmlsZQ0KPiAjIHN0YXQgZmlsZQ0KPiAgIEZp
bGU6IGZpbGUNCj4gICBTaXplOiAwICAgICAgICAgICAgICAgQmxvY2tzOiAyMDQ4MCAgICAgIElP
IEJsb2NrOiA0MDk2ICAgcmVndWxhciBlbXB0eSBmaWxlDQo+ICMgY2F0IC9wcm9jL21lbWluZm8g
fCBncmVwIFNobWVtOg0KPiBTaG1lbTogICAgICAgICAgICAgMTEwMDQga0INCj4NCj4gLi4uIHdo
ZXJlIHRoZSByZXN1bHRpbmcgbWVtb3J5IHVzYWdlIGlzbid0IHJlZmxlY3RlZCBpbiBpX3NpemUg
KGJ1dCBpcw0KPiBpcyBpbiBpX2Jsb2Nrcy9ieXRlcykuDQoNCkkgdHJpZWQgYSBzaW1pbGFyIGV4
cGVyaW1lbnQgYSBmZXcgdGltZXMsIGJ1dCBJIGRvbid0IHNlZSB0aGUgc2FtZQ0KcmVzdWx0cy4g
SW4gbXkgY2FzZSwgdGhlcmUgaXMgbm90IGFueSBjaGFuZ2UgaW4gc2htZW0uIElJVUMgdGhlDQpm
YWxsb2NhdGUgaXMgYWxsb2NhdGluZyB0aGUgZGlzayBzcGFjZSBub3Qgc2hhcmVkIG1lbW9yeS4N
Cg0KY2F0IC9wcm9jL21lbWluZm8gPiBtZW1pbmZvLnN0YXJ0DQp4ZnNfaW8gLWZjICJmYWxsb2Mg
LWsgMCA1MG0iIC4veGZzX2ZpbGUNCmNhdCAvcHJvYy9tZW1pbmZvID4gbWVtaW5mby5zdG9wDQp0
YWlsIC1uICsxIG1lbWluZm8uc3QqIHwgZ3JlcCAtaSAnPT1cfFNobWVtOicNCg0KPT0+IG1lbWlu
Zm8uc3RhcnQgPD09DQpTaG1lbTogICAgICAgICAgICAgICA0ODQga0INCj09PiBtZW1pbmZvLnN0
b3AgPD09DQpTaG1lbTogICAgICAgICAgICAgICA0ODQga0INCg0KbHMgLWxoIHhmc19maWxlDQot
cnctLS0tLS0tIDEgcm9vdCByb290IDAgSnVuIDI4IDE1OjEyIHhmc19maWxlDQoNCnN0YXQgeGZz
X2ZpbGUNCiAgRmlsZTogeGZzX2ZpbGUNCiAgU2l6ZTogMCAgICAgICAgICAgICAgIEJsb2Nrczog
MTAyNDAwICAgICBJTyBCbG9jazogNDA5NiAgIHJlZ3VsYXIgZW1wdHkgZmlsZQ0KDQpUaGFua3Ms
DQpLYWxlc2gNCg0KPg0KPiBCcmlhbg0KPg0KPiA+DQo+ID4gICAgICAgLyogc2hvd19mZF9sb2Nr
cygpIG5ldmVyIGRlZmVyZW5jZXMgZmlsZXMgc28gYSBzdGFsZSB2YWx1ZSBpcyBzYWZlICovDQo+
ID4gICAgICAgc2hvd19mZF9sb2NrcyhtLCBmaWxlLCBmaWxlcyk7DQo+ID4gLS0NCj4gPiAyLjM3
LjAucmMwLjE2MS5nMTBmMzdiZWQ5MC1nb29nDQo+ID4NCj4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
