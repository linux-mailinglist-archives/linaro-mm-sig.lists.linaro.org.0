Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D701F63EB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2020 10:45:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84C7161810
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2020 08:45:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 75DFE65F72; Thu, 11 Jun 2020 08:45:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 81ED261963;
	Thu, 11 Jun 2020 08:44:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6A9E761808
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 08:44:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5148C61963; Thu, 11 Jun 2020 08:44:40 +0000 (UTC)
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by lists.linaro.org (Postfix) with ESMTPS id 9852261808
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 08:44:38 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id k11so5597052ejr.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 01:44:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dyB5ymhOUYfsgOuYaL4XbtnTAmjSGqLiWLGp+voTc2A=;
 b=fyTRMMNFbWWN1JD4K/vFHledeA6542Q65uOYt41V+L8JMMqM2zzxv9eGBLBQAQcEcf
 VMMTqaCb1NhnOQPX2cBRyB6a4FiIBtSueeLQfcInF0QI+w8j0pU8xC/vrOSNOdYwmoEi
 LnU1Y/H//uAxn2ioTW5ZyJCeZZVsv0ebFjg2iGsjxTnAcrRa9/Qhl7qdwI3WztWdnuKF
 RE9whdirhTCFa/backN4yWWQxecvbOr1PMudQUhb6tkWlkywV7BazVd6k8ki5NBqKhVq
 mBiSTJu3o0JFYBIp0rvupvYW2KWcHs5lawxPga67w2aK8Q2kStuSlgCT1SgE5wkfNafz
 RmeA==
X-Gm-Message-State: AOAM533ttpf/kyM6xPrY6Vc1iIv1L+sEHPKKDhTbYBrCFP5bSO4CADhQ
 5EvIiG7P+YebbZUzCuRVJ3cU7LmaHXcmWglyR0A=
X-Google-Smtp-Source: ABdhPJyyvbmpR5itDPokp01aqVx37qiEbG+AaFyU2VF1ZF4GEMP/3/UQqu5mG6cuNL9hhOQyiLsMvAEgTVF/k/3e5Ck=
X-Received: by 2002:a17:906:c9d6:: with SMTP id
 hk22mr7161397ejb.101.1591865077473; 
 Thu, 11 Jun 2020 01:44:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-4-daniel.vetter@ffwll.ch>
 <159186243606.1506.4437341616828968890@build.alporthouse.com>
In-Reply-To: <159186243606.1506.4437341616828968890@build.alporthouse.com>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 11 Jun 2020 18:44:26 +1000
Message-ID: <CAPM=9ty6r1LuXAH_rf98GH0R9yN3x8xzKPjZG3QyvokpQBR-Hg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 03/18] dma-fence: basic lockdep
	annotations
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVGh1LCAxMSBKdW4gMjAyMCBhdCAxODowMSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDIwLTA2LTA0
IDA5OjEyOjA5KQo+ID4gRGVzaWduIGlzIHNpbWlsYXIgdG8gdGhlIGxvY2tkZXAgYW5ub3RhdGlv
bnMgZm9yIHdvcmtlcnMsIGJ1dCB3aXRoCj4gPiBzb21lIHR3aXN0czoKPiA+Cj4gPiAtIFdlIHVz
ZSBhIHJlYWQtbG9jayBmb3IgdGhlIGV4ZWN1dGlvbi93b3JrZXIvY29tcGxldGlvbiBzaWRlLCBz
byB0aGF0Cj4gPiAgIHRoaXMgZXhwbGljaXQgYW5ub3RhdGlvbiBjYW4gYmUgbW9yZSBsaWJlcmFs
bHkgc3ByaW5rbGVkIGFyb3VuZC4KPiA+ICAgV2l0aCByZWFkIGxvY2tzIGxvY2tkZXAgaXNuJ3Qg
Z29pbmcgdG8gY29tcGxhaW4gaWYgdGhlIHJlYWQtc2lkZQo+ID4gICBpc24ndCBuZXN0ZWQgdGhl
IHNhbWUgd2F5IHVuZGVyIGFsbCBjaXJjdW1zdGFuY2VzLCBzbyBBQkJBIGRlYWRsb2Nrcwo+ID4g
ICBhcmUgb2suIFdoaWNoIHRoZXkgYXJlLCBzaW5jZSB0aGlzIGlzIGFuIGFubm90YXRpb24gb25s
eS4KPiA+Cj4gPiAtIFdlJ3JlIHVzaW5nIG5vbi1yZWN1cnNpdmUgbG9ja2RlcCByZWFkIGxvY2sg
bW9kZSwgc2luY2UgaW4gcmVjdXJzaXZlCj4gPiAgIHJlYWQgbG9jayBtb2RlIGxvY2tkZXAgZG9l
cyBub3QgY2F0Y2ggcmVhZCBzaWRlIGhhemFyZHMuIEFuZCB3ZQo+ID4gICBfdmVyeV8gbXVjaCB3
YW50IHJlYWQgc2lkZSBoYXphcmRzIHRvIGJlIGNhdWdodC4gRm9yIGZ1bGwgZGV0YWlscyBvZgo+
ID4gICB0aGlzIGxpbWl0YXRpb24gc2VlCj4gPgo+ID4gICBjb21taXQgZTkxNDk4NTg5NzQ2MDY1
ZTNhZTk1ZDlhMDBiMDY4ZTUyNWVlYzM0Zgo+ID4gICBBdXRob3I6IFBldGVyIFppamxzdHJhIDxw
ZXRlcnpAaW5mcmFkZWFkLm9yZz4KPiA+ICAgRGF0ZTogICBXZWQgQXVnIDIzIDEzOjEzOjExIDIw
MTcgKzAyMDAKPiA+Cj4gPiAgICAgICBsb2NraW5nL2xvY2tkZXAvc2VsZnRlc3RzOiBBZGQgbWl4
ZWQgcmVhZC13cml0ZSBBQkJBIHRlc3RzCj4gPgo+ID4gLSBUbyBhbGxvdyBuZXN0aW5nIG9mIHRo
ZSByZWFkLXNpZGUgZXhwbGljaXQgYW5ub3RhdGlvbnMgd2UgZXhwbGljaXRseQo+ID4gICBrZWVw
IHRyYWNrIG9mIHRoZSBuZXN0aW5nLiBsb2NrX2lzX2hlbGQoKSBhbGxvd3MgdXMgdG8gZG8gdGhh
dC4KPiA+Cj4gPiAtIFRoZSB3YWl0LXNpZGUgYW5ub3RhdGlvbiBpcyBhIHdyaXRlIGxvY2ssIGFu
ZCBlbnRpcmVseSBkb25lIHdpdGhpbgo+ID4gICBkbWFfZmVuY2Vfd2FpdCgpIGZvciBldmVyeW9u
ZSBieSBkZWZhdWx0Lgo+ID4KPiA+IC0gVG8gYmUgYWJsZSB0byBmcmVlbHkgYW5ub3RhdGUgaGVs
cGVyIGZ1bmN0aW9ucyBJIHdhbnQgdG8gbWFrZSBpdCBvawo+ID4gICB0byBjYWxsIGRtYV9mZW5j
ZV9iZWdpbi9lbmRfc2lnbmFsbGluZyBmcm9tIHNvZnQvaGFyZGlycSBjb250ZXh0Lgo+ID4gICBG
aXJzdCBhdHRlbXB0IHdhcyB1c2luZyB0aGUgaGFyZGlycSBsb2NraW5nIGNvbnRleHQgZm9yIHRo
ZSB3cml0ZQo+ID4gICBzaWRlIGluIGxvY2tkZXAsIGJ1dCB0aGlzIGZvcmNlcyBhbGwgbm9ybWFs
IHNwaW5sb2NrcyBuZXN0ZWQgd2l0aGluCj4gPiAgIGRtYV9mZW5jZV9iZWdpbi9lbmRfc2lnbmFs
bGluZyB0byBiZSBzcGlubG9ja3MuIFRoYXQgYm9sbG9ja3MuCj4gPgo+ID4gICBUaGUgYXBwcm9h
Y2ggbm93IGlzIHRvIHNpbXBsZSBjaGVjayBpbl9hdG9taWMoKSwgYW5kIGZvciB0aGVzZSBjYXNl
cwo+ID4gICBlbnRpcmVseSByZWx5IG9uIHRoZSBtaWdodF9zbGVlcCgpIGNoZWNrIGluIGRtYV9m
ZW5jZV93YWl0KCkuIFRoYXQKPiA+ICAgd2lsbCBjYXRjaCBhbnkgd3JvbmcgbmVzdGluZyBhZ2Fp
bnN0IHNwaW5sb2NrcyBmcm9tIHNvZnQvaGFyZGlycQo+ID4gICBjb250ZXh0cy4KPiA+Cj4gPiBU
aGUgaWRlYSBoZXJlIGlzIHRoYXQgZXZlcnkgY29kZSBwYXRoIHRoYXQncyBjcml0aWNhbCBmb3Ig
ZXZlbnR1YWxseQo+ID4gc2lnbmFsbGluZyBhIGRtYV9mZW5jZSBzaG91bGQgYmUgYW5ub3RhdGVk
IHdpdGgKPiA+IGRtYV9mZW5jZV9iZWdpbi9lbmRfc2lnbmFsbGluZy4gVGhlIGFubm90YXRpb24g
aWRlYWxseSBzdGFydHMgcmlnaHQKPiA+IGFmdGVyIGEgZG1hX2ZlbmNlIGlzIHB1Ymxpc2hlZCAo
YWRkZWQgdG8gYSBkbWFfcmVzdiwgZXhwb3NlZCBhcyBhCj4gPiBzeW5jX2ZpbGUgZmQsIGF0dGFj
aGVkIHRvIGEgZHJtX3N5bmNvYmogZmQsIG9yIGFueXRoaW5nIGVsc2UgdGhhdAo+ID4gbWFrZXMg
dGhlIGRtYV9mZW5jZSB2aXNpYmxlIHRvIG90aGVyIGtlcm5lbCB0aHJlYWRzKSwgdXAgdG8gYW5k
Cj4gPiBpbmNsdWRpbmcgdGhlIGRtYV9mZW5jZV93YWl0KCkuIEV4YW1wbGVzIGFyZSBpcnEgaGFu
ZGxlcnMsIHRoZQo+ID4gc2NoZWR1bGVyIHJ0IHRocmVhZHMsIHRoZSB0YWlsIG9mIGV4ZWNidWYg
KGFmdGVyIHRoZSBjb3JyZXNwb25kaW5nCj4gPiBmZW5jZXMgYXJlIHZpc2libGUpLCBhbnkgd29y
a2VycyB0aGF0IGVuZCB1cCBzaWduYWxsaW5nIGRtYV9mZW5jZXMgYW5kCj4gPiByZWFsbHkgYW55
dGhpbmcgZWxzZS4gTm90IGFubm90YXRlZCBzaG91bGQgYmUgY29kZSBwYXRocyB0aGF0IG9ubHkK
PiA+IGNvbXBsZXRlIGZlbmNlcyBvcHBvcnR1bmlzdGljYWxseSBhcyB0aGUgZ3B1IHByb2dyZXNz
ZXMsIGxpa2UgZS5nLgo+ID4gc2hyaW5rZXIvZXZpY3Rpb24gY29kZS4KPiA+Cj4gPiBUaGUgbWFp
biBjbGFzcyBvZiBkZWFkbG9ja3MgdGhpcyBpcyBzdXBwb3NlZCB0byBjYXRjaCBhcmU6Cj4gPgo+
ID4gVGhyZWFkIEE6Cj4gPgo+ID4gICAgICAgICBtdXRleF9sb2NrKEEpOwo+ID4gICAgICAgICBt
dXRleF91bmxvY2soQSk7Cj4gPgo+ID4gICAgICAgICBkbWFfZmVuY2Vfc2lnbmFsKCk7Cj4gPgo+
ID4gVGhyZWFkIEI6Cj4gPgo+ID4gICAgICAgICBtdXRleF9sb2NrKEEpOwo+ID4gICAgICAgICBk
bWFfZmVuY2Vfd2FpdCgpOwo+ID4gICAgICAgICBtdXRleF91bmxvY2soQSk7Cj4gPgo+ID4gVGhy
ZWFkIEIgaXMgYmxvY2tlZCBvbiBBIHNpZ25hbGxpbmcgdGhlIGZlbmNlLCBidXQgQSBuZXZlciBn
ZXRzIGFyb3VuZAo+ID4gdG8gdGhhdCBiZWNhdXNlIGl0IGNhbm5vdCBhY3F1aXJlIHRoZSBsb2Nr
IEEuCj4gPgo+ID4gTm90ZSB0aGF0IGRtYV9mZW5jZV93YWl0KCkgaXMgYWxsb3dlZCB0byBiZSBu
ZXN0ZWQgd2l0aGluCj4gPiBkbWFfZmVuY2VfYmVnaW4vZW5kX3NpZ25hbGxpbmcgc2VjdGlvbnMu
IFRvIGFsbG93IHRoaXMgdG8gaGFwcGVuIHRoZQo+ID4gcmVhZCBsb2NrIG5lZWRzIHRvIGJlIHVw
Z3JhZGVkIHRvIGEgd3JpdGUgbG9jaywgd2hpY2ggbWVhbnMgdGhhdCBhbnkKPiA+IG90aGVyIGxv
Y2sgaXMgYWNxdWlyZWQgYmV0d2VlbiB0aGUgZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKSBj
YWxsIGFuZAo+ID4gdGhlIGNhbGwgdG8gZG1hX2ZlbmNlX3dhaXQoKSwgYW5kIHN0aWxsIGhlbGQs
IHRoaXMgd2lsbCByZXN1bHQgaW4gYW4KPiA+IGltbWVkaWF0ZSBsb2NrZGVwIGNvbXBsYWludC4g
VGhlIG9ubHkgb3RoZXIgb3B0aW9uIHdvdWxkIGJlIHRvIG5vdAo+ID4gYW5ub3RhdGUgc3VjaCBj
YWxscywgZGVmZWF0aW5nIHRoZSBwb2ludC4gVGhlcmVmb3JlIHRoZXNlIGFubm90YXRpb25zCj4g
PiBjYW5ub3QgYmUgc3ByaW5rbGVkIG92ZXIgdGhlIGNvZGUgZW50aXJlbHkgbWluZGxlc3MgdG8g
YXZvaWQgZmFsc2UKPiA+IHBvc2l0aXZlcy4KPiA+Cj4gPiB2MjogaGFuZGxlIHNvZnQvaGFyZGly
cSBjdHggYmV0dGVyIGFnYWluc3Qgd3JpdGUgc2lkZSBhbmQgZG9udCBmb3JnZXQKPiA+IEVYUE9S
VF9TWU1CT0wsIGRyaXZlcnMgY2FuJ3QgdXNlIHRoaXMgb3RoZXJ3aXNlLgo+ID4KPiA+IHYzOiBL
ZXJuZWxkb2MuCj4gPgo+ID4gdjQ6IFNvbWUgc3BlbGxpbmcgZml4ZXMgZnJvbSBNaWthCj4gPgo+
ID4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAaW50ZWwuY29tPgo+ID4gQ2M6IFRo
b21hcyBIZWxsc3Ryb20gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgo+ID4gQ2M6IGxpbnV4
LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+ID4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwo+ID4gQ2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCj4gPiBDYzogYW1kLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBD
YzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4K
PiA+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPgo+
IEludHJvZHVjaW5nIGEgZ2xvYmFsIGxvY2ttYXAgdGhhdCBjYW5ub3QgY2FwdHVyZSB0aGUgcnVs
ZXMgY29ycmVjdGx5LAoKQ2FuIHlvdSBkb2N1bWVudCB0aGUgcnVsZXMgYWxsIGRyaXZlcnMgc2hv
dWxkIGJlIGZvbGxvd2luZyB0aGVuLApiZWNhdXNlIGZyb20gaGVyZSBpdCBsb29rcyB0byBnZXQg
cmVmYWN0b3JlZCBldmVyeSB2ZXJzaW9uIG9mIGk5MTUsCmFuZCBpdCB3b3VsZCBiZSBuaWNlIGlm
IHdlIGNvdWxkIGFsbCBhaW0gZm9yIHRoZSBzYW1lIHNldCBvZiB0aGluZ3MKcm91Z2hseS4gV2Un
dmUgYWxyZWFkeSBoYWQgZW5vdWdoIHByb2JsZW1zIHdpdGggYW1kZ3B1IHZzIGk5MTUgdnMKZXZl
cnlvbmUgZWxzZSB3aXRoIGZlbmNlcywgaWYgdGhpcyBzdG9wcyB0aGF0IGluIHRoZSBmdXR1cmUg
dGhlbiBJJ2QKcmF0aGVyIHdlIGhhdmUgdGhhdCB0aGFuIGp1c3Qgc29tZSB1bndyaXR0ZW4gcnVs
ZXMgcGVyIGRyaXZlciBhbmQKdW50ZXN0YWJsZS4KCkRhdmUuCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
