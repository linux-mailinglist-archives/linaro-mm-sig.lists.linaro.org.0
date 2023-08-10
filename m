Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C75776D44
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Aug 2023 02:57:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 53FC23F564
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Aug 2023 00:57:39 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id 4FEB43ED86
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Aug 2023 00:57:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=DcyoSSCw;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.208.53 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5232ce75e26so2869a12.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Aug 2023 17:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1691629052; x=1692233852;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pENb1t85EdhZr2S/NRQldNOIuogVZkW2tw0vSMoDYS4=;
        b=DcyoSSCwJwp9vWokfe6dcIcLr97RyCLwBKjCbSskay0ACsx3/Izc9hLNsxwGuAVej/
         wB2ynNNpnWSk9rjEmycLvjbxhdjuGCr4gLKPNdtYax8aYtgx0roYCOdnsQxs2XvY8Kyz
         zm4+OHdnDZS1cSMHKnWNLEjHVbE+tLFR1H4cuVpsMI7fqGM3Rm7czFUMk2/pAODSkQ8h
         qpa6v2aLXK8WqWZ0zBc0vDg3ZDBlNkD+nEgNFbauOexdn14Eul3ITgPmwpU+k0aY3DlC
         U695WvJ65wCg4BdHjT1N2bzpnjEz1BPQGdzsN8A21gHFmb8YSwAg7Z0RT6ewZLnRVqRo
         JX5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691629052; x=1692233852;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pENb1t85EdhZr2S/NRQldNOIuogVZkW2tw0vSMoDYS4=;
        b=MNw/LRcw5r03S3sNKOjOnlBYv2MCGz6JkFuMeRlKagI7Dsdz6piz7TAk4BvbynvZK0
         RPqEnyfr2U1rTjvedpoMBIKQHurucwdJZ9ISlH1qcooHspglg9xMMXo6ujEzoFgUX4SO
         ODVTlHyTYsK+9xvlJ3tCobYoFyQXIjRvE9Aa3uVX+jveOsBnWCzMPirjjK/nWMN934fa
         meOwLl/xA+ce/h0DDRw6IeNbl9F8DIj/Is+J9XscszPi1y0jqGgUUjsWOX/nkUNfp7TU
         6KzUAJQ6tjyQl2flPj/IwqWoERG3YHbsj/JAcFllIuX2eXXqh5/z7ge64g28JqIbHXj7
         Vbjg==
X-Gm-Message-State: AOJu0Yx0bifgzRh1oftpAlyiBtRu/dFEIJ5cQF478gpsgLDqjP/0QKi7
	v0RHrFT7zfIEnSwI1QWthk0iGsflPjAzSdlt4UTF
X-Google-Smtp-Source: AGHT+IGC3Ojhu3H3wyaJnO0AFrfMJr5XHWFXJ1jg2Nd0krAXKutumnTRxviNOopna7nevL3OGuuOsnupTL3vhP1snHY=
X-Received: by 2002:a50:99db:0:b0:522:28a1:2095 with SMTP id
 n27-20020a5099db000000b0052228a12095mr191965edb.3.1691629052118; Wed, 09 Aug
 2023 17:57:32 -0700 (PDT)
MIME-Version: 1.0
References: <1690598115-26287-1-git-send-email-quic_pintu@quicinc.com>
 <20230731112155.GA3662@lst.de> <CAOuPNLjnfq1JefngtNrg0Q+JdMTSRz+eEqxGQJFfx9+af+k9WA@mail.gmail.com>
 <20230801171838.GA14599@lst.de> <CANDhNCq+3OEosUcQJ5GFgk+5OyG+JqXKM43UAo0aPz-V27OgAA@mail.gmail.com>
 <20230802094725.GA28241@lst.de> <CAOuPNLjAOk0BOXDcjbY+evX_uxbZyptrJXMf0ULhReECzEX0CQ@mail.gmail.com>
 <CAOuPNLjn3b3YSgy=ObnF+cE7kj-9vdZ+6fFzMp-bJYLFq3MgWw@mail.gmail.com>
In-Reply-To: <CAOuPNLjn3b3YSgy=ObnF+cE7kj-9vdZ+6fFzMp-bJYLFq3MgWw@mail.gmail.com>
From: John Stultz <jstultz@google.com>
Date: Wed, 9 Aug 2023 17:57:19 -0700
Message-ID: <CANDhNCpJ_di5sjyExPw8itoSOfSoG5syy-t8CmKHzHBSp4qqFQ@mail.gmail.com>
To: Pintu Agarwal <pintu.ping@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4FEB43ED86
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[lst.de:email];
	RCPT_COUNT_TWELVE(0.00)[18];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.53:from]
Message-ID-Hash: T2FRBCUYZFP7V3CI4UTK7MFPR3MM4NIK
X-Message-ID-Hash: T2FRBCUYZFP7V3CI4UTK7MFPR3MM4NIK
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christoph Hellwig <hch@lst.de>, Pintu Kumar <quic_pintu@quicinc.com>, linux-kernel@vger.kernel.org, akpm@linux-foundation.org, linux-mm@kvack.org, robin.murphy@arm.com, iommu@lists.linux.dev, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-contiguous: define proper name for global cma region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T2FRBCUYZFP7V3CI4UTK7MFPR3MM4NIK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBdWcgOSwgMjAyMyBhdCA4OjA04oCvQU0gUGludHUgQWdhcndhbCA8cGludHUucGlu
Z0BnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBIaSwNCj4NCj4gT24gVGh1LCAzIEF1ZyAyMDIzIGF0
IDIzOjA0LCBQaW50dSBBZ2Fyd2FsIDxwaW50dS5waW5nQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4N
Cj4gPiBIaSwNCj4gPg0KPiA+IE9uIFdlZCwgMiBBdWcgMjAyMyBhdCAxNToxNywgQ2hyaXN0b3Bo
IEhlbGx3aWcgPGhjaEBsc3QuZGU+IHdyb3RlOg0KPiA+ID4NCj4gPiA+IE9uIFR1ZSwgQXVnIDAx
LCAyMDIzIGF0IDEwOjM5OjA0UE0gLTA3MDAsIEpvaG4gU3R1bHR6IHdyb3RlOg0KPiA+ID4gPiBT
bywgZm9yZ2l2ZSBtZSwgSSd2ZSBub3QgaGFkIGEgY2hhbmNlIHRvIGxvb2sgaW50byB0aGlzLCBi
dXQgbXkNCj4gPiA+ID4gcmVjb2xsZWN0aW9uIHdhcyAicmVzZXJ2ZWQiIGlzIHRoZSBuYW1lIHdl
IHNlZSBvbiB4ODYsIGJ1dCBvdGhlciBuYW1lcw0KPiA+ID4gPiBhcmUgcG9zc2libHkgcHJvdmlk
ZWQgdmlhIHRoZSBkdHMgbm9kZT8NCj4gPiA+DQo+ID4gTm8sIEkgdGhpbmsgInJlc2VydmVkIiBp
cyB0aGUgbmFtZSBoYXJkLWNvZGVkIChmb3IgYWxsIGFyY2gpIGluIEtlcm5lbA0KPiA+IGZvciBn
bG9iYWwtY21hLg0KPiA+IFNvLCBJIGRvbid0IHRoaW5rIHRoaXMgaXMgeDg2IHNwZWNpZmljLiBJ
IGFtIGNoZWNraW5nIG9uIGFybTMyIGl0c2VsZi4NCj4gPiBXaGVuIHdlIGNhbiBkbWFfYWxsb2Nf
Y29oZXJlbnQgd2Ugc2VlIHRoZXNlIGluIHRoZSBsb2dzIChpZiBkdHMgcmVnaW9uDQo+ID4gaXMg
bm90IHByZXNlbnQpLg0KPiA+IGNtYTogY21hX2FsbG9jKGNtYSAocHRydmFsKSwgbmFtZTogcmVz
ZXJ2ZWQsIGNvdW50IDY0LCBhbGlnbiA2KQ0KPiA+IE5vdywgd2l0aCB0aGlzIGNoYW5nZSB3ZSB3
aWxsIHNlZSB0aGlzOg0KPiA+IGNtYTogY21hX2FsbG9jKGNtYSAocHRydmFsKSwgbmFtZTogZ2xv
YmFsLWNtYS1yZWdpb24sIGNvdW50IDY0LCBhbGlnbiA2KQ0KPiA+DQo+ID4gPiBJbmRlZWQsIGRt
YV9jb250aWd1b3VzX2RlZmF1bHRfYXJlYSBjYW4gYWxzbyBiZSBzZXQgdGhyb3VnaA0KPiA+ID4g
cm1lbV9jbWFfc2V0dXAsIHdoaWNoIHRoZW4gdGFrZXMgdGhlIG5hbWUgZnJvbSBEVC4NCj4gPiA+
DQo+ID4gSSB0aGluayB0aGlzIGlzIGEgZGlmZmVyZW50IGNhc2UuIElmIERUIGVudHJ5IGlzIHBy
ZXNlbnQgd2UgZ2V0IHRoaXM6DQo+ID4gUmVzZXJ2ZWQgbWVtb3J5OiBjcmVhdGVkIENNQSBtZW1v
cnkgcG9vbCBhdCAweDk4MDAwMDAwLCBuYW1lOiBuYW1lOg0KPiA+IGxpbnV4LGNtYSwgc2l6ZSAx
MjggTWlCDQo+ID4gY21hOiBjbWFfYWxsb2MoY21hIChwdHJ2YWwpLCBuYW1lOiBsaW51eCxjbWEs
IGNvdW50IDY0LCBhbGlnbiA2KQ0KPiA+DQo+ID4gSGVyZSB3ZSBhcmUgdGFsa2luZyBhYm91dCB0
aGUgZGVmYXVsdCBoYXJkLWNvZGVkIG5hbWUgaW4gS2VybmVsIGNvZGUNCj4gPiBpZiBEVCBpcyBu
b3QgZGVmaW5lZC4NCj4gPiBTbywgaW4gb25lIG9mIHRoZSBib2FyZHMsIHRoaXMgRFQgZW50cnkg
d2FzIG5vdCBwcmVzZW50IGFuZCBpdCBzaG93cw0KPiA+IGFzICJyZXNlcnZlZCIuDQo+ID4NCj4g
PiA+ID4gSSBiZWxpZXZlIG9uIHRoZSBoaWtleSBib2FyZCBpdHMgImxpbnV4LGNtYSIgaXMgdGhl
IG5hbWUsIHNvIGZvcmNpbmcNCj4gPiA+ID4gaXQgdG8gcmVzZXJ2ZWQgd291bGQgYnJlYWsgdGhh
dC4NCj4gPiA+ID4NCj4gPiBZZXMsIGV2ZXJ5d2hlcmUgaW4gdGhlIERUIGl0J3MgZGVmaW5lZCBh
cyAibGludXgsY21hIi4NCj4gPiBZb3UgbWVhbiB0aGlzIGFsc28gc2hvdWxkIGJlIGNoYW5nZWQg
dG8gImxpbnV4LGNtYS1nbG9iYWwtcmVnaW9uIg0KPiA+IGV2ZXJ5d2hlcmUgd2l0aCB0aGlzIGNo
YW5nZSA/DQo+ID4NCj4gPiA+ID4gTWF5YmUgaW5zdGVhZCBhZGQgYSBjb21wYXQgY29uZmlnIG9w
dGlvbiB0byBmb3JjZSB0aGUgY21hIG5hbWUgKHNvIHg4Ng0KPiA+ID4gPiBjYW4gc2V0IGl0IHRv
ICJkZWZhdWx0IiBpZiBuZWVkZWQpPw0KPiA+ID4NCj4gPiBZZXMsIGhhdmluZyBpdCBpbiBjb25m
aWcgaXMgYWxzbyBhIGdvb2Qgb3B0aW9uIGluc3RlYWQgb2YgaGFyZC1jb2RpbmcgaW4gS2VybmVs
Lg0KPiA+ID4NCj4gPiA+IEkgdGhpbmsgd2UnbGwganVzdCBuZWVkIHRvIGxlYXZlIGl0IGFzLWlz
LiAgSSB3aXRoIGRtYS1oZWFwcyBoYWQgbmV2ZXINCj4gPiA+IGV4cG9zZWQgdGhlIG5hbWUgdG8g
dXNlcnNwYWNlLCBidXQgd2UnbGwgaGF2ZSB0byBs0ZZ2ZSB3aXRoIGl0IG5vdy4NCj4gPg0KPiA+
IENhbiB5b3UgcG9pbnQgbWUgdG8gdGhlIHVzZXJzcGFjZSB1dGlsaXR5IHdlIGFyZSB0YWxraW5n
IGFib3V0IGhlcmUgPw0KPiA+IEkgdGhpbmsgd2Ugc2hvdWxkIG5vdCB3b3JyeSBtdWNoIGFib3V0
IHVzZXJzcGFjZSBuYW1lIGV4cG9zdXJlLg0KPiA+IEkgZ3Vlc3MgaXQgc2hvdWxkIGZldGNoIHdo
YXRldmVyIGlzIGRlY2xhcmVkIGluIEtlcm5lbCBvciBEVFMsIHJpZ2h0ID8NCj4NCj4gSnVzdCB0
byBmb2xsb3ctdXAgb24gdGhpcy4NCj4gRm9yIG5vdywgY2FuIHdlIGNoYW5nZSB0aGUgS2VybmVs
IGhhcmQtY29kZWQgdmFsdWUgZnJvbSAicmVzZXJ2ZWQiIHRvDQo+ICJnbG9iYWwtY21hLXJlZ2lv
biIgPw0KPiBMYXRlciwgZm9yIHRoZSBEVFMgZGVmaW5lZCBuYW1lIGxldCBpdCBiZSAibGludXgs
Y21hIiBvciBjaGFuZ2UgdGhhdA0KPiBhbHNvIHRvICJsaW51eCxnbG9iYWwtY21hLXJlZ2lvbiIg
Pw0KPg0KPiBXaWxsIHRoaXMgbWFrZSBzZW5zZSA/DQoNCkFwb2xvZ2llcywgc29ycnkgZm9yIG5v
dCByZXNwb25kaW5nIHRvIHlvdXIgZWFybGllciBtZXNzYWdlLCBpdCBzbGlwcGVkIGJ5Lg0KDQpT
bywgdGhlIGNvbmNlcm4gaXMgdGhlcmUgbWF5IGJlIGFsbG9jYXRvcnMgKGxpa2UgZ3JhbGxvYyBp
biBBbmRyb2lkKQ0KdGhhdCBhbGxvY2F0ZSBmcm9tIHRoZSBDTUEgcmVnaW9uIHZpYSB0aGUgZG1h
LWJ1ZiBoZWFwcyBpbnRlcmZhY2UuDQoNClNvIGJ5IGNoYW5naW5nIHRoZSBuYW1lIChlaXRoZXIg
aGFyZGNvZGVkIG9yIERUUyBuYW1lcyksIHlvdSdsbCBjaGFuZ2UNCnRoZSB1c2VyLXZpc2libGUg
aGVhcCBuYW1lLCBwb3RlbnRpYWxseSBicmVha2luZyB0aG9zZSB1c2VybGFuZA0KYWxsb2NhdG9y
cy4NCg0KTm93LCB0aGUgZG1hYnVmIGhlYXBzIGFyZSBkZXNpZ25lZCB0byBiZSBsaWtlIG90aGVy
IGR5bmFtaWMgZGV2aWNlcw0KKGxpa2UgZGlza3Mgb3IgcGFydGl0aW9ucyksIHdoaWNoIG1heSBi
ZSBkaWZmZXJlbnQgZnJvbSBkZXZpY2UgdG8NCmRldmljZS4gSG93ZXZlciwgY2hhbmdpbmcgdGhl
IG5hbWUgd291bGQgc3RpbGwgYmUgYW4gaW5jb252ZW5pZW5jZSBmb3INCmZvbGtzIHdobyBoYXZl
IGhhcmQtY29kZWQgdGhhdCBuYW1lIGluIHRoZWlyIHVzZXJsYW5kIGFsbG9jYXRvciB3aGljaA0K
d2FzIGRlc2lnbmVkIGZvciBhIHNpbmdsZSBkZXZpY2UuICBUaGlzIHdvdWxkIGJlIHNpbWlsYXIg
dG8gdGhlIG9sZA0KaXNzdWUgb2YgYW4gZXhpc3RpbmcgZnN0YWIgYnJlYWtpbmcgZnJvbSB0aGUg
aWRlIChoZGEpIHRvIHNhdGEgKHNkYSkNCmRyaXZlciB0cmFuc2l0aW9uLiAgT3Igc2ltaWxhciB0
byB3aGF0IGZvbGtzIHdlbnQgdGhyb3VnaCBhIHdoaWxlIGJhY2sNCndpdGggbmV0d29yayBkZXZp
Y2UgbmFtZXMgY2hhbmdpbmcgZnJvbSBldGgwIC0+IGVuczAgb3Igd2hhdGV2ZXIuDQoNClRoYXQg
c2FpZCwgbW9zdCBhbmRyb2lkIGRldmljZXMgaGlzdG9yaWNhbGx5IGhhdmVuJ3QgdXByZXZlZCB0
byBuZXcNCmtlcm5lbCB2ZXJzaW9ucyB3aWh0b3V0IG1ham9yIHVzZXJzcGFjZSBjaGFuZ2VzLCBz
byB0aGUgaW1wYWN0IG1pZ2h0DQpiZSBtaW5pbWFsLCBidXQgdGhhdCBpcyBsaWtlbHkgdG8gY2hh
bmdlIGluIHRoZSBmdXR1cmUgc28gd2Ugc2hvdWxkIGJlDQpjYXJlZnVsIGhlcmUuDQoNCldoYXQg
SSdkIHByb3Bvc2UgaW5zdGVhZCBpcyB0byBlaXRoZXIgbGVhdmUgaXQgYWxvbmUgYXMgQ2hyaXN0
b3BoDQpzdWdnZXN0ZWQsIG9yIGhhdmUgYSBidWlsZCBvcHRpb24vYm9vdCBhcmd1bWVudCBzbyBm
b2xrcyBjYW4gcHJlc2VydmUNCnRoZSBsZWdhY3kgbmFtZSBpZiB0aGV5IG5lZWQuDQoNCnRoYW5r
cw0KLWpvaG4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
